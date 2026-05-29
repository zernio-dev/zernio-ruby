# Zernio::GetContact200ResponseContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **avatar_url** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **is_subscribed** | **Boolean** |  | [optional] |
| **is_blocked** | **Boolean** |  | [optional] |
| **messages_sent_count** | **Integer** | Messages sent to the contact, derived live from message history across all linked conversations. | [optional] |
| **messages_received_count** | **Integer** | Messages received from the contact, derived live from message history across all linked conversations. | [optional] |
| **last_message_sent_at** | **Time** | Timestamp of the most recent outgoing message, or null if none. | [optional] |
| **last_message_received_at** | **Time** | Timestamp of the most recent incoming message, or null if none. | [optional] |
| **custom_fields** | **Object** |  | [optional] |
| **notes** | **String** |  | [optional] |
| **conversation_ids** | **Array&lt;String&gt;** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetContact200ResponseContact.new(
  id: null,
  name: null,
  email: null,
  company: null,
  avatar_url: null,
  tags: null,
  is_subscribed: null,
  is_blocked: null,
  messages_sent_count: null,
  messages_received_count: null,
  last_message_sent_at: null,
  last_message_received_at: null,
  custom_fields: null,
  notes: null,
  conversation_ids: null,
  created_at: null,
  updated_at: null
)
```

