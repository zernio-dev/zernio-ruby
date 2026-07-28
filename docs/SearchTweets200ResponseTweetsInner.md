# Zernio::SearchTweets200ResponseTweetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **text** | **String** |  | [optional] |
| **created** | **Time** |  | [optional] |
| **conversation_id** | **String** |  | [optional] |
| **in_reply_to_tweet_id** | **String** | Parent tweet ID when the result is itself a reply | [optional] |
| **lang** | **String** |  | [optional] |
| **author** | [**SearchTweets200ResponseTweetsInnerAuthor**](SearchTweets200ResponseTweetsInnerAuthor.md) |  | [optional] |
| **like_count** | **Integer** |  | [optional] |
| **reply_count** | **Integer** |  | [optional] |
| **retweet_count** | **Integer** |  | [optional] |
| **quote_count** | **Integer** |  | [optional] |
| **platform** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SearchTweets200ResponseTweetsInner.new(
  id: null,
  text: null,
  created: null,
  conversation_id: null,
  in_reply_to_tweet_id: null,
  lang: null,
  author: null,
  like_count: null,
  reply_count: null,
  retweet_count: null,
  quote_count: null,
  platform: twitter
)
```

