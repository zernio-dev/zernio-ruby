# Zernio::ConnectWechatCredentials200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **account** | [**ConnectedMessagingAccount**](ConnectedMessagingAccount.md) |  | [optional] |
| **server** | [**ConnectWechatCredentials200ResponseServer**](ConnectWechatCredentials200ResponseServer.md) |  | [optional] |
| **ip_whitelist** | **Array&lt;String&gt;** | IPs that must stay on the account&#39;s API IP whitelist. | [optional] |
| **next_steps** | **Array&lt;String&gt;** |  | [optional] |
| **redirect_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWechatCredentials200Response.new(
  message: null,
  account: null,
  server: null,
  ip_whitelist: null,
  next_steps: null,
  redirect_url: null
)
```

