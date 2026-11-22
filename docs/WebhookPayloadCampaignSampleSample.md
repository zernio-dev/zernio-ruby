# Zernio::WebhookPayloadCampaignSampleSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **store_account_id** | **String** |  |  |
| **product_id** | **String** |  |  |
| **variant_id** | **String** |  |  |
| **product_title** | **String** |  |  |
| **variant_title** | **String** |  |  |
| **status** | **String** |  |  |
| **shipping_address** | [**CampaignSampleShippingAddress**](CampaignSampleShippingAddress.md) |  |  |
| **note** | **String** |  |  |
| **discount_code** | **String** | The 100%-off, single-use code, set from approval on. |  |
| **tracking_url** | **String** |  |  |
| **decline_reason** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadCampaignSampleSample.new(
  id: null,
  store_account_id: null,
  product_id: null,
  variant_id: null,
  product_title: null,
  variant_title: null,
  status: null,
  shipping_address: null,
  note: null,
  discount_code: null,
  tracking_url: null,
  decline_reason: null
)
```

