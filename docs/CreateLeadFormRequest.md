# Zernio::CreateLeadFormRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **account_id** | **String** |  |  |
| **name** | **String** |  |  |
| **questions** | [**Array&lt;CreateLeadFormRequestQuestionsInner&gt;**](CreateLeadFormRequestQuestionsInner.md) | Deprecated (Meta legacy shape): use platformSpecificData.questions. | [optional] |
| **privacy_policy_url** | **String** |  |  |
| **privacy_policy_link_text** | **String** | Deprecated: use platformSpecificData.privacyPolicyLinkText. | [optional] |
| **follow_up_action_url** | **String** | Deprecated: use platformSpecificData.followUpActionUrl. | [optional] |
| **locale** | **String** | Deprecated: use platformSpecificData.locale. | [optional] |
| **thank_you_title** | **String** | Deprecated: use platformSpecificData.thankYouTitle. | [optional] |
| **thank_you_body** | **String** | Deprecated: use platformSpecificData.thankYouBody. | [optional] |
| **thank_you_button_text** | **String** | Deprecated: use platformSpecificData.thankYouButtonText. | [optional] |
| **thank_you_button_type** | **String** | Deprecated: use platformSpecificData.thankYouButtonType. | [optional] |
| **thank_you_website_url** | **String** | Deprecated: use platformSpecificData.thankYouWebsiteUrl. | [optional] |
| **is_optimized_for_quality** | **Boolean** | Deprecated: use platformSpecificData.isOptimizedForQuality. | [optional] |
| **platform_specific_data** | [**CreateLeadFormRequestPlatformSpecificData**](CreateLeadFormRequestPlatformSpecificData.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateLeadFormRequest.new(
  stage: null,
  account_id: null,
  name: null,
  questions: null,
  privacy_policy_url: null,
  privacy_policy_link_text: null,
  follow_up_action_url: null,
  locale: EN_US,
  thank_you_title: null,
  thank_you_body: null,
  thank_you_button_text: null,
  thank_you_button_type: VIEW_WEBSITE,
  thank_you_website_url: null,
  is_optimized_for_quality: null,
  platform_specific_data: null
)
```

