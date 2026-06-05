# Zernio::CreateStandaloneAdRequestTracking

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pixel_id** | **String** | Meta Pixel ID to attach for offsite-conversion measurement. | [optional] |
| **url_tags** | [**Array&lt;UpdateAdTrackingTagsRequestUrlTagsInner&gt;**](UpdateAdTrackingTagsRequestUrlTagsInner.md) | Click-URL params appended to the ad&#39;s destination as &#x60;url_tags&#x60; (e.g. utm_source). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestTracking.new(
  pixel_id: null,
  url_tags: null
)
```

