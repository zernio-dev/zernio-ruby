# Zernio::CreateStandaloneAdRequestMerchantCenter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_id** | **String** | Numeric Merchant Center id. |  |
| **feed_label** | **String** | Feed label to use. Omitted, every feed of the Merchant Center is used. | [optional] |
| **listing_type** | **String** | Set to &#x60;vehicles&#x60; for vehicle listings. Omitted, the campaign is a retail Performance Max campaign. Vehicle ads require Google to allowlist the ad account; otherwise Google rejects the create. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestMerchantCenter.new(
  merchant_id: null,
  feed_label: null,
  listing_type: null
)
```

