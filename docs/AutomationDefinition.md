# Zernio::AutomationDefinition

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationDefinition.openapi_one_of
# =>
# [
#   :'AdRuleAutomationDefinition',
#   :'CommentAutomationDefinition',
#   :'EventAutomationDefinition',
#   :'FlowAutomationDefinition',
#   :'ScheduledAutomationDefinition',
#   :'SequenceAutomationDefinition'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationDefinition.build(data)
# => #<AdRuleAutomationDefinition:0x00007fdd4aab02a0>

Zernio::AutomationDefinition.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AdRuleAutomationDefinition`
- `CommentAutomationDefinition`
- `EventAutomationDefinition`
- `FlowAutomationDefinition`
- `ScheduledAutomationDefinition`
- `SequenceAutomationDefinition`
- `nil` (if no type matches)

