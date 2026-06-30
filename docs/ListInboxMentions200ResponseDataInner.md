# Zernio::ListInboxMentions200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Mention document ID | [optional] |
| **platform** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **account_username** | **String** |  | [optional] |
| **content** | **String** | Text of the post that mentioned you | [optional] |
| **permalink** | **String** | URL to the source post on LinkedIn | [optional] |
| **author_urn** | **String** | LinkedIn URN of the person who mentioned you | [optional] |
| **organizational_entity** | **String** | URN of the organization that was mentioned | [optional] |
| **published_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxMentions200ResponseDataInner.new(
  id: null,
  platform: null,
  account_id: null,
  account_username: null,
  content: null,
  permalink: null,
  author_urn: null,
  organizational_entity: null,
  published_at: null,
  created_at: null
)
```

