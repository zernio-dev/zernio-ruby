# Zernio::CreatorPortalSample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **product_id** | **String** |  |  |
| **product_title** | **String** |  |  |
| **variant_title** | **String** |  |  |
| **status** | **String** |  |  |
| **shipping_address** | [**CampaignSampleShippingAddress**](CampaignSampleShippingAddress.md) |  |  |
| **note** | **String** |  |  |
| **discount_code** | **String** | The single-use code to redeem the product at checkout, once approved. |  |
| **tracking_url** | **String** |  |  |
| **decline_reason** | **String** |  |  |
| **requested_at** | **Time** |  |  |
| **content_due_at** | **Time** | When a post is due for the sample; null until approved. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalSample.new(
  id: null,
  product_id: null,
  product_title: null,
  variant_title: null,
  status: null,
  shipping_address: null,
  note: null,
  discount_code: null,
  tracking_url: null,
  decline_reason: null,
  requested_at: null,
  content_due_at: null
)
```

