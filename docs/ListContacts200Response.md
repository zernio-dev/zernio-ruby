# Zernio::ListContacts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **contacts** | [**Array&lt;ListContacts200ResponseContactsInner&gt;**](ListContacts200ResponseContactsInner.md) |  | [optional] |
| **filters** | [**ListContacts200ResponseFilters**](ListContacts200ResponseFilters.md) |  | [optional] |
| **pagination** | [**ListContacts200ResponsePagination**](ListContacts200ResponsePagination.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListContacts200Response.new(
  success: null,
  contacts: null,
  filters: null,
  pagination: null
)
```

