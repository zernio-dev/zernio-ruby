# Zernio::ScheduledAutomationDefinitionStepsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::ScheduledAutomationDefinitionStepsInner.openapi_one_of
# =>
# [
#   :'AutomationBoostStep',
#   :'AutomationNotifyStep'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::ScheduledAutomationDefinitionStepsInner.build(data)
# => #<AutomationBoostStep:0x00007fdd4aab02a0>

Zernio::ScheduledAutomationDefinitionStepsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationBoostStep`
- `AutomationNotifyStep`
- `nil` (if no type matches)

