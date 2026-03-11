# Late::BulkUpdateWhatsAppContactsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** | Bulk action to perform |  |
| **contact_ids** | **Array&lt;String&gt;** | Contact IDs to update (max 500) |  |
| **tags** | **Array&lt;String&gt;** | Tags to add or remove (required for addTags/removeTags) | [optional] |
| **groups** | **Array&lt;String&gt;** | Groups to add or remove (required for addGroups/removeGroups) | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::BulkUpdateWhatsAppContactsRequest.new(
  action: null,
  contact_ids: null,
  tags: null,
  groups: null
)
```

