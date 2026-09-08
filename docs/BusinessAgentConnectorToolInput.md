# Zernio::BusinessAgentConnectorToolInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** | When and how the agent should use the operation. |  |
| **request_definition** | **Hash&lt;String, Object&gt;** | Meta request definition: method, path, path_parameters, query_parameters, headers and a typed body schema (content_type, params, required). |  |
| **user_auth_required** | **Boolean** |  | [optional] |
| **user_auth_action_config** | **Hash&lt;String, Object&gt;** |  | [optional] |
| **transformation_spec** | **Hash&lt;String, Object&gt;** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentConnectorToolInput.new(
  name: null,
  description: null,
  request_definition: null,
  user_auth_required: null,
  user_auth_action_config: null,
  transformation_spec: null
)
```

