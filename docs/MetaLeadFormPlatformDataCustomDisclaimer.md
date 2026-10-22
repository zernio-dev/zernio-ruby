# Zernio::MetaLeadFormPlatformDataCustomDisclaimer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **body** | **String** |  |  |
| **checkboxes** | [**Array&lt;MetaLeadFormPlatformDataCustomDisclaimerCheckboxesInner&gt;**](MetaLeadFormPlatformDataCustomDisclaimerCheckboxesInner.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaLeadFormPlatformDataCustomDisclaimer.new(
  title: WhatsApp,
  body: Acme can contact you on WhatsApp about your request.,
  checkboxes: null
)
```

