# Zernio::SupportAssistantApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ask_support_question**](SupportAssistantApi.md#ask_support_question) | **POST** /v1/support/runs | Ask a support question |
| [**get_support_answer**](SupportAssistantApi.md#get_support_answer) | **GET** /v1/support/runs/{runId} | Get a support answer |
| [**list_support_answers**](SupportAssistantApi.md#list_support_answers) | **GET** /v1/support/runs | List a thread&#39;s support answers |


## ask_support_question

> <AskSupportQuestion202Response> ask_support_question(ask_support_question_request, opts)

Ask a support question

Asks the Zernio Support Assistant a question about your workspace. Each question starts a run that answers asynchronously: this returns 202 with a `runId`, and the answer arrives through the `support.run.completed` and `support.run.failed` webhooks. `GET /v1/support/runs/{runId}` is the fallback. Pass `threadId` to continue an earlier conversation, and `context` to point the assistant at a post, account or profile. When the assistant finds a problem on Zernio's side it opens a support ticket with the team (see `supportTicket` on the run) and the run ends as `needs_human`.  **Pricing.** You pay per question, once it finishes. The exact amount charged is the run's `costUsd`.  | Question | You pay | | --- | --- | | Typical question | $0.10 to $0.50 | | Most one question can cost | Its `maxCostUsd`: $0.50 to $3, $3 by default | | Handed to the Zernio team (`needs_human`) | Charged like an answered question | | Failed or expired | $0 | | All questions in a UTC month | At most $100 per account |  Near its `maxCostUsd` a run stops investigating and answers with what it found so far, so it never charges more than the cap; with nothing to answer yet it fails and costs nothing. Charges appear as \"Support API\" on your invoice.  Requires an unrestricted API key, usage-based billing and a card on file. Limits per account: 3 active runs and $100 of runs per UTC month. Send an Idempotency-Key header to make retries safe. 

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

Returns a run started by your team, with the answer once it is ready. Prefer the `support.run.completed` and `support.run.failed` webhooks; use this as the fallback, waiting `pollAfterSeconds` between polls. `costUsd` is the amount billed for the question, never above `maxCostUsd`, and 0 for a failed run (pricing on Ask a support question).

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


## list_support_answers

> <ListSupportAnswers200Response> list_support_answers(thread_id, opts)

List a thread's support answers

Lists the runs of one thread that your team started, with their answers, oldest first. Replies from the Zernio team after a support ticket arrive by email and are not included. Runs are kept for 90 days. Page through a long thread with `limit` and `cursor`: pass `nextCursor` as `cursor` until it is null.

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
thread_id = 'thread_id_example' # String | The thread to list, as returned by `POST /v1/support/runs`.
opts = {
  limit: 56, # Integer | Runs per page.
  cursor: 'cursor_example' # String | Pass `nextCursor` from the previous page.
}

begin
  # List a thread's support answers
  result = api_instance.list_support_answers(thread_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SupportAssistantApi->list_support_answers: #{e}"
end
```

#### Using the list_support_answers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSupportAnswers200Response>, Integer, Hash)> list_support_answers_with_http_info(thread_id, opts)

```ruby
begin
  # List a thread's support answers
  data, status_code, headers = api_instance.list_support_answers_with_http_info(thread_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSupportAnswers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SupportAssistantApi->list_support_answers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** | The thread to list, as returned by &#x60;POST /v1/support/runs&#x60;. |  |
| **limit** | **Integer** | Runs per page. | [optional][default to 20] |
| **cursor** | **String** | Pass &#x60;nextCursor&#x60; from the previous page. | [optional] |

### Return type

[**ListSupportAnswers200Response**](ListSupportAnswers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

