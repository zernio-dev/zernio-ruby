# Zernio::UpdateSlackSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default_username** | **String** | Author name shown on posts. Empty string clears it. | [optional] |
| **default_icon_url** | **String** | Author avatar image URL. Empty string clears it. | [optional] |
| **apply_to_workspace** | **Boolean** | Applies the name and icon to every connected channel of this Slack workspace owned by the same owner, on the same Slack app, in profiles the caller can access. Channels connected later inherit the identity from a channel of that workspace. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateSlackSettingsRequest.new(
  default_username: null,
  default_icon_url: null,
  apply_to_workspace: null
)
```

