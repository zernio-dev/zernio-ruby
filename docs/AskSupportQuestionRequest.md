# Zernio::AskSupportQuestionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** | The question. Leading and trailing whitespace is trimmed. |  |
| **thread_id** | **String** | Continue this thread. The thread must have a run started by your team, and no run in progress. | [optional] |
| **context** | [**AskSupportQuestionRequestContext**](AskSupportQuestionRequestContext.md) |  | [optional] |
| **max_cost_usd** | **Float** | Cost cap for this run, in USD. The run stops at the cap and bills at most this amount. | [optional][default to 3] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AskSupportQuestionRequest.new(
  message: null,
  thread_id: null,
  context: null,
  max_cost_usd: null
)
```

