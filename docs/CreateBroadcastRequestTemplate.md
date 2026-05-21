# Zernio::CreateBroadcastRequestTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **language** | **String** |  | [optional] |
| **components** | **Array&lt;Object&gt;** |  | [optional] |
| **variable_mapping** | [**Hash&lt;String, CreateBroadcastRequestTemplateVariableMappingValue&gt;**](CreateBroadcastRequestTemplateVariableMappingValue.md) | Maps template variable positions (\&quot;1\&quot;, \&quot;2\&quot;) to contact fields or static values. Resolved per recipient at send time. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBroadcastRequestTemplate.new(
  name: null,
  language: null,
  components: null,
  variable_mapping: null
)
```

