# Zernio::LaunchCampaignAds200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submission_id** | **String** |  |  |
| **outcome** | **String** | &#x60;in_progress&#x60;: another launch of this post into the same placement is still running. |  |
| **identity** | **String** |  |  |
| **ad_id** | **String** | Zernio ad id, as in /v1/ads. |  |
| **error** | **String** | Why the post did not launch. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LaunchCampaignAds200ResponseResultsInner.new(
  submission_id: null,
  outcome: null,
  identity: null,
  ad_id: null,
  error: null
)
```

