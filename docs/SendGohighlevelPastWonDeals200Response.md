# Zernio::SendGohighlevelPastWonDeals200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **outcome** | **String** |  |  |
| **sent** | **Integer** | Deals sent in this call. | [optional] |
| **failed** | **Integer** | Deals that could not be sent in this call. | [optional] |
| **remaining** | **Integer** | Unsent deals left for the next call. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendGohighlevelPastWonDeals200Response.new(
  outcome: null,
  sent: null,
  failed: null,
  remaining: null
)
```

