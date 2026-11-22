# Zernio::AutomationAdFilter

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationAdFilter.openapi_one_of
# =>
# [
#   :'AutomationAdFilterOneOf',
#   :'AutomationAdFilterOneOf1',
#   :'AutomationAdFilterOneOf2',
#   :'AutomationAdFilterOneOf3',
#   :'AutomationAdFilterOneOf4',
#   :'AutomationAdFilterOneOf5',
#   :'AutomationAdFilterOneOf6',
#   :'AutomationAdFilterOneOf7',
#   :'AutomationAdFilterOneOf8'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AutomationAdFilter.build(data)
# => #<AutomationAdFilterOneOf:0x00007fdd4aab02a0>

Zernio::AutomationAdFilter.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationAdFilterOneOf`
- `AutomationAdFilterOneOf1`
- `AutomationAdFilterOneOf2`
- `AutomationAdFilterOneOf3`
- `AutomationAdFilterOneOf4`
- `AutomationAdFilterOneOf5`
- `AutomationAdFilterOneOf6`
- `AutomationAdFilterOneOf7`
- `AutomationAdFilterOneOf8`
- `nil` (if no type matches)

