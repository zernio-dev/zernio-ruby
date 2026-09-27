# Zernio::EditGoogleAssetGroupAssetsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link** | [**Array&lt;GoogleAssetGroupAssetLink&gt;**](GoogleAssetGroupAssetLink.md) |  | [optional] |
| **unlink** | [**Array&lt;GoogleAssetGroupAssetUnlink&gt;**](GoogleAssetGroupAssetUnlink.md) |  | [optional] |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditGoogleAssetGroupAssetsRequest.new(
  link: null,
  unlink: null,
  validate_only: null
)
```

