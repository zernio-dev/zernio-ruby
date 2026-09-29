# Zernio::CreateCommerceProductOptionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **options** | [**Array&lt;CreateTestLeadRequestFieldDataInner&gt;**](CreateTestLeadRequestFieldDataInner.md) |  |  |
| **create_variants** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCommerceProductOptionsRequest.new(
  account_id: null,
  options: null,
  create_variants: null
)
```

