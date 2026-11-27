# Zernio::EditCampaignNegativeKeywordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **platform** | **String** | Optional and NOT authoritative: the resolved campaign&#39;s own platform decides 200 vs 501, never this hint. | [optional] |
| **add** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) | Negative keywords to add. Send at least one entry in add or remove. | [optional] |
| **remove** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) | Negative keywords to remove. Bare strings mean broad match. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditCampaignNegativeKeywordsRequest.new(
  stage: null,
  platform: null,
  add: null,
  remove: null
)
```

