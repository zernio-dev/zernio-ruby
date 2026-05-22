# Zernio::EstimateAdReachRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Social account ID on the target ad platform. |  |
| **spec** | [**TargetingSpec**](TargetingSpec.md) | The targeting spec to estimate. Same shape used by POST /v1/ads/create. |  |
| **optimization_goal** | **String** | Optional. The optimization goal the estimate should assume (platform&#39;s own vocabulary, e.g. Meta &#x60;REACH&#x60;, &#x60;LINK_CLICKS&#x60;, &#x60;OFFSITE_CONVERSIONS&#x60;). Some platforms vary the estimate by goal; omit to use the platform default.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EstimateAdReachRequest.new(
  account_id: null,
  spec: null,
  optimization_goal: null
)
```

