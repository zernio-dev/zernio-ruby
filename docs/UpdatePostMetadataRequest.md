# Zernio::UpdatePostMetadataRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | The platform to update metadata on |  |
| **video_id** | **String** | YouTube video ID (required for direct mode, ignored for post-based mode) | [optional] |
| **account_id** | **String** | Zernio account ID. Required for direct mode. In post-based mode, picks which account&#39;s copy to update when the post was published to several accounts on this platform (required in that case). | [optional] |
| **title** | **String** | New video title (max 100 characters for YouTube) | [optional] |
| **description** | **String** | New video description | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of keyword tags (max 500 characters combined for YouTube) | [optional] |
| **category_id** | **String** | YouTube video category ID | [optional] |
| **privacy_status** | **String** | Video privacy setting | [optional] |
| **thumbnail_url** | **String** | Public URL of a custom thumbnail image (JPEG, PNG, or GIF, max 50 MB, recommended 1280x720). Works on any video you own, including videos not published through Zernio. The channel must be verified (phone verification) to set custom thumbnails.  **Errors:**  - 400 with the reason, no field updated: YouTube refuses the thumbnail (e.g. channel without the custom-thumbnail permission, video not owned by the connected channel), or the image URL cannot be fetched or has an unsupported format or size. - 429: YouTube thumbnail rate limit (uploadRateLimitExceeded). Retry later, not immediately, because retries keep the channel over its limit. - 500: any other temporary YouTube or network failure; can be retried.  | [optional] |
| **made_for_kids** | **Boolean** | COPPA compliance flag. Set true for child-directed content (restricts comments, notifications, ad targeting). | [optional] |
| **contains_synthetic_media** | **Boolean** | AI-generated content disclosure. Set true if the video contains synthetic content that could be mistaken for real. YouTube may add a label. | [optional] |
| **playlist_id** | **String** | YouTube playlist ID to add the video to (e.g. &#39;PLxxxxxxxxxxxxx&#39;). Use GET /v1/accounts/{id}/youtube-playlists to list available playlists. Only playlists owned by the channel are supported. | [optional] |

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
  playlist_id: null
)
```

