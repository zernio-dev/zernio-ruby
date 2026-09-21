# Zernio::ImessageSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Account id (use it with the inbox endpoints&#39; accountId) | [optional] |
| **platform** | **String** |  | [optional] |
| **sender** | **String** | The sender handle (E.164 phone or email) | [optional] |
| **opt_in_link** | **String** | imessage:// deep link that opens Messages on this sender with a prefilled text. Share it so contacts message you first (Apple only lets a sender reach contacts who wrote to it first). | [optional] |
| **display_name** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **provider** | **String** | Delivery provider backing this sender (e.g. loopmessage) | [optional] |
| **sender_verified** | **Boolean** | Whether the provider confirmed the sender as active at registration time | [optional] |
| **is_active** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImessageSender.new(
  id: null,
  platform: null,
  sender: null,
  opt_in_link: null,
  display_name: null,
  profile_id: null,
  provider: null,
  sender_verified: null,
  is_active: null
)
```

