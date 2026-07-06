# Zernio::GetCallsUsage200ResponseGroupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The group key: a &#x60;YYYY-MM-DD&#x60; UTC day, one of your numbers, or a channel. | [optional] |
| **calls** | **Integer** |  | [optional] |
| **answered** | **Integer** |  | [optional] |
| **minutes** | **Float** |  | [optional] |
| **billable_usd** | **Float** |  | [optional] |
| **meta_usd** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCallsUsage200ResponseGroupsInner.new(
  key: null,
  calls: null,
  answered: null,
  minutes: null,
  billable_usd: null,
  meta_usd: null
)
```

