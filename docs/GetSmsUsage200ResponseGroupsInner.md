# Zernio::GetSmsUsage200ResponseGroupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | A &#x60;YYYY-MM-DD&#x60; UTC day, one of your numbers, or a profile id. | [optional] |
| **profile_id** | **String** | With &#x60;groupBy&#x3D;profile&#x60; only: the profile id (same as &#x60;key&#x60;). | [optional] |
| **external_id** | **String** | With &#x60;groupBy&#x3D;profile&#x60; only: the externalId set on the profile, null when it has none. | [optional] |
| **sent** | **Integer** |  | [optional] |
| **received** | **Integer** |  | [optional] |
| **total** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetSmsUsage200ResponseGroupsInner.new(
  key: null,
  profile_id: null,
  external_id: null,
  sent: null,
  received: null,
  total: null
)
```

