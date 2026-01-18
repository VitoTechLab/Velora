package com.example.velora

import android.view.LayoutInflater
import android.view.View
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

        // Find all views
        val icon = adView.findViewById<ImageView>(R.id.ad_icon)
        val advertiser = adView.findViewById<TextView>(R.id.ad_advertiser)
        val headline = adView.findViewById<TextView>(R.id.ad_headline)
        val body = adView.findViewById<TextView>(R.id.ad_body)
        val rating = adView.findViewById<TextView>(R.id.ad_rating)
        val cta = adView.findViewById<Button>(R.id.ad_cta)
        val mediaView = adView.findViewById<MediaView>(R.id.ad_media)
        val adChoices = adView.findViewById<ImageView>(R.id.ad_choices)

        // Assign views to ad view
        adView.iconView = icon
        adView.advertiserView = advertiser
        adView.headlineView = headline
        adView.bodyView = body
        adView.starRatingView = rating
        adView.callToActionView = cta
        adView.mediaView = mediaView

        // Populate icon
        nativeAd.icon?.let {
            icon.setImageDrawable(it.drawable)
            icon.visibility = View.VISIBLE
        } ?: run {
            icon.visibility = View.GONE
        }

        // Populate advertiser name (use advertiser or store if available)
        advertiser.text = nativeAd.advertiser ?: nativeAd.store ?: "Sponsored"

        // Populate headline
        headline.text = nativeAd.headline ?: ""

        // Populate body (optional)
        nativeAd.body?.let {
            if (it.isNotEmpty()) {
                body.text = it
                body.visibility = View.VISIBLE
            }
        }

        // Populate star rating (optional)
        nativeAd.starRating?.let {
            val ratingText = "⭐ ${String.format("%.1f", it)}"
            rating.text = ratingText
            rating.visibility = View.VISIBLE
        }

        // Populate CTA button
        cta.text = nativeAd.callToAction ?: "Learn More"

        // Populate media content
        nativeAd.mediaContent?.let {
            mediaView.setMediaContent(it)
        }

        // Ad choices icon (optional)
        nativeAd.adChoicesInfo?.let {
            // AdChoices will be automatically rendered by Google
            adChoices.visibility = View.VISIBLE
        }

        // IMPORTANT: Must be called last
        adView.setNativeAd(nativeAd)

        return adView
    }
}
