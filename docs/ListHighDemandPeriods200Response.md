# Zernio::ListHighDemandPeriods200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object_id** | **String** | The campaign / ad set id the schedules belong to. | [optional] |
| **data** | **Array&lt;Object&gt;** |  | [optional] |
| **paging** | [**QueryAdInsights200ResponsePaging**](QueryAdInsights200ResponsePaging.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListHighDemandPeriods200Response.new(
  object_id: null,
  data: null,
  paging: null
)
```

