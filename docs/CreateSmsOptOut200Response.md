# Zernio::CreateSmsOptOut200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **opted_out** | **Boolean** | Always true. | [optional] |
| **source** | **String** | What set the current opt-out. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateSmsOptOut200Response.new(
  account_id: null,
  phone_number: null,
  opted_out: null,
  source: null
)
```

