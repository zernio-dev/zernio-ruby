# Zernio::WhatsAppBodyComponent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **text** | **String** | Body text with optional {{n}} variables |  |
| **add_security_recommendation** | **Boolean** | Add security recommendation text (authentication templates only) | [optional] |
| **example** | [**WhatsAppBodyComponentExample**](WhatsAppBodyComponentExample.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppBodyComponent.new(
  type: null,
  text: null,
  add_security_recommendation: null,
  example: null
)
```

