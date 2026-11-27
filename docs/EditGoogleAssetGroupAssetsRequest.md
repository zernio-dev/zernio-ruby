# Zernio::EditGoogleAssetGroupAssetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **link** | [**Array&lt;GoogleAssetGroupAssetLink&gt;**](GoogleAssetGroupAssetLink.md) |  | [optional] |
| **unlink** | [**Array&lt;GoogleAssetGroupAssetUnlink&gt;**](GoogleAssetGroupAssetUnlink.md) |  | [optional] |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditGoogleAssetGroupAssetsRequest.new(
  stage: null,
  link: null,
  unlink: null,
  validate_only: null
)
```

