# Zernio::UpdateAutomationRequestSubjects

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::UpdateAutomationRequestSubjects.openapi_one_of
# =>
# [
#   :'AutomationPostSubjects',
#   :'AutomationSubjects'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::UpdateAutomationRequestSubjects.build(data)
# => #<AutomationPostSubjects:0x00007fdd4aab02a0>

Zernio::UpdateAutomationRequestSubjects.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AutomationPostSubjects`
- `AutomationSubjects`
- `nil` (if no type matches)

