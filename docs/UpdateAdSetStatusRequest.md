# Zernio::UpdateAdSetStatusRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **platform** | **String** |  |  |
| **account_id** | **String** | A Zernio Meta Ads or Facebook connection id (also accepted in the query). Changes the status of an ad set created in Ads Manager that Zernio has not synced, by numeric Meta id. Ignored when Zernio has the ad set. It echoes the requested status; &#x60;stage: true&#x60; answers 400. | [optional] |
| **stage** | **Boolean** | Send true to stage this change instead of applying it. Nothing is written to the ad network; the response is &#x60;202&#x60; with the staged change and its diff. Apply it with POST /v1/ads/changes/{changeId}/confirm. Meta, Google, TikTok, X, Snapchat and Reddit; cannot be combined with &#x60;validateOnly&#x60; or &#x60;dryRun&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdSetStatusRequest.new(
  status: null,
  platform: null,
  account_id: null,
  stage: null
)
```

