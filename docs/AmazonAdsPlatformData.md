# Zernio::AmazonAdsPlatformData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AmazonAdsPlatformData.openapi_one_of
# =>
# [
#   :'AmazonSponsoredBrandsAdData',
#   :'AmazonSponsoredDisplayAdData',
#   :'AmazonSponsoredProductsAdData'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AmazonAdsPlatformData.openapi_discriminator_name
# => :'ad_product'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AmazonAdsPlatformData.openapi_discriminator_mapping
# =>
# {
#   :'SPONSORED_BRANDS' => :'AmazonSponsoredBrandsAdData',
#   :'SPONSORED_DISPLAY' => :'AmazonSponsoredDisplayAdData',
#   :'SPONSORED_PRODUCTS' => :'AmazonSponsoredProductsAdData'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AmazonAdsPlatformData.build(data)
# => #<AmazonSponsoredBrandsAdData:0x00007fdd4aab02a0>

Zernio::AmazonAdsPlatformData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AmazonSponsoredBrandsAdData`
- `AmazonSponsoredDisplayAdData`
- `AmazonSponsoredProductsAdData`
- `nil` (if no type matches)

