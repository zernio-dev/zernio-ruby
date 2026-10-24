# Zernio::PinPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Must be &#x60;facebook&#x60;. Any other value answers 400 &#x60;platform_not_supported&#x60;. |  |
| **account_id** | **String** | Which Facebook account&#39;s copy to change when the post was published to several Facebook accounts. Required in that case. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PinPostRequest.new(
  platform: facebook,
  account_id: null
)
```

