# Zernio::ReplaceCampaignNegativeKeywordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **platform** | **String** | Optional and NOT authoritative: the resolved campaign&#39;s own platform decides 200 vs 501, never this hint. | [optional] |
| **keywords** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceCampaignNegativeKeywordsRequest.new(
  stage: null,
  platform: null,
  keywords: null
)
```

