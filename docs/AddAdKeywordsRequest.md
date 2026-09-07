# Zernio::AddAdKeywordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID (Google Ads) |  |
| **ad_set_id** | **String** | Google ad group ID to add the keywords to |  |
| **keywords** | [**Array&lt;AddAdKeywordsRequestKeywordsInner&gt;**](AddAdKeywordsRequestKeywordsInner.md) |  |  |
| **negative** | **Boolean** | Add as ad-group-level negatives instead of positive keywords | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddAdKeywordsRequest.new(
  account_id: null,
  ad_set_id: null,
  keywords: null,
  negative: null
)
```

