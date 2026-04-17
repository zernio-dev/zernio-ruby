# Late::SendInboxMessageRequestInteractiveActionOneOf2Parameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_message_version** | **String** | Defaults to \&quot;3\&quot; when omitted. | [optional] |
| **flow_token** | **String** | Opaque token you choose to correlate Flow responses with your own state (max 200 chars). |  |
| **flow_id** | **String** | Published Flow ID from Meta Business Manager. |  |
| **flow_cta** | **String** | Button label that opens the Flow (max 20 chars). |  |
| **flow_action** | **String** | &#x60;navigate&#x60; sends the user to &#x60;flow_action_payload.screen&#x60;; &#x60;data_exchange&#x60; posts data to your Flow endpoint. |  |
| **flow_action_payload** | [**SendInboxMessageRequestInteractiveActionOneOf2ParametersFlowActionPayload**](SendInboxMessageRequestInteractiveActionOneOf2ParametersFlowActionPayload.md) |  | [optional] |
| **mode** | **String** | Set to &#x60;draft&#x60; to test an unpublished Flow. | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::SendInboxMessageRequestInteractiveActionOneOf2Parameters.new(
  flow_message_version: null,
  flow_token: null,
  flow_id: null,
  flow_cta: null,
  flow_action: null,
  flow_action_payload: null,
  mode: null
)
```

