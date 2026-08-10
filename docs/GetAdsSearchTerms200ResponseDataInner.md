# Zernio::GetAdsSearchTerms200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_term** | **String** |  | [optional] |
| **status** | **String** | ADDED / EXCLUDED / ADDED_EXCLUDED / NONE — whether the term is already a keyword or a negative. | [optional] |
| **match_type** | **String** | How the term matched (BROAD, PHRASE, EXACT, NEAR_PHRASE, NEAR_EXACT). | [optional] |
| **campaign_id** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **ad_group_id** | **String** |  | [optional] |
| **ad_group_name** | **String** |  | [optional] |
| **impressions** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **cost_micros** | **Integer** | Cost in micros of the account currency (divide by 1,000,000). | [optional] |
| **conversions** | **Float** |  | [optional] |
| **conversions_value** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdsSearchTerms200ResponseDataInner.new(
  search_term: null,
  status: null,
  match_type: null,
  campaign_id: null,
  campaign_name: null,
  ad_group_id: null,
  ad_group_name: null,
  impressions: null,
  clicks: null,
  cost_micros: null,
  conversions: null,
  conversions_value: null
)
```

