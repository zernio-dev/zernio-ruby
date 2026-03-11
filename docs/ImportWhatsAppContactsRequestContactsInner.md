# Late::ImportWhatsAppContactsRequestContactsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone** | **String** | Phone number in E.164 format |  |
| **name** | **String** | Contact name |  |
| **email** | **String** |  | [optional] |
| **company** | **String** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **custom_fields** | **Hash&lt;String, String&gt;** |  | [optional] |
| **notes** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::ImportWhatsAppContactsRequestContactsInner.new(
  phone: null,
  name: null,
  email: null,
  company: null,
  tags: null,
  groups: null,
  custom_fields: null,
  notes: null
)
```

