# Zernio::AutomationOneOf4

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **status** | **String** | Only a sequence or a flow can be a draft. |  |
| **trigger** | [**CommentAutomationDefinitionTrigger**](CommentAutomationDefinitionTrigger.md) |  |  |
| **or_triggers** | [**Array&lt;CommentAutomationDefinitionOrTriggersInner&gt;**](CommentAutomationDefinitionOrTriggersInner.md) | A DM with the same keywords also starts it (&#x60;dm.keyword&#x60;), at the decision and with no comment to act on. Comment triggers with keywords only. | [optional] |
| **graph** | [**CommentAutomationDefinitionGraph**](CommentAutomationDefinitionGraph.md) |  |  |
| **limits** | [**CommentAutomationDefinitionLimits**](CommentAutomationDefinitionLimits.md) |  |  |
| **id** | **String** |  |  |
| **kind** | **String** |  |  |
| **version** | **String** | Send it back as &#x60;If-Match&#x60; when editing, so an edit made after someone else saved is refused. |  |
| **last_check_at** | **Time** | Null until an ad rule first checks. Always null for every other kind; the checks of event and scheduled automations list when they ran. |  |
| **next_check_at** | **Time** | Null while paused. Always null for every kind but ad rules. |  |
| **created_at** | **Time** |  |  |
| **updated_at** | **Time** |  |  |
| **template** | [**AutomationRecordTemplate**](AutomationRecordTemplate.md) |  | [optional] |
| **platform** | **String** | The account&#39;s platform. On TikTok, Threads, LinkedIn and YouTube it only posts the public reply. |  |
| **read_only** | **Boolean** | Always true when present. Present when the graph only comes near what the automation does. It is read here and edited through &#x60;/v1/comment-automations&#x60;; an edit here is refused. | [optional] |
| **stats** | [**AutomationOneOf4AllOfStats**](AutomationOneOf4AllOfStats.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationOneOf4.new(
  name: null,
  status: null,
  trigger: null,
  or_triggers: null,
  graph: null,
  limits: null,
  id: null,
  kind: null,
  version: null,
  last_check_at: null,
  next_check_at: null,
  created_at: null,
  updated_at: null,
  template: null,
  platform: null,
  read_only: null,
  stats: null
)
```

