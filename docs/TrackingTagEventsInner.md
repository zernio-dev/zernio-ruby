# Zernio::TrackingTagEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **type** | **String** | Platform category of the event. | [optional] |
| **site_event** | **String** | The value the site sends to fire this event. | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingTagEventsInner.new(
  id: null,
  name: null,
  type: null,
  site_event: null,
  status: null
)
```

