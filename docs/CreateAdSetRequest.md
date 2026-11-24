# Zernio::CreateAdSetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to stage this create instead of sending it. Nothing is created on the ad network; the response is &#x60;202&#x60; with the staged change. Create it with POST /v1/ads/changes/{changeId}/confirm. Google only: &#x60;platform: reddit&#x60; or &#x60;snapchat&#x60; returns 400 &#x60;staging_not_supported&#x60;. | [optional] |
| **account_id** | **String** | Zernio SocialAccount id owning the Google Ads or Reddit Ads connection. |  |
| **platform** | **String** | \&quot;google\&quot;, \&quot;reddit\&quot; and \&quot;snapchat\&quot; are implemented; every other value returns 501. |  |
| **campaign_id** | **String** | Platform campaign ID the ad group is created under (numeric on Google). |  |
| **name** | **String** |  |  |
| **status** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **max_cpc** | **Float** | Max CPC of the new ad group, in the account&#39;s currency units. Send it when the campaign uses Manual CPC: Google gives an ad group without one a 0.01 bid. | [optional] |
| **ad_account_id** | **String** | Platform ad account ID: the Google customer ID (digits only, only required when the connection has more than one) or the Reddit ad account id (required). | [optional] |
| **customer_id** | **String** | Google only. Alias of adAccountId, kept for existing callers | [optional] |
| **budget_amount** | **Float** | Reddit only. Budget of the new ad group, in the ad account&#39;s currency units. Required when the campaign has no campaign budget; 400 under campaign budget optimization, where the campaign budget funds the ad group. | [optional] |
| **budget_type** | **String** | Reddit only. Sent together with budgetAmount. | [optional] |
| **start_date** | **String** | Reddit only. ISO 8601 start of the ad group. Defaults to now, or to the campaign start when it is in the future. | [optional] |
| **end_date** | **String** | Reddit only. ISO 8601 end of the ad group. Defaults to the campaign end. | [optional] |
| **targeting** | [**TargetingSpec**](TargetingSpec.md) | Reddit: the full targeting object. Google: locations and languages only, on a Demand Gen campaign. | [optional] |
| **promoted_object** | [**CreateAdSetRequestPromotedObject**](CreateAdSetRequestPromotedObject.md) |  | [optional] |
| **optimization_goal** | **String** | Reddit only. VIDEO_VIEW_6S (default) or VIDEO_VIEW_15S on a video views campaign. | [optional] |
| **bid_strategy** | **String** | Reddit only. Defaults to LOWEST_COST_WITHOUT_CAP. Not accepted under campaign budget optimization. | [optional] |
| **bid_amount** | **Float** | Reddit only. Bid cap in currency units, sent with bidStrategy. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdSetRequest.new(
  stage: null,
  account_id: null,
  platform: null,
  campaign_id: null,
  name: null,
  status: null,
  max_cpc: null,
  ad_account_id: null,
  customer_id: null,
  budget_amount: null,
  budget_type: null,
  start_date: null,
  end_date: null,
  targeting: null,
  promoted_object: null,
  optimization_goal: null,
  bid_strategy: null,
  bid_amount: null
)
```

