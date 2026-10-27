# Zernio::GetEmailThread200ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **provider** | **String** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **snippet** | **String** |  | [optional] |
| **participants** | [**Array&lt;EmailAddress&gt;**](EmailAddress.md) |  | [optional] |
| **message_ids** | **Array&lt;String&gt;** |  | [optional] |
| **draft_ids** | **Array&lt;String&gt;** |  | [optional] |
| **folders** | **Array&lt;String&gt;** |  | [optional] |
| **has_attachments** | **Boolean** |  | [optional] |
| **has_drafts** | **Boolean** |  | [optional] |
| **unread** | **Boolean** |  | [optional] |
| **starred** | **Boolean** |  | [optional] |
| **earliest_message_at** | **Time** |  | [optional] |
| **latest_message_received_at** | **Time** |  | [optional] |
| **latest_message_sent_at** | **Time** |  | [optional] |
| **messages** | [**Array&lt;EmailMessage&gt;**](EmailMessage.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEmailThread200ResponseData.new(
  id: null,
  account_id: null,
  provider: null,
  subject: null,
  snippet: null,
  participants: null,
  message_ids: null,
  draft_ids: null,
  folders: null,
  has_attachments: null,
  has_drafts: null,
  unread: null,
  starred: null,
  earliest_message_at: null,
  latest_message_received_at: null,
  latest_message_sent_at: null,
  messages: null
)
```

