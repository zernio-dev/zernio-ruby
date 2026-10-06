# Zernio::CommentAutomationRepeatPolicy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** |  | [default to &#39;once&#39;] |
| **cooldown_hours** | **Integer** | every_comment only (400 with once). Hours after a DM during which the same person is not DMed again. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationRepeatPolicy.new(
  mode: null,
  cooldown_hours: null
)
```

