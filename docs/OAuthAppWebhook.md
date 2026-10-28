# Zernio::OAuthAppWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_url** | **String** |  |  |
| **verify_token** | **String** |  |  |
| **object** | [**OAuthAppWebhookObject**](OAuthAppWebhookObject.md) |  |  |
| **fields** | **Array&lt;String&gt;** | Subscribe the app to these fields. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OAuthAppWebhook.new(
  callback_url: null,
  verify_token: null,
  object: null,
  fields: null
)
```

