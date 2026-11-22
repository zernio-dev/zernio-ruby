# Zernio::GetEventsOverview200ResponsePlatformsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | The profile the forwarding rule belongs to. | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** | Ad platform, such as &#x60;metaads&#x60; or &#x60;googleads&#x60;. | [optional] |
| **account_name** | **String** |  | [optional] |
| **destination_name** | **String** | The destination (pixel, dataset or conversion action) id. | [optional] |
| **destination_id** | **String** | The destination (pixel, dataset or conversion action) id, the same as the forwarding rule&#39;s destinationId. | [optional] |
| **sent_today** | **Integer** | Events the platform accepted today. | [optional] |
| **failed_today** | **Integer** | Events that failed for good today. | [optional] |
| **dropped_today** | [**GetEventsOverview200ResponsePlatformsInnerDroppedToday**](GetEventsOverview200ResponsePlatformsInnerDroppedToday.md) |  | [optional] |
| **last_sent_at** | **Time** | Last accepted send in the last 30 days. | [optional] |
| **last_event_name** | **String** | Name of the event in that send. | [optional] |
| **last_error** | **String** | The platform&#39;s error on the last failed send in the last 30 days. | [optional] |
| **fix_url** | **String** | Where to fix a failing destination. Always &#x60;null&#x60; for now. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverview200ResponsePlatformsInner.new(
  profile_id: null,
  account_id: null,
  platform: null,
  account_name: null,
  destination_name: null,
  destination_id: null,
  sent_today: null,
  failed_today: null,
  dropped_today: null,
  last_sent_at: null,
  last_event_name: null,
  last_error: null,
  fix_url: null
)
```

