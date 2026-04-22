# Zernio::GetYouTubeDemographics412ResponseScopeStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **has_analytics_scope** | **Boolean** |  | [optional] |
| **requires_reauthorization** | **Boolean** |  | [optional] |
| **reauthorize_url** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetYouTubeDemographics412ResponseScopeStatus.new(
  has_analytics_scope: false,
  requires_reauthorization: true,
  reauthorize_url: null
)
```

