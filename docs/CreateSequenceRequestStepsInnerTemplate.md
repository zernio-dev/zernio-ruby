# Late::CreateSequenceRequestStepsInnerTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **language** | **String** |  | [optional] |
| **variable_mapping** | [**Hash&lt;String, CreateSequenceRequestStepsInnerTemplateVariableMappingValue&gt;**](CreateSequenceRequestStepsInnerTemplateVariableMappingValue.md) | Maps template variable positions to contact fields. Keys are position strings (\&quot;1\&quot;, \&quot;2\&quot;), values are objects with field and optional customValue | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateSequenceRequestStepsInnerTemplate.new(
  name: null,
  language: null,
  variable_mapping: null
)
```

