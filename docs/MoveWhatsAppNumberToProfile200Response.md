# Zernio::MoveWhatsAppNumberToProfile200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **profile_id** | **String** | The profile the number is now on. | [optional] |
| **moved_platforms** | **Array&lt;String&gt;** | Platforms whose accounts travelled with the number (phone, sms, whatsapp). Absent when the number was already on the destination profile. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MoveWhatsAppNumberToProfile200Response.new(
  message: null,
  profile_id: null,
  moved_platforms: null
)
```

