# Zernio::EmailMessagePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **unread** | **Boolean** |  | [optional] |
| **starred** | **Boolean** |  | [optional] |
| **folder** | **String** | Well-known folder name or folder id to move into. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailMessagePatch.new(
  account_id: null,
  unread: null,
  starred: null,
  folder: null
)
```

