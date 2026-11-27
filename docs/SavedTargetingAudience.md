# Zernio::SavedTargetingAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **type** | **String** |  |  |
| **account_id** | **String** | Account ID on the target ad platform. |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **spec** | [**TargetingSpec**](TargetingSpec.md) | The targeting spec to store. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SavedTargetingAudience.new(
  stage: null,
  type: null,
  account_id: null,
  name: null,
  description: null,
  spec: null
)
```

