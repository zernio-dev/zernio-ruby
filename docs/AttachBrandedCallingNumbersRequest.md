# Zernio::AttachBrandedCallingNumbersRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_ids** | **Array&lt;String&gt;** | Phone number record ids (from GET /v1/phone-numbers). Active US numbers only. |  |
| **signature** | [**AttachBrandedCallingNumbersRequestSignature**](AttachBrandedCallingNumbersRequestSignature.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AttachBrandedCallingNumbersRequest.new(
  phone_number_ids: null,
  signature: null
)
```

