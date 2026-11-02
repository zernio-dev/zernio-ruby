# Zernio::CreatorPortalParticipantAccountsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Pass to &#x60;DELETE /public/creator-campaigns/{token}/accounts/{accountId}&#x60; to remove the account. |  |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  |  |
| **avatar_url** | **String** |  |  |
| **counts** | **Boolean** | False for an account connected past &#x60;maxAccountsPerParticipant&#x60;: posts from it are refused until another account is removed. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalParticipantAccountsInner.new(
  id: null,
  platform: null,
  username: null,
  display_name: null,
  avatar_url: null,
  counts: null
)
```

