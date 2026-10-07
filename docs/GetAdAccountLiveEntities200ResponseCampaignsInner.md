# Zernio::GetAdAccountLiveEntities200ResponseCampaignsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform_campaign_id** | **String** |  | [optional] |
| **campaign_name** | **String** |  | [optional] |
| **platform_campaign_status** | **String** | Meta &#x60;effective_status&#x60; (ACTIVE, PAUSED, WITH_ISSUES...) or TikTok &#x60;secondary_status&#x60; (CAMPAIGN_STATUS_ENABLE...). | [optional] |
| **configured_status** | **String** | The campaign&#39;s own switch: Meta &#x60;status&#x60; (ACTIVE, PAUSED, DELETED, ARCHIVED), or TikTok &#x60;operation_status&#x60; as ACTIVE (ENABLE) / PAUSED (DISABLE). | [optional] |
| **status** | **String** | Zernio&#39;s normalized status (active, paused, ...), derived from &#x60;platformCampaignStatus&#x60;. | [optional] |
| **budget** | [**GetAdAccountLiveEntities200ResponseCampaignsInnerBudget**](GetAdAccountLiveEntities200ResponseCampaignsInnerBudget.md) |  | [optional] |
| **daily_budget** | **Float** | Daily budget in whole units of &#x60;currency&#x60; (Meta &#x60;daily_budget&#x60;; TikTok &#x60;budget&#x60; under a daily budget mode). | [optional] |
| **lifetime_budget** | **Float** | Lifetime budget in whole units of &#x60;currency&#x60; (Meta &#x60;lifetime_budget&#x60;; TikTok &#x60;budget&#x60; under BUDGET_MODE_TOTAL). | [optional] |
| **budget_mode** | **String** | TikTok only: &#x60;budget_mode&#x60; as TikTok reports it (BUDGET_MODE_DAY, BUDGET_MODE_DYNAMIC_DAILY_BUDGET, BUDGET_MODE_TOTAL, BUDGET_MODE_INFINITE). | [optional] |
| **budget_remaining** | **Float** | Meta &#x60;budget_remaining&#x60; in whole units of &#x60;currency&#x60;. Null when the campaign has no budget of its own, and always on TikTok. | [optional] |
| **spend_cap** | **Float** | Campaign spending limit (Meta &#x60;spend_cap&#x60;) in whole units of &#x60;currency&#x60;. Null when none is set, and always on TikTok. | [optional] |
| **bid_strategy** | **String** | Meta &#x60;bid_strategy&#x60;, set on campaigns with a campaign budget. Null on TikTok. | [optional] |

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
  budget_mode: null,
  budget_remaining: null,
  spend_cap: null,
  bid_strategy: null
)
```

