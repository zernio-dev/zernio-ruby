# Zernio::Automation

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::Automation.openapi_one_of
# =>
# [
#   :'AutomationOneOf',
#   :'AutomationOneOf1',
#   :'AutomationOneOf2',
#   :'AutomationOneOf3',
#   :'AutomationOneOf4',
#   :'AutomationOneOf5'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::Automation.build(data)
# => #<AutomationOneOf:0x00007fdd4aab02a0>

Zernio::Automation.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationOneOf`
- `AutomationOneOf1`
- `AutomationOneOf2`
- `AutomationOneOf3`
- `AutomationOneOf4`
- `AutomationOneOf5`
- `nil` (if no type matches)

