# Zernio::ListSmsSenderIds200ResponseBudget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cap** | **Integer** | Daily message cap (raisable via &#x60;/v1/sms/sender-ids/limit-request&#x60;). | [optional] |
| **used_today** | **Integer** | Messages already counted against today&#39;s cap. | [optional] |
| **level** | **Integer** | Cap tier (Level 1 &#x3D; 500/day). | [optional] |
| **pending_request** | [**ListSmsSenderIds200ResponseBudgetPendingRequest**](ListSmsSenderIds200ResponseBudgetPendingRequest.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSmsSenderIds200ResponseBudget.new(
  cap: null,
  used_today: null,
  level: null,
  pending_request: null
)
```

