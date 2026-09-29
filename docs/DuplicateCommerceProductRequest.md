# Zernio::DuplicateCommerceProductRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **title** | **String** |  |  |
| **status** | **String** |  | [optional][default to &#39;draft&#39;] |
| **include_images** | **Boolean** |  | [optional][default to true] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DuplicateCommerceProductRequest.new(
  account_id: null,
  title: null,
  status: null,
  include_images: null
)
```

