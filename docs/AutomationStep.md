# Zernio::AutomationStep

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationStep.openapi_one_of
# =>
# [
#   :'AutomationApprovalStep',
#   :'AutomationNotifyStep',
#   :'AutomationStepOneOf',
#   :'AutomationStepOneOf1',
#   :'AutomationStepOneOf10',
#   :'AutomationStepOneOf2',
#   :'AutomationStepOneOf3',
#   :'AutomationStepOneOf4',
#   :'AutomationStepOneOf5',
#   :'AutomationStepOneOf6',
#   :'AutomationStepOneOf7',
#   :'AutomationStepOneOf8',
#   :'AutomationStepOneOf9'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationStep.build(data)
# => #<AutomationApprovalStep:0x00007fdd4aab02a0>

Zernio::AutomationStep.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationApprovalStep`
- `AutomationNotifyStep`
- `AutomationStepOneOf`
- `AutomationStepOneOf1`
- `AutomationStepOneOf10`
- `AutomationStepOneOf2`
- `AutomationStepOneOf3`
- `AutomationStepOneOf4`
- `AutomationStepOneOf5`
- `AutomationStepOneOf6`
- `AutomationStepOneOf7`
- `AutomationStepOneOf8`
- `AutomationStepOneOf9`
- `nil` (if no type matches)

