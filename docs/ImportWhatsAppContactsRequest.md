# Late::ImportWhatsAppContactsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **contacts** | [**Array&lt;ImportWhatsAppContactsRequestContactsInner&gt;**](ImportWhatsAppContactsRequestContactsInner.md) | Contacts to import (max 1000) |  |
| **default_tags** | **Array&lt;String&gt;** | Tags applied to all imported contacts | [optional] |
| **default_groups** | **Array&lt;String&gt;** | Groups applied to all imported contacts | [optional] |
| **skip_duplicates** | **Boolean** | Skip contacts with existing phone numbers | [optional][default to true] |

## Example

```ruby
require 'late-sdk'

instance = Late::ImportWhatsAppContactsRequest.new(
  account_id: null,
  contacts: null,
  default_tags: null,
  default_groups: null,
  skip_duplicates: null
)
```

