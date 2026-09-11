# Zernio::CreateStandaloneAdRequestCreativesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creative_features** | **Hash&lt;String, String&gt;** | Replaces the entire top-level creativeFeatures map for this item. Omit to inherit; an empty map clears these defaults. | [optional] |
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
  creative_features: {auto_promotion_tag&#x3D;OPT_IN},
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

