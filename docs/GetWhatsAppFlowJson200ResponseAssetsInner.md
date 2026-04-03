# Late::GetWhatsAppFlowJson200ResponseAssetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **asset_type** | **String** |  | [optional] |
| **download_url** | **String** | Temporary URL to download the flow JSON | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetWhatsAppFlowJson200ResponseAssetsInner.new(
  name: flow.json,
  asset_type: FLOW_JSON,
  download_url: null
)
```

