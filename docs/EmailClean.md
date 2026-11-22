# Zernio::EmailClean

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **removed** | [**EmailCleanRemoved**](EmailCleanRemoved.md) |  | [optional] |
| **signature** | **String** |  | [optional] |
| **forwarded** | [**EmailCleanForwarded**](EmailCleanForwarded.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailClean.new(
  text: null,
  status: null,
  removed: null,
  signature: null,
  forwarded: null
)
```

