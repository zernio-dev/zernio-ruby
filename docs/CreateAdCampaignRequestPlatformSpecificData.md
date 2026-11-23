# Zernio::CreateAdCampaignRequestPlatformSpecificData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreateAdCampaignRequestPlatformSpecificData.openapi_one_of
# =>
# [
#   :'AmazonAdsCampaignPlatformData',
#   :'AppLovinAdsPlatformData'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreateAdCampaignRequestPlatformSpecificData.build(data)
# => #<AmazonAdsCampaignPlatformData:0x00007fdd4aab02a0>

Zernio::CreateAdCampaignRequestPlatformSpecificData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AmazonAdsCampaignPlatformData`
- `AppLovinAdsPlatformData`
- `nil` (if no type matches)

