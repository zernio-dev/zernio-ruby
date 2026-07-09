# Zernio::VoteRedditThingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thing_id** | **String** | Reddit fullname of the target. Prefix \&quot;t3_\&quot; for a post and \&quot;t1_\&quot; for a comment. A bare id with no prefix is treated as a post (\&quot;t3_\&quot;).  |  |
| **direction** | **Integer** | 1 to upvote, -1 to downvote, 0 to clear an existing vote |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::VoteRedditThingRequest.new(
  thing_id: t3_abc123,
  direction: null
)
```

