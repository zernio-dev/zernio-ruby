# Zernio::GetAdAnalytics200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad** | [**GetAdAnalytics200ResponseAd**](GetAdAnalytics200ResponseAd.md) |  | [optional] |
| **backfill_pending** | **Boolean** | Present and true only on &#x60;202&#x60; responses: part of the requested date range is still being backfilled from the platform in the background. Retry the same request shortly; it returns 200 once the range is fully ingested. | [optional] |
| **analytics** | [**GetCampaignAnalytics200ResponseAnalytics**](GetCampaignAnalytics200ResponseAnalytics.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAnalytics200Response.new(
  ad: null,
  backfill_pending: null,
  analytics: null
)
```

