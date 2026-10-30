# Zernio::UploadCampaignResultsRequestRowsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | The day, at most 400 days ago. |  |
| **campaign_id** | **String** | The platform campaign id. | [optional] |
| **utm_campaign** | **String** | The &#x60;utm_campaign&#x60; value on the campaign&#39;s ads. | [optional] |
| **campaign_name** | **String** | The campaign&#39;s name, matched case-insensitively. | [optional] |
| **ad_account_id** | **String** | Platform ad account id. Narrows matching to one ad account. | [optional] |
| **values** | **Hash&lt;String, Float&gt;** | Metric key (snake_case, up to 40 characters) to a non-negative number. 1 to 20 per row. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadCampaignResultsRequestRowsInner.new(
  date: null,
  campaign_id: null,
  utm_campaign: null,
  campaign_name: null,
  ad_account_id: null,
  values: {&quot;qualified_leads&quot;:14,&quot;sales&quot;:2,&quot;revenue&quot;:7800}
)
```

