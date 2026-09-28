# Zernio::BrandedCallingIdentity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **enterprise_id** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **call_reasons** | **Array&lt;String&gt;** |  | [optional] |
| **call_reasons_pre_approved** | **Boolean** | Every call reason matches the carrier catalogue (GET /v1/branded-calling/call-reasons); anything else is vetted by hand and takes longer. | [optional] |
| **logo_url** | **String** | The image you sent. Zernio hosts the 256x256 BMP the carriers require. | [optional] |
| **authorizer** | [**BrandedCallingIdentityAuthorizer**](BrandedCallingIdentityAuthorizer.md) |  | [optional] |
| **references** | [**BrandedCallingReferences**](BrandedCallingReferences.md) |  | [optional] |
| **status** | **String** | requested &#x3D; in Zernio review; changes_requested &#x3D; answer the review (PATCH); pending_email_verification &#x3D; confirm the code emailed to the authorizer; in_review &#x3D; with the carrier vetting team; verified &#x3D; attach numbers; rejected &#x3D; fix and PATCH to resubmit; suspended &#x3D; an infringement claim is open; expired &#x3D; the yearly verification lapsed; permanently_rejected &#x3D; terminal. | [optional] |
| **rejection_reasons** | [**Array&lt;BrandedCallingIdentityRejectionReasonsInner&gt;**](BrandedCallingIdentityRejectionReasonsInner.md) |  | [optional] |
| **review_note** | **String** | The open change request, as text. | [optional] |
| **review_request** | [**BrandedCallingIdentityReviewRequest**](BrandedCallingIdentityReviewRequest.md) |  | [optional] |
| **email_verified_at** | **Time** |  | [optional] |
| **submitted_at** | **Time** |  | [optional] |
| **verified_at** | **Time** |  | [optional] |
| **expiring_at** | **Time** | Verification lasts one year; Zernio resubmits 30 days before this date. | [optional] |
| **numbers** | [**Array&lt;BrandedCallingIdentityNumber&gt;**](BrandedCallingIdentityNumber.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BrandedCallingIdentity.new(
  id: null,
  enterprise_id: null,
  display_name: null,
  call_reasons: null,
  call_reasons_pre_approved: null,
  logo_url: null,
  authorizer: null,
  references: null,
  status: null,
  rejection_reasons: null,
  review_note: null,
  review_request: null,
  email_verified_at: null,
  submitted_at: null,
  verified_at: null,
  expiring_at: null,
  numbers: null,
  created_at: null,
  updated_at: null
)
```

