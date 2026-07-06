# Zernio::StartSmsRegistrationRequestCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usecase** | **String** |  |  |
| **description** | **String** |  |  |
| **message_flow** | **String** | How a recipient ends up receiving your messages (the opt-in flow). |  |
| **sample1** | **String** |  |  |
| **sample2** | **String** |  | [optional] |
| **help_message** | **String** |  |  |
| **optin_keywords** | **String** |  |  |
| **optin_message** | **String** |  |  |
| **optout_keywords** | **String** |  |  |
| **optout_message** | **String** |  |  |
| **help_keywords** | **String** |  |  |
| **embedded_link** | **Boolean** |  | [optional] |
| **embedded_phone** | **Boolean** |  | [optional] |
| **number_pool** | **Boolean** |  | [optional] |
| **age_gated** | **Boolean** |  | [optional] |
| **direct_lending** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartSmsRegistrationRequestCampaign.new(
  usecase: null,
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
  direct_lending: null
)
```

