# Zernio::CreatePhoneNumberStockWatch200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **country** | **String** | ISO 3166-1 alpha-2. |  |
| **country_name** | **String** |  |  |
| **number_type** | **String** | The watched number type, or null when the watch covers every type in the country. |  |
| **area_code** | **String** | The watched area code (NDC), or null when the watch covers every area. | [optional] |
| **created_at** | **Time** |  |  |
| **pre_orderable** | **Boolean** | See the 201 response. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberStockWatch200Response.new(
  id: null,
  country: null,
  country_name: null,
  number_type: null,
  area_code: null,
  created_at: null,
  pre_orderable: null
)
```

