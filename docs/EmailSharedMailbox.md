# Zernio::EmailSharedMailbox

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Pass it as &#x60;accountId&#x60; to any /v1/email endpoint. | [optional] |
| **address** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **parent_account_id** | **String** | The Outlook account whose access opens this mailbox. | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **added_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailSharedMailbox.new(
  account_id: null,
  address: support@contoso.com,
  display_name: null,
  parent_account_id: null,
  is_active: null,
  added_at: null
)
```

