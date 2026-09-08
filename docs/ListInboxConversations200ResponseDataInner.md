# Zernio::ListInboxConversations200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Opaque conversation identifier. Pass it back verbatim to any /v1/inbox/conversations/{conversationId} route; do not assume a fixed format. | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_username** | **String** |  | [optional] |
| **participant_id** | **String** |  | [optional] |
| **participant_name** | **String** |  | [optional] |
| **participant_picture** | **String** |  | [optional] |
| **participant_verified_type** | **String** | X verified badge type. Only present for X conversations. | [optional] |
| **last_message** | **String** |  | [optional] |
| **updated_time** | **Time** |  | [optional] |
| **status** | **String** |  | [optional] |
| **unread_count** | **Integer** | Number of unread messages | [optional] |
| **thread_control** | **String** | WhatsApp only, present once Meta Business Agent has touched the thread. ai_agent: the agent answers and new inbound arrive flagged metadata.standby; app: you hold control; other: another partner app does. Change it with POST /v1/inbox/conversations/{conversationId}/thread-control. | [optional] |
| **url** | **String** | Direct link to open the conversation on the platform (if available) | [optional] |
| **instagram_profile** | [**ListInboxConversations200ResponseDataInnerInstagramProfile**](ListInboxConversations200ResponseDataInnerInstagramProfile.md) |  | [optional] |
| **metadata** | [**ListInboxConversations200ResponseDataInnerMetadata**](ListInboxConversations200ResponseDataInnerMetadata.md) |  | [optional] |

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
  thread_control: null,
  url: null,
  instagram_profile: null,
  metadata: null
)
```

