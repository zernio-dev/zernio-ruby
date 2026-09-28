# Zernio::OnRcsAgentStatusUpdatedRequestAgent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **account_id** | **String** | The rcs inbox account, once the agent exists with the carriers. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OnRcsAgentStatusUpdatedRequestAgent.new(
  id: null,
  display_name: null,
  profile_id: null,
  account_id: null
)
```

