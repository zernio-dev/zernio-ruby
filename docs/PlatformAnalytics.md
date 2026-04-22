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
| **error_message** | **String** | Error details when status is failed | [optional] |

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
  error_message: null
)
```

