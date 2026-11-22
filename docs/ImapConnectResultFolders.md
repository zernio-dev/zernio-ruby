# Zernio::ImapConnectResultFolders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent** | **String** |  | [optional] |
| **drafts** | **String** |  | [optional] |
| **trash** | **String** |  | [optional] |
| **spam** | **String** |  | [optional] |
| **archive** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImapConnectResultFolders.new(
  sent: null,
  drafts: null,
  trash: null,
  spam: null,
  archive: null
)
```

