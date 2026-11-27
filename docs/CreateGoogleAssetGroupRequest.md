# Zernio::CreateGoogleAssetGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
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
  stage: null,
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

