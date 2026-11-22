# Zernio::ListInboxConversations200ResponseSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_updated_since** | **Time** | Pass as &#x60;updatedSince&#x60; on your next sync. Null while &#x60;pagination.hasMore&#x60; is true: page with &#x60;cursor&#x60; first. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxConversations200ResponseSync.new(
  next_updated_since: null
)
```

