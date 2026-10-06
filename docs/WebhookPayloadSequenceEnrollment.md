# Zernio::WebhookPayloadSequenceEnrollment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Event id, the dedupe key. |  |
| **event** | **String** |  |  |
| **timestamp** | **Time** |  |  |
| **sequence** | [**UpdateFacebookPage200ResponseSelectedPage**](UpdateFacebookPage200ResponseSelectedPage.md) |  |  |
| **contact** | [**WebhookPayloadContactTagContact**](WebhookPayloadContactTagContact.md) |  |  |
| **enrollment** | [**CreateTestLead200ResponseTestLead**](CreateTestLead200ResponseTestLead.md) |  |  |
| **exit_reason** | **String** | sequence.exited only. completed: the last step was sent; replied: the contact replied and the sequence exits on reply; manual: unenrolled through the API; failed: the step kept failing to send; unsubscribed: the contact opted out. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadSequenceEnrollment.new(
  id: null,
  event: null,
  timestamp: null,
  sequence: null,
  contact: null,
  enrollment: null,
  exit_reason: null
)
```

