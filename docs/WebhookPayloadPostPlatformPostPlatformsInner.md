# Zernio::WebhookPayloadPostPlatformPostPlatformsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **status** | **String** |  |  |
| **account_id** | **String** | SocialAccount id this platform target published through. On post.platform.* events see also the top-level &#x60;account&#x60; block. | [optional] |
| **platform_post_id** | **String** |  | [optional] |
| **published_url** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadPostPlatformPostPlatformsInner.new(
  platform: null,
  status: null,
  account_id: null,
  platform_post_id: null,
  published_url: null,
  error: null
)
```

