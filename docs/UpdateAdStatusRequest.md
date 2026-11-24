# Zernio::UpdateAdStatusRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **stage** | **Boolean** | Send true to stage this change instead of applying it. Nothing is written to the ad network; the response is &#x60;202&#x60; with the staged change and its diff. Apply it with POST /v1/ads/changes/{changeId}/confirm. Meta and Google only; cannot be combined with &#x60;validateOnly&#x60; or &#x60;dryRun&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdStatusRequest.new(
  status: null,
  stage: null
)
```

