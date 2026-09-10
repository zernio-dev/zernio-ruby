# Zernio::SelectFacebookPage200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **redirect_url** | **String** | Redirect URL when a custom redirect_url was provided or a business Page was selected. | [optional] |
| **account** | [**SelectFacebookPage200ResponseAccount**](SelectFacebookPage200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectFacebookPage200Response.new(
  message: null,
  redirect_url: null,
  account: null
)
```

