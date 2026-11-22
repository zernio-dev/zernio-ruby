# Zernio::DeleteSmsOptOut200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **opted_out** | **Boolean** | Always false. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DeleteSmsOptOut200Response.new(
  account_id: null,
  phone_number: null,
  opted_out: null
)
```

