# Zernio::GetGoogleBusinessSearchKeywords200ResponseKeywordsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keyword** | **String** |  | [optional] |
| **impressions** | **Integer** | Impressions for the range. 0 when Google reports only a threshold. | [optional] |
| **impressions_threshold** | **Integer** | Set when Google reports only that impressions were below this value. null when impressions is exact. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetGoogleBusinessSearchKeywords200ResponseKeywordsInner.new(
  keyword: restaurant near me,
  impressions: 245,
  impressions_threshold: null
)
```

