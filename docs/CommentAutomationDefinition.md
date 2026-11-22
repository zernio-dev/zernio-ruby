# Zernio::CommentAutomationDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **status** | **String** |  | [optional][default to &#39;active&#39;] |
| **trigger** | [**CommentAutomationDefinitionTrigger**](CommentAutomationDefinitionTrigger.md) |  |  |
| **or_triggers** | [**Array&lt;CommentAutomationDefinitionOrTriggersInner&gt;**](CommentAutomationDefinitionOrTriggersInner.md) | A DM with the same keywords also starts it (&#x60;dm.keyword&#x60;), at the decision and with no comment to act on. Comment triggers with keywords only. | [optional] |
| **graph** | [**CommentAutomationDefinitionGraph**](CommentAutomationDefinitionGraph.md) |  |  |
| **limits** | [**CommentAutomationDefinitionLimits**](CommentAutomationDefinitionLimits.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationDefinition.new(
  name: null,
  status: null,
  trigger: null,
  or_triggers: null,
  graph: null,
  limits: null
)
```

