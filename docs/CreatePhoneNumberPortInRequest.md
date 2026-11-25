# Zernio::CreatePhoneNumberPortInRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_numbers** | **Array&lt;String&gt;** | E.164 numbers to port in. |  |
| **end_user** | [**CreatePhoneNumberPortInRequestEndUser**](CreatePhoneNumberPortInRequestEndUser.md) |  |  |
| **loa_document_id** | **String** | Document id from POST /v1/phone-numbers/port-in/documents (kind&#x3D;loa). |  |
| **invoice_document_id** | **String** | Document id from POST /v1/phone-numbers/port-in/documents (kind&#x3D;invoice). |  |
| **foc_datetime_requested** | **Time** | Requested port date; the carrier confirms the actual FOC later. US/CA default is one week out (shifted off weekends); international orders are scheduled into the carrier&#39;s next allowed porting window at or after this date. | [optional] |
| **customer_reference** | **String** |  | [optional] |
| **port_type** | **String** | Whether the losing account ports all its numbers (full) or keeps some (partial). | [optional][default to &#39;full&#39;] |
| **profile_id** | **String** | Profile the ported numbers land on. When omitted, a profile is picked the same way as for a number purchase. Must be a profile the caller can access. | [optional] |
| **requirements** | [**Array&lt;CreatePhoneNumberPortInRequestRequirementsInner&gt;**](CreatePhoneNumberPortInRequestRequirementsInner.md) | Country-specific requirement values for international ports (from GET /v1/phone-numbers/port-in/requirements). Not needed for US/CA. The LOA and invoice requirements are satisfied automatically by loaDocumentId/invoiceDocumentId, and address-type requirements by the endUser service address. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatePhoneNumberPortInRequest.new(
  phone_numbers: null,
  end_user: null,
  loa_document_id: null,
  invoice_document_id: null,
  foc_datetime_requested: null,
  customer_reference: null,
  port_type: null,
  profile_id: null,
  requirements: null
)
```

