# Zernio::ListWhatsAppFlowVersions200ResponseVersionsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **flow_id** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **parent_flow_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **missing** | **Boolean** | True when Meta no longer has this flow | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListWhatsAppFlowVersions200ResponseVersionsInner.new(
  flow_id: null,
  version: null,
  parent_flow_id: null,
  name: null,
  status: null,
  missing: null
)
```

