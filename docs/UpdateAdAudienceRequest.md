# Zernio::UpdateAdAudienceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **spec** | [**TargetingSpec**](TargetingSpec.md) | Full replacement for the stored targeting spec. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdAudienceRequest.new(
  stage: null,
  name: null,
  description: null,
  spec: null
)
```

