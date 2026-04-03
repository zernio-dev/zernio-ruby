# Late::YouTubeDemographicsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** | The Zernio SocialAccount ID | [optional] |
| **platform** | **String** |  | [optional] |
| **demographics** | **Hash&lt;String, Array&lt;YouTubeDemographicsResponseDemographicsValueInner&gt;&gt;** | Object keyed by breakdown dimension (age, gender, country) | [optional] |
| **date_range** | [**YouTubeDemographicsResponseDateRange**](YouTubeDemographicsResponseDateRange.md) |  | [optional] |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::YouTubeDemographicsResponse.new(
  success: true,
  account_id: null,
  platform: youtube,
  demographics: null,
  date_range: null,
  note: Age/gender values are viewer percentages (0-100). Country values are view counts. Data based on signed-in viewers only, with 2-3 day delay.
)
```

