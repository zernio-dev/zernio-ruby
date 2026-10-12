# Zernio::SupportAssistantApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ask_support_question**](SupportAssistantApi.md#ask_support_question) | **POST** /v1/support/runs | Ask a support question |
| [**get_support_answer**](SupportAssistantApi.md#get_support_answer) | **GET** /v1/support/runs/{runId} | Get a support answer |


## ask_support_question

> <AskSupportQuestion202Response> ask_support_question(ask_support_question_request, opts)

Ask a support question

Asks Ana, the Zernio support agent, a question about your workspace. Each question starts a run that answers asynchronously: this returns 202 with a `runId`, and the answer arrives through the `support.run.completed` and `support.run.failed` webhooks. `GET /v1/support/runs/{runId}` is the fallback. Pass `threadId` to continue an earlier conversation, and `context` to point Ana at a post, account or profile. When Ana finds a problem on Zernio's side she opens a support ticket with the team (see `supportTicket` on the run) and the run ends as `needs_human`.  **Pricing.** Each question is billed once, when its run finishes, for the tokens Ana used:  - Input: $6 per million tokens - Output: $30 per million tokens - Cache reads: $0.60 per million tokens - Cache writes: $7.50 per million tokens  Most questions cost between $0.10 and $0.50. A run never bills more than its `maxCostUsd` ($0.50 to $3, $3 by default): near the cap Ana stops investigating and answers with what she found. Runs that end as `needs_human` are billed like any other; failed runs are free. The run's `usage` holds the token counts and `costUsd` the amount billed. Charges appear as \"Support API\" on your invoice.  Requires an unrestricted API key, usage-based billing and a card on file. Limits per account: 3 active runs and $100 of runs per UTC month. Send an Idempotency-Key header to make retries safe. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SupportAssistantApi.new
ask_support_question_request = Zernio::AskSupportQuestionRequest.new({message: 'message_example'}) # AskSupportQuestionRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Ask a support question
  result = api_instance.ask_support_question(ask_support_question_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SupportAssistantApi->ask_support_question: #{e}"
end
```

#### Using the ask_support_question_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AskSupportQuestion202Response>, Integer, Hash)> ask_support_question_with_http_info(ask_support_question_request, opts)

```ruby
begin
  # Ask a support question
  data, status_code, headers = api_instance.ask_support_question_with_http_info(ask_support_question_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AskSupportQuestion202Response>
rescue Zernio::ApiError => e
  puts "Error when calling SupportAssistantApi->ask_support_question_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ask_support_question_request** | [**AskSupportQuestionRequest**](AskSupportQuestionRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**AskSupportQuestion202Response**](AskSupportQuestion202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_support_answer

> <SupportRun> get_support_answer(run_id)

Get a support answer

Returns a run started by your team, with Ana's answer once it is ready. Prefer the `support.run.completed` and `support.run.failed` webhooks; use this as the fallback, waiting `pollAfterSeconds` between polls. `costUsd` is the amount billed for the question, never above `maxCostUsd`, and 0 for a failed run (rates on Ask a support question).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SupportAssistantApi.new
run_id = 'run_id_example' # String | 

begin
  # Get a support answer
  result = api_instance.get_support_answer(run_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SupportAssistantApi->get_support_answer: #{e}"
end
```

#### Using the get_support_answer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SupportRun>, Integer, Hash)> get_support_answer_with_http_info(run_id)

```ruby
begin
  # Get a support answer
  data, status_code, headers = api_instance.get_support_answer_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SupportRun>
rescue Zernio::ApiError => e
  puts "Error when calling SupportAssistantApi->get_support_answer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **run_id** | **String** |  |  |

### Return type

[**SupportRun**](SupportRun.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

