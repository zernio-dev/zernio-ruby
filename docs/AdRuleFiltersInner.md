# Zernio::AdRuleFiltersInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AdRuleFiltersInner.openapi_one_of
# =>
# [
#   :'BlockedByANegative',
#   :'BudgetLevel',
#   :'ChannelType',
#   :'DaysLive',
#   :'DaysSinceChange',
#   :'Ids',
#   :'MatchType',
#   :'NameOrGoal',
#   :'SearchTermStatus'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::AdRuleFiltersInner.build(data)
# => #<BlockedByANegative:0x00007fdd4aab02a0>

Zernio::AdRuleFiltersInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BlockedByANegative`
- `BudgetLevel`
- `ChannelType`
- `DaysLive`
- `DaysSinceChange`
- `Ids`
- `MatchType`
- `NameOrGoal`
- `SearchTermStatus`
- `nil` (if no type matches)

