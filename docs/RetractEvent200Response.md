# Zernio::RetractEvent200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** |  | [optional] |
| **deleted** | **Boolean** |  | [optional] |
| **destinations** | [**Array&lt;EventCorrection&gt;**](EventCorrection.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RetractEvent200Response.new(
  event_id: null,
  deleted: null,
  destinations: null
)
```

