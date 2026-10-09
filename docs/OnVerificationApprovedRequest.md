# Zernio::OnVerificationApprovedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. | [optional] |
| **verification** | [**OnVerificationApprovedRequestVerification**](OnVerificationApprovedRequestVerification.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnVerificationApprovedRequest.new(
  test: null,
  id: null,
  event: null,
  timestamp: null,
  verification: null
)
```

