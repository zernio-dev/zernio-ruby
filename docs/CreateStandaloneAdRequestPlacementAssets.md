# Zernio::CreateStandaloneAdRequestPlacementAssets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_image_url** | **String** | Catch-all image for any placement not matched by a rule. REQUIRED — Meta mandates a default asset customization rule (empty placement spec, lowest priority) on every placement-customized creative.  |  |
| **rules** | [**Array&lt;CreateStandaloneAdRequestPlacementAssetsRulesInner&gt;**](CreateStandaloneAdRequestPlacementAssetsRulesInner.md) | One entry per placement group you want to pin a specific image to. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestPlacementAssets.new(
  default_image_url: null,
  rules: null
)
```

