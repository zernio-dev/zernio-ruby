# Zernio::SelectInstagramAccount200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **redirect_url** | **String** | Redirect URL if a custom redirect_url was provided | [optional] |
| **account** | [**SelectInstagramAccount200ResponseAccount**](SelectInstagramAccount200ResponseAccount.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SelectInstagramAccount200Response.new(
  message: null,
  redirect_url: null,
  account: null
)
```

