# Zernio::InboxMetricRow

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | Start of the period: the day or the Monday of the week, never before fromDate. With granularity&#x3D;total, fromDate. |  |
| **account_id** | **String** | With groupBy&#x3D;account. | [optional] |
| **platform** | **String** | With groupBy&#x3D;account or groupBy&#x3D;platform. | [optional] |
| **source** | **String** | With groupBy&#x3D;source; null for messages with no source recorded, such as messages received. | [optional] |
| **day_of_week** | **Integer** | With groupBy&#x3D;hourOfWeek: 1 is Monday, 7 is Sunday, in UTC. | [optional] |
| **hour** | **Integer** | With groupBy&#x3D;hourOfWeek: 0 to 23, in UTC. | [optional] |
| **response_time_bucket** | [**ResponseTimeBucket**](ResponseTimeBucket.md) | With groupBy&#x3D;responseTimeBucket. | [optional] |
| **account** | [**InboxMetricRowAccount**](InboxMetricRowAccount.md) |  | [optional] |
| **conversation_id** | **String** | With groupBy&#x3D;conversation or conversationId: the Zernio conversation id, or the id logged with the messages when the conversation no longer exists. | [optional] |
| **first_message_at** | **String** | With conversation rows: first message, read receipt or failure in the period, UTC. null for a conversation read by id with no activity in the period. | [optional] |
| **last_message_at** | **String** | With conversation rows: last message, read receipt or failure in the period, UTC. | [optional] |
| **conversation** | [**InboxMetricRowConversation**](InboxMetricRowConversation.md) |  | [optional] |
| **metrics** | **Hash&lt;String, Float&gt;** | Each metric asked; response times are null when no message received got a reply. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InboxMetricRow.new(
  date: null,
  account_id: null,
  platform: null,
  source: null,
  day_of_week: null,
  hour: null,
  response_time_bucket: null,
  account: null,
  conversation_id: null,
  first_message_at: null,
  last_message_at: null,
  conversation: null,
  metrics: null
)
```

