# Late::WebhookPayloadMessageMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **quick_reply_payload** | **String** | Payload from a quick reply tap (Facebook/Instagram Messenger). | [optional] |
| **postback_payload** | **String** | Payload from a postback button tap (Facebook/Instagram Messenger). | [optional] |
| **postback_title** | **String** | Title of the tapped postback button (Facebook/Instagram Messenger). | [optional] |
| **callback_data** | **String** | Callback data from an inline keyboard button tap (Telegram). | [optional] |
| **interactive_type** | **String** | WhatsApp only. Which kind of interactive reply the user sent: &#x60;button_reply&#x60; (tap on an interactive button), &#x60;list_reply&#x60; (tap on a list row), or &#x60;nfm_reply&#x60; (a WhatsApp Flow submission).  | [optional] |
| **interactive_id** | **String** | WhatsApp only. The &#x60;id&#x60; of the tapped button or list row, matching the &#x60;id&#x60; you supplied when the message was sent. Not set for Flow responses.  | [optional] |
| **button_payload** | **String** | WhatsApp only. Payload attached to a tapped template button. Template buttons emit a plain &#x60;button&#x60; webhook (not an interactive reply), so &#x60;interactiveType&#x60; is empty while this field is populated.  | [optional] |
| **flow_response_json** | **String** | WhatsApp only. Raw &#x60;nfm_reply.response_json&#x60; string returned by a Flow submission. Useful if you need the exact wire payload; for typed access use &#x60;flowResponseData&#x60; instead.  | [optional] |
| **flow_response_data** | **Hash&lt;String, Object&gt;** | WhatsApp only. Parsed Flow response JSON. Populated when &#x60;flowResponseJson&#x60; is valid JSON; otherwise omitted. Keys and value types depend on the specific Flow that was submitted.  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::WebhookPayloadMessageMetadata.new(
  quick_reply_payload: null,
  postback_payload: null,
  postback_title: null,
  callback_data: null,
  interactive_type: null,
  interactive_id: null,
  button_payload: null,
  flow_response_json: null,
  flow_response_data: null
)
```

