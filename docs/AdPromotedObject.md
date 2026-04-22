# Zernio::AdPromotedObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_event_type** | **String** | Conversion event type (e.g. PURCHASE, LEAD, COMPLETE_REGISTRATION, ADD_TO_CART) | [optional] |
| **pixel_id** | **String** | Meta pixel ID | [optional] |
| **page_id** | **String** | Facebook page ID | [optional] |
| **application_id** | **String** | Facebook app ID | [optional] |
| **product_set_id** | **String** | Product catalog set ID | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdPromotedObject.new(
  custom_event_type: PURCHASE,
  pixel_id: null,
  page_id: null,
  application_id: null,
  product_set_id: null
)
```

