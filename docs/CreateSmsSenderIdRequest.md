# Zernio::CreateSmsSenderIdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **String** | The sender ID recipients will see (3-11 letters/digits/spaces, at least one letter, no leading/trailing space). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateSmsSenderIdRequest.new(
  sender_id: null
)
```

