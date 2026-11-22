# Zernio::CreateImapAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **email** | **String** |  |  |
| **name** | **String** | Shown to people the mailbox emails. | [optional] |
| **password** | **String** | Shortcut for imap.password. | [optional] |
| **imap** | [**CreateImapAccountRequestImap**](CreateImapAccountRequestImap.md) |  | [optional] |
| **smtp** | [**CreateImapAccountRequestSmtp**](CreateImapAccountRequestSmtp.md) |  | [optional] |
| **identities** | [**Array&lt;CreateImapAccountRequestIdentitiesInner&gt;**](CreateImapAccountRequestIdentitiesInner.md) | Other addresses this mailbox sends as. | [optional] |
| **dry_run** | **Boolean** | Run every check and store nothing, for live validation in your own form. | [optional] |
| **allow_self_signed_certificate** | **Boolean** | On-premise servers only: accept a certificate that cannot be verified. The hosted page never offers it. | [optional] |
| **reconnect_account_id** | **String** | Reconnect this account in place with a new password; the stored servers are reused. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateImapAccountRequest.new(
  profile_id: null,
  email: null,
  name: null,
  password: null,
  imap: null,
  smtp: null,
  identities: null,
  dry_run: null,
  allow_self_signed_certificate: null,
  reconnect_account_id: null
)
```

