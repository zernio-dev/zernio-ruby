# Zernio::DiscordPlatformDataPoll

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **question** | [**DiscordPlatformDataPollQuestion**](DiscordPlatformDataPollQuestion.md) |  | [optional] |
| **answers** | [**Array&lt;DiscordPlatformDataPollAnswersInner&gt;**](DiscordPlatformDataPollAnswersInner.md) | 1-10 answer options | [optional] |
| **duration** | **Integer** | Poll duration in hours (1-768). Default 24. | [optional] |
| **allow_multiselect** | **Boolean** | Allow users to select multiple answers. Default false. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DiscordPlatformDataPoll.new(
  question: null,
  answers: null,
  duration: null,
  allow_multiselect: null
)
```

