# Zernio::RedditComment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Reddit comment ID (without type prefix) | [optional] |
| **fullname** | **String** | Reddit fullname (e.g. t1_abc123) | [optional] |
| **parent_id** | **String** | Fullname of what the comment answers: the post (t3_…) or a parent comment (t1_…) | [optional] |
| **author** | **String** | The username, or [deleted] | [optional] |
| **body** | **String** | Comment text as written (Markdown, not HTML-escaped), or [deleted] / [removed] | [optional] |
| **permalink** | **String** | Full permalink to the comment | [optional] |
| **created_utc** | **Float** | Unix timestamp of the comment | [optional] |
| **score** | **Integer** |  | [optional] |
| **num_replies** | **Integer** | Direct replies included in this response; replies Reddit left out are listed in more | [optional] |
| **depth** | **Integer** | 0 for a top-level comment of this response, 1 for a reply to it, and so on | [optional] |
| **is_submitter** | **Boolean** | Whether the author is the post&#39;s author | [optional] |
| **edited** | **Boolean** |  | [optional] |
| **stickied** | **Boolean** |  | [optional] |
| **distinguished** | **String** | \&quot;moderator\&quot; or \&quot;admin\&quot; when the comment is distinguished, else null | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RedditComment.new(
  id: null,
  fullname: null,
  parent_id: null,
  author: null,
  body: null,
  permalink: null,
  created_utc: null,
  score: null,
  num_replies: null,
  depth: null,
  is_submitter: null,
  edited: null,
  stickied: null,
  distinguished: null
)
```

