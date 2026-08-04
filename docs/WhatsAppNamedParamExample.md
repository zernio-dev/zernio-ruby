# Zernio::WhatsAppNamedParamExample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **param_name** | **String** | Variable name as it appears in the text, without braces (e.g. customer_name for {{customer_name}}). |  |
| **example** | **String** | Sample value for this variable. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppNamedParamExample.new(
  param_name: null,
  example: null
)
```

