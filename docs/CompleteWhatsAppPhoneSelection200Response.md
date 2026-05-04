# Zernio::CompleteWhatsAppPhoneSelection200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **redirect_url** | **String** | Present only if redirect_url was provided in the request | [optional] |
| **account** | [**CompleteWhatsAppPhoneSelection200ResponseAccount**](CompleteWhatsAppPhoneSelection200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CompleteWhatsAppPhoneSelection200Response.new(
  message: null,
  redirect_url: null,
  account: null
)
```

