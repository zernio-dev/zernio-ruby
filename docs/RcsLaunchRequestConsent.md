# Zernio::RcsLaunchRequestConsent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **opt_in_methods** | [**Array&lt;RcsLaunchRequestConsentOptInMethodsInner&gt;**](RcsLaunchRequestConsentOptInMethodsInner.md) |  |  |
| **call_to_action** | **String** | The opt-in wording people agree to. |  |
| **call_to_action_url** | **String** | Required for WEBSITE opt-in. | [optional] |
| **call_to_action_media_url** | **String** | Screenshot of the opt-in. Required for WEBSITE and MOBILE_APP opt-in. | [optional] |
| **double_opt_in** | **Boolean** |  |  |
| **double_opt_in_message** | **String** | Required when doubleOptIn is true. | [optional] |
| **opt_in_message** | **String** |  |  |
| **help_response** | **String** |  |  |
| **opt_out_response** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RcsLaunchRequestConsent.new(
  opt_in_methods: null,
  call_to_action: null,
  call_to_action_url: null,
  call_to_action_media_url: null,
  double_opt_in: null,
  double_opt_in_message: null,
  opt_in_message: null,
  help_response: null,
  opt_out_response: null
)
```

