# Late::CreateWhatsAppContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **phone** | **String** | Phone number in E.164 format |  |
| **name** | **String** | Contact name |  |
| **email** | **String** | Contact email | [optional] |
| **company** | **String** | Company name | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for categorization | [optional] |
| **groups** | **Array&lt;String&gt;** | Groups the contact belongs to | [optional] |
| **is_opted_in** | **Boolean** | Whether the contact has opted in to receive messages | [optional][default to true] |
| **custom_fields** | **Hash&lt;String, String&gt;** | Custom key-value fields | [optional] |
| **notes** | **String** | Notes about the contact | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateWhatsAppContactRequest.new(
  account_id: null,
  phone: null,
  name: null,
  email: null,
  company: null,
  tags: null,
  groups: null,
  is_opted_in: null,
  custom_fields: null,
  notes: null
)
```

