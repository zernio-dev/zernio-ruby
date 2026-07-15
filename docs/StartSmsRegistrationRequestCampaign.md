# Zernio::StartSmsRegistrationRequestCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usecase** | **String** |  |  |
| **sub_usecases** | **Array&lt;String&gt;** | The concrete kinds of messages a MIXED campaign sends (the carrier registry requires 2-5, and reviewers match them against the sample messages). Omitted: a default pair is applied for MIXED.  | [optional] |
| **description** | **String** |  |  |
| **message_flow** | **String** | How a recipient ends up receiving your messages (the opt-in flow). Include a link to the page or form where they opt in — carrier reviewers reject campaigns whose consent they can&#39;t verify. |  |
| **sample1** | **String** |  |  |
| **sample2** | **String** | Second example message; carriers require two distinct samples |  |
| **help_message** | **String** |  | [optional] |
| **optin_keywords** | **String** |  |  |
| **optin_message** | **String** |  | [optional] |
| **optout_keywords** | **String** |  |  |
| **optout_message** | **String** |  | [optional] |
| **help_keywords** | **String** |  |  |
| **embedded_link** | **Boolean** | Whether messages carry links. Auto-derived from the samples when omitted, so the declaration matches what the reviewer reads. | [optional] |
| **embedded_phone** | **Boolean** | Whether messages carry phone numbers. Auto-derived from the samples when omitted. | [optional] |
| **number_pool** | **Boolean** |  | [optional] |
| **age_gated** | **Boolean** |  | [optional] |
| **direct_lending** | **Boolean** |  | [optional] |
| **privacy_policy_link** | **String** | Link to your privacy policy. Recommended: reviewers check that it says mobile information is not sold or shared with third parties for promotional purposes. A bare domain is normalized to https://. | [optional] |
| **terms_and_conditions_link** | **String** | Link to your terms &amp; conditions. A bare domain is normalized to https://. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartSmsRegistrationRequestCampaign.new(
  usecase: null,
  sub_usecases: null,
  description: null,
  message_flow: null,
  sample1: null,
  sample2: null,
  help_message: null,
  optin_keywords: null,
  optin_message: null,
  optout_keywords: null,
  optout_message: null,
  help_keywords: null,
  embedded_link: null,
  embedded_phone: null,
  number_pool: null,
  age_gated: null,
  direct_lending: null,
  privacy_policy_link: null,
  terms_and_conditions_link: null
)
```

