# Zernio::UndoRetweet200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **tweet_id** | **String** |  | [optional] |
| **retweeted** | **Boolean** |  | [optional] |
| **platform** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UndoRetweet200Response.new(
  status: success,
  tweet_id: null,
  retweeted: false,
  platform: twitter
)
```

