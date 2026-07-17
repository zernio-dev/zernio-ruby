# Zernio::GetAdInsightsReport200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **report_run_id** | **String** |  | [optional] |
| **status** | **String** | Meta async_status: Job Not Started, Job Started, Job Running, Job Completed, Job Failed, Job Skipped. | [optional] |
| **percent_completion** | **Integer** |  | [optional] |
| **date_start** | **String** |  | [optional] |
| **date_stop** | **String** |  | [optional] |
| **data** | **Array&lt;Object&gt;** | Present only when status is Job Completed. | [optional] |
| **paging** | [**GetAdInsightsReport200ResponsePaging**](GetAdInsightsReport200ResponsePaging.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdInsightsReport200Response.new(
  report_run_id: null,
  status: null,
  percent_completion: null,
  date_start: null,
  date_stop: null,
  data: null,
  paging: null
)
```

