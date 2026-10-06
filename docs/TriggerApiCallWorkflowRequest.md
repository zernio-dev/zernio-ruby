# Zernio::TriggerApiCallWorkflowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | A conversation on the workflow&#39;s account | [optional] |
| **contact_id** | **String** | A contact with a conversation on the workflow&#39;s account | [optional] |
| **to** | **String** | Recipient phone in E.164 (WhatsApp workflows only) | [optional] |
| **variables** | **Hash&lt;String, Object&gt;** | Seed variables, merged over the standard run variables | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TriggerApiCallWorkflowRequest.new(
  conversation_id: null,
  contact_id: null,
  to: null,
  variables: null
)
```

