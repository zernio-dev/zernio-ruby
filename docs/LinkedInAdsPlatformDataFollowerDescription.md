# Zernio::LinkedInAdsPlatformDataFollowerDescription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pre_approved** | **String** | LinkedIn preset id, not reviewed. Example GET_LATEST_JOBS_AND_INDUSTRY_NEWS. | [optional] |
| **custom** | **String** | Free text, reviewed by LinkedIn. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataFollowerDescription.new(
  pre_approved: null,
  custom: null
)
```

