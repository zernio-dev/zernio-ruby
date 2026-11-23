# Zernio::UpdateAdTrackingTagsRequestCreative

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headline** | **String** |  |  |
| **body** | **String** |  |  |
| **call_to_action** | **String** |  |  |
| **link_url** | **String** |  |  |
| **image_url** | **String** |  |  |
| **video_url** | **String** |  | [optional] |
| **call_to_action_link** | **String** | The Get Directions button location, required to rebuild a &#x60;GET_DIRECTIONS&#x60; image creative (400 without it). Only with &#x60;callToAction: GET_DIRECTIONS&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdTrackingTagsRequestCreative.new(
  headline: null,
  body: null,
  call_to_action: null,
  link_url: null,
  image_url: null,
  video_url: null,
  call_to_action_link: fbgeo://48.8632965, 2.3587139, &quot;Shop name, Paris&quot;
)
```

