# Zernio::GetEvent200ResponseDeliveriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **destination_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **status** | **String** | &#x60;dropped&#x60;: not sent because the visitor did not consent; &#x60;errorCode&#x60; says why (&#x60;consent_denied&#x60; or &#x60;consent_missing&#x60;). | [optional] |
| **attempt** | **Integer** | Send attempt (1 &#x3D; the first). | [optional] |
| **error** | **String** |  | [optional] |
| **error_code** | **String** |  | [optional] |
| **sent_at** | **Time** |  | [optional] |
| **value_sent** | **Float** | The value this destination got, after its forwarding rule&#39;s &#x60;eventValues&#x60; or &#x60;valueOverride&#x60;. Null when it got none, and on sends before 2026-11-24. | [optional] |
| **currency_sent** | **String** | The currency sent with &#x60;valueSent&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEvent200ResponseDeliveriesInner.new(
  account_id: null,
  destination_id: null,
  platform: null,
  status: null,
  attempt: null,
  error: null,
  error_code: null,
  sent_at: null,
  value_sent: null,
  currency_sent: null
)
```

