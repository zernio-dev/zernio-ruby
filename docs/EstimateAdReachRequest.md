# Zernio::EstimateAdReachRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio social account ID on the target ad platform (the estimate runs against its platform). |  |
| **ad_account_id** | **String** | Required. The platform ad-account ID the reach call runs against (Meta act_..., LinkedIn numeric sponsoredAccount ID, Pinterest ad-account ID, X account ID) - every backing reach API is scoped to one ad account. Get it from GET /v1/ads/accounts. |  |
| **spec** | [**TargetingSpec**](TargetingSpec.md) | The targeting spec to estimate. Same shape used by POST /v1/ads/create. |  |
| **optimization_goal** | **String** | Optional. The optimization goal the estimate should assume (platform&#39;s own vocabulary, e.g. Meta &#x60;REACH&#x60;, &#x60;LINK_CLICKS&#x60;, &#x60;OFFSITE_CONVERSIONS&#x60;). Some platforms vary the estimate by goal; omit to use the platform default.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EstimateAdReachRequest.new(
  account_id: null,
  ad_account_id: null,
  spec: null,
  optimization_goal: null
)
```

