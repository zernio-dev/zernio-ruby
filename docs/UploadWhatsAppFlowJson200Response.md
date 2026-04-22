# Zernio::UploadWhatsAppFlowJson200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **validation_errors** | [**Array&lt;UploadWhatsAppFlowJson200ResponseValidationErrorsInner&gt;**](UploadWhatsAppFlowJson200ResponseValidationErrorsInner.md) | Empty array if valid; otherwise, contains validation error details from Meta | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadWhatsAppFlowJson200Response.new(
  success: null,
  validation_errors: null
)
```

