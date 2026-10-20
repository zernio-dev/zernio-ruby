# Zernio::GoogleAdsUserAccessInvitationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **email_address** | **String** |  | [optional] |
| **access_role** | [**GoogleAdsAccessRole**](GoogleAdsAccessRole.md) |  | [optional] |
| **status** | **String** | PENDING once the email is sent; PENDING_APPROVAL while Google waits for a second admin&#39;s multi-party approval. | [optional] |
| **invitation_id** | **String** | Null on validateOnly and while the invitation awaits multi-party approval. | [optional] |
| **multi_party_auth_review_id** | **String** | Google&#39;s multi-party approval review id when status is PENDING_APPROVAL. | [optional] |
| **validate_only** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAdsUserAccessInvitationResult.new(
  customer_id: null,
  email_address: null,
  access_role: null,
  status: null,
  invitation_id: null,
  multi_party_auth_review_id: null,
  validate_only: null
)
```

