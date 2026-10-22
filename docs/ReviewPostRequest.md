# Zernio::ReviewPostRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **decision** | **String** | approve schedules the post; reject returns it to draft. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReviewPostRequest.new(
  decision: null
)
```

