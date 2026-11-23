# Zernio::ConnectTradeDeskAdsPartner200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **partner_id** | **String** |  | [optional] |
| **account_name** | **String** |  | [optional] |
| **advertisers** | [**Array&lt;ConnectTradeDeskAdsPartner200ResponseAdvertisersInner&gt;**](ConnectTradeDeskAdsPartner200ResponseAdvertisersInner.md) | Every advertiser the token reaches under the partner, whatever adAccountIds keeps. | [optional] |
| **redirect_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectTradeDeskAdsPartner200Response.new(
  account_id: null,
  partner_id: null,
  account_name: null,
  advertisers: null,
  redirect_url: null
)
```

