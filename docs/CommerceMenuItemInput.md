# Zernio::CommerceMenuItemInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **type** | **String** |  |  |
| **url** | **String** | For http items. | [optional] |
| **resource_id** | **String** | For product, collection, page, blog, article and metaobject items. | [optional] |
| **items** | [**Array&lt;CommerceMenuItemInput&gt;**](CommerceMenuItemInput.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceMenuItemInput.new(
  title: null,
  type: null,
  url: null,
  resource_id: null,
  items: null
)
```

