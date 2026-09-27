# Zernio::GoogleAdsManagerLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **manager_customer_id** | **String** |  | [optional] |
| **client_customer_id** | **String** |  | [optional] |
| **manager_link_id** | **String** | Null on a validateOnly invitation, where Google creates nothing. | [optional] |
| **status** | **String** | Status the link has after this call. | [optional] |
| **validate_only** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAdsManagerLink.new(
  manager_customer_id: null,
  client_customer_id: null,
  manager_link_id: null,
  status: null,
  validate_only: null
)
```

