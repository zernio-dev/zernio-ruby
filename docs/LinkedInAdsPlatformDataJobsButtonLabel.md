# Zernio::LinkedInAdsPlatformDataJobsButtonLabel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pre_approved** | **String** | LinkedIn preset id, not reviewed. One of SEE_MORE_JOBS, VIEW_MORE, CAREERS_AT_COMPANY. | [optional] |
| **custom** | **String** | Free text, reviewed by LinkedIn. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataJobsButtonLabel.new(
  pre_approved: null,
  custom: null
)
```

