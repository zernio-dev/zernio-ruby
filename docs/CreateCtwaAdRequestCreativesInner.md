# Zernio::CreateCtwaAdRequestCreativesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headline** | **String** |  |  |
| **body** | **String** | Primary text shown above the image / video. |  |
| **image_url** | **String** | Image asset. Mutually exclusive with this entry&#39;s &#x60;video&#x60;. Required if &#x60;video&#x60; is not supplied.  | [optional] |
| **video** | [**CreateCtwaAdRequestCreativesInnerVideo**](CreateCtwaAdRequestCreativesInnerVideo.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCtwaAdRequestCreativesInner.new(
  headline: null,
  body: null,
  image_url: null,
  video: null
)
```

