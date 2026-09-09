# Zernio::ConnectWhatsAppEmbeddedSignup200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **account** | [**ConnectWhatsAppEmbeddedSignup200ResponseAccount**](ConnectWhatsAppEmbeddedSignup200ResponseAccount.md) |  | [optional] |
| **redirect_url** | **String** | Present only when &#x60;redirectUrl&#x60; was sent; also present on error responses. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWhatsAppEmbeddedSignup200Response.new(
  message: null,
  account: null,
  redirect_url: null
)
```

