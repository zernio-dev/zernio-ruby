# Zernio::GetAdAccountLiveEntities200ResponseCampaignsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_campaign_id** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **platform_campaign_status** | **String** | Meta &#x60;effective_status&#x60;, for example ACTIVE, PAUSED, WITH_ISSUES. | [optional] |
| **configured_status** | **String** | Meta &#x60;status&#x60;: the campaign&#39;s own switch (ACTIVE, PAUSED, DELETED, ARCHIVED). | [optional] |
| **status** | **String** | Zernio&#39;s normalized status (active, paused, ...), derived from &#x60;platformCampaignStatus&#x60;. | [optional] |
| **budget** | [**GetAdAccountLiveEntities200ResponseCampaignsInnerBudget**](GetAdAccountLiveEntities200ResponseCampaignsInnerBudget.md) |  | [optional] |
| **daily_budget** | **Float** | Meta &#x60;daily_budget&#x60; in whole units of &#x60;currency&#x60;. | [optional] |
| **lifetime_budget** | **Float** | Meta &#x60;lifetime_budget&#x60; in whole units of &#x60;currency&#x60;. | [optional] |
| **budget_remaining** | **Float** | Meta &#x60;budget_remaining&#x60; in whole units of &#x60;currency&#x60;. Null when the campaign has no budget of its own. | [optional] |
| **spend_cap** | **Float** | Campaign spending limit (Meta &#x60;spend_cap&#x60;) in whole units of &#x60;currency&#x60;. Null when none is set. | [optional] |
| **bid_strategy** | **String** | Meta &#x60;bid_strategy&#x60;, set on campaigns with a campaign budget. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountLiveEntities200ResponseCampaignsInner.new(
  platform_campaign_id: null,
  campaign_name: null,
  platform_campaign_status: null,
  configured_status: null,
  status: null,
  budget: null,
  daily_budget: null,
  lifetime_budget: null,
  budget_remaining: null,
  spend_cap: null,
  bid_strategy: null
)
```

