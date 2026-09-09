# Zernio::UpdateAccountStructuredSnippetsRequestUpdatesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asset_resource_name** | **String** | Asset resource name returned by a list operation. Must belong to the selected customer. |  |
| **structured_snippet_asset** | [**GoogleStructuredSnippet**](GoogleStructuredSnippet.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAccountStructuredSnippetsRequestUpdatesInner.new(
  asset_resource_name: null,
  structured_snippet_asset: null
)
```

