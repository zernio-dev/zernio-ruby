# Zernio::ListWhatsAppFlowResponses200ResponseResponsesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Message ID | [optional] |
| **received_at** | **Time** |  | [optional] |
| **from** | **String** | Sender wa_id / phone | [optional] |
| **sender_name** | **String** |  | [optional] |
| **conversation_id** | **String** |  | [optional] |
| **flow_token** | **String** |  | [optional] |
| **data** | **Object** | Submitted field values (flow_token removed) | [optional] |
| **raw** | **String** | Raw response_json string | [optional] |
| **content_not_retained** | **Boolean** | True when this team does not retain content, so the content fields of this row are null. Identifiers and metadata stay. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppFlowResponses200ResponseResponsesInner.new(
  id: null,
  received_at: null,
  from: null,
  sender_name: null,
  conversation_id: null,
  flow_token: null,
  data: null,
  raw: null,
  content_not_retained: null
)
```

