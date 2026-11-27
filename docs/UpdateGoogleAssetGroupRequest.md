# Zernio::UpdateGoogleAssetGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **final_urls** | **Array&lt;String&gt;** |  | [optional] |
| **final_mobile_urls** | **Array&lt;String&gt;** |  | [optional] |
| **path1** | **String** |  | [optional] |
| **path2** | **String** |  | [optional] |
| **validate_only** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateGoogleAssetGroupRequest.new(
  stage: null,
  name: null,
  status: null,
  final_urls: null,
  final_mobile_urls: null,
  path1: null,
  path2: null,
  validate_only: null
)
```

