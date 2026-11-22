# Zernio::CommentAutomationDefinitionLimits

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **repeat** | [**CommentAutomationDefinitionLimitsRepeat**](CommentAutomationDefinitionLimitsRepeat.md) |  |  |
| **same_text_dedupe_hours** | **Integer** | Skips a DM with the same text to the same person within these hours, across automations. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationDefinitionLimits.new(
  repeat: null,
  same_text_dedupe_hours: null
)
```

