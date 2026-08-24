# Zernio::ConnectWhatsAppCredentials200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **registration_warning** | **String** | Present when the account was created but Meta rejected the Cloud API registration. The number cannot send messages until this is resolved. | [optional] |
| **webhook_notice** | **String** | Present when the WABA webhook subscription (with the Zernio override callback) succeeded. Explains the delivery cutover and warns against unsubscribing the app from the WABA afterward. | [optional] |
| **account** | [**ConnectWhatsAppCredentials200ResponseAccount**](ConnectWhatsAppCredentials200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWhatsAppCredentials200Response.new(
  message: null,
  registration_warning: null,
  webhook_notice: null,
  account: null
)
```

