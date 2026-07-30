# Zernio::BulkCreateContacts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **created** | **Integer** |  | [optional] |
| **skipped** | **Integer** |  | [optional] |
| **errors** | **Array&lt;String&gt;** | Per-contact failures, e.g. an identifier that is not a valid phone number | [optional] |
| **total** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BulkCreateContacts200Response.new(
  success: null,
  created: null,
  skipped: null,
  errors: null,
  total: null
)
```

