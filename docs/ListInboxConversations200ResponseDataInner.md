# Zernio::ListInboxConversations200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_username** | **String** |  | [optional] |
| **participant_id** | **String** |  | [optional] |
| **participant_name** | **String** |  | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **participant_verified_type** | **String** | X/Twitter verified badge type. Only present for Twitter/X conversations. | [optional] |
| **last_message** | **String** |  | [optional] |
| **updated_time** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |
| **unread_count** | **Integer** | Number of unread messages | [optional] |
| **url** | **String** | Direct link to open the conversation on the platform (if available) | [optional] |
| **instagram_profile** | [**ListInboxConversations200ResponseDataInnerInstagramProfile**](ListInboxConversations200ResponseDataInnerInstagramProfile.md) |  | [optional] |
| **metadata** | **Hash&lt;String, String&gt;** | Ad-click attribution captured on the first inbound message of the conversation. Only present when the conversation originated from a click-to-message ad. Absent on organic conversations.  Two sources populate this field:   - WhatsApp CTWA (Click-to-WhatsApp): &#x60;ctwa_clid&#x60;, &#x60;ctwa_source_id&#x60;,     &#x60;ctwa_source_url&#x60;, &#x60;ctwa_headline&#x60;, &#x60;ctwa_source_type&#x60;, &#x60;ctwa_captured_at&#x60;.   - Facebook Messenger CTM / Instagram CTD: &#x60;meta_ad_id&#x60;, &#x60;meta_ad_title&#x60;,     &#x60;meta_ad_source&#x60;, &#x60;meta_ad_type&#x60;, &#x60;meta_ad_ref&#x60;, &#x60;meta_ad_captured_at&#x60;,     &#x60;meta_ad_photo_url&#x60;, &#x60;meta_ad_video_url&#x60;, &#x60;meta_ad_post_id&#x60;,     &#x60;meta_ad_product_id&#x60;, &#x60;meta_ad_flow_id&#x60;.  Note: &#x60;meta_ad_photo_url&#x60; and &#x60;meta_ad_video_url&#x60; are Facebook CDN URLs that may expire. Use &#x60;meta_ad_id&#x60; for a permanent reference to the ad.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxConversations200ResponseDataInner.new(
  id: null,
  platform: null,
  account_id: null,
  account_username: null,
  participant_id: null,
  participant_name: null,
  participant_picture: null,
  participant_verified_type: null,
  last_message: null,
  updated_time: null,
  status: null,
  unread_count: null,
  url: null,
  instagram_profile: null,
  metadata: null
)
```

