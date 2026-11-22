# Zernio::GetEventsAccuracy200ResponseDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rule_id** | **String** | The forwarding rule. | [optional] |
| **profile_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** | Ad platform, such as &#x60;metaads&#x60; or &#x60;googleads&#x60;. | [optional] |
| **account_name** | **String** |  | [optional] |
| **destination_id** | **String** |  | [optional] |
| **sales** | **Integer** | Real sales in the period from the sources the rule takes. | [optional] |
| **sent** | **Integer** | Sales a send was tried for. | [optional] |
| **accepted** | **Integer** | Sales the platform accepted, by the latest attempt. | [optional] |
| **failed** | **Integer** |  | [optional] |
| **retrying** | **Integer** |  | [optional] |
| **not_sent** | **Integer** | Sales never sent: no ad consent, no identifier the platform matches on, or left out by the rule&#39;s event names. | [optional] |
| **accuracy** | **Float** | &#x60;accepted / sent&#x60;, from 0 to 1. &#x60;null&#x60; with no sale sent. | [optional] |
| **deliveries** | [**GetEventsAccuracy200ResponseDestinationsInnerDeliveries**](GetEventsAccuracy200ResponseDestinationsInnerDeliveries.md) |  | [optional] |
| **match** | [**GetEventsAccuracy200ResponseDestinationsInnerMatch**](GetEventsAccuracy200ResponseDestinationsInnerMatch.md) |  | [optional] |
| **match_rate** | **Float** | &#x60;match.identified / match.events&#x60;. &#x60;null&#x60; with nothing sent. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsAccuracy200ResponseDestinationsInner.new(
  rule_id: null,
  profile_id: null,
  account_id: null,
  platform: null,
  account_name: null,
  destination_id: null,
  sales: null,
  sent: null,
  accepted: null,
  failed: null,
  retrying: null,
  not_sent: null,
  accuracy: null,
  deliveries: null,
  match: null,
  match_rate: null
)
```

