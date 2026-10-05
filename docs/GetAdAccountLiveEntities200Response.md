# Zernio::GetAdAccountLiveEntities200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **ad_account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **currency** | **String** | ISO 4217 code every budget and bid amount is expressed in. | [optional] |
| **read_at** | **Time** | When Meta was read. | [optional] |
| **campaigns** | [**Array&lt;GetAdAccountLiveEntities200ResponseCampaignsInner&gt;**](GetAdAccountLiveEntities200ResponseCampaignsInner.md) | Absent when &#x60;level&#x3D;adSet&#x60;. | [optional] |
| **ad_sets** | [**Array&lt;GetAdAccountLiveEntities200ResponseAdSetsInner&gt;**](GetAdAccountLiveEntities200ResponseAdSetsInner.md) | Absent when &#x60;level&#x3D;campaign&#x60;. | [optional] |
| **paging** | [**GetAdAccountLiveEntities200ResponsePaging**](GetAdAccountLiveEntities200ResponsePaging.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountLiveEntities200Response.new(
  account_id: null,
  ad_account_id: null,
  platform: null,
  currency: null,
  read_at: null,
  campaigns: null,
  ad_sets: null,
  paging: null
)
```

