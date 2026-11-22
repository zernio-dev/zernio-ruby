# Zernio::GetCallsUsage200ResponseGroupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | The group key: a &#x60;YYYY-MM-DD&#x60; UTC day, one of your numbers, a channel, or a profile id. | [optional] |
| **profile_id** | **String** | With &#x60;groupBy&#x3D;profile&#x60; only: the profile id (same as &#x60;key&#x60;). | [optional] |
| **external_id** | **String** | With &#x60;groupBy&#x3D;profile&#x60; only: the externalId set on the profile, null when it has none. | [optional] |
| **calls** | **Integer** |  | [optional] |
| **answered** | **Integer** |  | [optional] |
| **minutes** | **Float** |  | [optional] |
| **billable_usd** | **Float** |  | [optional] |
| **meta_usd** | **Float** |  | [optional] |
| **branded_calls** | **Integer** |  | [optional] |
| **branded_call_usd** | **Float** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetCallsUsage200ResponseGroupsInner.new(
  key: null,
  profile_id: null,
  external_id: null,
  calls: null,
  answered: null,
  minutes: null,
  billable_usd: null,
  meta_usd: null,
  branded_calls: null,
  branded_call_usd: null
)
```

