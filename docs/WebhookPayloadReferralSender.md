# Zernio::WebhookPayloadReferralSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-scoped user ID (IGSID / PSID). |  |
| **contact_id** | **String** | Zernio CRM Contact id for this sender, when one exists. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadReferralSender.new(
  id: null,
  contact_id: null
)
```

