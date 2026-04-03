# Late::CreateWhatsAppFlowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **name** | **String** | Flow display name |  |
| **categories** | **Array&lt;String&gt;** | Flow categories |  |
| **clone_flow_id** | **String** | Optional: ID of an existing flow to clone | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::CreateWhatsAppFlowRequest.new(
  account_id: null,
  name: null,
  categories: null,
  clone_flow_id: null
)
```

