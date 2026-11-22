# Zernio::GohighlevelAudienceSyncAudiencesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **ad_account_id** | **String** |  | [optional] |
| **error** | **String** | Why the last upload to this audience failed, null when it went through. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GohighlevelAudienceSyncAudiencesInner.new(
  name: null,
  platform: null,
  ad_account_id: null,
  error: null
)
```

