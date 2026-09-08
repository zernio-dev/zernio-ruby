# Zernio::BusinessAgentSkill

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Lowercase letters, digits and hyphens, e.g. greeting-skill. | [optional] |
| **description** | **String** | When the agent should apply the skill. | [optional] |
| **skill** | **String** | The instructions themselves. Avoid two skills that both claim priority for the same situation. |  |
| **id** | **String** |  |  |
| **channel** | **String** |  | [optional] |
| **created_at** | **Integer** | Unix seconds. | [optional] |
| **status** | **String** | pending_review right after a write; blocked means Meta content review rejected it and the agent never applies it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentSkill.new(
  title: null,
  description: null,
  skill: null,
  id: null,
  channel: null,
  created_at: null,
  status: null
)
```

