# Zernio::RcsAgent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **account_id** | **String** | The rcs inbox account, created once the agent exists with the carriers. | [optional] |
| **country** | **String** | Launch market (ISO 3166-1 alpha-2). US agents run through the carriers automatically; other markets are filed by our team and skip the testing and launch_review steps (send the launch request while the agent is still in review). | [optional] |
| **status** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **use_case** | **String** |  | [optional] |
| **profile** | [**RcsAgentProfile**](RcsAgentProfile.md) |  | [optional] |
| **brand** | [**RcsBrand**](RcsBrand.md) |  | [optional] |
| **launch_request** | [**RcsLaunchRequest**](RcsLaunchRequest.md) |  | [optional] |
| **carrier_approvals** | [**Array&lt;RcsCarrierApproval&gt;**](RcsCarrierApproval.md) |  | [optional] |
| **test_devices** | [**Array&lt;RcsTestDevice&gt;**](RcsTestDevice.md) |  | [optional] |
| **sms_fallback_from** | **String** |  | [optional] |
| **review_note** | **String** | Our note while status is changes_requested. | [optional] |
| **decline_reason** | **String** |  | [optional] |
| **requested_at** | **Time** |  | [optional] |
| **submitted_at** | **Time** |  | [optional] |
| **live_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsAgent.new(
  id: null,
  profile_id: null,
  account_id: null,
  country: null,
  status: null,
  display_name: null,
  use_case: null,
  profile: null,
  brand: null,
  launch_request: null,
  carrier_approvals: null,
  test_devices: null,
  sms_fallback_from: null,
  review_note: null,
  decline_reason: null,
  requested_at: null,
  submitted_at: null,
  live_at: null,
  created_at: null
)
```

