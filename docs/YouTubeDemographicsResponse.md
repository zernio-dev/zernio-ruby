# Zernio::YouTubeDemographicsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** | The Zernio SocialAccount ID | [optional] |
| **platform** | **String** |  | [optional] |
| **video_id** | **String** | Present only when demographics are scoped to a single video | [optional] |
| **title** | **String** | Video title (video mode only) | [optional] |
| **published_at** | **Time** | Video publish date (video mode only) | [optional] |
| **demographics** | **Hash&lt;String, Array&lt;YouTubeDemographicsResponseDemographicsValueInner&gt;&gt;** | Object keyed by breakdown dimension (age, gender, country) | [optional] |
| **date_range** | [**YouTubeDemographicsResponseDateRange**](YouTubeDemographicsResponseDateRange.md) |  | [optional] |
| **provisional_since** | **Date** | Present only when the range reaches into YouTube&#39;s ~3-day processing window: the first date whose numbers are provisional and may still be revised by YouTube. | [optional] |
| **note** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::YouTubeDemographicsResponse.new(
  success: true,
  account_id: null,
  platform: youtube,
  video_id: null,
  title: null,
  published_at: null,
  demographics: null,
  date_range: null,
  provisional_since: null,
  note: Age/gender values are viewer percentages (0-100). Country values are view counts. Data based on signed-in viewers only, with 2-3 day delay.
)
```

