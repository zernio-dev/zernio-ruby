# Zernio::GetSurveyAnswers200ResponseAnswersInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **answer** | **String** | The answer as the buyer picked it. |  |
| **orders** | **Integer** | How many orders gave this answer. |  |
| **revenue** | **Float** | What those orders are worth now, as sent. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetSurveyAnswers200ResponseAnswersInner.new(
  answer: Podcast,
  orders: null,
  revenue: null
)
```

