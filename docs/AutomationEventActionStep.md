# Zernio::AutomationEventActionStep

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationEventActionStep.openapi_one_of
# =>
# [
#   :'AutomationEventActionStepOneOf',
#   :'AutomationEventActionStepOneOf1',
#   :'AutomationEventActionStepOneOf2',
#   :'AutomationEventActionStepOneOf3',
#   :'AutomationEventActionStepOneOf4'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationEventActionStep.build(data)
# => #<AutomationEventActionStepOneOf:0x00007fdd4aab02a0>

Zernio::AutomationEventActionStep.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationEventActionStepOneOf`
- `AutomationEventActionStepOneOf1`
- `AutomationEventActionStepOneOf2`
- `AutomationEventActionStepOneOf3`
- `AutomationEventActionStepOneOf4`
- `nil` (if no type matches)

