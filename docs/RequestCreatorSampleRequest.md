# Zernio::RequestCreatorSampleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | A &#x60;productId&#x60; from the campaign&#39;s &#x60;sampleProducts&#x60;. |  |
| **variant_id** | **String** | Required when the product lists &#x60;variants&#x60;. | [optional] |
| **shipping_address** | [**CampaignSampleShippingAddress**](CampaignSampleShippingAddress.md) |  |  |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RequestCreatorSampleRequest.new(
  product_id: null,
  variant_id: null,
  shipping_address: null,
  note: null
)
```

