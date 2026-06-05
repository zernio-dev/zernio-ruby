# Zernio::GetInboxVolume200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **from** | **Date** |  | [optional] |
| **to** | **Date** |  | [optional] |
| **summary** | [**GetInboxVolume200ResponseSummary**](GetInboxVolume200ResponseSummary.md) |  | [optional] |
| **timeseries** | [**Array&lt;GetInboxVolume200ResponseTimeseriesInner&gt;**](GetInboxVolume200ResponseTimeseriesInner.md) |  | [optional] |
| **by_platform** | [**Array&lt;GetInboxVolume200ResponseByPlatformInner&gt;**](GetInboxVolume200ResponseByPlatformInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxVolume200Response.new(
  success: null,
  from: null,
  to: null,
  summary: null,
  timeseries: null,
  by_platform: null
)
```

