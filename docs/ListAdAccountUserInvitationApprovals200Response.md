# Zernio::ListAdAccountUserInvitationApprovals200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** |  | [optional] |
| **approvals** | [**Array&lt;GoogleAdsUserInvitationApproval&gt;**](GoogleAdsUserInvitationApproval.md) |  | [optional] |
| **cached_at** | **Time** | When this data was fetched from Google. Null when the cache is unavailable. | [optional] |
| **stale** | **Boolean** | True when Google&#39;s quota was exhausted and this is the last successful fetch. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdAccountUserInvitationApprovals200Response.new(
  customer_id: null,
  approvals: null,
  cached_at: null,
  stale: null
)
```

