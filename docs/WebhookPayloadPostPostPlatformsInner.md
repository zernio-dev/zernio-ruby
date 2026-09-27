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
| **error_category** | **String** | Present when this target failed. Same taxonomy as &#x60;platforms[].errorCategory&#x60; on GET /v1/posts. | [optional] |
| **error_source** | **String** | Present when this target failed. Who must act: user, platform or system (Zernio). | [optional] |
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
  error_category: null,
  error_source: null,
  platform_error: null
)
```

