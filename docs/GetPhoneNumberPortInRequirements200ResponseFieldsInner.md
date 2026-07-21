# Zernio::GetPhoneNumberPortInRequirements200ResponseFieldsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **requirement_id** | **String** | Pass back as requirements[].requirementTypeId. | [optional] |
| **label** | **String** |  | [optional] |
| **kind** | **String** | text/date take a string value; file takes a documentId from the documents endpoint; address is satisfied automatically from the end-user service address. | [optional] |
| **description** | **String** |  | [optional] |
| **example** | **String** |  | [optional] |
| **acceptable_values** | **Array&lt;String&gt;** | When present, the value must be one of these. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPhoneNumberPortInRequirements200ResponseFieldsInner.new(
  requirement_id: null,
  label: null,
  kind: null,
  description: null,
  example: null,
  acceptable_values: null
)
```

