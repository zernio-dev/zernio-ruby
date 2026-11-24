# Zernio::UpdateAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to stage this change instead of applying it. Nothing is written to the ad network; the response is &#x60;202&#x60; with the staged change and its diff. Apply it with POST /v1/ads/changes/{changeId}/confirm. Meta and Google only; cannot be combined with &#x60;validateOnly&#x60; or &#x60;dryRun&#x60;. | [optional] |
| **headlines** | [**Array&lt;GoogleRsaHeadline&gt;**](GoogleRsaHeadline.md) | Google Search and Display only. Replaces the complete headline list. Search takes 3-15, Display 1-5 and rejects pinnedField; the count is checked once the ad&#39;s channel is known. No padding or truncation on update. | [optional] |
| **descriptions** | [**Array&lt;GoogleRsaDescription&gt;**](GoogleRsaDescription.md) | Google Search and Display only. Replaces the complete description list. Search takes 2-4, Display 1-5 and rejects pinnedField. No padding or truncation on update. | [optional] |
| **final_urls** | **Array&lt;String&gt;** | Google Search and Display only. Replaces final URLs. Omitted lists stay unchanged. For Performance Max use assetGroup.finalUrl. | [optional] |
| **path1** | **String** | Google Search only. First display path shown after the domain in the ad URL. Send an empty string to clear it. | [optional] |
| **path2** | **String** | Google Search only. Second display path, shown after path1. Google requires path1 when path2 is set. Send an empty string to clear it. | [optional] |
| **asset_group** | [**GooglePmaxAssetGroupUpdate**](GooglePmaxAssetGroupUpdate.md) | Google Performance Max only. Replaces whole asset roles on the ad&#39;s asset group. Returns 422 on any other platform or channel. | [optional] |
| **demand_gen** | [**GoogleDemandGenUpdate**](GoogleDemandGenUpdate.md) | Google Demand Gen only. Returns 422 on any other platform or channel. | [optional] |
| **status** | **String** |  | [optional] |
| **budget** | [**UpdateAdRequestBudget**](UpdateAdRequestBudget.md) |  | [optional] |
| **targeting** | [**UpdateAdRequestTargeting**](UpdateAdRequestTargeting.md) |  | [optional] |
| **creative** | [**UpdateAdRequestCreative**](UpdateAdRequestCreative.md) |  | [optional] |
| **name** | **String** | Rename the ad. Now propagated to Meta (POST /{ad-id}); non-Meta platforms return 501. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdRequest.new(
  stage: null,
  headlines: null,
  descriptions: null,
  final_urls: null,
  path1: null,
  path2: null,
  asset_group: null,
  demand_gen: null,
  status: null,
  budget: null,
  targeting: null,
  creative: null,
  name: null
)
```

