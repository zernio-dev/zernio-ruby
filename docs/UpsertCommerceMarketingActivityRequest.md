# Zernio::UpsertCommerceMarketingActivityRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **remote_id** | **String** |  |  |
| **title** | **String** |  |  |
| **url** | **String** |  |  |
| **preview_image_url** | **String** |  | [optional] |
| **utm** | [**UpsertCommerceMarketingActivityRequestUtm**](UpsertCommerceMarketingActivityRequestUtm.md) |  | [optional] |
| **tactic** | **String** |  |  |
| **channel** | **String** |  |  |
| **status** | **String** |  |  |
| **budget** | [**UpsertCommerceMarketingActivityRequestBudget**](UpsertCommerceMarketingActivityRequestBudget.md) |  | [optional] |
| **ad_spend** | **String** | Decimal in the store currency. | [optional] |
| **started_at** | **Time** |  | [optional] |
| **ended_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpsertCommerceMarketingActivityRequest.new(
  account_id: null,
  remote_id: null,
  title: null,
  url: null,
  preview_image_url: null,
  utm: null,
  tactic: null,
  channel: null,
  status: null,
  budget: null,
  ad_spend: null,
  started_at: null,
  ended_at: null
)
```

