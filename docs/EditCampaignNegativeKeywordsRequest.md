# Zernio::EditCampaignNegativeKeywordsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Optional and NOT authoritative: the resolved campaign&#39;s own platform decides 200 vs 501, never this hint. | [optional] |
| **add** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) | Negative keywords to add. Send at least one entry in add or remove. | [optional] |
| **remove** | [**Array&lt;KeywordEntry&gt;**](KeywordEntry.md) | Negative keywords to remove. Bare strings mean broad match. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditCampaignNegativeKeywordsRequest.new(
  platform: null,
  add: null,
  remove: null
)
```

