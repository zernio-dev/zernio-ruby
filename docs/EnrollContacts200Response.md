# Zernio::EnrollContacts200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **enrolled** | **Integer** | Number of contacts successfully enrolled | [optional] |
| **skipped** | **Integer** | Number skipped (already enrolled or missing channel) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::EnrollContacts200Response.new(
  success: null,
  enrolled: null,
  skipped: null
)
```

