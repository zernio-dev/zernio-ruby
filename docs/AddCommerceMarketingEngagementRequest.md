# Zernio::AddCommerceMarketingEngagementRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **date** | **Date** |  |  |
| **impressions** | **Integer** |  | [optional] |
| **views** | **Integer** |  | [optional] |
| **clicks** | **Integer** |  | [optional] |
| **shares** | **Integer** |  | [optional] |
| **likes** | **Integer** |  | [optional] |
| **comments** | **Integer** |  | [optional] |
| **ad_spend** | **String** | Decimal in the store currency. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddCommerceMarketingEngagementRequest.new(
  account_id: null,
  date: null,
  impressions: null,
  views: null,
  clicks: null,
  shares: null,
  likes: null,
  comments: null,
  ad_spend: null
)
```

