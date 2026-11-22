# Zernio::CampaignParticipantCreator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **display_name** | **String** |  |  |
| **email** | **String** |  |  |
| **avatar_url** | **String** | The creator&#39;s profile picture: their connected account with the most followers, else their Gravatar. Null when neither exists. Platform picture URLs can expire, so show initials when the image fails to load. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CampaignParticipantCreator.new(
  id: null,
  display_name: null,
  email: null,
  avatar_url: null
)
```

