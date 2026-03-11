# Late::UpdateWhatsAppContactRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Contact name | [optional] |
| **email** | **String** | Contact email | [optional] |
| **company** | **String** | Company name | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags (replaces existing) | [optional] |
| **groups** | **Array&lt;String&gt;** | Groups (replaces existing) | [optional] |
| **is_opted_in** | **Boolean** | Opt-in status (changes are timestamped) | [optional] |
| **is_blocked** | **Boolean** | Block status | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** | Custom fields to merge (set value to null to remove a field) | [optional] |
| **notes** | **String** | Notes about the contact | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::UpdateWhatsAppContactRequest.new(
  name: null,
  email: null,
  company: null,
  tags: null,
  groups: null,
  is_opted_in: null,
  is_blocked: null,
  custom_fields: null,
  notes: null
)
```

