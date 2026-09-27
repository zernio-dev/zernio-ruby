# Zernio::CreateGoogleAssetGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Unique within the campaign. |  |
| **final_urls** | **Array&lt;String&gt;** |  |  |
| **final_mobile_urls** | **Array&lt;String&gt;** |  | [optional] |
| **path1** | **String** |  | [optional] |
| **path2** | **String** | Requires path1. | [optional] |
| **status** | **String** |  | [optional][default to &#39;PAUSED&#39;] |
| **assets** | [**Array&lt;GoogleAssetGroupAssetLink&gt;**](GoogleAssetGroupAssetLink.md) |  | [optional] |
| **listing_group_filter** | [**GoogleListingGroupTree**](GoogleListingGroupTree.md) |  | [optional] |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateGoogleAssetGroupRequest.new(
  name: null,
  final_urls: null,
  final_mobile_urls: null,
  path1: null,
  path2: null,
  status: null,
  assets: null,
  listing_group_filter: null,
  validate_only: null
)
```

