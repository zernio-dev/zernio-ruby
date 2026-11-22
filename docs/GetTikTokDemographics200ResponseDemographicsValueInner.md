# Zernio::GetTikTokDemographics200ResponseDemographicsValueInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dimension** | **String** | Age group (18-24, 25-34, 35-44, 45-54, 55+), gender (Female, Male, Other), ISO 3166-1 alpha-2 country code, or city name. &#x60;other&#x60; collects the countries TikTok does not list individually. | [optional] |
| **value** | **Float** | Share of followers, from 0 to 1 | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTikTokDemographics200ResponseDemographicsValueInner.new(
  dimension: null,
  value: null
)
```

