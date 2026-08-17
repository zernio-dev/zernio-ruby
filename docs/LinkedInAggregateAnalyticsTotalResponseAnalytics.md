# Zernio::LinkedInAggregateAnalyticsTotalResponseAnalytics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impressions** | **Integer** | Total impressions across all posts | [optional] |
| **reach** | **Integer** | Unique members reached across all posts | [optional] |
| **reactions** | **Integer** | Total reactions across all posts | [optional] |
| **comments** | **Integer** | Total comments across all posts | [optional] |
| **shares** | **Integer** | Total reshares across all posts | [optional] |
| **saves** | **Integer** | Total times posts were saved (personal accounts only) | [optional] |
| **sends** | **Integer** | Total times posts were sent via LinkedIn messaging (personal accounts only) | [optional] |
| **engagement_rate** | **Float** | Overall engagement rate, as a percentage rounded to 2 decimals: (reactions + comments + shares + saves + sends) / impressions * 100. Clicks are not counted, and there is no fallback denominator, so this is 0 whenever impressions is 0. This is NOT the same formula as PostAnalytics.engagementRate on GET /v1/analytics. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAggregateAnalyticsTotalResponseAnalytics.new(
  impressions: null,
  reach: null,
  reactions: null,
  comments: null,
  shares: null,
  saves: null,
  sends: null,
  engagement_rate: null
)
```

