# Zernio::ReplaceCampaignNegativeKeywords200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Integer** | Negative criteria newly created on Google | [optional] |
| **removed** | **Integer** | Negative criteria removed from Google | [optional] |
| **keywords** | [**Array&lt;ListCampaignNegativeKeywords200ResponseKeywordsInner&gt;**](ListCampaignNegativeKeywords200ResponseKeywordsInner.md) | The full negative-keyword set after the replace | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceCampaignNegativeKeywords200Response.new(
  created: null,
  removed: null,
  keywords: null
)
```

