# Zernio::AutomationSequenceStepTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **language** | **String** |  |  |
| **components** | **Array&lt;Object&gt;** |  | [optional] |
| **variable_mapping** | **Hash&lt;String, Object&gt;** | Which contact field fills each template variable, by its number. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationSequenceStepTemplate.new(
  name: null,
  language: null,
  components: null,
  variable_mapping: null
)
```

