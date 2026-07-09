# Zernio::EditPost200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **id** | **String** | The platform post ID after the edit. X assigns a new ID; Discord, Facebook, and Reddit return the original ID unchanged.  | [optional] |
| **url** | **String** | URL of the edited post | [optional] |
| **message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EditPost200Response.new(
  success: null,
  id: null,
  url: null,
  message: null
)
```

