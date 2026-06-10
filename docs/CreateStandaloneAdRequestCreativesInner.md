# Zernio::CreateStandaloneAdRequestCreativesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Exact name for this ad. Falls back to &#x60;&lt;name&gt; #N&#x60; (N &#x3D; 1-based position). | [optional] |
| **headline** | **String** |  |  |
| **body** | **String** |  |  |
| **description** | **String** | Link description for this ad (link_data.description; video creatives: video_data.link_description). Falls back to the top-level &#x60;description&#x60;; when both are omitted Meta scrapes the destination URL&#39;s OG description. | [optional] |
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
  description: null,
  image_url: null,
  video: null,
  link_url: null,
  call_to_action: null
)
```

