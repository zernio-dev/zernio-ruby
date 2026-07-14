# Zernio::LinkedInAdsPlatformDataJobsHeadline

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pre_approved** | **String** | LinkedIn preset id, not reviewed. Example MEMBER_READY_FOR_YOUR_DREAM_JOB. | [optional] |
| **custom** | **String** | Free text, reviewed by LinkedIn. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataJobsHeadline.new(
  pre_approved: null,
  custom: null
)
```

