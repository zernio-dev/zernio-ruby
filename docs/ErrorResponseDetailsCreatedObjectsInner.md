# Zernio::ErrorResponseDetailsCreatedObjectsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  | [optional] |
| **id** | **String** | Meta object id; for &#x60;image&#x60; the image hash. | [optional] |
| **cleanup** | **String** | &#x60;deleted&#x60;: Zernio deleted it. &#x60;left_behind&#x60;: Meta refused the delete, so it still exists. &#x60;kept&#x60;: deliberately not deleted (image hashes are shared by every upload of the same file). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ErrorResponseDetailsCreatedObjectsInner.new(
  type: null,
  id: null,
  cleanup: null
)
```

