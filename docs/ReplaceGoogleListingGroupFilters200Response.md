# Zernio::ReplaceGoogleListingGroupFilters200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_group_id** | **String** |  | [optional] |
| **removed** | **Integer** | Nodes removed from the previous tree. | [optional] |
| **created** | **Integer** | Nodes in the new tree. | [optional] |
| **validate_only** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceGoogleListingGroupFilters200Response.new(
  asset_group_id: null,
  removed: null,
  created: null,
  validate_only: null
)
```

