# Late::SendWhatsAppFlowMessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **to** | **String** | Recipient phone number (E.164 format, e.g. +1234567890) |  |
| **flow_id** | **String** | Published flow ID |  |
| **flow_cta** | **String** | CTA button text (e.g. &#39;Book Now&#39;, &#39;Sign Up&#39;) |  |
| **flow_action** | **String** | Action type: navigate opens a screen directly, data_exchange hits your endpoint first | [optional][default to &#39;navigate&#39;] |
| **flow_token** | **String** | Unique token to correlate responses. Auto-generated UUID if omitted. | [optional] |
| **flow_action_payload** | [**SendWhatsAppFlowMessageRequestFlowActionPayload**](SendWhatsAppFlowMessageRequestFlowActionPayload.md) |  | [optional] |
| **body** | **String** | Message body text |  |
| **header** | [**SendWhatsAppFlowMessageRequestHeader**](SendWhatsAppFlowMessageRequestHeader.md) |  | [optional] |
| **footer** | **String** | Optional footer text | [optional] |
| **draft** | **Boolean** | Set true to test an unpublished (DRAFT) flow | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::SendWhatsAppFlowMessageRequest.new(
  account_id: null,
  to: null,
  flow_id: null,
  flow_cta: null,
  flow_action: null,
  flow_token: null,
  flow_action_payload: null,
  body: null,
  header: null,
  footer: null,
  draft: null
)
```

