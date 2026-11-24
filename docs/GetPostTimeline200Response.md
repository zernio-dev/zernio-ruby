# Zernio::GetPostTimeline200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | The postId that was requested | [optional] |
| **timeline** | [**Array&lt;GetPostTimeline200ResponseTimelineInner&gt;**](GetPostTimeline200ResponseTimelineInner.md) |  | [optional] |
| **analytics_off** | [**Array&lt;AnalyticsOffAccount&gt;**](AnalyticsOffAccount.md) | The X accounts of this post whose analytics sync does not run, so their rows stop at the last read. Absent when there are none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPostTimeline200Response.new(
  post_id: null,
  timeline: null,
  analytics_off: null
)
```

