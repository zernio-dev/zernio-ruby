# Zernio::GetGoogleAnalyticsMetadata200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **property_id** | **String** |  | [optional] |
| **dimensions** | [**Array&lt;GetGoogleAnalyticsMetadata200ResponseDimensionsInner&gt;**](GetGoogleAnalyticsMetadata200ResponseDimensionsInner.md) |  | [optional] |
| **metrics** | [**Array&lt;GetGoogleAnalyticsMetadata200ResponseMetricsInner&gt;**](GetGoogleAnalyticsMetadata200ResponseMetricsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleAnalyticsMetadata200Response.new(
  account_id: null,
  property_id: null,
  dimensions: null,
  metrics: null
)
```

