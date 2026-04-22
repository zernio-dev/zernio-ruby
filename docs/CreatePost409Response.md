# Zernio::CreatePost409Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **error** | **String** |  | [optional] |
| **details** | [**CreatePost409ResponseDetails**](CreatePost409ResponseDetails.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePost409Response.new(
  error: This exact content was already posted to this account within the last 24 hours.,
  details: null
)
```

