# Zernio::BusinessAgentSkillInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Lowercase letters, digits and hyphens, e.g. greeting-skill. | [optional] |
| **description** | **String** | When the agent should apply the skill. | [optional] |
| **skill** | **String** | The instructions themselves. Avoid two skills that both claim priority for the same situation. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentSkillInput.new(
  title: null,
  description: null,
  skill: null
)
```

