# Zernio::ListConversionDestinations200ResponseDestinationsInnerConversionEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **event_type** | **String** | OpenAI event type, e.g. order_created, lead_created, or custom. | [optional] |
| **custom_event_name** | **String** |  | [optional] |
| **archived** | **Boolean** |  | [optional] |
| **optimizable** | **Boolean** | Active and standard (not custom). Only these can be a conversions campaign&#39;s optimization event. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListConversionDestinations200ResponseDestinationsInnerConversionEventsInner.new(
  id: null,
  name: null,
  event_type: null,
  custom_event_name: null,
  archived: null,
  optimizable: null
)
```

