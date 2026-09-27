# Zernio::ListAdLabels200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | Meta act_&lt;n&gt;, or the resolved Google customer id | [optional] |
| **data** | [**Array&lt;ListAdLabels200ResponseDataInner&gt;**](ListAdLabels200ResponseDataInner.md) |  | [optional] |
| **paging** | [**ListAdLabels200ResponsePaging**](ListAdLabels200ResponsePaging.md) |  | [optional] |
| **cached_at** | **Time** | Google only. When the served list was fetched from Google. | [optional] |
| **stale** | **Boolean** | Google only. True when Google quota was exhausted and the last cached list was served. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdLabels200Response.new(
  ad_account_id: null,
  data: null,
  paging: null,
  cached_at: null,
  stale: null
)
```

