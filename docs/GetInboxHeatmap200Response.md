# Zernio::GetInboxHeatmap200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **from** | **Date** |  | [optional] |
| **to** | **Date** |  | [optional] |
| **buckets** | [**Array&lt;GetInboxHeatmap200ResponseBucketsInner&gt;**](GetInboxHeatmap200ResponseBucketsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxHeatmap200Response.new(
  success: null,
  from: null,
  to: null,
  buckets: null
)
```

