# Late::GetYouTubeDemographics412ResponseScopeStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_analytics_scope** | **Boolean** |  | [optional] |
| **requires_reauthorization** | **Boolean** |  | [optional] |
| **reauthorize_url** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetYouTubeDemographics412ResponseScopeStatus.new(
  has_analytics_scope: false,
  requires_reauthorization: true,
  reauthorize_url: null
)
```

