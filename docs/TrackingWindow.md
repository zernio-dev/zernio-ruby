# Zernio::TrackingWindow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **post_id** | **String** | The external post being tracked |  |
| **account_id** | **String** |  |  |
| **platform** | **String** |  |  |
| **platform_post_id** | **String** | The post&#39;s id on the platform |  |
| **starts_at** | **Time** |  |  |
| **ends_at** | **Time** |  |  |
| **status** | **String** |  |  |
| **final_read_at** | **Time** | When the closing read ran. Null until then. |  |
| **completion_reason** | **String** | How the window closed. Null while it is open. |  |
| **requested_by** | **String** |  |  |
| **latest** | [**TrackingWindowLatest**](TrackingWindowLatest.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingWindow.new(
  id: null,
  post_id: null,
  account_id: null,
  platform: tiktok,
  platform_post_id: null,
  starts_at: null,
  ends_at: null,
  status: null,
  final_read_at: null,
  completion_reason: null,
  requested_by: null,
  latest: null
)
```

