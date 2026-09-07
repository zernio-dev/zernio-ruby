# Zernio::PhoneNumberStockWatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **country** | **String** | ISO 3166-1 alpha-2. |  |
| **country_name** | **String** |  |  |
| **number_type** | **String** | The watched number type, or null when the watch covers every type in the country. |  |
| **created_at** | **Time** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::PhoneNumberStockWatch.new(
  id: null,
  country: null,
  country_name: null,
  number_type: null,
  created_at: null
)
```

