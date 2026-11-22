# Zernio::RestateEventRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile the event belongs to. |  |
| **value** | **Float** | The corrected total value. |  |
| **currency** | **String** | ISO 4217 code such as USD. Defaults to the currency the event was sent with. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RestateEventRequest.new(
  profile_id: null,
  value: null,
  currency: null
)
```

