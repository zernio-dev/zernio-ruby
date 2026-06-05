# Zernio::AdjustConversionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID. Must be a &#x60;googleads&#x60; account. |  |
| **destination_id** | **String** | Conversion action resource name, e.g. &#x60;customers/1234567890/conversionActions/987654321&#x60;. |  |
| **adjustments** | [**Array&lt;AdjustConversionsRequestAdjustmentsInner&gt;**](AdjustConversionsRequestAdjustmentsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdjustConversionsRequest.new(
  account_id: null,
  destination_id: null,
  adjustments: null
)
```

