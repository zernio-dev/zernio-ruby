# Zernio::ReplyToInboxPost400ResponseDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_urn** | **String** | (mentionAuthor) URN of the comment author whose name LinkedIn did not return | [optional] |
| **mentions** | [**Array&lt;LinkedInMentionIssue&gt;**](LinkedInMentionIssue.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplyToInboxPost400ResponseDetails.new(
  author_urn: null,
  mentions: null
)
```

