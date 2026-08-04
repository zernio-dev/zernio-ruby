# Zernio::WhatsAppBodyComponentExample

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **body_text** | **Array&lt;Array&lt;String&gt;&gt;** | Sample values for body variables (array of arrays) | [optional] |
| **body_text_named_params** | [**Array&lt;WhatsAppNamedParamExample&gt;**](WhatsAppNamedParamExample.md) | Sample values for NAMED body variables (templates using {{customer_name}}-style tokens with parameter_format: NAMED). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppBodyComponentExample.new(
  body_text: null,
  body_text_named_params: null
)
```

