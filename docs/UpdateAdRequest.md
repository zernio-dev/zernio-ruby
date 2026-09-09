# Zernio::UpdateAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headlines** | [**Array&lt;GoogleRsaHeadline&gt;**](GoogleRsaHeadline.md) | Google RSA only. Replaces the complete headline list. No padding or truncation on update. | [optional] |
| **descriptions** | [**Array&lt;GoogleRsaDescription&gt;**](GoogleRsaDescription.md) | Google RSA only. Replaces the complete description list. No padding or truncation on update. | [optional] |
| **final_urls** | **Array&lt;String&gt;** | Google RSA only. Replaces final URLs. Omitted lists stay unchanged. | [optional] |
| **status** | **String** |  | [optional] |
| **budget** | [**UpdateAdRequestBudget**](UpdateAdRequestBudget.md) |  | [optional] |
| **targeting** | [**UpdateAdRequestTargeting**](UpdateAdRequestTargeting.md) |  | [optional] |
| **creative** | [**UpdateAdRequestCreative**](UpdateAdRequestCreative.md) |  | [optional] |
| **name** | **String** | Rename the ad. Now propagated to Meta (POST /{ad-id}); non-Meta platforms return 501. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequest.new(
  headlines: null,
  descriptions: null,
  final_urls: null,
  status: null,
  budget: null,
  targeting: null,
  creative: null,
  name: null
)
```

