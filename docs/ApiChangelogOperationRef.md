# Zernio::ApiChangelogOperationRef

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** |  |  |
| **path** | **String** |  |  |
| **operation_id** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ApiChangelogOperationRef.new(
  method: POST,
  path: /v1/ads/create,
  operation_id: createAd
)
```

