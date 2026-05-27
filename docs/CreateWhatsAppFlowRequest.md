# Zernio::CreateWhatsAppFlowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **name** | **String** | Flow display name |  |
| **categories** | **Array&lt;String&gt;** | Flow categories |  |
| **clone_flow_id** | **String** | Optional: ID of an existing flow to clone the Flow JSON from | [optional] |
| **as_version** | **Boolean** | When cloning, true keeps the clone in cloneFlowId&#39;s version lineage (auto-numbered next version); false/absent creates an independent flow. Ignored without cloneFlowId. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateWhatsAppFlowRequest.new(
  account_id: null,
  name: null,
  categories: null,
  clone_flow_id: null,
  as_version: null
)
```

