# Zernio::BusinessAgentConnectorInputAuthConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **oauth2_client_credentials** | [**BusinessAgentOAuthClientCredentials**](BusinessAgentOAuthClientCredentials.md) |  | [optional] |
| **api_key** | [**BusinessAgentApiKeyConfig**](BusinessAgentApiKeyConfig.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentConnectorInputAuthConfig.new(
  oauth2_client_credentials: null,
  api_key: null
)
```

