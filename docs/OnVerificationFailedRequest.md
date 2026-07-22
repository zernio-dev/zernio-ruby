# Zernio::OnVerificationFailedRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **event** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **verification** | [**OnVerificationFailedRequestVerification**](OnVerificationFailedRequestVerification.md) |  | [optional] |
| **reason** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnVerificationFailedRequest.new(
  id: null,
  event: null,
  timestamp: null,
  verification: null,
  reason: null
)
```

