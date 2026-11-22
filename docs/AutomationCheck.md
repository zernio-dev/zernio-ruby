# Zernio::AutomationCheck

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationCheck.openapi_one_of
# =>
# [
#   :'AdRuleAutomationCheck',
#   :'EventAutomationCheck',
#   :'ScheduledAutomationCheck'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationCheck.build(data)
# => #<AdRuleAutomationCheck:0x00007fdd4aab02a0>

Zernio::AutomationCheck.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AdRuleAutomationCheck`
- `EventAutomationCheck`
- `ScheduledAutomationCheck`
- `nil` (if no type matches)

