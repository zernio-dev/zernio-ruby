# Zernio::ListCampaignNegativeKeywords200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keywords** | [**Array&lt;ListCampaignNegativeKeywords200ResponseKeywordsInner&gt;**](ListCampaignNegativeKeywords200ResponseKeywordsInner.md) |  | [optional] |
| **cached_at** | **Time** | When this list was fetched from Google. Null when it was never served from cache. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s daily API quota was exhausted and this is the last successful fetch, not a live read. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCampaignNegativeKeywords200Response.new(
  keywords: null,
  cached_at: null,
  stale: null
)
```

