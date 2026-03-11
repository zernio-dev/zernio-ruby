# Late::GetWhatsAppContacts200ResponseContactsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **wa_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **is_opted_in** | **Boolean** |  | [optional] |
| **last_message_sent_at** | **Time** |  | [optional] |
| **last_message_received_at** | **Time** |  | [optional] |
| **messages_sent_count** | **Integer** |  | [optional] |
| **messages_received_count** | **Integer** |  | [optional] |
| **custom_fields** | **Object** |  | [optional] |
| **notes** | **String** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetWhatsAppContacts200ResponseContactsInner.new(
  id: null,
  phone: null,
  wa_id: null,
  name: null,
  email: null,
  company: null,
  tags: null,
  groups: null,
  is_opted_in: null,
  last_message_sent_at: null,
  last_message_received_at: null,
  messages_sent_count: null,
  messages_received_count: null,
  custom_fields: null,
  notes: null,
  created_at: null
)
```

