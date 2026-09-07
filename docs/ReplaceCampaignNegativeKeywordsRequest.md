# Zernio::ReplaceCampaignNegativeKeywordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Optional and NOT authoritative: the resolved campaign&#39;s own platform decides 200 vs 501, never this hint. | [optional] |
| **keywords** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceCampaignNegativeKeywordsRequest.new(
  platform: null,
  keywords: null
)
```

