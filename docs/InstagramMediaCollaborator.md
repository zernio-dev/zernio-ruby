# Zernio::InstagramMediaCollaborator

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | App-scoped ID of the collaborator&#39;s Instagram account. |  |
| **username** | **String** | Instagram handle of the collaborator. |  |
| **invite_status** | **String** | accepted or pending. Any other value Meta adds later is passed through in lowercase. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramMediaCollaborator.new(
  id: null,
  username: null,
  invite_status: accepted
)
```

