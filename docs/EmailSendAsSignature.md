# Zernio::EmailSendAsSignature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **source** | **String** |  | [optional] |
| **id** | **String** | The Zernio signature id. &#x60;null&#x60; for a Gmail signature. | [optional] |
| **html** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailSendAsSignature.new(
  source: null,
  id: null,
  html: null,
  text: null
)
```

