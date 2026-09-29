# Zernio::CommerceMenuItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **type** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **resource_id** | **String** | The linked product, collection, page, blog, article or metaobject id. | [optional] |
| **items** | [**Array&lt;CommerceMenuItem&gt;**](CommerceMenuItem.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceMenuItem.new(
  id: null,
  title: null,
  type: null,
  url: null,
  resource_id: null,
  items: null
)
```

