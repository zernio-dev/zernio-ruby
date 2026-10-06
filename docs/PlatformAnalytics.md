# Zernio::PlatformAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **platform_post_id** | **String** | The native post ID on the platform (e.g. Instagram media ID, tweet ID) | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_username** | **String** |  | [optional] |
| **analytics** | [**PostAnalytics**](PostAnalytics.md) |  | [optional] |
| **sync_status** | **String** | Sync state of analytics for this platform | [optional] |
| **platform_post_url** | **String** |  | [optional] |
| **error_message** | **String** | Failure detail. On failed entries, why the post failed to publish. On unavailable entries, why analytics cannot be synced (e.g. Google Business Profile, a TikTok upload that never received a video id). On pending entries, the most recent analytics sync error for the account (null while no sync has failed), cleared after the next successful sync. | [optional] |
| **error_code** | **String** | Stable machine-readable reason for errorMessage. post_not_found: the post was deleted or is no longer visible to the account. permission_missing: the last analytics sync of the Facebook account failed because the Page no longer grants pages_read_engagement (pending entries only). null: no stable code, read errorMessage. New values may be added. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PlatformAnalytics.new(
  platform: null,
  status: null,
  platform_post_id: null,
  account_id: null,
  account_username: null,
  analytics: null,
  sync_status: null,
  platform_post_url: null,
  error_message: null,
  error_code: null
)
```

