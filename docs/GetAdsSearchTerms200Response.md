# Zernio::GetAdsSearchTerms200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **data** | [**Array&lt;GetAdsSearchTerms200ResponseDataInner&gt;**](GetAdsSearchTerms200ResponseDataInner.md) |  | [optional] |
| **paging** | [**GetAdsSearchTerms200ResponsePaging**](GetAdsSearchTerms200ResponsePaging.md) |  | [optional] |
| **cached_at** | **Time** | When this data was fetched from Google. Null when it was never served from cache. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s daily API quota was exhausted and this is the last successful fetch, not a live read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdsSearchTerms200Response.new(
  customer_id: null,
  data: null,
  paging: null,
  cached_at: null,
  stale: null
)
```

