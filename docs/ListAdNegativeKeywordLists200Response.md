# Zernio::ListAdNegativeKeywordLists200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lists** | [**Array&lt;AdNegativeKeywordList&gt;**](AdNegativeKeywordList.md) |  | [optional] |
| **customer_id** | **String** | Resolved Google Ads customer id. | [optional] |
| **cached_at** | **Time** | Last successful fetch time, or null without cache storage. | [optional] |
| **stale** | **Boolean** | True when quota exhaustion caused the last successful cached result to be served. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdNegativeKeywordLists200Response.new(
  lists: null,
  customer_id: null,
  cached_at: null,
  stale: null
)
```

