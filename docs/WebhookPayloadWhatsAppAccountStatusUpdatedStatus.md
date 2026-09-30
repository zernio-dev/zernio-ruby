# Zernio::WebhookPayloadWhatsAppAccountStatusUpdatedStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | &#x60;active&#x60; only on a reinstatement (DISABLED_UPDATE with ban state REINSTATE). |  |
| **meta_event** | **String** | Meta &#x60;account_update&#x60; event: ACCOUNT_RESTRICTION, ACCOUNT_VIOLATION, ACCOUNT_DELETED or DISABLED_UPDATE. |  |
| **reason** | **String** | Human-readable summary. Null on reinstatement. |  |
| **violation_type** | **String** | ACCOUNT_VIOLATION only, for example SCAM, ADULT. |  |
| **restrictions** | [**Array&lt;WebhookPayloadWhatsAppAccountStatusUpdatedStatusRestrictionsInner&gt;**](WebhookPayloadWhatsAppAccountStatusUpdatedStatusRestrictionsInner.md) | ACCOUNT_RESTRICTION only. Empty otherwise. |  |
| **ban_state** | **String** | DISABLED_UPDATE only (for example DISABLE, REINSTATE). |  |
| **ban_date** | **String** | DISABLED_UPDATE only, as Meta sent it (for example \&quot;September 23, 2026\&quot;). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppAccountStatusUpdatedStatus.new(
  status: null,
  meta_event: null,
  reason: null,
  violation_type: null,
  restrictions: null,
  ban_state: null,
  ban_date: null
)
```

