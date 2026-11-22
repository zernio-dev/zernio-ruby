# Zernio::UpdatePostMetadataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | The platform to update metadata on. Facebook accepts only thumbnailUrl. |  |
| **video_id** | **String** | YouTube video ID (required for direct mode, ignored for post-based mode). Not supported for Facebook. | [optional] |
| **account_id** | **String** | Zernio account ID. Required for direct mode. In post-based mode, picks which account&#39;s copy to update when the post was published to several accounts on this platform (required in that case). | [optional] |
| **title** | **String** | New video title (max 100 characters for YouTube) | [optional] |
| **description** | **String** | New video description | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of keyword tags (max 500 characters combined for YouTube) | [optional] |
| **category_id** | **String** | YouTube video category ID | [optional] |
| **privacy_status** | **String** | Video privacy setting | [optional] |
| **thumbnail_url** | **String** | Public URL of a custom thumbnail image.  - YouTube: JPEG, PNG, or GIF, max 50 MB, recommended 1280x720. Works on any video you own, including videos not published through Zernio. The channel must be verified (phone verification) to set custom thumbnails. - Facebook: JPEG or PNG, max 5 MB, served directly (no redirects). Replaces the cover of a feed video or Reel published through Zernio. Stories are not supported.  **Errors:**  - 400 with the reason, no field updated: the platform refuses the thumbnail (e.g. YouTube channel without the custom-thumbnail permission, video not owned by the connected account), the Facebook post is not a feed video or Reel, or the image URL cannot be fetched or has an unsupported format or size. - 429: YouTube thumbnail rate limit (uploadRateLimitExceeded). Retry later, not immediately, because retries keep the channel over its limit. - 404 (Facebook): Facebook cannot find the video. Right after publishing this can be Meta&#39;s processing lag, so retry shortly; otherwise the video was deleted or the Page no longer grants access. - 503 (Facebook): Facebook is still processing the video, so the cover cannot be set yet. Retry in a few minutes. - 500: any other temporary platform or network failure; can be retried.  | [optional] |
| **made_for_kids** | **Boolean** | COPPA compliance flag. Set true for child-directed content (restricts comments, notifications, ad targeting). | [optional] |
| **contains_synthetic_media** | **Boolean** | AI-generated content disclosure. Set true if the video contains synthetic content that could be mistaken for real. YouTube may add a label. | [optional] |
| **playlist_id** | **String** | YouTube playlist ID to add the video to (e.g. &#39;PLxxxxxxxxxxxxx&#39;). Use GET /v1/accounts/{id}/youtube-playlists to list available playlists. Only playlists owned by the channel are supported. | [optional] |
| **default_language** | **String** | Language of the title and description (BCP-47, e.g. ko). | [optional] |
| **default_audio_language** | **String** | Spoken language of the video (BCP-47, e.g. ko). When a video has no audio language, YouTube may set en-US once its metadata is updated. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdatePostMetadataRequest.new(
  platform: null,
  video_id: null,
  account_id: null,
  title: null,
  description: null,
  tags: null,
  category_id: null,
  privacy_status: null,
  thumbnail_url: null,
  made_for_kids: null,
  contains_synthetic_media: null,
  playlist_id: null,
  default_language: null,
  default_audio_language: null
)
```

