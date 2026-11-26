# Zernio::StagedAdChangeSummaryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **operation** | **String** | The operationId of the staged write. |  |
| **method** | **String** |  |  |
| **path** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StagedAdChangeSummaryRequest.new(
  operation: addAdKeywords,
  method: null,
  path: /v1/ads/keywords
)
```

