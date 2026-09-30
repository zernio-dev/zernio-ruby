# Zernio::WebhookPayloadWhatsAppAccountAlertReceivedAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | BUSINESS, PHONE_NUMBER or CURRENT_STATUS_ID. |  |
| **entity_id** | **String** |  |  |
| **severity** | **String** | CRITICAL, WARNING or INFORMATIONAL. |  |
| **status** | **String** | ACTIVE or NONE. |  |
| **type** | **String** | For example INCREASED_CAPABILITIES_ELIGIBILITY_DEFERRED, INCREASED_CAPABILITIES_ELIGIBILITY_FAILED, INCREASED_CAPABILITIES_ELIGIBILITY_NEED_MORE_INFO, OBA_APPROVED, OBA_REJECTED, PROFILE_PICTURE_LOST. |  |
| **description** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppAccountAlertReceivedAlert.new(
  entity_type: null,
  entity_id: null,
  severity: null,
  status: null,
  type: null,
  description: null
)
```

