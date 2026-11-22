# Zernio::WebhookPayloadAccountDisconnectedAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account&#39;s unique identifier (same as used in /v1/accounts/{accountId}) |  |
| **profile_id** | **String** | The profile&#39;s unique identifier this account belongs to |  |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |
| **disconnection_type** | **String** | intentional: removed on purpose, for example with DELETE /v1/accounts/{accountId} or by a switch to the Free plan for the accounts over its limit. The account is deleted permanently 1 hour later unless the same account is reconnected within that hour.  unintentional: the connection broke (token expired or revoked, access lost on the platform). The account stays in Zernio, inactive, until it is reconnected (keeping its accountId) or removed. |  |
| **reason** | **String** | Human-readable reason for the disconnection |  |
| **reason_code** | **String** | IMAP mailboxes: why polling stopped, or replaced when a Google or Microsoft account took over the mailbox. Shopify stores: app_uninstalled when the merchant uninstalled the Zernio app. | [optional] |
| **reconnect_url** | **String** | IMAP mailboxes only: a hosted link, valid seven days, that reconnects the same account in place. Send it to the user. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountDisconnectedAccount.new(
  account_id: null,
  profile_id: null,
  platform: null,
  username: null,
  display_name: null,
  disconnection_type: null,
  reason: null,
  reason_code: null,
  reconnect_url: null
)
```

