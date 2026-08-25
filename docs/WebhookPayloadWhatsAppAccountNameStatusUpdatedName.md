# Zernio::WebhookPayloadWhatsAppAccountNameStatusUpdatedName

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Normalized from Meta&#39;s &#x60;decision&#x60; (REJECTED -&gt; DECLINED, DEFERRED -&gt; PENDING_REVIEW; the review is still open on DEFERRED, not a rejection). |  |
| **requested_name** | **String** | The display name Meta reviewed. Null if Meta did not send one. |  |
| **rejection_reason** | **String** | Meta&#39;s free-form decline reason. Null on approval, or when Meta sends the literal string \&quot;NONE\&quot;. |  |
| **display_phone_number** | **String** | The phone number this review is for, as Meta reported it. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadWhatsAppAccountNameStatusUpdatedName.new(
  status: null,
  requested_name: null,
  rejection_reason: null,
  display_phone_number: null
)
```

