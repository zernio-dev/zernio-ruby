# Zernio::GoogleAdsUserInvitationApproval

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **multi_party_auth_review_id** | **String** | Pass to DELETE /v1/ads/accounts/user-invitations/pending-approvals to withdraw the request. | [optional] |
| **email_address** | **String** | Invited email address. | [optional] |
| **access_role** | **String** |  | [optional] |
| **request_user_email** | **String** | Google user who sent the invitation. Only this user can withdraw it. | [optional] |
| **created_at** | **String** | Google&#39;s creation time, yyyy-MM-dd HH:mm:ss.ssssss in the account&#39;s time zone. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAdsUserInvitationApproval.new(
  multi_party_auth_review_id: null,
  email_address: null,
  access_role: null,
  request_user_email: null,
  created_at: null
)
```

