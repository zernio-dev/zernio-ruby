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
| **participant_verified_type** | **String** | X/Twitter verified badge type. Only present for Twitter/X conversations. | [optional] |
| **last_message** | **String** |  | [optional] |
| **last_message_at** | **Time** |  | [optional] |
| **updated_time** | **Time** |  | [optional] |
| **participants** | [**Array&lt;UpdateFacebookPage200ResponseSelectedPage&gt;**](UpdateFacebookPage200ResponseSelectedPage.md) |  | [optional] |
| **instagram_profile** | [**ListInboxConversations200ResponseDataInnerInstagramProfile**](ListInboxConversations200ResponseDataInnerInstagramProfile.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Ad-click attribution captured on the first inbound message of the conversation. Only present when the conversation originated from a click-to-message ad. Absent on organic conversations.  Two sources populate this field:   - WhatsApp CTWA (Click-to-WhatsApp): &#x60;ctwa_clid&#x60;, &#x60;ctwa_source_id&#x60;,     &#x60;ctwa_source_url&#x60;, &#x60;ctwa_headline&#x60;, &#x60;ctwa_source_type&#x60;, &#x60;ctwa_captured_at&#x60;.   - Facebook Messenger CTM / Instagram CTD: &#x60;meta_ad_id&#x60;, &#x60;meta_ad_title&#x60;,     &#x60;meta_ad_source&#x60;, &#x60;meta_ad_type&#x60;, &#x60;meta_ad_ref&#x60;, &#x60;meta_ad_captured_at&#x60;,     &#x60;meta_ad_photo_url&#x60;, &#x60;meta_ad_video_url&#x60;, &#x60;meta_ad_post_id&#x60;,     &#x60;meta_ad_product_id&#x60;, &#x60;meta_ad_flow_id&#x60;.  Note: &#x60;meta_ad_photo_url&#x60; and &#x60;meta_ad_video_url&#x60; are Facebook CDN URLs that may expire. Use &#x60;meta_ad_id&#x60; for a permanent reference to the ad (e.g. to link to Meta Ads Manager).  | [optional] |

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
  last_message: null,
  last_message_at: null,
  updated_time: null,
  participants: null,
  instagram_profile: null,
  metadata: null
)
```

