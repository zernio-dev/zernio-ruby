# Zernio::GetInboxTopAccounts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **from** | **Date** |  | [optional] |
| **to** | **Date** |  | [optional] |
| **accounts** | [**Array&lt;GetInboxTopAccounts200ResponseAccountsInner&gt;**](GetInboxTopAccounts200ResponseAccountsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxTopAccounts200Response.new(
  success: null,
  from: null,
  to: null,
  accounts: null
)
```

