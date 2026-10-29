# Zernio::AdCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_group** | [**GooglePmaxAssetGroupInput**](GooglePmaxAssetGroupInput.md) | Initial Performance Max asset group input. Use the asset-groups endpoint for current Google assets. | [optional] |
| **asset_group_resource_name** | **String** | Google resource name of the created Performance Max asset group. | [optional] |
| **headlines** | [**Array&lt;AdCreativeHeadlinesInner&gt;**](AdCreativeHeadlinesInner.md) | Google RSA: the headline assets as objects (3 to 15). Meta: every title variation of the creative (&#x60;asset_feed_spec.titles&#x60;) as strings, the same shape as the &#x60;headlines&#x60; create input. Present only with 2 or more titles; a single title is &#x60;headline&#x60;. | [optional] |
| **descriptions** | [**Array&lt;AdCreativeDescriptionsInner&gt;**](AdCreativeDescriptionsInner.md) | Google RSA: the description assets as objects (2 to 4). Meta: every description variation of the creative (&#x60;asset_feed_spec.descriptions&#x60;) as strings, the same shape as the &#x60;descriptions&#x60; create input. Present only with 2 or more descriptions; a single one is &#x60;description&#x60;. | [optional] |
| **headline** | **String** | Meta: the creative&#39;s title (&#x60;link_data.name&#x60;, &#x60;video_data.title&#x60;, or the first &#x60;asset_feed_spec.titles&#x60; entry). Absent when the creative has none. | [optional] |
| **bodies** | **Array&lt;String&gt;** | Meta: every primary text variation of the creative (&#x60;asset_feed_spec.bodies&#x60;), the same shape as the &#x60;bodies&#x60; create input. Present only with 2 or more texts; a single text is &#x60;body&#x60;. | [optional] |
| **description** | **String** | Meta: the creative&#39;s description under the title (&#x60;link_data.description&#x60;, &#x60;video_data.link_description&#x60;, or the first &#x60;asset_feed_spec.descriptions&#x60; entry). | [optional] |
| **call_to_action** | **String** | Meta: the call to action type (&#x60;call_to_action.type&#x60;, or the first &#x60;asset_feed_spec.call_to_action_types&#x60; entry), e.g. LEARN_MORE or SIGN_UP. | [optional] |
| **lead_gen_form_id** | **String** | Meta: the instant form the call to action opens (&#x60;call_to_action.value.lead_gen_form_id&#x60;), the same value as the &#x60;leadGenFormId&#x60; create input. Absent on ads without a lead form. | [optional] |
| **image_hash** | **String** | Meta: the ad image hash (&#x60;image_hash&#x60;), reusable as &#x60;imageHash&#x60; on POST /v1/ads/create within the same ad account. &#x60;thumbnailUrl&#x60; and &#x60;mediaUrls&#x60; carry its stable full resolution permalink when Meta resolves it. | [optional] |
| **url_tags** | **String** | Meta: the creative&#39;s &#x60;url_tags&#x60; query string appended to the destination URL. | [optional] |
| **final_urls** | **Array&lt;String&gt;** | Google RSA only. Replaces final URLs. Omitted lists stay unchanged. | [optional] |
| **thumbnail_url** | **String** | Primary thumbnail/image URL | [optional] |
| **image_url** | **String** | Alternative image URL | [optional] |
| **asset_resource_name** | **String** | Google Display only. Resource name of the landscape marketing image asset (&#x60;creative.imageUrl&#x60;), for example customers/1234567890/assets/123. Set at creation and updated when PUT /v1/ads/{adId} replaces &#x60;creative.imageUrl&#x60;; replacing only &#x60;creative.squareImageUrl&#x60; leaves it unchanged. | [optional] |
| **assets** | [**AdCreativeAssets**](AdCreativeAssets.md) |  | [optional] |
| **video_id** | **String** | Meta video ID for VIDEO-type ads. Null for non-video ads. Callers that need an embeddable MP4 can call GET /{videoId}?fields&#x3D;source with the page access token. | [optional] |
| **video_url** | **String** | Public Facebook watch URL for VIDEO-type ads (https://www.facebook.com/watch/?v&#x3D;{videoId}). Null for non-video ads. | [optional] |
| **creative_id** | **String** | Meta ad creative id backing this ad, refreshed from Meta on every sync. Reusable via existingCreativeId on POST /v1/ads/create, and readable raw through GET /v1/ads/creatives/{creativeId}. Ads synced from Meta also carry it as the legacy &#x60;id&#x60; key. | [optional] |
| **creative_features** | **Hash&lt;String, String&gt;** | Meta only. The creativeFeatures map sent at creation (degrees_of_freedom_spec.creative_features_spec). Absent on ads synced from Meta. | [optional] |
| **catalog** | [**AdCreativeCatalog**](AdCreativeCatalog.md) |  | [optional] |
| **object_type** | **String** | Meta creative object_type (e.g. SHARE, VIDEO, PRIVACY_CHECK_FAIL, POST_DELETED). Use this to render state-aware previews: when Meta moderation strips image/video fields, only thumbnailUrl at 64x64 is available. | [optional] |
| **object_story_id** | **String** | Meta creative &#x60;object_story_id&#x60; (the SHARE reference). Frequently absent, because Meta omits it for SHARE creatives. Use effectiveObjectStoryId instead. | [optional] |
| **effective_object_story_id** | **String** | Meta &#x60;effective_object_story_id&#x60;, the &#x60;{pageId}_{postId}&#x60; of the Facebook post the ad&#39;s engagement (comments) lives on. Pass to GET /v1/ads?effectiveObjectStoryId&#x3D; to map a Business-Manager-visible post back to this ad; GET /v1/ads/{adId}/comments resolves comments against it. | [optional] |
| **page_id** | **String** | Facebook Page backing the creative (Meta only). What the &#x60;pageId&#x60; filter on /v1/ads, /v1/ads/campaigns and /v1/ads/tree matches against. Absent for non-Meta ads and rare Meta creatives with no page signal. | [optional] |
| **effective_instagram_media_id** | **String** | Meta &#x60;effective_instagram_media_id&#x60;, the Instagram media ID of the boosted post the ad&#39;s engagement lives on. Pass to GET /v1/ads?effectiveInstagramMediaId&#x3D; to map a Business-Manager-visible IG post back to this ad. | [optional] |
| **instagram_user_id** | **String** | Meta &#x60;instagram_user_id&#x60;, the Instagram-scoped business ID that owns the boosted media. | [optional] |
| **instagram_permalink_url** | **String** | Meta &#x60;instagram_permalink_url&#x60;, the public Instagram post URL of the boosted media. | [optional] |
| **media_urls** | **Array&lt;String&gt;** | All media URLs for this ad (carousel images, multiple assets). Populated for Meta (carousel child_attachments), Google Ads (responsive display marketing_images), and LinkedIn (multi-image posts). | [optional] |
| **carousel_cards** | [**Array&lt;AdCreativeCarouselCardsInner&gt;**](AdCreativeCarouselCardsInner.md) | Meta only today. The carousel&#39;s cards in display order, one per Meta &#x60;link_data.child_attachments&#x60; entry, using the same field names as the &#x60;carouselCards&#x60; create input. Absent on non-carousel ads and other platforms.  - Synced from Meta: &#x60;imageUrl&#x60; is resolved exactly like &#x60;mediaUrls&#x60; (the stable &#x60;/adimages&#x60; permalink first), so cards with an image line up with &#x60;mediaUrls&#x60; in order. A card whose image Meta does not resolve keeps its place without &#x60;imageUrl&#x60;. - Created through Zernio: starts as the cards you sent. - Synced carousels stored before this field existed fill it in on their next sync.  | [optional] |
| **is_serving** | **Boolean** | LinkedIn only. Whether LinkedIn is currently serving this specific creative. Complements the ad-level &#x60;servingStatuses&#x60;, which describes the parent campaign. | [optional] |
| **ad_format** | **String** | LinkedIn only. The LinkedIn ad format, in LinkedIn&#39;s own vocabulary: STANDARD_UPDATE, SINGLE_VIDEO, CAROUSEL, NATIVE_DOCUMENT, EVENT, TEXT_AD, SPOTLIGHT, FOLLOW_COMPANY, JOBS, SPONSORED_INMAILS and others. The list is open, so treat an unrecognized value as valid.  - On an ad Zernio created: the format it was created as. - On an ad synced from Campaign Manager: the parent campaign&#39;s raw &#x60;format&#x60;, which is what LinkedIn actually enforces on its creatives.  Absent on LinkedIn ads not yet re-synced, and on every other platform. | [optional] |
| **serving_hold_reasons** | **Array&lt;String&gt;** | LinkedIn only. Why this specific creative is not being served. Empty when it is serving.  A superset of the ad-level &#x60;servingStatuses&#x60;: it repeats the inherited campaign, campaign group and account holds AND adds creative-only causes, such as:  - UNDER_REVIEW, REJECTED, PROCESSING, PROCESSING_FAILED; - FORM_HOLD (lead-gen-form creatives); - REFERRED_CONTENT_QUALITY_HOLD; - JOB_POSTING_ON_HOLD and JOB_POSTING_INVALID (job ads).  Some values are format-specific and will never appear on other ad formats. The list is open, so treat unrecognized values as holds rather than errors.  | [optional] |
| **body** | **String** | Ad copy/text | [optional] |
| **google_headline** | **String** | Google Ads headline | [optional] |
| **google_description** | **String** | Google Ads description | [optional] |
| **youtube_video_ids** | **Array&lt;String&gt;** | Google only. YouTube video ids behind a Video campaign ad (video and responsive video ads) or a Demand Gen video ad, same id as &#x60;youtubeVideoId&#x60; on Performance Max asset groups. When the ad has no image, &#x60;thumbnailUrl&#x60; is the first video&#39;s YouTube thumbnail. Absent on ads without a video. | [optional] |
| **link_url** | **String** | Destination URL | [optional] |
| **whatsapp_phone_number** | **String** | Explicit E.164 WhatsApp number supplied when creating a Meta boost or messaging ad. Absent when omitted by the caller or on older records. | [optional] |
| **instagram_video_fallback** | [**InstagramVideoFallback**](InstagramVideoFallback.md) |  | [optional] |
| **pinterest_image_url** | **String** |  | [optional] |
| **pinterest_title** | **String** |  | [optional] |
| **pinterest_description** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdCreative.new(
  asset_group: null,
  asset_group_resource_name: customers/9122445560/assetGroups/123456789,
  headlines: null,
  descriptions: null,
  headline: null,
  bodies: null,
  description: null,
  call_to_action: SIGN_UP,
  lead_gen_form_id: null,
  image_hash: null,
  url_tags: null,
  final_urls: null,
  thumbnail_url: null,
  image_url: null,
  asset_resource_name: null,
  assets: null,
  video_id: null,
  video_url: null,
  creative_id: null,
  creative_features: {auto_promotion_tag&#x3D;OPT_IN},
  catalog: null,
  object_type: null,
  object_story_id: null,
  effective_object_story_id: null,
  page_id: null,
  effective_instagram_media_id: null,
  instagram_user_id: null,
  instagram_permalink_url: null,
  media_urls: null,
  carousel_cards: null,
  is_serving: null,
  ad_format: null,
  serving_hold_reasons: [UNDER_REVIEW],
  body: null,
  google_headline: null,
  google_description: null,
  youtube_video_ids: null,
  link_url: null,
  whatsapp_phone_number: +12025550123,
  instagram_video_fallback: null,
  pinterest_image_url: null,
  pinterest_title: null,
  pinterest_description: null
)
```

