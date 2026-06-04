# Zernio::CreateStandaloneAdRequestCreativesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Exact name for this ad. Falls back to &#x60;&lt;name&gt; #N&#x60; (N &#x3D; 1-based position). | [optional] |
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
  name: null,
  headline: null,
  body: null,
  image_url: null,
  video: null,
  link_url: null,
  call_to_action: null
)
```

