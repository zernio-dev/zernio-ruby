# Zernio::EditAdNegativeKeywordListKeywordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Zernio SocialAccount id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Required when the connection has multiple customers. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **platform** | **String** | Optional courtesy field. The resolved account or campaign determines support; other platforms return 501. | [optional] |
| **add** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) | Keywords to add. Send at least one entry in add or remove. | [optional] |
| **remove** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) | Keywords to remove. Bare strings mean broad match. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditAdNegativeKeywordListKeywordsRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  platform: null,
  add: null,
  remove: null
)
```

