# Zernio::ImapConnectResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dry_run** | **Boolean** |  | [optional] |
| **created** | **Boolean** |  | [optional] |
| **reconnected** | **Boolean** |  | [optional] |
| **account** | [**ImapConnectResultAccount**](ImapConnectResultAccount.md) |  | [optional] |
| **stages** | [**ImapConnectResultStages**](ImapConnectResultStages.md) |  | [optional] |
| **folders** | [**ImapConnectResultFolders**](ImapConnectResultFolders.md) |  | [optional] |
| **settings** | [**ImapConnectResultSettings**](ImapConnectResultSettings.md) |  | [optional] |
| **redirect_url** | **String** | Hosted page only: where to send the user next. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImapConnectResult.new(
  dry_run: null,
  created: null,
  reconnected: null,
  account: null,
  stages: null,
  folders: null,
  settings: null,
  redirect_url: null
)
```

