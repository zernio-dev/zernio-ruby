# Zernio::CommentAutomationDefinitionLimitsRepeat

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | Once per person, or on every comment. |  |
| **cooldown_hours** | **Integer** | every_comment only. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationDefinitionLimitsRepeat.new(
  mode: null,
  cooldown_hours: null
)
```

