# Zernio::BoostPostRequestTracking

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pixel_id** | **String** |  | [optional] |
| **url_tags** | [**Array&lt;BoostPostRequestTrackingUrlTagsInner&gt;**](BoostPostRequestTrackingUrlTagsInner.md) | URL parameters appended to the ad link, rendered as &#x60;key&#x3D;value&#x60; pairs joined with &#x60;&amp;&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPostRequestTracking.new(
  pixel_id: null,
  url_tags: null
)
```

