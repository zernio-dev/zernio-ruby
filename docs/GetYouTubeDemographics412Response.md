# Late::GetYouTubeDemographics412Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **error** | **String** |  | [optional] |
| **code** | **String** |  | [optional] |
| **scope_status** | [**GetYouTubeDemographics412ResponseScopeStatus**](GetYouTubeDemographics412ResponseScopeStatus.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetYouTubeDemographics412Response.new(
  success: false,
  error: null,
  code: youtube_analytics_scope_missing,
  scope_status: null
)
```

