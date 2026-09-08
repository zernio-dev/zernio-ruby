# Zernio::BusinessAgentSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agent_id** | **String** |  |  |
| **channel** | **String** |  |  |
| **rollout** | [**BusinessAgentSettingsRollout**](BusinessAgentSettingsRollout.md) |  |  |
| **handoff** | [**BusinessAgentSettingsHandoff**](BusinessAgentSettingsHandoff.md) |  | [optional] |
| **followup** | [**BusinessAgentSettingsFollowup**](BusinessAgentSettingsFollowup.md) |  | [optional] |
| **ai_audience** | **String** | EVERYONE answers all consumers; ALLOWLISTED_ONLY answers only the allowlist and needs no payment method. | [optional] |
| **never_say_phrases** | **Array&lt;String&gt;** | Exact phrases the agent must never say. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentSettings.new(
  agent_id: null,
  channel: whatsapp,
  rollout: null,
  handoff: null,
  followup: null,
  ai_audience: null,
  never_say_phrases: null
)
```

