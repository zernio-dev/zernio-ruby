# Zernio::WebhookPayloadPostTrackingCompletedPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Zernio&#39;s id for the tracked post |  |
| **platform** | **String** |  |  |
| **platform_post_id** | **String** | The post&#39;s id on the platform |  |
| **account_id** | **String** | The connected account the post belongs to |  |
| **profile_id** | **String** | The profile that account belongs to |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostTrackingCompletedPost.new(
  id: null,
  platform: instagram,
  platform_post_id: null,
  account_id: null,
  profile_id: null
)
```

