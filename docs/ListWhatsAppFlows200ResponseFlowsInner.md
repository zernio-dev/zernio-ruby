# Zernio::ListWhatsAppFlows200ResponseFlowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **categories** | **Array&lt;String&gt;** |  | [optional] |
| **validation_errors** | **Array&lt;Object&gt;** |  | [optional] |
| **version** | **Integer** | 1-based version within the flow&#39;s clone lineage (Zernio-tracked; Meta has no native versioning). Standalone flows are version 1. | [optional] |
| **lineage_id** | **String** | Stable group key for the flow&#39;s version lineage (the root flow&#39;s ID). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppFlows200ResponseFlowsInner.new(
  id: null,
  name: null,
  status: null,
  categories: null,
  validation_errors: null,
  version: null,
  lineage_id: null
)
```

