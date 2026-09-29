# Zernio::CreatePhoneNumberStockWatch201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **country** | **String** | ISO 3166-1 alpha-2. |  |
| **country_name** | **String** |  |  |
| **number_type** | **String** | The watched number type, or null when the watch covers every type in the country. |  |
| **area_code** | **String** | The watched area code (NDC), or null when the watch covers every area. | [optional] |
| **created_at** | **Time** |  |  |
| **pre_orderable** | **Boolean** | True when the watched area can be bought today as a pre-order (the carrier lists nothing there and the type is a document tier): submit KYC with &#x60;areaCode&#x60; and &#x60;preOrder: true&#x60; instead of waiting, usually 2 to 4 weeks, nothing billed until active. The watch is armed either way. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberStockWatch201Response.new(
  id: null,
  country: null,
  country_name: null,
  number_type: null,
  area_code: null,
  created_at: null,
  pre_orderable: null
)
```

