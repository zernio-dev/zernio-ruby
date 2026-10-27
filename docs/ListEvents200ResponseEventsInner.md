# Zernio::ListEvents200ResponseEventsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  | [optional] |
| **event_name** | **String** |  | [optional] |
| **event_time** | **Time** |  | [optional] |
| **received_at** | **Time** |  | [optional] |
| **action_source** | **String** |  | [optional] |
| **value** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |
| **source_url** | **String** | Origin, path and attribution parameters only. | [optional] |
| **utm** | [**ListEvents200ResponseEventsInnerUtm**](ListEvents200ResponseEventsInnerUtm.md) |  | [optional] |
| **zrn** | **String** | Ad ID from the &#x60;zrn&#x60; parameter Zernio adds to links of ads it creates. | [optional] |
| **click_ids** | [**ListEvents200ResponseEventsInnerClickIds**](ListEvents200ResponseEventsInnerClickIds.md) |  | [optional] |
| **destinations_sent** | **Integer** | Destinations the event was forwarded to. | [optional] |
| **has_email** | **Boolean** |  | [optional] |
| **has_phone** | **Boolean** |  | [optional] |
| **has_external_id** | **Boolean** |  | [optional] |
| **ad** | [**ListEvents200ResponseEventsInnerAd**](ListEvents200ResponseEventsInnerAd.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListEvents200ResponseEventsInner.new(
  event_id: null,
  event_name: null,
  event_time: null,
  received_at: null,
  action_source: null,
  value: null,
  currency: null,
  source_url: null,
  utm: null,
  zrn: null,
  click_ids: null,
  destinations_sent: null,
  has_email: null,
  has_phone: null,
  has_external_id: null,
  ad: null
)
```

