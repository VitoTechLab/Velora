package com.example.velora

import android.view.LayoutInflater
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import com.google.android.gms.ads.nativead.MediaView
import com.google.android.gms.ads.nativead.NativeAd
import com.google.android.gms.ads.nativead.NativeAdView
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin

class VeloraFeedNativeAdFactory(
    private val inflater: LayoutInflater
) : GoogleMobileAdsPlugin.NativeAdFactory {

    override fun createNativeAd(
        nativeAd: NativeAd,
        customOptions: MutableMap<String, Any>?
    ): NativeAdView {

        val adView = inflater.inflate(
            R.layout.velora_native_ads,
            null
        ) as NativeAdView

        // Views
        val icon = adView.findViewById<ImageView>(R.id.ad_icon)
        val headline = adView.findViewById<TextView>(R.id.ad_headline)
        val cta = adView.findViewById<Button>(R.id.ad_cta)
        val mediaView = adView.findViewById<MediaView>(R.id.ad_media)

        // Assign mandatory views
        adView.iconView = icon
        adView.headlineView = headline
        adView.callToActionView = cta
        adView.mediaView = mediaView

        // Populate data
        nativeAd.icon?.let {
            icon.setImageDrawable(it.drawable)
        }
        headline.text = nativeAd.headline ?: ""
        cta.text = nativeAd.callToAction ?: "Learn more"

        nativeAd.mediaContent?.let {
            mediaView.setMediaContent(it)
        }

        // IMPORTANT (WAJIB TERAKHIR)
        adView.setNativeAd(nativeAd)

        return adView
    }
}
