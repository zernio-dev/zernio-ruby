# Zernio::BusinessAgentConnector

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
| **id** | **String** |  |  |
| **mcp_tool_sync** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **mtls_config** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **connection_status** | [**BusinessAgentConnectorAllOfConnectionStatus**](BusinessAgentConnectorAllOfConnectionStatus.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentConnector.new(
  name: null,
  description: null,
  base_url: null,
  connector_protocol: HTTP,
  auth_type: null,
  auth_config: null,
  user_auth_injection_config: null,
  requires_certificate: null,
  id: null,
  mcp_tool_sync: null,
  mtls_config: null,
  connection_status: null
)
```

