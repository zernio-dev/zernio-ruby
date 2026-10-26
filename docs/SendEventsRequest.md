# Zernio::SendEventsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Profile the events belong to. Its saved destinations receive the events. |  |
| **events** | [**Array&lt;ConversionEvent&gt;**](ConversionEvent.md) |  |  |
| **destinations** | [**Array&lt;SendEventsRequestDestinationsInner&gt;**](SendEventsRequestDestinationsInner.md) | Send to these destinations instead of the saved ones (every event goes to each). | [optional] |
| **consent** | [**SendEventsRequestConsent**](SendEventsRequestConsent.md) |  | [optional] |
| **test_code** | **String** | Forwarded as each platform test code (see POST /v1/ads/conversions). Test events are not stored. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEventsRequest.new(
  profile_id: null,
  events: null,
  destinations: null,
  consent: null,
  test_code: null
)
```

