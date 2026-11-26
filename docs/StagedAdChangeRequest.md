# Zernio::StagedAdChangeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | **String** | The operationId of the staged write. Every write in this list accepts &#x60;stage: true&#x60; in its body, or &#x60;?stage&#x3D;true&#x60; when it has no body. |  |
| **method** | **String** |  |  |
| **path** | **String** | The path of the write, for example /v1/ads/keywords. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StagedAdChangeRequest.new(
  operation: null,
  method: null,
  path: /v1/ads/keywords
)
```

