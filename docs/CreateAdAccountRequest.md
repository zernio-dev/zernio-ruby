# Zernio::CreateAdAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio metaads SocialAccount ID. |  |
| **business_id** | **String** | Business portfolio that will own the account. |  |
| **name** | **String** | Ad account name. Whitespace is trimmed. |  |
| **currency** | **String** | Uppercase ISO 4217 currency supported by Meta. |  |
| **timezone_id** | **Integer** | Numeric Meta timezone ID from the linked timezone list. For example 1 is America/Los_Angeles. |  |
| **end_advertiser** | **String** | End advertiser business or page ID. NONE uses the owning business. | [optional][default to &#39;NONE&#39;] |
| **media_agency** | **String** | Media agency business or page ID. NONE for self-serve customers. | [optional][default to &#39;NONE&#39;] |
| **partner** | **String** | Partner business or page ID. NONE for self-serve customers. | [optional][default to &#39;NONE&#39;] |
| **invoice** | **Boolean** | Request Meta invoicing. Eligibility is determined by Meta. | [optional] |
| **invoice_group_id** | **String** | Existing Meta invoice group ID. | [optional] |
| **invoicing_emails** | **Array&lt;String&gt;** | Addresses for Meta invoices. | [optional] |
| **io** | **Boolean** | Meta insertion-order invoicing option. | [optional] |
| **po_number** | **String** | Purchase order number. | [optional] |
| **funding_id** | **String** | Existing Meta funding reference. Does not add a payment method. | [optional] |
| **ad_account_created_from_bm_flag** | **Boolean** | Meta Business Manager creation flag. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdAccountRequest.new(
  account_id: null,
  business_id: null,
  name: null,
  currency: null,
  timezone_id: null,
  end_advertiser: null,
  media_agency: null,
  partner: null,
  invoice: null,
  invoice_group_id: null,
  invoicing_emails: null,
  io: null,
  po_number: null,
  funding_id: null,
  ad_account_created_from_bm_flag: null
)
```

