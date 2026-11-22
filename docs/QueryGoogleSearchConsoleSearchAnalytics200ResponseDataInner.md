# Zernio::QueryGoogleSearchConsoleSearchAnalytics200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | **Array&lt;String&gt;** | One value per requested dimension in the same order. Absent when no dimensions were requested. | [optional] |
| **clicks** | **Float** |  | [optional] |
| **impressions** | **Float** |  | [optional] |
| **ctr** | **Float** | Clicks divided by impressions, from 0 to 1. | [optional] |
| **position** | **Float** | Average position in results (1 is the top). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::QueryGoogleSearchConsoleSearchAnalytics200ResponseDataInner.new(
  keys: [&quot;social media api&quot;],
  clicks: 412,
  impressions: 9875,
  ctr: 0.0417,
  position: 6.3
)
```

