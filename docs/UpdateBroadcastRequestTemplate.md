# Zernio::UpdateBroadcastRequestTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **language** | **String** |  | [optional] |
| **variable_mapping** | [**Hash&lt;String, UpdateBroadcastRequestTemplateVariableMappingValue&gt;**](UpdateBroadcastRequestTemplateVariableMappingValue.md) | Maps template variable positions to contact fields. Keys are position strings (\&quot;1\&quot;, \&quot;2\&quot;); values are { field, customValue }. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBroadcastRequestTemplate.new(
  name: null,
  language: null,
  variable_mapping: null
)
```

