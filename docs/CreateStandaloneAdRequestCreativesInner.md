# Zernio::CreateStandaloneAdRequestCreativesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **headline** | **String** |  |  |
| **body** | **String** |  |  |
| **image_url** | **String** | Image creative. Mutually exclusive with &#x60;video&#x60;. | [optional] |
| **video** | [**CreateStandaloneAdRequestCreativesInnerVideo**](CreateStandaloneAdRequestCreativesInnerVideo.md) |  | [optional] |
| **link_url** | **String** |  |  |
| **call_to_action** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestCreativesInner.new(
  headline: null,
  body: null,
  image_url: null,
  video: null,
  link_url: null,
  call_to_action: null
)
```

