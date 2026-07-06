# Zernio::EndVoiceCall200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **call_id** | **String** |  | [optional] |
| **status** | **String** | &#x60;ending&#x60; when a hangup was issued; otherwise the call&#39;s current status. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EndVoiceCall200Response.new(
  success: null,
  call_id: null,
  status: null
)
```

