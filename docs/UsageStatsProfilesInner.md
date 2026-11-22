# Zernio::UsageStatsProfilesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **external_id** | **String** | The externalId set on the profile, null when it has none. |  |
| **usage** | [**UsageStatsProfilesInnerAllOfUsage**](UsageStatsProfilesInnerAllOfUsage.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UsageStatsProfilesInner.new(
  profile_id: null,
  external_id: null,
  usage: null
)
```

