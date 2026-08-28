# Zernio::SendInboxMessage200ResponseDataPartialFailure

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **part** | **String** |  | [optional] |
| **error** | **String** |  | [optional] |
| **platform_error** | [**SendInboxMessage200ResponseDataPartialFailurePlatformError**](SendInboxMessage200ResponseDataPartialFailurePlatformError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessage200ResponseDataPartialFailure.new(
  part: null,
  error: null,
  platform_error: null
)
```

