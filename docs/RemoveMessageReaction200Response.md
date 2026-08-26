# Zernio::RemoveMessageReaction200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **message_id** | **String** | The Zernio message ID the removal was resolved against | [optional] |
| **platform_message_id** | **String** | The platform message ID the removal was sent for | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveMessageReaction200Response.new(
  success: null,
  message_id: null,
  platform_message_id: null
)
```

