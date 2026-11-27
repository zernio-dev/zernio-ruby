# Zernio::AddAdKeywordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Account ID (Google Ads) |  |
| **ad_set_id** | **String** | Google ad group ID to add the keywords to |  |
| **keywords** | [**Array&lt;AddAdKeywordsRequestKeywordsInner&gt;**](AddAdKeywordsRequestKeywordsInner.md) |  |  |
| **negative** | **Boolean** | Add as ad-group-level negatives instead of positive keywords | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddAdKeywordsRequest.new(
  stage: null,
  account_id: null,
  ad_set_id: null,
  keywords: null,
  negative: null
)
```

