# Zernio::BoostPostRequestPromotedObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pixel_id** | **String** | TikTok Pixel. Either the numeric pixel id or the alphanumeric pixel code from Events Manager, which is resolved for you. |  |
| **custom_event_type** | **String** | Optimization event, as a TikTok optimization_event code (e.g. ON_WEB_ORDER, SHOPPING, FORM) or the exact event name shown in Events Manager, which is resolved to its code. The event must already exist on that pixel, or TikTok rejects the ad group. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPostRequestPromotedObject.new(
  pixel_id: null,
  custom_event_type: null
)
```

