# Zernio::DetachBrandedCallingNumbersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_numbers** | **Array&lt;String&gt;** | E.164 numbers currently on this identity. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DetachBrandedCallingNumbersRequest.new(
  phone_numbers: null
)
```

