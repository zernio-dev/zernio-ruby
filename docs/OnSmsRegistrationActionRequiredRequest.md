# Zernio::OnSmsRegistrationActionRequiredRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **test** | **Boolean** | Always true when present: only a sample sent by POST /v1/webhooks/test with an event carries it. Real deliveries never do. | [optional] |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. | [optional] |
| **registration** | [**OnSmsRegistrationActionRequiredRequestRegistration**](OnSmsRegistrationActionRequiredRequestRegistration.md) |  | [optional] |
| **reason** | **String** |  | [optional] |
| **message** | **String** | What to do, in words: our request or the carrier&#39;s note. Absent for otp_required. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnSmsRegistrationActionRequiredRequest.new(
  test: null,
  id: null,
  event: null,
  timestamp: null,
  registration: null,
  reason: null,
  message: null
)
```

