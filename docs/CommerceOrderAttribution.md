# Zernio::CommerceOrderAttribution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ready** | **Boolean** | False while Shopify is still attributing a new order. No webhook fires when it becomes true, so read the order again later. Always true on WooCommerce. | [optional] |
| **first_visit** | [**CommerceOrderVisit**](CommerceOrderVisit.md) |  | [optional] |
| **last_visit** | [**CommerceOrderVisit**](CommerceOrderVisit.md) |  | [optional] |
| **custom_attributes** | [**Array&lt;BoostPostRequestTrackingUrlTagsInner&gt;**](BoostPostRequestTrackingUrlTagsInner.md) | Shopify cart and note attributes, or WooCommerce public order meta. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderAttribution.new(
  ready: null,
  first_visit: null,
  last_visit: null,
  custom_attributes: null
)
```

