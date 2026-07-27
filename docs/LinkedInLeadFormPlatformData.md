# Zernio::LinkedInLeadFormPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | LinkedIn ad account id (resolves the owning organization). |  |
| **headline** | **String** |  |  |
| **description** | **String** |  |  |
| **state** | **String** | Defaults to DRAFT. | [optional] |
| **locale** | [**LinkedInLeadFormPlatformDataLocale**](LinkedInLeadFormPlatformDataLocale.md) |  | [optional] |
| **consents** | [**Array&lt;LinkedInLeadFormPlatformDataConsentsInner&gt;**](LinkedInLeadFormPlatformDataConsentsInner.md) |  | [optional] |
| **questions** | [**Array&lt;LinkedInLeadFormPlatformDataQuestionsInner&gt;**](LinkedInLeadFormPlatformDataQuestionsInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInLeadFormPlatformData.new(
  ad_account_id: null,
  headline: null,
  description: null,
  state: null,
  locale: null,
  consents: null,
  questions: null
)
```

