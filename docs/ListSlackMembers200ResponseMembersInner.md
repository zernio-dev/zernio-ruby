# Zernio::ListSlackMembers200ResponseMembersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Slack member id (pass as participantId to start a DM). | [optional] |
| **name** | **String** | Display name | [optional] |
| **username** | **String** | Slack handle | [optional] |
| **picture** | **String** | Avatar URL | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListSlackMembers200ResponseMembersInner.new(
  id: null,
  name: null,
  username: null,
  picture: null
)
```

