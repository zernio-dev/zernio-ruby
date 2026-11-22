# Zernio::ListContactGroups200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Google contactGroups/{id}; Outlook folder:{folderId} (folder:default for the default Contacts folder) or category:{name}. | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **system** | **Boolean** | A group the provider defines, such as Google starred or the default Outlook Contacts folder. | [optional] |
| **member_count** | **Integer** | Members as Google counts them. Null for Outlook. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListContactGroups200ResponseDataInner.new(
  id: null,
  name: null,
  type: null,
  system: null,
  member_count: null
)
```

