# Zernio::WebhookPayloadPostPostPlatformsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **status** | **String** |  |  |
| **account_id** | **String** | SocialAccount id this platform target published through. Use it to route events by connected account (e.g. separate staging vs production endpoints). A post can span multiple accounts. | [optional] |
| **platform_post_id** | **String** |  | [optional] |
| **published_url** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **platform_error** | [**PostPlatformError**](PostPlatformError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostPostPlatformsInner.new(
  platform: null,
  status: null,
  account_id: null,
  platform_post_id: null,
  published_url: null,
  error: null,
  platform_error: null
)
```

