# Zernio::WhatsAppHeaderComponent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **format** | **String** |  |  |
| **text** | **String** | Header text (may include {{1}} variable). Used when format is TEXT. | [optional] |
| **example** | [**WhatsAppHeaderComponentExample**](WhatsAppHeaderComponentExample.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WhatsAppHeaderComponent.new(
  type: null,
  format: null,
  text: null,
  example: null
)
```

