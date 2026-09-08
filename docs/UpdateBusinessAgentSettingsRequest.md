# Zernio::UpdateBusinessAgentSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rollout** | [**UpdateBusinessAgentSettingsRequestRollout**](UpdateBusinessAgentSettingsRequestRollout.md) |  | [optional] |
| **handoff** | [**UpdateBusinessAgentSettingsRequestHandoff**](UpdateBusinessAgentSettingsRequestHandoff.md) |  | [optional] |
| **followup** | [**UpdateBusinessAgentSettingsRequestFollowup**](UpdateBusinessAgentSettingsRequestFollowup.md) |  | [optional] |
| **ai_audience** | **String** |  | [optional] |
| **never_say_phrases** | **Array&lt;String&gt;** | Exact phrases the agent must never say; the full replacement list. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBusinessAgentSettingsRequest.new(
  rollout: null,
  handoff: null,
  followup: null,
  ai_audience: null,
  never_say_phrases: null
)
```

