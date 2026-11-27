# Zernio::UpdateBidStrategyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** | Google ads SocialAccount id. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Defaults to the account&#39;s connected customer. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **target_cpa** | **Float** |  | [optional] |
| **target_roas** | **Float** |  | [optional] |
| **target_impression_share** | [**GoogleTargetImpressionShare**](GoogleTargetImpressionShare.md) | Retargets a TARGET_IMPRESSION_SHARE strategy; location, percent and maxCpc are all written. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBidStrategyRequest.new(
  stage: null,
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  type: null,
  target_cpa: null,
  target_roas: null,
  target_impression_share: null
)
```

