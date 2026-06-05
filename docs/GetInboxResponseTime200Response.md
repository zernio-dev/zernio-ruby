# Zernio::GetInboxResponseTime200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **from** | **Date** |  | [optional] |
| **to** | **Date** |  | [optional] |
| **summary** | [**GetInboxResponseTime200ResponseSummary**](GetInboxResponseTime200ResponseSummary.md) |  | [optional] |
| **histogram** | [**Array&lt;GetInboxResponseTime200ResponseHistogramInner&gt;**](GetInboxResponseTime200ResponseHistogramInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxResponseTime200Response.new(
  success: null,
  from: null,
  to: null,
  summary: null,
  histogram: null
)
```

