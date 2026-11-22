# Zernio::GetTikTokDemographics412Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **error** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **scope_status** | [**GetTikTokDemographics412ResponseScopeStatus**](GetTikTokDemographics412ResponseScopeStatus.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTikTokDemographics412Response.new(
  success: null,
  error: null,
  code: tiktok_insights_scope_missing,
  scope_status: null
)
```

