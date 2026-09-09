# Zernio::GetAdNegativeKeywordList200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **list** | [**GetAdNegativeKeywordList200ResponseList**](GetAdNegativeKeywordList200ResponseList.md) |  | [optional] |
| **customer_id** | **String** | Resolved Google Ads customer id. | [optional] |
| **cached_at** | **Time** | Last successful fetch time, or null without cache storage. | [optional] |
| **stale** | **Boolean** | True when quota exhaustion caused the last successful cached result to be served. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdNegativeKeywordList200Response.new(
  list: null,
  customer_id: null,
  cached_at: null,
  stale: null
)
```

