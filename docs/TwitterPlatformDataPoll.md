# Zernio::TwitterPlatformDataPoll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **options** | **Array&lt;String&gt;** | Poll options (2-4 choices, max 25 characters each) |  |
| **duration_minutes** | **Integer** | Poll duration in minutes (5 min to 7 days) |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TwitterPlatformDataPoll.new(
  options: null,
  duration_minutes: null
)
```

