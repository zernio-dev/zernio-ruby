# Zernio::AddEmailSharedMailboxRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Microsoft account that has access to the shared mailbox. |  |
| **address** | **String** |  |  |
| **display_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddEmailSharedMailboxRequest.new(
  account_id: null,
  address: support@contoso.com,
  display_name: Contoso Support
)
```

