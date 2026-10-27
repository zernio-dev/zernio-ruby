# Zernio::CreateAdSetRequestPromotedObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pixel_id** | **String** | Reddit pixel id. Defaults to the ad account&#39;s first pixel. | [optional] |
| **custom_event_type** | **String** | Conversion event (PURCHASE, LEAD, SIGN_UP, ADD_TO_CART, PAGE_VISIT). Required on a conversions campaign. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdSetRequestPromotedObject.new(
  pixel_id: null,
  custom_event_type: null
)
```

