# Zernio::AddUsersToAdAudience200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **num_received** | **Integer** |  | [optional] |
| **num_invalid** | **Integer** | Rows the platform could not read (Meta), or rows without any key the platform uses (every other platform). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AddUsersToAdAudience200Response.new(
  message: null,
  num_received: null,
  num_invalid: null
)
```

