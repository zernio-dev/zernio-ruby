# Zernio::AdLeadConsent

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **checkbox_key** | **String** | The checkbox key as Meta returns it: the one set in platformSpecificData.customDisclaimer.checkboxes[].key on POST /v1/ads/lead-forms, or otherwise a key Meta derives from the checkbox text, which can be long and contain spaces and punctuation. |  |
| **is_checked** | **Boolean** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdLeadConsent.new(
  checkbox_key: null,
  is_checked: null
)
```

