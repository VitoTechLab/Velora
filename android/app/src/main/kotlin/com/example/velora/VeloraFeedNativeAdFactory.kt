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

        try {
            // Find all views
            val icon = adView.findViewById<ImageView>(R.id.ad_icon)
            val advertiser = adView.findViewById<TextView>(R.id.ad_advertiser)
            val headline = adView.findViewById<TextView>(R.id.ad_headline)
            val body = adView.findViewById<TextView>(R.id.ad_body)
            val rating = adView.findViewById<TextView>(R.id.ad_rating)
            val cta = adView.findViewById<Button>(R.id.ad_cta)
            val mediaView = adView.findViewById<MediaView>(R.id.ad_media)

            // Assign views to ad view (only non-null views)
            icon?.let { adView.iconView = it }
            advertiser?.let { adView.advertiserView = it }
            headline?.let { adView.headlineView = it }
            body?.let { adView.bodyView = it }
            rating?.let { adView.starRatingView = it }
            cta?.let { adView.callToActionView = it }
            mediaView?.let { adView.mediaView = it }

            // Populate icon
            icon?.let { iconView ->
                nativeAd.icon?.let {
                    iconView.setImageDrawable(it.drawable)
                    iconView.visibility = View.VISIBLE
                } ?: run {
                    iconView.visibility = View.GONE
                }
            }

            // Populate advertiser name
            advertiser?.let {
                it.text = nativeAd.advertiser ?: nativeAd.store ?: "Sponsored"
            }

            // Populate headline
            headline?.let {
                it.text = nativeAd.headline ?: ""
            }

            // Populate body (optional)
            body?.let { bodyView ->
                nativeAd.body?.let {
                    if (it.isNotEmpty()) {
                        bodyView.text = it
                        bodyView.visibility = View.VISIBLE
                    } else {
                        bodyView.visibility = View.GONE
                    }
                } ?: run {
                    bodyView.visibility = View.GONE
                }
            }

            // Populate star rating (optional)
            rating?.let { ratingView ->
                nativeAd.starRating?.let {
                    val ratingText = "⭐ ${String.format("%.1f", it)}"
                    ratingView.text = ratingText
                    ratingView.visibility = View.VISIBLE
                } ?: run {
                    ratingView.visibility = View.GONE
                }
            }

            // Populate CTA button
            cta?.let {
                it.text = nativeAd.callToAction ?: "Learn More"
            }

            // Populate media content
            mediaView?.let { media ->
                nativeAd.mediaContent?.let {
                    media.setMediaContent(it)
                }
            }

            // IMPORTANT: Must be called last
            adView.setNativeAd(nativeAd)

        } catch (e: Exception) {
            e.printStackTrace()
            // Return empty view on error to prevent crash
        }

        return adView
    }
}
