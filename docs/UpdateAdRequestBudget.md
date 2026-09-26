# Zernio::UpdateAdRequestBudget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Minimum varies by platform: TikTok&#x3D;$20, Pinterest&#x3D;$5, others&#x3D;$1 | [optional] |
| **type** | **String** | OpenAI Ads accepts both and sets the campaign&#39;s single spend cap, replacing the previous daily or lifetime cap. A daily cap cannot go back to lifetime (422). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequestBudget.new(
  amount: null,
  type: null
)
```

