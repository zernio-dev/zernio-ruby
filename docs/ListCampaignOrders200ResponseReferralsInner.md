# Zernio::ListCampaignOrders200ResponseReferralsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **participant_id** | **String** |  |  |
| **creator_name** | **String** |  |  |
| **creator_avatar_url** | **String** | The creator&#39;s profile picture. Same source as a participant&#39;s &#x60;creator.avatarUrl&#x60;. |  |
| **code** | **String** |  |  |
| **code_status** | **String** | Null until the code is first created, when the creator opens their page. |  |
| **code_failure_reason** | **String** |  |  |
| **tracking_url** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListCampaignOrders200ResponseReferralsInner.new(
  participant_id: null,
  creator_name: null,
  creator_avatar_url: null,
  code: null,
  code_status: null,
  code_failure_reason: null,
  tracking_url: null
)
```

