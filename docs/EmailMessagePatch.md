# Zernio::EmailMessagePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **unread** | **Boolean** |  | [optional] |
| **starred** | **Boolean** |  | [optional] |
| **folder** | **String** | Well-known folder name or folder id to move into. | [optional] |
| **add_labels** | **Array&lt;String&gt;** | Labels to add, by id or name (case-insensitive). The message stays where it is. On Outlook these are category names; a name not yet in the mailbox is created on the message. | [optional] |
| **remove_labels** | **Array&lt;String&gt;** | Labels to remove, by id or name. A label cannot be both added and removed in one request. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailMessagePatch.new(
  account_id: null,
  unread: null,
  starred: null,
  folder: null,
  add_labels: null,
  remove_labels: null
)
```

