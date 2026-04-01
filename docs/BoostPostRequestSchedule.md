# Late::BoostPostRequestSchedule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** | Required for lifetime budgets | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::BoostPostRequestSchedule.new(
  start_date: null,
  end_date: null
)
```

