# Zernio::BusinessAgentConnector

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **base_url** | **String** |  |  |
| **connector_protocol** | **String** |  | [optional] |
| **auth_type** | **String** |  |  |
| **auth_config** | **Hash&lt;String, Object&gt;** | What Meta stores for the connector&#39;s auth (for example oauth2_client_credentials with token_url and client_id), without secret values. | [optional] |
| **user_auth_injection_config** | [**BusinessAgentConnectorUserAuthInjectionConfig**](BusinessAgentConnectorUserAuthInjectionConfig.md) |  | [optional] |
| **requires_certificate** | **Boolean** |  | [optional] |
| **mcp_tool_sync** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **mtls_config** | **Hash&lt;String, Object&gt;** | Certificate details, without client_key or private_key. | [optional] |
| **connection_status** | [**BusinessAgentConnectorConnectionStatus**](BusinessAgentConnectorConnectionStatus.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentConnector.new(
  id: null,
  name: null,
  description: null,
  base_url: null,
  connector_protocol: HTTP,
  auth_type: null,
  auth_config: null,
  user_auth_injection_config: null,
  requires_certificate: null,
  mcp_tool_sync: null,
  mtls_config: null,
  connection_status: null
)
```

