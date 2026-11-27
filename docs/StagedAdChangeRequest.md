# Zernio::StagedAdChangeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | **String** | The operationId of the staged write. Every write in this list accepts &#x60;stage: true&#x60; in its body, or &#x60;?stage&#x3D;true&#x60; when it has no body. |  |
| **method** | **String** |  |  |
| **path** | **String** | The path of the write, for example /v1/ads/keywords. |  |
| **params** | **Hash&lt;String, String&gt;** | The path values of the staged request, by the names in &#x60;path&#x60;. | [optional] |
| **query** | [**Hash&lt;String, StagedAdChangeRequestQueryValue&gt;**](StagedAdChangeRequestQueryValue.md) | The query values of the staged request, without &#x60;stage&#x60;. A key that was sent more than once holds every value, in the order sent. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StagedAdChangeRequest.new(
  operation: null,
  method: null,
  path: /v1/ads/keywords,
  params: {labelId&#x3D;22292442088},
  query: null
)
```

