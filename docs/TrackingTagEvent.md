# Zernio::TrackingTagEvent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native event id, the &#x60;{eventId}&#x60; of the per-event routes. |  |
| **name** | **String** |  |  |
| **type** | **String** | Platform event type or category. | [optional] |
| **site_event** | **String** | The neutral site event this conversion is fired for, when it maps to one. | [optional] |
| **site_event_id** | **String** | What the site sends to fire this event (Google conversion label, LinkedIn conversion rule id, X &#x60;tw-&#x60; event id). | [optional] |
| **status** | **String** |  | [optional] |
| **default_value** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **click_window_days** | **Integer** |  | [optional] |
| **view_window_days** | **Integer** |  | [optional] |
| **url_contains** | **String** | Fires only on pages whose URL contains this text (case-insensitive). | [optional] |
| **always_use_default_value** | **Boolean** | &#x60;defaultValue&#x60; is recorded even when the conversion sends its own value. | [optional] |
| **primary** | **Boolean** | Primary conversions count toward bidding and the Conversions column; secondary ones are observation only (Google &#x60;primary_for_goal&#x60;). | [optional] |
| **counting_type** | **String** | &#x60;one&#x60; counts at most one conversion per ad interaction (leads), &#x60;every&#x60; counts each (purchases). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingTagEvent.new(
  id: null,
  name: null,
  type: null,
  site_event: null,
  site_event_id: null,
  status: null,
  default_value: null,
  currency: null,
  click_window_days: null,
  view_window_days: null,
  url_contains: null,
  always_use_default_value: null,
  primary: null,
  counting_type: null
)
```

