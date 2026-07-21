# Zernio::CreatePhoneNumberPortInRequestRequirementsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement_type_id** | **String** | The requirement&#39;s id, from the requirements endpoint. |  |
| **field_value** | **String** | Text value, ISO datetime, or a documentId from POST /v1/phone-numbers/port-in/documents, per the requirement&#39;s kind. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberPortInRequestRequirementsInner.new(
  requirement_type_id: null,
  field_value: null
)
```

