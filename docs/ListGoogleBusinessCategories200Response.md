# Zernio::ListGoogleBusinessCategories200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **categories** | [**Array&lt;ListGoogleBusinessCategories200ResponseCategoriesInner&gt;**](ListGoogleBusinessCategories200ResponseCategoriesInner.md) |  | [optional] |
| **next_page_token** | **String** | Present when more categories are available. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListGoogleBusinessCategories200Response.new(
  success: null,
  account_id: null,
  categories: null,
  next_page_token: null
)
```

