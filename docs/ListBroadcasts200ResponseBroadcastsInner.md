# Zernio::ListBroadcasts200ResponseBroadcastsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_name** | **String** | Display name of the sending account | [optional] |
| **status** | **String** |  | [optional] |
| **message_preview** | **String** | Template name or message text snippet | [optional] |
| **scheduled_at** | **Time** |  | [optional] |
| **started_at** | **Time** |  | [optional] |
| **completed_at** | **Time** |  | [optional] |
| **recipient_count** | **Integer** |  | [optional] |
| **sent_count** | **Integer** | Recipients whose latest status is &#x60;sent&#x60;: the platform accepted the message and has not confirmed delivery yet. Each recipient counts once, under its latest status, so everyone the broadcast went out to is sentCount + deliveredCount + readCount. | [optional] |
| **delivered_count** | **Integer** | Recipients whose latest status is &#x60;delivered&#x60;, not read yet. Everyone it was delivered to is deliveredCount + readCount. | [optional] |
| **read_count** | **Integer** | Recipients whose latest status is &#x60;read&#x60;. | [optional] |
| **failed_count** | **Integer** | Recipients whose send failed. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListBroadcasts200ResponseBroadcastsInner.new(
  id: null,
  name: null,
  description: null,
  platform: null,
  account_id: null,
  account_name: null,
  status: null,
  message_preview: null,
  scheduled_at: null,
  started_at: null,
  completed_at: null,
  recipient_count: null,
  sent_count: null,
  delivered_count: null,
  read_count: null,
  failed_count: null,
  created_at: null
)
```

