# Zernio::CampaignSampleShippingAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **line1** | **String** |  |  |
| **line2** | **String** |  | [optional] |
| **city** | **String** |  |  |
| **region** | **String** |  | [optional] |
| **postal_code** | **String** |  |  |
| **country** | **String** | ISO 3166-1 alpha-2 country code. |  |
| **phone** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignSampleShippingAddress.new(
  name: null,
  line1: null,
  line2: null,
  city: null,
  region: null,
  postal_code: null,
  country: null,
  phone: null
)
```

