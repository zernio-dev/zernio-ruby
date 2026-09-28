# Zernio::RcsBrand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  |  |
| **legal_name** | **String** | Exactly as on IRS records. |  |
| **legal_entity_type** | **String** |  |  |
| **organization_type** | **String** |  |  |
| **website_url** | **String** |  |  |
| **tax_id** | **String** | US: the EIN, 9 digits, optionally NN-NNNNNNN. Elsewhere: the national tax or company registration id. |  |
| **stock_symbol** | **String** | EXCHANGE:SYMBOL. Required for PUBLIC_PROFIT. | [optional] |
| **address** | [**RcsBrandInputAddress**](RcsBrandInputAddress.md) |  |  |
| **contact** | [**RcsBrandInputContact**](RcsBrandInputContact.md) |  |  |
| **id** | **String** |  | [optional] |
| **status** | **String** | draft &#x3D; not filed yet (still editable). | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsBrand.new(
  display_name: null,
  legal_name: null,
  legal_entity_type: null,
  organization_type: null,
  website_url: null,
  tax_id: null,
  stock_symbol: null,
  address: null,
  contact: null,
  id: null,
  status: null,
  created_at: null
)
```

