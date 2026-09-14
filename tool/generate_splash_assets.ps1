# Deterministic native splash sizes from the supplied Velora logo.
Add-Type -AssemblyName System.Drawing
$workspacePath = Split-Path -Parent $PSScriptRoot
$sourcePath = Join-Path $workspacePath 'logo-velora.png'
$sourceImage = [System.Drawing.Image]::FromFile($sourcePath)
function Save-Logo([string]$relativePath, [int]$size) {
  $destinationPath = Join-Path $workspacePath $relativePath
  [System.IO.Directory]::CreateDirectory((Split-Path -Parent $destinationPath)) | Out-Null
  $bitmap = New-Object System.Drawing.Bitmap($size, $size)
  $graphics = [System.Drawing.Graphics]::FromImage($bitmap)
  $graphics.Clear([System.Drawing.Color]::Transparent)
  $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
  $graphics.DrawImage($sourceImage, 0, 0, $size, $size)
  $graphics.Dispose()
  $bitmap.Save($destinationPath, [System.Drawing.Imaging.ImageFormat]::Png)
  $bitmap.Dispose()
}
try {
  Save-Logo 'ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage.png' 128
  Save-Logo 'ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@2x.png' 256
  Save-Logo 'ios/Runner/Assets.xcassets/LaunchImage.imageset/LaunchImage@3x.png' 384
  foreach ($density in @(@('mdpi',128),@('hdpi',192),@('xhdpi',256),@('xxhdpi',384),@('xxxhdpi',512))) {
    Save-Logo ('android/app/src/main/res/drawable-' + $density[0] + '/velora_splash.png') $density[1]
  }
} finally { $sourceImage.Dispose() }
