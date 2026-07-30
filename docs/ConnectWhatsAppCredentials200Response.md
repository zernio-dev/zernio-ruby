# Zernio::ConnectWhatsAppCredentials200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **registration_warning** | **String** | Present when the account was created but Meta rejected the Cloud API registration. The number cannot send messages until this is resolved. | [optional] |
| **account** | [**ConnectWhatsAppCredentials200ResponseAccount**](ConnectWhatsAppCredentials200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWhatsAppCredentials200Response.new(
  message: null,
  registration_warning: null,
  account: null
)
```

