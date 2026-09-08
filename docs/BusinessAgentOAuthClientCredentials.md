# Zernio::BusinessAgentOAuthClientCredentials

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token_url** | **String** |  |  |
| **scopes_to_request** | **Array&lt;String&gt;** |  | [optional] |
| **token_request_content_type** | **String** |  | [optional] |
| **client_id** | **String** |  |  |
| **client_secret** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentOAuthClientCredentials.new(
  token_url: null,
  scopes_to_request: null,
  token_request_content_type: application/x-www-form-urlencoded,
  client_id: null,
  client_secret: null
)
```

