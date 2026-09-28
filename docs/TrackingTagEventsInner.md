# Zernio::TrackingTagEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **type** | **String** | Platform category of the event. | [optional] |
| **site_event** | **String** | The neutral site event this conversion is fired for, when it maps to one. | [optional] |
| **site_event_id** | **String** | What the site sends to fire this event (Google conversion label, LinkedIn conversion rule id, X &#x60;tw-&#x60; event id). | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingTagEventsInner.new(
  id: null,
  name: null,
  type: null,
  site_event: null,
  site_event_id: null,
  status: null
)
```

