# Zernio::UpdateGoogleAssetGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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
  name: null,
  status: null,
  final_urls: null,
  final_mobile_urls: null,
  path1: null,
  path2: null,
  validate_only: null
)
```

