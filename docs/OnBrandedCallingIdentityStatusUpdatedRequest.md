# Zernio::OnBrandedCallingIdentityStatusUpdatedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable webhook event ID: the dedupe key, also sent as the X-Zernio-Event-Id header and identical on every retry and redelivery. It identifies the event only, never an account or other resource. | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** | UTC time at which Zernio generated this event (set once when the event payload is built, before delivery is queued). Retries and redeliveries keep the original value, so it reflects the event, not the delivery attempt. | [optional] |
| **identity** | [**OnBrandedCallingIdentityStatusUpdatedRequestIdentity**](OnBrandedCallingIdentityStatusUpdatedRequestIdentity.md) |  | [optional] |
| **status** | **String** |  | [optional] |
| **reason** | **String** | Our review note, or the carrier&#39;s rejection reasons, when there is one. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnBrandedCallingIdentityStatusUpdatedRequest.new(
  id: null,
  event: null,
  timestamp: null,
  identity: null,
  status: null,
  reason: null
)
```

