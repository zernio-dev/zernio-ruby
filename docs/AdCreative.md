# Zernio::AdCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thumbnail_url** | **String** | Primary thumbnail/image URL | [optional] |
| **image_url** | **String** | Alternative image URL | [optional] |
| **video_id** | **String** | Meta video ID for VIDEO-type ads. Null for non-video ads. Callers that need an embeddable MP4 can call GET /{videoId}?fields&#x3D;source with the page access token. | [optional] |
| **video_url** | **String** | Public Facebook watch URL for VIDEO-type ads (https://www.facebook.com/watch/?v&#x3D;{videoId}). Null for non-video ads. | [optional] |
| **object_type** | **String** | Meta creative object_type (e.g. SHARE, VIDEO, PRIVACY_CHECK_FAIL, POST_DELETED). Use this to render state-aware previews — when Meta moderation strips image/video fields, only thumbnailUrl at 64x64 is available. | [optional] |
| **object_story_id** | **String** | Meta creative &#x60;object_story_id&#x60; (the SHARE reference). Frequently absent — Meta omits it for SHARE creatives. Use effectiveObjectStoryId instead. | [optional] |
| **effective_object_story_id** | **String** | Meta &#x60;effective_object_story_id&#x60; — &#x60;{pageId}_{postId}&#x60; of the Facebook post the ad&#39;s engagement (comments) lives on. Pass to GET /v1/ads?effectiveObjectStoryId&#x3D; to map a Business-Manager-visible post back to this ad; GET /v1/ads/{adId}/comments resolves comments against it. | [optional] |
| **effective_instagram_media_id** | **String** | Meta &#x60;effective_instagram_media_id&#x60; — the Instagram media ID of the boosted post the ad&#39;s engagement lives on. Pass to GET /v1/ads?effectiveInstagramMediaId&#x3D; to map a Business-Manager-visible IG post back to this ad. | [optional] |
| **instagram_user_id** | **String** | Meta &#x60;instagram_user_id&#x60; — the Instagram-scoped business ID that owns the boosted media. | [optional] |
| **instagram_permalink_url** | **String** | Meta &#x60;instagram_permalink_url&#x60; — public Instagram post URL of the boosted media. | [optional] |
| **media_urls** | **Array&lt;String&gt;** | All media URLs for this ad (carousel images, multiple assets). Populated for Meta (carousel child_attachments), Google Ads (responsive display marketing_images), and LinkedIn (multi-image posts). | [optional] |
| **body** | **String** | Ad copy/text | [optional] |
| **google_headline** | **String** | Google Ads headline | [optional] |
| **google_description** | **String** | Google Ads description | [optional] |
| **link_url** | **String** | Destination URL | [optional] |
| **pinterest_image_url** | **String** |  | [optional] |
| **pinterest_title** | **String** |  | [optional] |
| **pinterest_description** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdCreative.new(
  thumbnail_url: null,
  image_url: null,
  video_id: null,
  video_url: null,
  object_type: null,
  object_story_id: null,
  effective_object_story_id: null,
  effective_instagram_media_id: null,
  instagram_user_id: null,
  instagram_permalink_url: null,
  media_urls: null,
  body: null,
  google_headline: null,
  google_description: null,
  link_url: null,
  pinterest_image_url: null,
  pinterest_title: null,
  pinterest_description: null
)
```

