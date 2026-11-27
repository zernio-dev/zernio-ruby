# Zernio::SetPostCommentsEnabledRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Must be &#x60;instagram&#x60;. Any other value answers 400 &#x60;platform_not_supported&#x60;. |  |
| **account_id** | **String** | Which Instagram account&#39;s copy to change when the post was published to several Instagram accounts. Required in that case. | [optional] |
| **enabled** | **Boolean** | true turns comments on, false turns them off. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SetPostCommentsEnabledRequest.new(
  platform: instagram,
  account_id: null,
  enabled: null
)
```

