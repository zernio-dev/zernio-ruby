# Zernio::AmazonAdsCampaignPlatformData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AmazonAdsCampaignPlatformData.openapi_one_of
# =>
# [
#   :'AmazonSponsoredBrandsCampaignData',
#   :'AmazonSponsoredDisplayCampaignData',
#   :'AmazonSponsoredProductsCampaignData'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AmazonAdsCampaignPlatformData.openapi_discriminator_name
# => :'ad_product'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AmazonAdsCampaignPlatformData.openapi_discriminator_mapping
# =>
# {
#   :'SPONSORED_BRANDS' => :'AmazonSponsoredBrandsCampaignData',
#   :'SPONSORED_DISPLAY' => :'AmazonSponsoredDisplayCampaignData',
#   :'SPONSORED_PRODUCTS' => :'AmazonSponsoredProductsCampaignData'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AmazonAdsCampaignPlatformData.build(data)
# => #<AmazonSponsoredBrandsCampaignData:0x00007fdd4aab02a0>

Zernio::AmazonAdsCampaignPlatformData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AmazonSponsoredBrandsCampaignData`
- `AmazonSponsoredDisplayCampaignData`
- `AmazonSponsoredProductsCampaignData`
- `nil` (if no type matches)

