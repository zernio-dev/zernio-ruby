# Zernio::AdRuleConditionItem

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AdRuleConditionItem.openapi_one_of
# =>
# [
#   :'AdRuleCondition',
#   :'AdRuleConditions'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AdRuleConditionItem.build(data)
# => #<AdRuleCondition:0x00007fdd4aab02a0>

Zernio::AdRuleConditionItem.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AdRuleCondition`
- `AdRuleConditions`
- `nil` (if no type matches)

