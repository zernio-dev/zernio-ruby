# Zernio::WebhookPayloadMessageMessageSender

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Sender&#39;s platform identifier. For WhatsApp this is the phone number (without leading &#x60;+&#x60;) when available, otherwise the &#x60;businessScopedUserId&#x60;.  |  |
| **name** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **picture** | **String** |  | [optional] |
| **phone_number** | **String** | WhatsApp only. Sender&#39;s phone number in E.164 format (with leading &#x60;+&#x60;).  **Nullable during the BSUID rollout (April 2026+).** WhatsApp users who adopt a username can message businesses without exposing a phone number — this field is omitted for them. Match by &#x60;businessScopedUserId&#x60; instead. See &#x60;docs/whatsapp-bsuid-migration.md&#x60;.  | [optional] |
| **business_scoped_user_id** | **String** | WhatsApp only. Business-scoped user ID (BSUID) — Meta&#39;s canonical identifier for a WhatsApp user within your business. Present when Meta includes it in the inbound payload (rollout in progress since early April 2026). **Recommended primary identity anchor** going forward; fall back to &#x60;phoneNumber&#x60; only when this field is absent.  | [optional] |
| **parent_business_scoped_user_id** | **String** | WhatsApp only. Parent BSUID for businesses with linked business portfolios. Omitted for standalone portfolios.  | [optional] |
| **whatsapp_username** | **String** | WhatsApp only. User&#39;s WhatsApp username (e.g. &#x60;@jane&#x60;). Not a stable identifier — users can change it. Useful for display, not recommended as an identity anchor.  | [optional] |
| **instagram_profile** | [**WebhookPayloadMessageMessageSenderInstagramProfile**](WebhookPayloadMessageMessageSenderInstagramProfile.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadMessageMessageSender.new(
  id: null,
  name: null,
  username: null,
  picture: null,
  phone_number: null,
  business_scoped_user_id: null,
  parent_business_scoped_user_id: null,
  whatsapp_username: null,
  instagram_profile: null
)
```

