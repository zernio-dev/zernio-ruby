# Zernio::CommerceOrderFulfillmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The shipment (fulfillment) id. Entries of one shipment with several tracking numbers share it. | [optional] |
| **carrier_name** | **String** |  | [optional] |
| **tracking_number** | **String** |  | [optional] |
| **tracking_url** | **String** |  | [optional] |
| **delivery_status** | **String** | Where the shipment is. pending means no carrier scan yet. Null when the platform has no delivery tracking for it. Shopify only knows it when the carrier sends tracking events. | [optional] |
| **platform_delivery_status** | **String** | The platform&#39;s raw value, e.g. Shopify ATTEMPTED_DELIVERY. | [optional] |
| **estimated_delivery_at** | **Time** |  | [optional] |
| **in_transit_at** | **Time** |  | [optional] |
| **delivered_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderFulfillmentsInner.new(
  id: null,
  carrier_name: null,
  tracking_number: null,
  tracking_url: null,
  delivery_status: null,
  platform_delivery_status: null,
  estimated_delivery_at: null,
  in_transit_at: null,
  delivered_at: null
)
```

