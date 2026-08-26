# Zernio::AddMessageReaction200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **message_id** | **String** | The Zernio message ID the reaction was resolved against | [optional] |
| **platform_message_id** | **String** | The platform message ID the reaction was sent for | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddMessageReaction200Response.new(
  success: null,
  message_id: null,
  platform_message_id: null
)
```

