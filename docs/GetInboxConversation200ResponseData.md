# Zernio::GetInboxConversation200ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_username** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **participant_name** | **String** |  | [optional] |
| **participant_id** | **String** |  | [optional] |
| **participant_verified_type** | **String** | X verified badge type. Only present for X conversations. | [optional] |
| **business_scoped_user_id** | **String** | WhatsApp only. Meta business-scoped user ID (BSUID), the stable identity anchor; present when Meta has sent it for this participant. | [optional] |
| **whatsapp_username** | **String** | WhatsApp only. The participant&#39;s WhatsApp username (e.g. &#x60;jane.shop&#x60;, no leading @). Not a stable identifier, because users can change it: useful for display, not recommended as an identity anchor. Captured from inbound messages, so older threads fill in on their next inbound. | [optional] |
| **last_message** | **String** |  | [optional] |
| **last_message_at** | **Time** |  | [optional] |
| **updated_time** | **Time** |  | [optional] |
| **participants** | [**Array&lt;UpdateFacebookPage200ResponseSelectedPage&gt;**](UpdateFacebookPage200ResponseSelectedPage.md) |  | [optional] |
| **instagram_profile** | [**ListInboxConversations200ResponseDataInnerInstagramProfile**](ListInboxConversations200ResponseDataInnerInstagramProfile.md) |  | [optional] |
| **metadata** | [**GetInboxConversation200ResponseDataMetadata**](GetInboxConversation200ResponseDataMetadata.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversation200ResponseData.new(
  id: null,
  account_id: null,
  account_username: null,
  platform: null,
  status: null,
  participant_name: null,
  participant_id: null,
  participant_verified_type: null,
  business_scoped_user_id: null,
  whatsapp_username: null,
  last_message: null,
  last_message_at: null,
  updated_time: null,
  participants: null,
  instagram_profile: null,
  metadata: null
)
```

