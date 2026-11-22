# Zernio::CommentAutomationDefinitionTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | &#x60;comment.keyword&#x60; for a comment on a post or reel. The &#x60;comment.received&#x60; event starts an event automation, not comment to DM. |  |
| **profile_id** | **String** |  |  |
| **account_id** | **String** | The account it answers on, on the profile. It cannot change once saved. |  |
| **platform_post_id** | **String** | The platform post or story it answers. Null answers every one. One active automation per post. | [optional] |
| **post_id** | **String** | A Zernio post. A scheduled one is answered once it publishes. | [optional] |
| **post_title** | **String** |  | [optional] |
| **filter** | [**CommentAutomationFilter**](CommentAutomationFilter.md) |  |  |
| **entry** | **Array&lt;String&gt;** | The nodes a run starts at. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommentAutomationDefinitionTrigger.new(
  type: null,
  profile_id: null,
  account_id: null,
  platform_post_id: null,
  post_id: null,
  post_title: null,
  filter: null,
  entry: null
)
```

