# Zernio::CreatorCampaignEconomics

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreatorCampaignEconomics.openapi_one_of
# =>
# [
#   :'CreatorCampaignEconomicsAdPerformance',
#   :'CreatorCampaignEconomicsCommission',
#   :'CreatorCampaignEconomicsCpm',
#   :'CreatorCampaignEconomicsPerPost',
#   :'CreatorCampaignEconomicsPool',
#   :'CreatorCampaignEconomicsRetainer'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreatorCampaignEconomics.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreatorCampaignEconomics.openapi_discriminator_mapping
# =>
# {
#   :'ad_performance' => :'CreatorCampaignEconomicsAdPerformance',
#   :'commission' => :'CreatorCampaignEconomicsCommission',
#   :'cpm' => :'CreatorCampaignEconomicsCpm',
#   :'per_post' => :'CreatorCampaignEconomicsPerPost',
#   :'pool' => :'CreatorCampaignEconomicsPool',
#   :'retainer' => :'CreatorCampaignEconomicsRetainer'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreatorCampaignEconomics.build(data)
# => #<CreatorCampaignEconomicsAdPerformance:0x00007fdd4aab02a0>

Zernio::CreatorCampaignEconomics.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreatorCampaignEconomicsAdPerformance`
- `CreatorCampaignEconomicsCommission`
- `CreatorCampaignEconomicsCpm`
- `CreatorCampaignEconomicsPerPost`
- `CreatorCampaignEconomicsPool`
- `CreatorCampaignEconomicsRetainer`
- `nil` (if no type matches)

