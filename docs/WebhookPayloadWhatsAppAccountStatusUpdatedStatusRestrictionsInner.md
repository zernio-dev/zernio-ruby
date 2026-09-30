# Zernio::WebhookPayloadWhatsAppAccountStatusUpdatedStatusRestrictionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | For example RESTRICTED_BIZ_INITIATED_MESSAGING, RESTRICTED_CUSTOMER_INITIATED_MESSAGING, RESTRICTED_ADD_PHONE_NUMBER_ACTION. |  |
| **expires_at** | **String** | When the restriction lifts, as Meta sent it (for example 2026-10-30T13:38:04+0000). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppAccountStatusUpdatedStatusRestrictionsInner.new(
  type: null,
  expires_at: null
)
```

