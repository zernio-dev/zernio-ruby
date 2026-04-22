# Zernio::Pending

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **expires_in** | **Integer** | Seconds until expiration | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Pending.new(
  status: null,
  expires_at: null,
  expires_in: null
)
```

