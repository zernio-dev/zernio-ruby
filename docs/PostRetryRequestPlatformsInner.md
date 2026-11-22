# Zernio::PostRetryRequestPlatformsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Platform slug, matching &#x60;post.platforms[].platform&#x60;. |  |
| **account_id** | **String** | Account id of the platform to retry. Needed only when the post targets the same platform on more than one account. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PostRetryRequestPlatformsInner.new(
  platform: twitter,
  account_id: null
)
```

