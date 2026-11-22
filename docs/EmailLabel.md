# Zernio::EmailLabel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Gmail label id such as &#x60;Label_12&#x60;, or the Outlook category name. | [optional] |
| **account_id** | **String** |  | [optional] |
| **provider** | **String** |  | [optional] |
| **name** | **String** | Gmail nests labels with a slash, as in &#x60;Hermia/Handled&#x60;. | [optional] |
| **type** | **String** |  | [optional] |
| **color** | [**EmailLabelColor**](EmailLabelColor.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EmailLabel.new(
  id: null,
  account_id: null,
  provider: null,
  name: null,
  type: null,
  color: null
)
```

