# Zernio::AdKeywordQuality

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **score** | **Integer** | Quality Score, 1-10. | [optional] |
| **expected_ctr** | **String** | How the click-through rate compares with other ads in the same position (&#x60;search_predicted_ctr&#x60;). | [optional] |
| **ad_relevance** | **String** | How closely the ad matches the intent behind the search (&#x60;creative_quality_score&#x60;). | [optional] |
| **landing_page_experience** | **String** | How relevant and useful the landing page is to people who click (&#x60;post_click_quality_score&#x60;). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdKeywordQuality.new(
  score: null,
  expected_ctr: null,
  ad_relevance: null,
  landing_page_experience: null
)
```

