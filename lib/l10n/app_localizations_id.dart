// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Velora';

  @override
  String get authSignInFormLabel => 'Form masuk';

  @override
  String get authLogoLabel => 'Logo Velora';

  @override
  String get authWelcomeBackTitle => 'Selamat datang kembali';

  @override
  String get authSignInSubtitle => 'Masuk untuk melanjutkan';

  @override
  String get fieldEmailLabel => 'Email';

  @override
  String get fieldEmailHint => 'email@anda.com';

  @override
  String get fieldPasswordLabel => 'Kata sandi';

  @override
  String get authForgotPassword => 'Lupa kata sandi?';

  @override
  String get authForgotPasswordHint =>
      'Lupa kata sandi. Masuk ke layar atur ulang kata sandi';

  @override
  String get authSignInButton => 'Masuk';

  @override
  String get authDividerText => 'atau lanjutkan dengan';

  @override
  String authContinueWith(String brand) {
    return 'Lanjutkan dengan $brand';
  }

  @override
  String get authNoAccount => 'Belum punya akun?';

  @override
  String get authSignUpLink => 'Daftar';

  @override
  String get authAgreeTermsError =>
      'Setujui Ketentuan & Kebijakan Privasi terlebih dahulu';

  @override
  String get authGoogleUnavailable => 'Masuk Google belum tersedia.';

  @override
  String get authSignUpFormLabel => 'Form buat akun';

  @override
  String get authCreateAccountTitle => 'Buat akun';

  @override
  String get authJoinCommunitySubtitle => 'Bergabung dengan komunitas Velora';

  @override
  String get authAgreeTermsLabel =>
      'Setuju dengan Ketentuan Layanan dan Kebijakan Privasi';

  @override
  String get authAgreeTermsPrefix => 'Saya setuju dengan ';

  @override
  String get authTermsOfService => 'Ketentuan Layanan';

  @override
  String get authAnd => ' dan ';

  @override
  String get authPrivacyPolicy => 'Kebijakan Privasi';

  @override
  String get authCreateAccountButton => 'Buat Akun';

  @override
  String get authAlreadyHaveAccount => 'Sudah punya akun?';

  @override
  String get authSignInLink => 'Masuk';

  @override
  String get commonGoBack => 'Kembali';

  @override
  String get commonCancel => 'Batal';

  @override
  String get commonError => 'Terjadi kesalahan';

  @override
  String get commonRetry => 'Coba lagi';

  @override
  String get authResetPasswordFormLabel => 'Form atur ulang kata sandi';

  @override
  String get authEmailIllustrationLabel => 'Ilustrasi email';

  @override
  String get authResetPasswordTitle => 'Atur ulang kata sandi';

  @override
  String get authResetPasswordSubtitle =>
      'Masukkan email terdaftar dan kami akan mengirim tautan untuk mengatur ulang kata sandi.';

  @override
  String get authSendResetLink => 'Kirim tautan reset';

  @override
  String get authRememberPasswordLabel =>
      'Ingat kata sandi? Kembali ke halaman masuk';

  @override
  String get authRememberPasswordAction => 'Ingat kata sandi? Masuk';

  @override
  String get authResetEmailSentLabel => 'Email reset terkirim';

  @override
  String get authCheckEmailTitle => 'Periksa email Anda';

  @override
  String get authBackToSignIn => 'Kembali ke Masuk';

  @override
  String get authEmailVerificationLabel => 'Instruksi verifikasi email';

  @override
  String get authAnimatedEmailLabel => 'Ilustrasi email animasi';

  @override
  String get authVerificationInstructions =>
      'Kami sudah mengirim tautan verifikasi. Periksa kotak masuk dan klik tautannya untuk memverifikasi akun Anda.';

  @override
  String get authVerifiedCta => 'Saya sudah verifikasi email';

  @override
  String get authResendVerificationLabel => 'Kirim ulang email verifikasi';

  @override
  String get authVerificationEmailResent => 'Email verifikasi dikirim ulang';

  @override
  String get authWrongEmail => 'Email salah? Keluar';

  @override
  String get authSignOutHint => 'Keluar dan kembali ke halaman masuk';

  @override
  String get authPasswordStrengthWeak => 'Lemah';

  @override
  String get authPasswordStrengthStrong => 'Kuat';

  @override
  String get authPasswordStrengthMedium => 'Sedang';

  @override
  String get authPasswordStrengthFair => 'Cukup';

  @override
  String get authPasswordStrengthLabel => 'Kekuatan Kata Sandi';

  @override
  String get authPasswordShow => 'Tampilkan kata sandi';

  @override
  String get authPasswordHide => 'Sembunyikan kata sandi';

  @override
  String get authPasswordRequirementsTitle => 'Kata sandi harus berisi:';

  @override
  String get authPasswordRequirementLength => 'Minimal 8 karakter';

  @override
  String get authPasswordRequirementCase => 'Huruf besar & huruf kecil';

  @override
  String get authPasswordRequirementNumber => 'Minimal satu angka';

  @override
  String get authPasswordRequirementSpecial => 'Karakter spesial (!@#\$%^&*)';

  @override
  String get feedTitle => 'Beranda';

  @override
  String get feedCreatePostTooltip => 'Buat postingan';

  @override
  String get feedNotificationsTooltip => 'Notifikasi';

  @override
  String get feedErrorLoading => 'Gagal memuat feed';

  @override
  String get feedEmptyMessage => 'Belum ada postingan';

  @override
  String get feedEmptySubtitle =>
      'Tarik untuk menyegarkan atau coba lagi nanti';

  @override
  String feedEmptyHint(String subtitle) {
    return '$subtitle. Ketuk dua kali tombol segarkan.';
  }

  @override
  String get feedRefreshButtonSemantic => 'Segarkan feed';

  @override
  String get feedRefreshButton => 'Segarkan';

  @override
  String get feedLoadingLabel => 'Sedang memuat feed';

  @override
  String get feedCommentsTitle => 'Komentar';

  @override
  String feedReplyingTo(String name) {
    return 'Membalas $name';
  }

  @override
  String feedAddCommentHint(String name) {
    return 'Tambahkan komentar untuk $name';
  }

  @override
  String get feedNoCommentsTitle => 'Belum ada komentar';

  @override
  String get feedNoCommentsSubtitle => 'Jadilah yang pertama berkomentar!';

  @override
  String get feedReplyAction => 'Balas';

  @override
  String get feedDeleteAction => 'Hapus';

  @override
  String get feedSeeTranslation => 'Lihat terjemahan';

  @override
  String get feedSeeOriginal => 'Lihat asli';

  @override
  String get feedTranslating => 'Memuat…';

  @override
  String feedCommentAsUser(String username) {
    return 'Komentar sebagai $username';
  }

  @override
  String feedViewReplies(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count balasan',
      one: '$count balasan',
    );
    return 'Lihat $_temp0';
  }

  @override
  String get feedHideReplies => 'Sembunyikan balasan';

  @override
  String get feedUnknownUser => 'Pengguna tidak dikenal';

  @override
  String get feedPostSummaryFallback => 'postingan';

  @override
  String feedPostSemantics(String author, String summary, String time) {
    return '$author memposting $summary $time';
  }

  @override
  String get feedOpenPostHint =>
      'Ketuk dua kali untuk membuka detail postingan';

  @override
  String get feedPostImageLabel => 'Gambar postingan';

  @override
  String feedPostImagePositionLabel(int index, int total) {
    return 'Gambar $index dari $total';
  }

  @override
  String get feedCampaignFallback => 'Kampanye';

  @override
  String feedOpenCampaignLabel(String title) {
    return 'Buka kampanye $title';
  }

  @override
  String get feedLikeLabel => 'Sukai postingan';

  @override
  String get feedUnlikeLabel => 'Batalkan suka postingan';

  @override
  String get feedLikeHint => 'Ketuk dua kali untuk menyukai postingan ini';

  @override
  String get feedUnlikeHint => 'Ketuk dua kali untuk menghapus suka Anda';

  @override
  String get feedViewCommentsLabel => 'Lihat komentar';

  @override
  String get feedViewCommentsHint => 'Ketuk dua kali untuk membuka komentar';

  @override
  String get feedShareComingSoon => 'Fitur berbagi segera hadir';

  @override
  String get feedShareLabel => 'Bagikan postingan';

  @override
  String get feedShareHint => 'Ketuk dua kali untuk berbagi';

  @override
  String get feedRemoveBookmarkLabel => 'Hapus penanda';

  @override
  String get feedAddBookmarkLabel => 'Tandai postingan ini';

  @override
  String get timeAgoNow => 'baru saja';

  @override
  String timeAgoMinutes(int count) {
    return '${count}mnt';
  }

  @override
  String timeAgoHours(int count) {
    return '${count}j';
  }

  @override
  String timeAgoDays(int count) {
    return '${count}hr';
  }

  @override
  String timeAgoMonths(int count) {
    return '${count}bln';
  }

  @override
  String timeAgoYears(int count) {
    return '${count}thn';
  }

  @override
  String countThousands(String value) {
    return '${value}rb';
  }

  @override
  String countMillions(String value) {
    return '${value}jt';
  }

  @override
  String get settingsAccountsCenterTitle => 'Pusat Akun';

  @override
  String get settingsAccountsCenterSubtitle =>
      'Kelola pengalaman terhubung, identitas, dan privasi';

  @override
  String get settingsSearchTooltip => 'Cari pengaturan';

  @override
  String get settingsConnectedTitle => 'Pengalaman terhubung';

  @override
  String get settingsConnectedSubtitle =>
      'Kendalikan cara identitas Velora Anda bekerja di berbagai platform.';

  @override
  String get settingsTileProfilesTitle => 'Profil';

  @override
  String get settingsTileProfilesSubtitle => 'Vito • Velora, Forum, Community';

  @override
  String get settingsTileSharingTitle => 'Berbagi antar profil';

  @override
  String get settingsTileSharingSubtitle =>
      'Pilih apa saja yang tersinkron otomatis';

  @override
  String get settingsTileActivityTitle => 'Riwayat aktivitas';

  @override
  String get settingsTileActivitySubtitle =>
      'Lihat aktivitas dan interaksi terbaru Anda';

  @override
  String get settingsTileLoggingTitle => 'Masuk dengan akun';

  @override
  String get settingsTileLoggingSubtitle =>
      'Tinjau perangkat dan persetujuan login';

  @override
  String get settingsTileAccountStatusTitle => 'Status Akun';

  @override
  String get settingsTileAccountStatusSubtitle =>
      'Lihat status verifikasi dan aktivitas akun';

  @override
  String get settingsAccountTitle => 'Pengaturan akun';

  @override
  String get settingsTilePasswordSecurityTitle => 'Kata sandi dan keamanan';

  @override
  String get settingsTilePasswordSecuritySubtitle =>
      '2FA, perangkat tepercaya, peringatan keamanan';

  @override
  String get settingsTilePersonalDetailsTitle => 'Detail pribadi';

  @override
  String get settingsTilePersonalDetailsSubtitle =>
      'Nama, nama pengguna, tautan profil';

  @override
  String get settingsTileInfoPermissionsTitle => 'Info & perizinan Anda';

  @override
  String get settingsTileInfoPermissionsSubtitle => 'Unduh data, izin, audiens';

  @override
  String get settingsTileAdPreferencesTitle => 'Preferensi iklan';

  @override
  String get settingsTileAdPreferencesSubtitle =>
      'Topik yang lebih sering Anda lihat';

  @override
  String get settingsTileVeloraPayTitle => 'Velora Pay';

  @override
  String get settingsTileVeloraPaySubtitle =>
      'Metode pembayaran dan perlindungan';

  @override
  String get settingsWalletTitle => 'Dompet';

  @override
  String get campaignCreateRequiredFields =>
      'Lengkapi semua kolom yang wajib diisi';

  @override
  String get campaignCreateInvalidTarget => 'Target donasi harus lebih dari 0';

  @override
  String get campaignCreateSuccess => 'Kampanye berhasil dibuat';

  @override
  String get campaignCreateTitle => 'Buat Kampanye';

  @override
  String get campaignCreateSubtitle =>
      'Ceritakan tujuanmu dengan jelas dan tetapkan target yang transparan.';

  @override
  String get campaignCreateBasicInfo => 'Informasi dasar';

  @override
  String get campaignCreateTitleLabel => 'Judul';

  @override
  String get campaignCreateTitleHint => 'Selamatkan kafe lokal';

  @override
  String get campaignCreateDescriptionLabel => 'Deskripsi';

  @override
  String get campaignCreateDescriptionHint =>
      'Ceritakan latar belakang, dampak, dan bagaimana dana akan digunakan.';

  @override
  String get campaignCreateGoalSection => 'Target & durasi';

  @override
  String get campaignCreateTargetLabel => 'Target donasi';

  @override
  String get campaignCreateTargetHint => 'mis. 5000000';

  @override
  String get campaignCreateEndDateLabel => 'Tanggal selesai (opsional)';

  @override
  String get campaignCreateContextSection => 'Konteks';

  @override
  String get campaignCreateLocationLabel => 'Kota (opsional)';

  @override
  String get campaignCreateLocationHint => 'Di mana kampanye ini berlangsung?';

  @override
  String get campaignCreateLoadingCategories => 'Memuat kategori...';

  @override
  String get campaignCreateCategoryLabel => 'Kategori';

  @override
  String get campaignCreateCTA => 'Terbitkan kampanye';

  @override
  String get walletDashboardTitle => 'Dashboard Dompet';

  @override
  String get walletDashboardWalletId => 'ID Dompet: #VLR2024001';

  @override
  String get walletDashboardTotalBalance => 'Saldo Total';

  @override
  String get walletDashboardQuickActions => 'Aksi Cepat';

  @override
  String get walletDashboardDonationHistory => 'Riwayat Donasi';

  @override
  String get walletDashboardDonationHistorySubtitle =>
      'Lihat semua transaksi donasi Anda';

  @override
  String get walletDashboardMyCampaigns => 'Kampanye Saya';

  @override
  String get walletDashboardMyCampaignsSubtitle =>
      'Kelola kampanye penggalangan dana Anda';

  @override
  String get walletDashboardMyDonations => 'Donasi Saya';

  @override
  String get walletDashboardMyDonationsSubtitle => 'Lacak kontribusi Anda';

  @override
  String get walletDashboardAnalytics => 'Analitik';

  @override
  String get walletDashboardAnalyticsSubtitle => 'Lihat wawasan dan statistik';

  @override
  String get walletDashboardRecentActivity => 'Aktivitas Terbaru';

  @override
  String get walletDashboardNoActivity => 'Belum ada aktivitas';

  @override
  String get walletDashboardNoActivitySubtitle =>
      'Transaksi dompet Anda akan muncul di sini';

  @override
  String get walletDashboardUnderDevelopmentTitle => 'Dalam Pengembangan';

  @override
  String get walletDashboardUnderDevelopmentMessage =>
      'Fitur ini sedang dalam pengembangan dan akan segera tersedia.';

  @override
  String get walletDashboardUnderDevelopmentButton => 'OK';

  @override
  String get settingsPersonalizationTitle => 'Personalisasi';

  @override
  String get settingsTileNotificationsTitle => 'Notifikasi';

  @override
  String get settingsTileNotificationsSubtitle =>
      'Preferensi push, email, dan SMS';

  @override
  String get settingsTileThemeTitle => 'Tema';

  @override
  String get settingsTileThemeSubtitle =>
      'Tampilan aplikasi, mode gelap, kontras';

  @override
  String get settingsTileLanguageTitle => 'Bahasa';

  @override
  String get settingsTileLanguageSubtitle =>
      'Pilih bahasa yang digunakan Velora';

  @override
  String get settingsTileAccessibilityTitle => 'Aksesibilitas';

  @override
  String get settingsTileAccessibilitySubtitle => 'Huruf, kontras, teks video';

  @override
  String get settingsHelpTitle => 'Bantuan & sumber daya';

  @override
  String get settingsTileHelpCenterTitle => 'Pusat bantuan';

  @override
  String get settingsTileHelpCenterSubtitle =>
      'Panduan, tutorial, dan jawaban cepat';

  @override
  String get settingsTileFaqTitle => 'FAQ';

  @override
  String get settingsTileFaqSubtitle => 'Topik paling sering ditanyakan';

  @override
  String get settingsTileAboutTitle => 'Tentang Velora';

  @override
  String get settingsTileAboutSubtitle => 'Versi, lisensi, dan apresiasi';

  @override
  String get settingsHeroSemanticsLabel =>
      'Ringkasan profil Meta ID dan status keamanan';

  @override
  String get settingsHeroMetaId => 'Meta ID';

  @override
  String get settingsHeroLearnMore => 'Pelajari lebih lanjut';

  @override
  String get settingsHeroNetworks => 'Facebook • Instagram • Velora';

  @override
  String get settingsHeroSwitchButton => 'Ganti';

  @override
  String get settingsHeroPasswordUpdated => 'Kata sandi diperbarui 2 hari lalu';

  @override
  String get settingsHeroPasswordSubtitle =>
      'Jaga keamanan akun dengan peringatan & persetujuan.';

  @override
  String get settingsHeroReviewButton => 'Tinjau';

  @override
  String get settingsHeroAccountType => 'Akun Personal';

  @override
  String get settingsHeroAccountTypeSubtitle =>
      'Ketuk untuk melihat detail tipe akun';

  @override
  String get accountTypeScreenTitle => 'Tipe Akun';

  @override
  String get accountTypeScreenCurrentType => 'Tipe Akun Saat Ini';

  @override
  String get accountTypeScreenPersonal => 'Akun Personal';

  @override
  String get accountTypeScreenPersonalDescription =>
      'Sempurna untuk pengguna individu yang ingin terhubung dengan teman dan keluarga.';

  @override
  String get accountTypeScreenPersonalBenefitsTitle => 'Manfaat Akun Personal';

  @override
  String get accountTypeScreenBenefit1Title => 'Profil Pribadi';

  @override
  String get accountTypeScreenBenefit1Subtitle =>
      'Jaga identitas dan privasi pribadi Anda';

  @override
  String get accountTypeScreenBenefit2Title => 'Kontrol Privasi';

  @override
  String get accountTypeScreenBenefit2Subtitle =>
      'Kontrol penuh atas data pribadi Anda';

  @override
  String get accountTypeScreenBenefit3Title => 'Koneksi Sosial';

  @override
  String get accountTypeScreenBenefit3Subtitle =>
      'Terhubung dengan teman dan keluarga dengan mudah';

  @override
  String get accountTypeScreenOrganization => 'Akun Organisasi';

  @override
  String get accountTypeScreenOrganizationDescription =>
      'Tingkatkan ke akun organisasi untuk mengakses fitur bisnis lanjutan dan verifikasi.';

  @override
  String get accountTypeScreenOrganizationBenefitsTitle =>
      'Manfaat Organisasi:';

  @override
  String get accountTypeScreenOrgBenefit1 =>
      'Lencana terverifikasi untuk keaslian';

  @override
  String get accountTypeScreenOrgBenefit2 => 'Analitik dan wawasan lanjutan';

  @override
  String get accountTypeScreenOrgBenefit3 => 'Alat promosi dan kampanye';

  @override
  String get accountTypeScreenOrgBenefit4 => 'Fitur kolaborasi tim';

  @override
  String get accountTypeScreenUpgradeButton => 'Tingkatkan ke Organisasi';

  @override
  String get accountTypeScreenVerificationTitle => 'Verifikasi Akun';

  @override
  String get accountTypeScreenVerificationSubtitle =>
      'Untuk meningkatkan ke akun organisasi, silakan selesaikan proses verifikasi.';

  @override
  String get accountTypeScreenVerificationStep1 => 'Foto KTP';

  @override
  String get accountTypeScreenVerificationStep1Subtitle =>
      'Ambil foto KTP Anda yang jelas';

  @override
  String get accountTypeScreenVerificationStep2 => 'Foto Selfie';

  @override
  String get accountTypeScreenVerificationStep2Subtitle =>
      'Ambil foto selfie sambil memegang KTP Anda';

  @override
  String get accountTypeScreenVerificationSubmit => 'Kirim Verifikasi';

  @override
  String get accountTypeScreenVerificationCancel => 'Batal';

  @override
  String get accountTypeScreenVerificationSuccess =>
      'Verifikasi berhasil dikirim! Kami akan meninjau permintaan Anda dalam 1-3 hari kerja.';

  @override
  String get settingsSearchProfiles => 'Profil';

  @override
  String get settingsSearchPassword => 'Kata sandi';

  @override
  String get settingsSearchSecurity => 'Keamanan';

  @override
  String get settingsSearchNotifications => 'Notifikasi';

  @override
  String get settingsSearchPrivacy => 'Privasi';

  @override
  String get settingsSearchLanguage => 'Bahasa';

  @override
  String get settingsSearchTheme => 'Tema';

  @override
  String get settingsSearchHelp => 'Bantuan';

  @override
  String get settingsSearchPayments => 'Pembayaran';

  @override
  String get settingsProfileTitle => 'Profil';

  @override
  String get settingsProfileSubtitle =>
      'Perbarui apa yang dapat dilihat orang di Velora';

  @override
  String get settingsProfilePhotoLabelCover => 'foto sampul';

  @override
  String get settingsProfilePhotoLabelProfile => 'foto profil';

  @override
  String get settingsProfilePhotoActionTake => 'Ambil foto';

  @override
  String get settingsProfilePhotoActionGallery => 'Pilih dari galeri';

  @override
  String get settingsProfilePhotoActionRemove => 'Hapus foto';

  @override
  String get settingsProfilePhotoActionCancel => 'Batal';

  @override
  String settingsProfilePhotoToastCamera(String target) {
    return 'Opening camera for $target...';
  }

  @override
  String settingsProfilePhotoToastGallery(String target) {
    return 'Opening gallery for $target...';
  }

  @override
  String settingsProfileFieldUpdated(String field) {
    return '$field updated';
  }

  @override
  String get settingsProfileInfoSectionTitle => 'Info profil';

  @override
  String get settingsProfileFieldName => 'Nama';

  @override
  String get settingsProfileFieldNameHelper =>
      'Anda hanya dapat mengubah nama Anda dua kali dalam 14 hari.';

  @override
  String get settingsProfileFieldUsername => 'Nama pengguna';

  @override
  String get settingsProfileFieldUsernameHelper =>
      'Pilih nama pengguna yang unik. Orang dapat menemukan Anda dengan @nampengguna.';

  @override
  String get settingsProfileFieldBio => 'Bio';

  @override
  String get settingsProfileFieldBioHelper =>
      'Bagikan deskripsi singkat. Maksimal 150 karakter.';

  @override
  String get settingsProfileFieldWebsite => 'Situs web';

  @override
  String get settingsProfileFieldWebsiteHelper =>
      'Masukkan URL yang valid agar orang dapat mengklik dari bio Anda.';

  @override
  String get settingsProfileInfoSyncTitle =>
      'Sinkronisasi info profil tidak lagi tersedia';

  @override
  String get settingsProfileInfoSyncDescription =>
      'Nama dan nama pengguna Anda tidak akan lagi disinkronkan di seluruh aplikasi. Kelola foto profil yang disinkronkan melalui pengalaman Terhubung.';

  @override
  String get settingsProfileAccountSectionTitle => 'Akun';

  @override
  String get settingsProfileAccountTypeTitle => 'Tipe akun';

  @override
  String get settingsProfileAccountTypeSubtitle =>
      'Pilih cara Anda menggunakan Velora';

  @override
  String get settingsProfileAccountTypePersonal => 'Personal';

  @override
  String get settingsProfileAccountTypeOrganization => 'Organisasi';

  @override
  String get settingsProfileAccountTypePersonalDescription =>
      'Akun personal untuk pendukung individu.';

  @override
  String get settingsProfileAccountTypeOrganizationDescription =>
      'Akun organisasi membuka verifikasi dan analitik.';

  @override
  String get settingsProfileConnectedTitle => 'Akun terhubung';

  @override
  String get settingsProfileConnectedNotConnected => 'Tidak terhubung';

  @override
  String get settingsProfileConnectedDisconnect => 'Putuskan';

  @override
  String get settingsProfileConnectedConnect => 'Hubungkan';

  @override
  String get settingsProfileCrossTitle => 'Cross-platform';

  @override
  String get settingsProfileCrossSubtitle =>
      'Control how Velora syncs to other networks';

  @override
  String get settingsProfileCrossAutoShareTitle => 'Auto-share posts';

  @override
  String get settingsProfileCrossAutoShareSubtitle =>
      'Share to connected accounts';

  @override
  String get settingsProfileCrossSyncNotificationsTitle => 'Sync notifications';

  @override
  String get settingsProfileCrossSyncNotificationsSubtitle =>
      'Get notified across platforms';

  @override
  String get settingsProfileCrossFindFriendsTitle => 'Find friends';

  @override
  String get settingsProfileCrossFindFriendsSubtitle =>
      'Match people from other networks';

  @override
  String get settingsProfileEditTitle => 'Edit profil';

  @override
  String get settingsProfileEditSubtitle => 'Perbarui informasi pribadi Anda';

  @override
  String get settingsProfileEditTabName => 'Nama';

  @override
  String get settingsProfileEditTabBio => 'Bio & Detail';

  @override
  String get settingsProfileEditUsedProfiles => 'Digunakan untuk 2 profil';

  @override
  String get settingsProfileEditFirstName => 'Nama depan';

  @override
  String get settingsProfileEditMiddleName => 'Nama tengah';

  @override
  String get settingsProfileEditLastName => 'Nama belakang';

  @override
  String get settingsProfileEditRequiredField => 'Bidang wajib diisi';

  @override
  String get settingsProfileEditApplyTo => 'Terapkan ke';

  @override
  String get settingsProfileEditApplyAllProfiles => 'Semua profil';

  @override
  String get settingsProfileEditApplyFacebook => 'Hanya Facebook';

  @override
  String get settingsProfileEditApplyInstagram => 'Hanya Instagram';

  @override
  String get settingsProfileEditNameChangeInfo =>
      'Jika Anda mengubah nama, Anda tidak dapat mengubahnya lagi selama 60 hari. Gunakan nama asli Anda agar teman tahu ini Anda.';

  @override
  String get settingsProfileEditOtherNamesTitle => 'Nama lain';

  @override
  String get settingsProfileEditOtherNamesDescription =>
      'Nama lain selalu bersifat publik dan membantu orang menemukan Anda di Velora.';

  @override
  String get settingsProfileEditOtherNamesManage => 'Kelola nama lain';

  @override
  String get settingsProfileEditReviewSchedule => 'Schedule review';

  @override
  String settingsProfileEditReviewScheduled(String date) {
    return 'Review on $date';
  }

  @override
  String get settingsProfileEditReviewChange => 'Review change';

  @override
  String get settingsProfileEditNameSubmitted =>
      'Name information sent for review';

  @override
  String get settingsProfileEditIdentitySection => 'Identity';

  @override
  String get settingsProfileEditContactSection => 'Contact preferences';

  @override
  String get settingsProfileEditContactEveryone => 'Everyone';

  @override
  String get settingsProfileEditContactFollowers => 'Followers';

  @override
  String get settingsProfileEditContactNoOne => 'Tidak ada';

  @override
  String get settingsProfileEditShowProfileInfo =>
      'Tampilkan info profil pada donasi';

  @override
  String get settingsProfileEditDisplayFollowerCount =>
      'Tampilkan jumlah pengikut';

  @override
  String get settingsProfileEditProfileUpdated => 'Profil diperbarui';

  @override
  String get settingsProfileEditSaveChanges => 'Simpan perubahan';

  @override
  String get settingsProfileEditPronounsLabel => 'Kata ganti';

  @override
  String get settingsProfileEditProfileNotFound => 'Profil tidak ditemukan';

  @override
  String get settingsProfileEditTapToChangePhoto => 'Ketuk untuk mengubah foto';

  @override
  String settingsProfileEditFailedToPickImage(String error) {
    return 'Gagal memilih gambar: $error';
  }

  @override
  String settingsProfileEditUploadFailed(String error) {
    return 'Unggah gagal: $error';
  }

  @override
  String settingsProfileEditUploadError(String error) {
    return 'Kesalahan unggah: $error';
  }

  @override
  String get settingsProfileEditUserNotAuthenticated =>
      'Pengguna tidak terautentikasi';

  @override
  String get settingsProfileEditNoChanges =>
      'Tidak ada perubahan untuk disimpan';

  @override
  String get settingsProfileFieldFullName => 'Nama Lengkap';

  @override
  String get settingsProfileFieldEmail => 'Email';

  @override
  String get settingsProfileFieldLocation => 'Lokasi';

  @override
  String get settingsProfileFieldLocationHint => 'Di mana Anda tinggal?';

  @override
  String get settingsProfileFieldWebsiteHint => 'https://contoh.com';

  @override
  String get settingsProfileFieldBioHint => 'Ceritakan tentang diri Anda';

  @override
  String get settingsProfileFieldSave => 'Simpan';

  @override
  String get settingsProfileFieldEditFallbackTitle => 'Edit bidang';

  @override
  String get settingsProfileFieldEditFallbackLabel => 'Bidang';

  @override
  String get settingsSecurityPasswordSectionTitle => 'Password';

  @override
  String get settingsSecurityPasswordChange => 'Change password';

  @override
  String get settingsSecurityPasswordLastChanged => 'Last changed 2 months ago';

  @override
  String get settingsSecurityPasswordToast =>
      'Change password feature coming soon';

  @override
  String get settingsSecurityTwoFactorSectionTitle =>
      'Two-factor authentication';

  @override
  String get settingsSecurityTwoFactorTitle => 'Two-factor authentication';

  @override
  String get settingsSecurityTwoFactorSubtitle =>
      'Require a security code in addition to your password';

  @override
  String get settingsSecurityTwoFactorMethods =>
      'Authenticator app (Google Authenticator, Authy)\nSMS to +62 812-XXXX-5678';

  @override
  String get settingsSecurityBiometricSectionTitle => 'Biometric security';

  @override
  String get settingsSecurityBiometricTitle => 'Biometric unlock';

  @override
  String get settingsSecurityBiometricSubtitle =>
      'Use fingerprint or face recognition';

  @override
  String get settingsSecurityLoginActivityTitle => 'Login activity';

  @override
  String settingsSecurityLoginActivityEntry(String time) {
    return 'Today at $time';
  }

  @override
  String get settingsSecurityLoginActivityLocation =>
      'Jakarta, Indonesia • Android';

  @override
  String get settingsSecuritySessionsTitle => 'Active device sessions';

  @override
  String get settingsSecuritySessionsDevice1Title => 'Samsung Galaxy S23';

  @override
  String get settingsSecuritySessionsDevice1Subtitle =>
      'Jakarta, Indonesia • Active now';

  @override
  String get settingsSecuritySessionsBadgeCurrent => 'Current';

  @override
  String get settingsSecuritySessionsDetails => 'Details';

  @override
  String get settingsSecuritySessionsDevice2Title => 'Chrome on Windows';

  @override
  String get settingsSecuritySessionsDevice2Subtitle =>
      'Bandung, Indonesia • 2 days ago';

  @override
  String get settingsSecuritySessionsSignOut => 'Sign out';

  @override
  String get settingsSecurityAlertsTitle => 'Security alerts';

  @override
  String get settingsSecurityAlertsDeviceTitle => 'Device alerts';

  @override
  String get settingsSecurityAlertsDeviceSubtitle =>
      'Get notified when your account is accessed from a new device';

  @override
  String get settingsSecurityRecoveryTitle => 'Account recovery';

  @override
  String get settingsSecurityRecoveryTrustedTitle => 'Trusted contacts';

  @override
  String get settingsSecurityRecoveryTrustedSubtitle =>
      'Add people who can help you recover your account';

  @override
  String get settingsSecurityRecoveryCodesTitle => 'Download recovery codes';

  @override
  String get settingsSecurityRecoveryCodesSubtitle =>
      'Save backup codes in case you lose access';

  @override
  String get settingsPrivacyTitle => 'Privacy';

  @override
  String get settingsPrivacySubtitle => 'Control your visibility and data';

  @override
  String get settingsPrivacyAudienceTitle => 'Audience & visibility';

  @override
  String get settingsPrivacyPrivateAccountTitle => 'Private account';

  @override
  String get settingsPrivacyPrivateAccountSubtitle =>
      'Approve followers before they see your activity';

  @override
  String get settingsPrivacySearchTitle => 'Appear in search';

  @override
  String get settingsPrivacySearchSubtitle =>
      'Allow people to discover you by name or username';

  @override
  String get settingsPrivacyDirectMessagesTitle => 'Direct messages';

  @override
  String get settingsPrivacyDirectMessagesAllowTitle =>
      'Allow messages from everyone';

  @override
  String get settingsPrivacyDirectMessagesAllowSubtitle =>
      'Messages from non-followers go to requests';

  @override
  String get settingsPrivacyDataPermissionsTitle => 'Data & permissions';

  @override
  String get settingsPrivacyDownloadInfoTitle => 'Download your information';

  @override
  String get settingsPrivacyDownloadInfoSubtitle =>
      'Get a copy of your posts, donations, and messages';

  @override
  String get settingsPrivacyDeleteAccountTitle => 'Delete account';

  @override
  String get settingsPrivacyDeleteAccountSubtitle =>
      'Permanently remove your account and data';

  @override
  String get settingsPrivacyDataSharingTitle => 'Data sharing';

  @override
  String get settingsPrivacyDataSharingSubtitle =>
      'Control analytics and personalized experiences';

  @override
  String get settingsPrivacyAnalyticsTitle => 'Share usage analytics';

  @override
  String get settingsPrivacyAnalyticsSubtitle =>
      'Help us improve Velora by sharing anonymized usage';

  @override
  String get settingsPrivacyPersonalizedTitle => 'Personalized experiences';

  @override
  String get settingsPrivacyPersonalizedSubtitle =>
      'Use my activity to tailor content and ads';

  @override
  String get postCreateAppBarTitle => 'Buat Postingan';

  @override
  String get postCreateAppBarNext => 'Selanjutnya';

  @override
  String get postCreateTitle => 'Postingan Baru';

  @override
  String get postCreatePublishTooltip => 'Terbitkan postingan';

  @override
  String get postCreatePublishHint =>
      'Ketuk dua kali untuk menerbitkan postingan Anda';

  @override
  String get postCreatePublishLabel => 'Terbitkan';

  @override
  String get postCreateMediaLabel => 'Selected media preview';

  @override
  String get postCreateMediaHint => 'Swipe to review your selected media';

  @override
  String get postCreateActionAddAudio => 'Add audio';

  @override
  String get postCreateActionTagPeople => 'Tag people';

  @override
  String get postCreateActionAddLocation => 'Add location';

  @override
  String get postCreateActionAudience => 'Audience';

  @override
  String get postCreateAudienceFollowers => 'Followers';

  @override
  String get postCreateActionMoreOptions => 'More options';

  @override
  String postCreateActionHintAdjust(String action) {
    return 'Double tap to adjust $action';
  }

  @override
  String postCreateActionHintOpen(String action) {
    return 'Double tap to $action';
  }

  @override
  String get postCreateSelectMediaError => 'Please select at least one image';

  @override
  String postCreateUploadFailed(String error) {
    return 'Upload failed: $error';
  }

  @override
  String get postCreateSuccess => 'Post created successfully!';

  @override
  String postCreateFailure(String error) {
    return 'Create post failed: $error';
  }

  @override
  String get postCreateDialogTitle => 'Publishing Post';

  @override
  String get postCreateDialogPreparing => 'Preparing to upload...';

  @override
  String get postCreateDialogUploading => 'Uploading media...';

  @override
  String get postCreateDialogCreating => 'Creating post...';

  @override
  String postCreateDialogError(String error) {
    return 'Error: $error';
  }

  @override
  String get postCaptionHint => 'Write a caption...';

  @override
  String get postMediaPreviewLabel => 'Media preview carousel';

  @override
  String get postMediaPreviewHint =>
      'Swipe left or right to preview selected media';

  @override
  String get postMediaRemoveLabel => 'Remove current media';

  @override
  String postMediaRemoveHint(int index) {
    return 'Double tap to remove media $index';
  }

  @override
  String postGalleryLoadError(String error) {
    return 'Error loading images: $error';
  }

  @override
  String get postGalleryImageLabel => 'Gallery image';

  @override
  String postGalleryImageHintSelected(int position) {
    return 'Selected at position $position';
  }

  @override
  String get postGalleryImageHintSelect => 'Double tap to select this image';

  @override
  String get postGalleryEmptyTitle => 'No photos selected';

  @override
  String get postGalleryEmptySubtitle =>
      'Tap the button below to select photos from your gallery';

  @override
  String get postGallerySelectButton => 'Select photos';

  @override
  String get postToolbarLocation => 'Location';

  @override
  String get postToolbarLink => 'Link';

  @override
  String get postToolbarCampaign => 'Campaign';

  @override
  String get postMoreOptionsTitle => 'More options';

  @override
  String get postMoreOptionsHeader => 'How others can interact with your post';

  @override
  String get postMoreOptionsTurnOffCommentsTitle => 'Turn off commenting';

  @override
  String get postMoreOptionsTurnOffCommentsSubtitle =>
      'You can change this later by going to the ⋯ menu at the top of your post.';

  @override
  String get postMoreOptionsHideLikeCountTitle =>
      'Hide like count on this post';

  @override
  String get postMoreOptionsHideShareCountTitle =>
      'Hide share count on this post';

  @override
  String get postMoreOptionsHideShareCountSubtitle =>
      'Only you will see the total number of likes and shares on this post. You can change this later by going to the ⋯ menu at the top of your post. You can hide the number of likes and shares on posts from other accounts by going to Settings. Learn more';

  @override
  String get postMoreOptionsHideCommentCountTitle =>
      'Hide comment count on this post';

  @override
  String get postMoreOptionsHideLikesListTitle =>
      'Hide list of people who liked this post';

  @override
  String get postMoreOptionsHideLikesListSubtitle =>
      'Viewers will see the like count (unless hidden) but not who liked it.';

  @override
  String postToggleHintEnable(String action) {
    return 'Double tap to allow $action';
  }

  @override
  String postToggleHintDisable(String action) {
    return 'Double tap to disable $action';
  }

  @override
  String get chatScreenTitle => 'Obrolan';

  @override
  String get chatScreenNewChatLabel => 'Mulai obrolan baru';

  @override
  String get chatScreenNewChatTooltip => 'Obrolan baru';

  @override
  String get chatScreenListLabel => 'Daftar obrolan';

  @override
  String get chatScreenListHint =>
      'Geser ke atas atau ke bawah untuk menelusuri percakapan';

  @override
  String get chatScreenRetry => 'Coba Lagi';

  @override
  String get chatScreenNoChats => 'Tidak Ada Riwayat Obrolan';

  @override
  String get chatScreenNoChatsHint =>
      'Mulai percakapan baru untuk melihat obrolan Anda di sini';

  @override
  String get chatScreenUnnamed => 'Tanpa Nama';

  @override
  String get chatScreenUnnamedGroup => 'Grup Tanpa Nama';

  @override
  String get chatFilterAll => 'Semua';

  @override
  String get chatFilterUnread => 'Belum dibaca';

  @override
  String get chatFilterFavourites => 'Favorit';

  @override
  String get chatFilterGroups => 'Grup';

  @override
  String chatFilterSemanticsLabel(String filter) {
    return 'Filter $filter';
  }

  @override
  String chatFilterSemanticsHint(String filter) {
    return 'Ketuk dua kali untuk memfilter obrolan berdasarkan $filter';
  }

  @override
  String get chatSearchBarLabel => 'Cari obrolan';

  @override
  String get chatSearchBarHint => 'Masukkan teks untuk mencari percakapan';

  @override
  String get chatSearchBarPlaceholder => 'Tanyakan Meta AI atau cari';

  @override
  String chatListItemSemanticsLabel(String name) {
    return 'Obrolan dengan $name';
  }

  @override
  String get chatListItemSemanticsHint =>
      'Ketuk dua kali untuk membuka percakapan';

  @override
  String chatListItemPhotos(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count foto',
      one: '$count foto',
    );
    return '$_temp0';
  }

  @override
  String get chatListItemPhoto => 'Foto';

  @override
  String get chatListItemMissedCall => 'Panggilan suara terlewat';

  @override
  String get chatBubbleYourLabel => 'Pesan Anda';

  @override
  String get chatBubbleReceivedLabel => 'Pesan diterima';

  @override
  String chatBubbleHint(String time) {
    return 'Pesan dikirim pukul $time';
  }

  @override
  String get chatMediaYourLabel => 'Media dari Anda';

  @override
  String get chatMediaReceivedLabel => 'Media yang diterima';

  @override
  String chatMediaHint(String time) {
    return 'Media dikirim pukul $time';
  }

  @override
  String chatDateSeparatorLabel(String date) {
    return 'Pemisah tanggal: $date';
  }

  @override
  String get chatInputEmojiLabel => 'Pemilih emoji';

  @override
  String get chatInputEmojiHint => 'Ketuk dua kali untuk membuka pemilih emoji';

  @override
  String get chatInputEmojiTooltip => 'Emoji';

  @override
  String get chatInputFieldLabel => 'Input pesan';

  @override
  String get chatInputFieldHint => 'Ketik pesan Anda di sini';

  @override
  String get chatInputFieldPlaceholder => 'Pesan';

  @override
  String get chatInputAttachLabel => 'Lampirkan file';

  @override
  String get chatInputAttachHint => 'Ketuk dua kali untuk melampirkan file';

  @override
  String get chatInputAttachTooltip => 'Lampirkan file';

  @override
  String get chatInputCameraLabel => 'Kamera';

  @override
  String get chatInputCameraHint => 'Ketuk dua kali untuk membuka kamera';

  @override
  String get chatInputCameraTooltip => 'Kamera';

  @override
  String get chatInputSendLabel => 'Kirim pesan';

  @override
  String get chatInputSendHint => 'Ketuk dua kali untuk mengirim pesan';

  @override
  String get chatInputVoiceLabel => 'Pesan suara';

  @override
  String get chatInputVoiceHint => 'Ketuk dua kali untuk merekam pesan suara';

  @override
  String get chatAttachmentGallery => 'Galeri';

  @override
  String get chatAttachmentCamera => 'Kamera';

  @override
  String get chatAttachmentLocation => 'Lokasi';

  @override
  String get chatAttachmentContact => 'Kontak';

  @override
  String get chatAttachmentDocument => 'Dokumen';

  @override
  String get chatAttachmentAudio => 'Audio';

  @override
  String get chatAttachmentPoll => 'Jajak pendapat';

  @override
  String get chatAttachmentEvent => 'Acara';

  @override
  String get chatAttachmentAiImages => 'Gambar AI';

  @override
  String chatAttachmentSelectHint(String label) {
    return 'Ketuk dua kali untuk memilih $label';
  }

  @override
  String get chatDetailBackLabel => 'Kembali';

  @override
  String chatDetailTitleLabel(String name) {
    return 'Percakapan dengan $name';
  }

  @override
  String get chatDetailGroupSubtitle => 'Ketuk di sini untuk info grup';

  @override
  String get chatDetailSelfSubtitle => 'Pesan diri sendiri';

  @override
  String get chatDetailOptionsLabel => 'Opsi percakapan';

  @override
  String get chatDetailMenuTooltip => 'Opsi lainnya';

  @override
  String get chatDetailHistoryLabel => 'Riwayat percakapan';

  @override
  String get chatDetailHistoryHint => 'Geser ke atas untuk meninjau pesan lama';

  @override
  String get chatDetailNoMessages => 'Belum ada pesan';

  @override
  String get chatDetailNoMessagesHint => 'Kirim pesan untuk memulai percakapan';

  @override
  String get chatDetailMessageDeleted => 'Pesan ini telah dihapus';

  @override
  String get chatDetailSelectMediaTitle => 'Pilih jenis media';

  @override
  String get chatDetailSelectImages => 'Gambar';

  @override
  String get chatDetailSelectVideo => 'Video';

  @override
  String chatDetailImagesSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gambar dipilih',
      one: '$count gambar dipilih',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailVideoSelected => 'Video dipilih';

  @override
  String get chatDetailPickMediaError => 'Gagal memilih media';

  @override
  String get chatDetailCameraModeTitle => 'Pilih mode kamera';

  @override
  String get chatDetailCameraTakePhoto => 'Ambil foto';

  @override
  String get chatDetailCameraRecordVideo => 'Rekam video';

  @override
  String get chatDetailPhotoCaptured => 'Foto berhasil diambil';

  @override
  String get chatDetailVideoRecorded => 'Video berhasil direkam';

  @override
  String get chatDetailPollCreated => 'Jajak pendapat dibuat';

  @override
  String get chatDetailEventCreated => 'Acara dibuat';

  @override
  String chatDetailDocumentsSelected(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dokumen dipilih',
      one: '$count dokumen dipilih',
    );
    return '$_temp0';
  }

  @override
  String get chatDetailDocumentError => 'Gagal memilih dokumen';

  @override
  String get chatDetailAudioSelected => 'File audio dipilih';

  @override
  String get chatDetailAudioError => 'Gagal memilih audio';

  @override
  String get chatDetailLocationSelected => 'Lokasi dipilih';

  @override
  String get chatDetailContactSelected => 'Kontak dipilih';

  @override
  String get chatDetailAiImagesSelected => 'Gambar AI dipilih';

  @override
  String get chatDetailVoiceMessage => 'Pesan suara';

  @override
  String get chatDetailVoiceError => 'Failed to record voice message';

  @override
  String get chatDetailVoiceRecorded => 'Uploading voice message...';

  @override
  String get chatDetailDownloadFile => 'Download file';

  @override
  String get chatDetailDownloading => 'Downloading...';

  @override
  String get chatDetailDownloadSuccess => 'File downloaded successfully';

  @override
  String get chatDetailDownloadError => 'Failed to download file';

  @override
  String get chatDetailOpenFile => 'Open file';

  @override
  String get voiceRecorderTitle => 'Voice Message';

  @override
  String get voiceRecorderCheckingPermission =>
      'Checking microphone permission...';

  @override
  String get voiceRecorderNoPermission =>
      'Microphone permission is required to record voice messages';

  @override
  String get voiceRecorderRetryPermission => 'Grant Permission';

  @override
  String get voiceRecorderTapToStart => 'Tap to start recording';

  @override
  String get voiceRecorderRecording => 'Recording...';

  @override
  String get voiceRecorderPaused => 'Paused';

  @override
  String get voiceRecorderCancel => 'Cancel';

  @override
  String get voiceRecorderPause => 'Pause';

  @override
  String get voiceRecorderResume => 'Resume';

  @override
  String get voiceRecorderSend => 'Send';

  @override
  String get chatDetailAudioUnavailable => 'Audio unavailable';

  @override
  String get chatDetailFileDownloading => 'Downloading file...';

  @override
  String get chatDetailStatusOnline => 'Sedang online';

  @override
  String get chatDetailTyping => 'mengetik';

  @override
  String get chatDetailLastSeenJustNow => 'terakhir dilihat baru saja';

  @override
  String chatDetailLastSeenMinutes(int minutes) {
    return 'terakhir dilihat $minutes menit lalu';
  }

  @override
  String chatDetailLastSeenHours(int hours) {
    return 'terakhir dilihat $hours jam lalu';
  }

  @override
  String chatDetailLastSeenDays(int days) {
    return 'terakhir dilihat $days hari lalu';
  }

  @override
  String chatDetailLastSeenDate(String date) {
    return 'terakhir dilihat $date';
  }

  @override
  String get chatScreenTyping => 'mengetik...';

  @override
  String get chatSearchScreenTitle => 'Cari';

  @override
  String get chatSearchScreenRecent => 'Pencarian terbaru';

  @override
  String get chatSearchScreenClearAll => 'Hapus semua';

  @override
  String get chatSearchGlobalLabel => 'Pencarian global';

  @override
  String get chatSearchGlobalHint =>
      'Cari di seluruh kampanye, postingan, dan orang';

  @override
  String get chatSearchPlaceholder => 'Cari…';

  @override
  String get chatSearchScopeCampaigns => 'Kampanye';

  @override
  String get chatSearchScopePosts => 'Postingan';

  @override
  String get chatSearchScopePeople => 'Orang';

  @override
  String chatSearchScopeSemantics(String scope) {
    return 'Ruang lingkup $scope';
  }

  @override
  String chatSearchRecentItemLabel(String query) {
    return 'Pencarian terbaru: $query';
  }

  @override
  String get chatSearchRecentItemHint => 'Ketuk dua kali untuk mencari lagi';

  @override
  String get chatSearchRecentDeleteLabel => 'Hapus pencarian terbaru';

  @override
  String get chatSearchRecentDeleteTooltip => 'Hapus';

  @override
  String get chatPollLabel => 'Jajak pendapat';

  @override
  String get chatPollSemanticsYour => 'Jajak pendapat Anda';

  @override
  String get chatPollSemanticsReceived => 'Jajak pendapat diterima';

  @override
  String chatPollSemanticsHint(int count) {
    return 'Jajak pendapat dengan $count suara';
  }

  @override
  String chatPollTotalVotes(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count suara',
      one: '$count suara',
    );
    return '$_temp0';
  }

  @override
  String chatPollOptionSemantics(String option, int votes, String percent) {
    return '$option, $votes suara, $percent persen';
  }

  @override
  String get chatPollVoteHint => 'Ketuk dua kali untuk memilih opsi ini';

  @override
  String get chatPollDialogTitle => 'Buat jajak pendapat';

  @override
  String get chatPollDialogQuestionLabel => 'Pertanyaan jajak pendapat';

  @override
  String get chatPollDialogQuestionHint => 'Ajukan pertanyaan…';

  @override
  String get chatPollDialogOptionsLabel => 'Opsi';

  @override
  String chatPollDialogOptionLabel(int index) {
    return 'Opsi $index';
  }

  @override
  String get chatPollDialogOptionHint => 'Masukkan opsi…';

  @override
  String get chatPollDialogAddOption => 'Tambah opsi';

  @override
  String get chatPollDialogQuestionError => 'Harap isi pertanyaan';

  @override
  String get chatPollDialogOptionsError => 'Tambahkan minimal 2 opsi';

  @override
  String get chatPollDialogMultipleChoiceLabel => 'Pilihan ganda';

  @override
  String get chatPollDialogMultipleChoiceHint =>
      'Izinkan pengguna memilih beberapa opsi';

  @override
  String get chatPollDialogMaxVotesLabel => 'Maksimal suara';

  @override
  String chatPollDialogMaxVotesHint(int count) {
    return 'Pengguna dapat memilih hingga $count opsi';
  }

  @override
  String get chatPollDialogSend => 'Kirim jajak pendapat';

  @override
  String get chatEventLabel => 'Acara';

  @override
  String get chatEventSemanticsYour => 'Acara Anda';

  @override
  String get chatEventSemanticsReceived => 'Acara diterima';

  @override
  String chatEventHint(String date) {
    return 'Acara pada $date';
  }

  @override
  String get chatEventDialogTitle => 'Buat acara';

  @override
  String get chatEventDialogTitleLabel => 'Judul acara';

  @override
  String get chatEventDialogTitleHint => 'Masukkan judul acara…';

  @override
  String get chatEventDialogDescriptionLabel => 'Deskripsi';

  @override
  String get chatEventDialogDescriptionHint => 'Masukkan deskripsi acara…';

  @override
  String get chatEventDialogLocationLabel => 'Lokasi (opsional)';

  @override
  String get chatEventDialogLocationHint => 'Masukkan lokasi…';

  @override
  String get chatEventDialogAddressLabel => 'Alamat';

  @override
  String get chatEventDialogAddressHint => 'Masukkan alamat lengkap…';

  @override
  String get chatEventDialogOnlineLabel => 'Acara online';

  @override
  String get chatEventDialogOnlineHint =>
      'Acara ini akan diadakan secara virtual';

  @override
  String get chatEventDialogMeetingUrlLabel => 'URL Meeting';

  @override
  String get chatEventDialogMeetingUrlHint =>
      'Masukkan tautan meeting (Zoom, Google Meet, dll.)';

  @override
  String get chatEventDialogMeetingUrlError =>
      'Harap masukkan URL meeting untuk acara online';

  @override
  String get chatEventDialogStartLabel => 'Mulai';

  @override
  String get chatEventDialogEndLabel => 'Selesai';

  @override
  String get chatEventDialogTitleError => 'Harap isi judul acara';

  @override
  String get chatEventDialogEndTimeError =>
      'Waktu selesai harus setelah waktu mulai';

  @override
  String get chatEventDialogSend => 'Kirim acara';

  @override
  String get chatEventResponseTitle => 'Respons Anda';

  @override
  String get chatEventResponseGoing => 'Hadir';

  @override
  String get chatEventResponseMaybe => 'Mungkin';

  @override
  String get chatEventResponseNo => 'Tidak hadir';

  @override
  String chatEventResponseSummary(int going, int maybe, int notGoing) {
    return '$going hadir • $maybe mungkin • $notGoing tidak hadir';
  }

  @override
  String chatEventResponseButtonLabel(String label) {
    return 'Respons $label';
  }

  @override
  String chatEventResponseButtonHint(String label) {
    return 'Ketuk dua kali untuk memberikan respons $label pada acara';
  }

  @override
  String get settingsAppearanceLanguageTitle => 'Bahasa';

  @override
  String get settingsAppearanceLanguagePreviewSemantics =>
      'Pratinjau bahasa saat ini';

  @override
  String get settingsAppearanceLanguageCurrentLabel => 'Bahasa saat ini';

  @override
  String get settingsAppearanceLanguageSearchHint => 'Cari bahasa…';

  @override
  String get settingsAppearanceLanguageEmpty =>
      'Tidak ada bahasa yang ditemukan';

  @override
  String settingsAppearanceLanguageToast(String language) {
    return 'Bahasa diubah menjadi $language';
  }

  @override
  String get settingsAppearanceLanguageRestartNote =>
      'Aplikasi akan dimulai ulang untuk menerapkan perubahan bahasa.';

  @override
  String get settingsAppearanceThemeTitle => 'Tema & tampilan';

  @override
  String get settingsAppearanceThemeModeSection => 'Mode tema';

  @override
  String get settingsAppearanceThemeModeLight => 'Terang';

  @override
  String get settingsAppearanceThemeModeDark => 'Gelap';

  @override
  String get settingsAppearanceThemeModeAuto => 'Otomatis';

  @override
  String get settingsAppearanceThemeModeDescription =>
      'Mode sistem otomatis mengikuti pengaturan perangkat Anda.';

  @override
  String get settingsAppearanceThemeColorSection => 'Warna';

  @override
  String get settingsAppearanceThemeColorDynamic => 'Warna dinamis';

  @override
  String get settingsAppearanceThemeShapeSection => 'Bentuk';

  @override
  String get settingsAppearanceThemeShapeCorner => 'Radius sudut';

  @override
  String settingsAppearanceThemeShapeCornerValue(int px) {
    return '$px px';
  }

  @override
  String get settingsAppearanceThemeShapeSquare => 'Persegi';

  @override
  String get settingsAppearanceThemeShapeSmall => 'Kecil';

  @override
  String get settingsAppearanceThemeShapeMedium => 'Sedang';

  @override
  String get settingsAppearanceThemeShapeLarge => 'Besar';

  @override
  String get settingsAppearanceThemeShapeMax => 'Maksimal';

  @override
  String get settingsAppearanceThemeAdvancedSection => 'Lanjutan';

  @override
  String get settingsAppearanceThemeAccentTitle => 'Warna aksen';

  @override
  String get settingsAppearanceThemeAccentSubtitle => 'Sesuaikan warna sorotan';

  @override
  String get settingsAppearanceThemeAccentToast => 'Pemilih warna segera hadir';

  @override
  String get settingsAppearanceThemeTypographyTitle => 'Tipografi';

  @override
  String get settingsAppearanceThemeTypographySubtitle =>
      'Jenis huruf dan ukuran';

  @override
  String get settingsAppearanceThemeTypographyToast =>
      'Pengaturan tipografi segera hadir';

  @override
  String get settingsAppearanceThemeAnimationsTitle => 'Animasi';

  @override
  String get settingsAppearanceThemeAnimationsSubtitle =>
      'Efek transisi dan gerakan';

  @override
  String get settingsAppearanceThemeAnimationsToast =>
      'Pengaturan animasi segera hadir';

  @override
  String get settingsAppearanceThemePreviewTitle => 'Pratinjau langsung';

  @override
  String get settingsAppearanceThemePreviewSampleCard => 'Kartu contoh';

  @override
  String settingsAppearanceThemeModeLabel(String mode) {
    return 'Mode $mode';
  }

  @override
  String get settingsAppearanceNotificationsTitle => 'Notifikasi';

  @override
  String get settingsAppearanceNotificationsQuick => 'Kontrol cepat';

  @override
  String get settingsAppearanceNotificationsPauseAllTitle =>
      'Jeda semua notifikasi';

  @override
  String get settingsAppearanceNotificationsPauseAllSubtitle =>
      'Hentikan sementara semua peringatan';

  @override
  String get settingsAppearanceNotificationsSleepModeTitle => 'Mode tidur';

  @override
  String get settingsAppearanceNotificationsSleepModeSubtitle =>
      'Senyapkan notifikasi di jam tertentu';

  @override
  String get settingsAppearanceNotificationsPostsSection => 'Posting & cerita';

  @override
  String get settingsAppearanceNotificationsPostsPeople =>
      'Posting dari orang yang saya ikuti';

  @override
  String get settingsAppearanceNotificationsPostsLive => 'Video langsung';

  @override
  String get settingsAppearanceNotificationsPostsLiveSubtitle =>
      'Saat seseorang siaran langsung';

  @override
  String get settingsAppearanceNotificationsPostsCampaigns => 'Kampanye baru';

  @override
  String get settingsAppearanceNotificationsPostsCampaignsSubtitle =>
      'Dari kreator yang saya ikuti';

  @override
  String get settingsAppearanceNotificationsEngagementSection => 'Interaksi';

  @override
  String get settingsAppearanceNotificationsEngagementLikes =>
      'Suka pada posting saya';

  @override
  String get settingsAppearanceNotificationsEngagementReplies =>
      'Balasan komentar';

  @override
  String get settingsAppearanceNotificationsEngagementMentions => 'Mention';

  @override
  String get settingsAppearanceNotificationsEngagementMentionsSubtitle =>
      'Saat seseorang menandai saya';

  @override
  String get settingsAppearanceNotificationsEngagementFollowers =>
      'Pengikut baru';

  @override
  String get settingsAppearanceNotificationsDonationsSection =>
      'Donasi & kampanye';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedTitle =>
      'Donasi diterima';

  @override
  String get settingsAppearanceNotificationsDonationsReceivedSubtitle =>
      'Saat seseorang berdonasi untuk kampanye saya';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesTitle =>
      'Milestone kampanye';

  @override
  String get settingsAppearanceNotificationsDonationsMilestonesSubtitle =>
      'Pencapaian 25%, 50%, 75%, 100%';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesTitle =>
      'Pembaruan kampanye';

  @override
  String get settingsAppearanceNotificationsDonationsUpdatesSubtitle =>
      'Dari kampanye yang saya dukung';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawTitle =>
      'Status pencairan';

  @override
  String get settingsAppearanceNotificationsDonationsWithdrawSubtitle =>
      'Sedang diproses, selesai, atau gagal';

  @override
  String get settingsAppearanceNotificationsMessagesSection => 'Pesan';

  @override
  String get settingsAppearanceNotificationsMessagesDirect => 'Pesan langsung';

  @override
  String get settingsAppearanceNotificationsMessagesRequests =>
      'Permintaan pesan';

  @override
  String get settingsAppearanceNotificationsMessagesRequestsSubtitle =>
      'Dari orang yang tidak saya ikuti';

  @override
  String get settingsAppearanceNotificationsMessagesGroups => 'Undangan grup';

  @override
  String get settingsAppearanceNotificationsSummaryTitle =>
      'Ringkasan notifikasi';

  @override
  String get settingsAppearanceNotificationsSummarySubtitle =>
      'Terima ringkasan harian atau mingguan alih-alih notifikasi real-time';

  @override
  String get settingsAppearanceNotificationsSummaryOff => 'Nonaktif';

  @override
  String get settingsAppearanceNotificationsSummaryDaily => 'Harian';

  @override
  String get settingsAppearanceNotificationsSummaryWeekly => 'Mingguan';

  @override
  String get settingsAppearanceNotificationsOtherSection => 'Saluran lain';

  @override
  String get settingsAppearanceNotificationsOtherEmailTitle =>
      'Notifikasi email';

  @override
  String get settingsAppearanceNotificationsOtherEmailSubtitle =>
      'Ringkasan mingguan dan info penting';

  @override
  String get settingsAppearanceNotificationsOtherSmsTitle => 'Notifikasi SMS';

  @override
  String get settingsAppearanceNotificationsOtherSmsSubtitle =>
      'Hanya peringatan penting';

  @override
  String get settingsAppearanceAccessibilityTitle => 'Aksesibilitas';

  @override
  String get settingsAppearanceAccessibilitySubtitle =>
      'Atur tipografi dan tata letak';

  @override
  String get settingsAppearanceAccessibilityTabText => 'Teks';

  @override
  String get settingsAppearanceAccessibilityTabAppearance => 'Tampilan';

  @override
  String get settingsAppearanceAccessibilityTabLayout => 'Tata letak';

  @override
  String get settingsAppearanceAccessibilityFontSizeTitle => 'Ukuran huruf';

  @override
  String get settingsAppearanceAccessibilityFontSizeSubtitle =>
      'Pratinjau menyesuaikan di seluruh Velora';

  @override
  String settingsAppearanceAccessibilityFontSizeLabel(double points) {
    return '$points pt';
  }

  @override
  String settingsAppearanceAccessibilityFontSample(double points) {
    return 'Contoh teks pada $points pt';
  }

  @override
  String get settingsAppearanceAccessibilityFontFamilyTitle => 'Jenis huruf';

  @override
  String get settingsAppearanceAccessibilityTextAlignmentTitle =>
      'Perataan teks';

  @override
  String get settingsAppearanceAccessibilityPreviewTitle => 'Pratinjau';

  @override
  String get settingsAppearanceAccessibilityPreviewBody =>
      'Velora membuat kota lebih manusiawi dengan memberi semua orang ruang untuk bertindak.';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastTitle =>
      'Mode kontras tinggi';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastSubtitle =>
      'Perjelas teks dan ikon';

  @override
  String get settingsAppearanceAccessibilityAppearanceHighContrastToggle =>
      'Aktifkan UI kontras tinggi';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceTitle =>
      'Kurangi gerakan';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceSubtitle =>
      'Batasi efek paralaks dan transisi besar';

  @override
  String get settingsAppearanceAccessibilityAppearanceReduceToggle =>
      'Minimalkan animasi';

  @override
  String get settingsAppearanceAccessibilityLayoutLineSpacing =>
      'Jarak antarbaris';

  @override
  String get settingsAppearanceAccessibilityLayoutPreviewBody =>
      'Velora membuat kota lebih manusiawi dengan memberi semua orang ruang untuk bertindak.\nCerita, penggalangan dana, dan laporan lapangan akan muncul di sini.';

  @override
  String get settingsAccountStatusTitle => 'Status akun';

  @override
  String get settingsAccountStatusSubtitle =>
      'Kesehatan akun dan verifikasi Anda';

  @override
  String get settingsAccountStatusInfoTitle => 'Informasi akun';

  @override
  String get settingsAccountStatusStandingTitle => 'Akun dalam kondisi baik';

  @override
  String get settingsAccountStatusStandingSubtitle => 'Tidak ada pembatasan';

  @override
  String get settingsAccountStatusEmailTitle => 'Email terverifikasi';

  @override
  String get settingsAccountStatusPhoneTitle => 'Nomor telepon terverifikasi';

  @override
  String get settingsAccountStatusMetricsTitle => 'Metrik akun';

  @override
  String get settingsAccountStatusMemberSinceTitle => 'Anggota sejak';

  @override
  String get settingsAccountStatusDonationsTitle => 'Total donasi';

  @override
  String get settingsAccountStatusCampaignsTitle => 'Kampanye yang dibuat';

  @override
  String get settingsAccountActivityTitle => 'Aktivitas Anda';

  @override
  String get settingsAccountActivitySubtitle =>
      'Tinjau interaksi dan riwayat Anda';

  @override
  String get settingsAccountActivityTabLikes => 'Suka';

  @override
  String get settingsAccountActivityTabComments => 'Komentar';

  @override
  String get settingsAccountActivityTabDonations => 'Donasi';

  @override
  String get settingsAccountActivityTabArchive => 'Arsip';

  @override
  String get settingsAccountActivityTabDeleted => 'Dihapus';

  @override
  String get settingsAccountActivityRecentLikes => 'Suka terbaru';

  @override
  String get settingsAccountActivityRecentComments => 'Komentar terbaru';

  @override
  String get settingsAccountActivityArchived => 'Diarsipkan';

  @override
  String get settingsAccountActivityRestoreButton => 'Pulihkan';

  @override
  String get settingsAccountActivityDeletedEmptyTitle =>
      'Belum ada item yang dihapus';

  @override
  String get settingsAccountActivityDeletedEmptySubtitle =>
      'Item yang Anda hapus muncul di sini selama 30 hari sebelum dihapus permanen.';

  @override
  String get settingsAccountDonationsTitle => 'Donasi saya';

  @override
  String get settingsAccountDonationsSubtitle =>
      'Riwayat dan dampak kontribusi Anda';

  @override
  String get settingsAccountDonationsImpactTitle => 'Ringkasan dampak';

  @override
  String get settingsAccountDonationsTotalLabel => 'Total donasi';

  @override
  String get settingsAccountDonationsCampaignsLabel => 'Kampanye';

  @override
  String get settingsAccountDonationsThisMonthLabel => 'Bulan ini';

  @override
  String get settingsAccountDonationsRecurringLabel => 'Berkala';

  @override
  String get campaignSeeMore => 'Lihat Semua';

  @override
  String get campaignFeaturedTitle => 'Kampanye Unggulan';

  @override
  String get campaignEmergencyTitle => 'Penggalangan Dana Darurat';

  @override
  String get campaignSocialImpactTitle => 'Dampak Sosial';

  @override
  String get campaignTechnologyTitle => 'Teknologi';

  @override
  String get campaignFashionTitle => 'Fashion';

  @override
  String get campaignFoodBeverageTitle => 'Makanan & Minuman';

  @override
  String get campaignFinanceTitle => 'Keuangan';

  @override
  String get campaignMemorialTitle => 'Penggalangan Dana Memorial';

  @override
  String campaignRaisedOf(String target) {
    return 'terkumpul dari $target';
  }

  @override
  String get campaignEndOfList => 'Tidak ada kampanye lagi';

  @override
  String get searchTitle => 'Cari';

  @override
  String get searchHint => 'Apa yang ingin Anda temukan?';

  @override
  String get searchDiscoverTitle => 'Temukan sesuatu yang baru';

  @override
  String get searchBrowseAllTitle => 'Jelajahi semua';

  @override
  String settingsAccountDonationsRecurringValue(int count) {
    return '$count aktif';
  }

  @override
  String get settingsAccountDonationsMatchedLabel => 'Dicocokkan';

  @override
  String get settingsAccountDonationsFilterAll => 'Semua';

  @override
  String get settingsAccountDonationsFilterRecurring => 'Berkala';

  @override
  String get settingsAccountDonationsFilterMatched => 'Dicocokkan';

  @override
  String get settingsAccountDonationsExportButton => 'Ekspor semua kuitansi';

  @override
  String get settingsAccountDonationsExportingToast =>
      'Menyiapkan ekspor riwayat donasi…';

  @override
  String get settingsAccountDonationsStatusRecurring => 'BERKALA';

  @override
  String get settingsAccountDonationsStatusMatched => 'DICOCOKKAN';

  @override
  String get settingsAccountDonationsEmptyTitle => 'Belum ada donasi';

  @override
  String get settingsAccountDonationsEmptySubtitle =>
      'Mulailah memberi dampak dengan mendukung kampanye yang berarti bagi Anda.';

  @override
  String get settingsAccountDonationsEmptyButton => 'Jelajahi kampanye';

  @override
  String get settingsHelpCenterTitle => 'Pusat bantuan';

  @override
  String get settingsHelpCenterSubtitle => 'Sumber dukungan & keamanan';

  @override
  String get settingsHelpPrioritySemantics => 'Sorotan dukungan prioritas';

  @override
  String get settingsHelpPriorityTitle => 'Dukungan prioritas';

  @override
  String get settingsHelpPrioritySubtitle =>
      'Tim keamanan kami biasanya membalas dalam 2 jam untuk kreator terverifikasi.';

  @override
  String get settingsHelpSupportOptionsTitle => 'Opsi dukungan';

  @override
  String get settingsHelpFaqTileTitle => 'Pertanyaan yang sering ditanyakan';

  @override
  String get settingsHelpFaqTileSubtitle => 'Jawaban instan khusus untuk Anda';

  @override
  String get settingsHelpEmailTitle => 'Dukungan email';

  @override
  String get settingsHelpEmailSubtitle => 'support@velora.app';

  @override
  String get settingsHelpReportTitle => 'Laporkan masalah';

  @override
  String get settingsHelpReportSubtitle => 'Bug, penyalahgunaan, pelecehan';

  @override
  String get settingsHelpGuidesTitle => 'Panduan';

  @override
  String get settingsHelpCommunityGuidelinesTitle => 'Pedoman komunitas';

  @override
  String get settingsHelpCommunityGuidelinesSubtitle =>
      'Diperbarui Februari 2025';

  @override
  String get settingsHelpSecurityChecklistTitle => 'Daftar periksa keamanan';

  @override
  String get settingsHelpSecurityChecklistSubtitle => 'Jaga akun tetap aman';

  @override
  String get settingsHelpReportSheetTitle => 'Laporkan masalah';

  @override
  String get settingsHelpReportHint => 'Jelaskan apa yang terjadi…';

  @override
  String get settingsHelpReportThanks => 'Terima kasih atas laporannya';

  @override
  String get settingsHelpReportSendButton => 'Kirim';

  @override
  String get settingsHelpFaqTitle => 'FAQ';

  @override
  String get settingsHelpFaqSubtitle => 'Topik bantuan populer';

  @override
  String get settingsHelpFaqQuestion1 =>
      'Bagaimana Velora memverifikasi kampanye?';

  @override
  String get settingsHelpFaqAnswer1 =>
      'Setiap kampanye melewati daftar pemeriksaan kepercayaan, termasuk validasi penerima, dokumen identitas, dan milestone transparansi.';

  @override
  String get settingsHelpFaqQuestion2 =>
      'Bisakah saya menyembunyikan nominal donasi?';

  @override
  String get settingsHelpFaqAnswer2 =>
      'Bisa. Saat berdonasi, pilih opsi \"Nominal anonim\" sehingga hanya avatar Anda yang terlihat.';

  @override
  String get settingsHelpFaqQuestion3 =>
      'Bagaimana jika saya kehilangan akses ke akun?';

  @override
  String get settingsHelpFaqAnswer3 =>
      'Gunakan recovery kit di Password & security. Anda dapat memberi wewenang terlebih dulu kepada kontak tepercaya untuk menyetujui login Anda.';

  @override
  String get settingsHelpFaqQuestion4 => 'Bagaimana cara mengatur notifikasi?';

  @override
  String get settingsHelpFaqAnswer4 =>
      'Buka pengaturan Notifikasi untuk mengatur push, email, dan SMS bagi tiap jenis kampanye.';

  @override
  String get settingsHelpAboutTitle => 'Tentang Velora';

  @override
  String get settingsHelpAboutSemantics => 'Ringkasan merek Velora';

  @override
  String get settingsHelpAboutBrandName => 'Velora';

  @override
  String get settingsHelpAboutTagline => 'Memberdayakan kemurahan hati';

  @override
  String get settingsHelpAboutVersion => 'Versi 1.0.0 (Build 1)';

  @override
  String get settingsHelpAboutWhyTitle => 'Mengapa Velora';

  @override
  String get settingsHelpAboutWhyDescription =>
      'Velora adalah platform dampak sosial yang menghubungkan orang dermawan dengan berbagai tujuan bermakna. Bersama, kita membuat dunia lebih baik.';

  @override
  String get settingsHelpAboutStatCampaigns => '1 jt+ Kampanye';

  @override
  String get settingsHelpAboutStatSupporters => '5 jt+ Pendukung';

  @override
  String get settingsHelpAboutStatTrust => 'Mengutamakan kepercayaan';

  @override
  String get settingsHelpAboutConnectTitle => 'Hubungi kami';

  @override
  String get settingsHelpAboutSocialWebsite => 'Situs web';

  @override
  String get settingsHelpAboutSocialInstagram => 'Instagram';

  @override
  String get settingsHelpAboutSocialThreads => 'Threads';

  @override
  String get settingsHelpAboutSocialFacebook => 'Facebook';

  @override
  String get settingsHelpAboutLegalTitle => 'Legal';

  @override
  String get settingsHelpAboutDevTitle => 'Tim pengembang';

  @override
  String get settingsHelpAboutDevOrgSubtitle =>
      'Produk, desain, dan engineering';

  @override
  String get settingsHelpAboutDevFounderSubtitle => 'Pendiri & lead developer';

  @override
  String get settingsHelpAboutContactTitle => 'Kontak & dukungan';

  @override
  String get settingsHelpAboutLiveChatTitle => 'Live chat';

  @override
  String get settingsHelpAboutLiveChatSubtitle =>
      'Tersedia pukul 09.00 – 18.00';

  @override
  String get settingsHelpAboutReportBugTitle => 'Laporkan bug';

  @override
  String get settingsHelpAboutReportBugSubtitle =>
      'Bantu kami meningkatkan Velora';

  @override
  String get settingsHelpAboutSuggestFeatureTitle => 'Usulkan fitur';

  @override
  String get settingsHelpAboutSuggestFeatureSubtitle =>
      'Bagikan ide produk Anda';

  @override
  String get settingsHelpAboutPrivacy => 'Kebijakan privasi';

  @override
  String get settingsHelpAboutTerms => 'Ketentuan layanan';

  @override
  String get settingsHelpAboutCookie => 'Kebijakan cookie';

  @override
  String get settingsHelpAboutLicenses => 'Lisensi sumber terbuka';

  @override
  String get settingsHelpAboutEnjoyTitle => 'Suka dengan Velora?';

  @override
  String get settingsHelpAboutEnjoySubtitle =>
      'Beri rating dan bantu orang lain menemukan Velora.';

  @override
  String get settingsHelpAboutRateButton => 'Beri rating Velora';

  @override
  String get settingsHelpAboutAcknowledgementsTitle => 'Ucapan terima kasih';

  @override
  String get settingsHelpAboutAcknowledgementsThanks =>
      'Terima kasih kepada para kontributor, beta tester, dan komunitas Flutter yang turut menghadirkan Velora.';

  @override
  String get settingsHelpAboutAcknowledgementFlutter => 'Flutter';

  @override
  String get settingsHelpAboutAcknowledgementDart => 'Dart';

  @override
  String get settingsHelpAboutAcknowledgementFirebase => 'Firebase';

  @override
  String get settingsHelpAboutAcknowledgementSupabase => 'Supabase';

  @override
  String get settingsHelpAboutAcknowledgementMaterial => 'Material Design';

  @override
  String get settingsHelpAboutFooterCopyright =>
      '© 2025 VitoTechLab. Seluruh hak cipta.';

  @override
  String get settingsHelpAboutFooterMadeWith =>
      'Dibuat dengan ❤️ untuk dunia yang lebih baik';

  @override
  String get chatGallerySelectPhotos => 'Select Photos';

  @override
  String get chatGallerySelectAtLeastOne => 'Please select at least one image';

  @override
  String get chatGalleryUnableToLoad => 'Unable to load the selected images';

  @override
  String get chatGallerySomeImagesNotAccessed =>
      'Some images could not be accessed';

  @override
  String get chatGallerySend => 'Send';

  @override
  String chatGallerySendCount(int count) {
    return 'Send ($count)';
  }

  @override
  String chatGallerySelectedCount(int selected, int max) {
    return '$selected of $max selected';
  }

  @override
  String get chatGalleryClearAll => 'Clear all';

  @override
  String get chatDocumentTitle => 'Select Documents';

  @override
  String get chatDocumentSend => 'Send';

  @override
  String chatDocumentSendCount(int count) {
    return 'Send ($count)';
  }

  @override
  String chatDocumentSelectedCount(int selected, int max) {
    return '$selected of $max selected';
  }

  @override
  String get chatDocumentClearAll => 'Clear all';

  @override
  String chatDocumentMaxReached(int max) {
    return 'Maximum $max documents allowed';
  }

  @override
  String chatDocumentSomeLimited(int max) {
    return 'Some files were skipped (max $max)';
  }

  @override
  String get chatDocumentPickError => 'Failed to pick documents';

  @override
  String get chatDocumentSelectAtLeastOne =>
      'Please select at least one document';

  @override
  String get chatDocumentEmptyTitle => 'No documents selected';

  @override
  String get chatDocumentEmptySubtitle =>
      'Tap the button below to browse and select files';

  @override
  String get chatDocumentBrowseFiles => 'Browse Files';

  @override
  String get chatDocumentAddMore => 'Add more documents';

  @override
  String get mediaPreviewTitle => 'Pratinjau';

  @override
  String get mediaPreviewAddCaption => 'Tambahkan keterangan...';

  @override
  String get mediaPreviewRemove => 'Hapus';

  @override
  String get mediaPreviewSend => 'Kirim';
}
