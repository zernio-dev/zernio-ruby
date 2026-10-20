# Zernio::GoogleAdsUserAccessInvitation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invitation_id** | **String** |  | [optional] |
| **email_address** | **String** |  | [optional] |
| **access_role** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **created_at** | **String** | Google&#39;s creation time, yyyy-MM-dd HH:mm:ss.ssssss in the account&#39;s time zone. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleAdsUserAccessInvitation.new(
  invitation_id: null,
  email_address: null,
  access_role: null,
  status: null,
  created_at: null
)
```

