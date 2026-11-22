# Zernio::GetEventsOverview200ResponseSourcesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** | Source id, such as &#x60;web&#x60;, &#x60;shopify&#x60; or &#x60;api&#x60; (which also covers &#x60;relay&#x60;). | [optional] |
| **label** | **String** | The source in plain words, such as &#x60;Shopify orders&#x60;. | [optional] |
| **state** | **String** | Always &#x60;on&#x60; for now: the source is sending events. | [optional] |
| **events_today** | **Integer** |  | [optional] |
| **last_seen_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverview200ResponseSourcesInner.new(
  source: null,
  label: null,
  state: null,
  events_today: null,
  last_seen_at: null
)
```

