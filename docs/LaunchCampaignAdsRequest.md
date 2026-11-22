# Zernio::LaunchCampaignAdsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submission_ids** | **Array&lt;String&gt;** | Approved submissions to run as ads. |  |
| **network** | **String** | Meta runs Instagram and Facebook posts; TikTok runs TikTok posts. |  |
| **account_id** | **String** | The brand&#39;s connected ads account (Facebook or TikTok) the ads run from, as in &#x60;/v1/accounts&#x60;. |  |
| **ad_account_id** | **String** | Platform ad account ID. |  |
| **ad_set_id** | **String** | Existing Meta ad set the ads go into. Required when &#x60;network&#x60; is &#x60;meta&#x60;. | [optional] |
| **existing_campaign_id** | **String** | Existing TikTok campaign that gets one ad group per post. Required when &#x60;network&#x60; is &#x60;tiktok&#x60;. | [optional] |
| **daily_budget** | **Float** | Daily budget of each TikTok ad group, in the ad account currency. Required when &#x60;network&#x60; is &#x60;tiktok&#x60;. | [optional] |
| **identity** | **String** | Whose handle the ad runs under. TikTok takes &#x60;creator&#x60; only. |  |
| **body** | **String** | Primary text of brand ads. Defaults to the post caption. | [optional] |
| **headline** | **String** |  | [optional] |
| **call_to_action** | **String** | Call to action, as in &#x60;POST /v1/ads/create&#x60;. | [optional] |
| **link_url** | **String** | Destination URL (http or https). | [optional] |
| **status** | **String** | Ads launch paused unless set to &#x60;ACTIVE&#x60;. | [optional][default to &#39;PAUSED&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LaunchCampaignAdsRequest.new(
  submission_ids: null,
  network: null,
  account_id: null,
  ad_account_id: null,
  ad_set_id: null,
  existing_campaign_id: null,
  daily_budget: null,
  identity: null,
  body: null,
  headline: null,
  call_to_action: null,
  link_url: null,
  status: null
)
```

