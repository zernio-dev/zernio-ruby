# Zernio::BusinessAgentConnectorInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Unique per number. |  |
| **description** | **String** | Tell the agent what the service provides. | [optional] |
| **base_url** | **String** | Public HTTPS URL reachable from Meta. |  |
| **connector_protocol** | **String** |  | [optional] |
| **auth_type** | **String** |  |  |
| **auth_config** | [**BusinessAgentConnectorInputAuthConfig**](BusinessAgentConnectorInputAuthConfig.md) |  | [optional] |
| **user_auth_injection_config** | [**BusinessAgentConnectorInputUserAuthInjectionConfig**](BusinessAgentConnectorInputUserAuthInjectionConfig.md) |  | [optional] |
| **requires_certificate** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentConnectorInput.new(
  name: null,
  description: null,
  base_url: null,
  connector_protocol: HTTP,
  auth_type: null,
  auth_config: null,
  user_auth_injection_config: null,
  requires_certificate: null
)
```

