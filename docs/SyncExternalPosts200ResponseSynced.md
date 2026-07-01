# Zernio::SyncExternalPosts200ResponseSynced

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **posts_found** | **Integer** | Posts returned by the platform listing during the on-demand sync | [optional] |
| **posts_synced** | **Integer** | Posts inserted or updated in Zernio | [optional] |
| **skipped** | **Boolean** | True when no live fetch ran: the post was already stored, or the account was synced within the debounce window | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SyncExternalPosts200ResponseSynced.new(
  posts_found: null,
  posts_synced: null,
  skipped: null
)
```

