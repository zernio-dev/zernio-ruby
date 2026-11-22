# Zernio::AutomationNotifyStepToInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **to** | **String** | An address, sent from a connected Gmail, Outlook or IMAP mailbox. | [optional] |
| **channel_id** | **String** | A channel of a connected Slack account. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationNotifyStepToInner.new(
  account_id: null,
  to: null,
  channel_id: null
)
```

