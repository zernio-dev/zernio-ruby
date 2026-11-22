# Zernio::GetEventsOverviewDaily200ResponsePlatformsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Such as &#x60;metaads&#x60; or &#x60;googleads&#x60;. | [optional] |
| **sent** | **Integer** | Events first sent to it in the period. | [optional] |
| **accepted** | **Integer** | Those it accepted. | [optional] |
| **days** | [**Array&lt;GetEventsOverviewDaily200ResponsePlatformsInnerDaysInner&gt;**](GetEventsOverviewDaily200ResponsePlatformsInnerDaysInner.md) | Every day of the period, oldest first. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverviewDaily200ResponsePlatformsInner.new(
  platform: null,
  sent: null,
  accepted: null,
  days: null
)
```

