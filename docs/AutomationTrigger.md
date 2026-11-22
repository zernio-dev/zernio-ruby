# Zernio::AutomationTrigger

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationTrigger.openapi_one_of
# =>
# [
#   :'AutomationEventTrigger',
#   :'AutomationPostSchedule',
#   :'AutomationScheduleTrigger'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationTrigger.build(data)
# => #<AutomationEventTrigger:0x00007fdd4aab02a0>

Zernio::AutomationTrigger.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationEventTrigger`
- `AutomationPostSchedule`
- `AutomationScheduleTrigger`
- `nil` (if no type matches)

