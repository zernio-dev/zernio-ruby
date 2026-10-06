# Zernio::GetInstagramOnlineFollowers200ResponseDaysInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_time** | **String** | The end_time Meta returns for this day. | [optional] |
| **hours** | **Hash&lt;String, Integer&gt;** | Followers online per hour, keyed \&quot;0\&quot; to \&quot;23\&quot;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInstagramOnlineFollowers200ResponseDaysInner.new(
  end_time: null,
  hours: null
)
```

