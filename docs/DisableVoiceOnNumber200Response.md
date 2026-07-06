# Zernio::DisableVoiceOnNumber200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** | Always false after a successful disable. | [optional] |
| **phone_number** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DisableVoiceOnNumber200Response.new(
  enabled: null,
  phone_number: null
)
```

