# Zernio::SupportRunsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_support_run**](SupportRunsApi.md#create_support_run) | **POST** /v1/support/runs | Start a support run (private beta) |
| [**get_support_run**](SupportRunsApi.md#get_support_run) | **GET** /v1/support/runs/{runId} | Get a support run (private beta) |


## create_support_run

> <CreateSupportRun202Response> create_support_run(create_support_run_request, opts)

Start a support run (private beta)

Private beta: returns 403 `feature_not_available` unless enabled for your account. Asks Ana, the Zernio support agent, a question about your workspace. The run is asynchronous: this returns 202 with a `runId`, and the answer arrives through the `support.run.completed` and `support.run.failed` webhooks. `GET /v1/support/runs/{runId}` is the fallback. Pass `threadId` to continue an earlier conversation, and `context` to point Ana at a post, account or profile. Billed when the run finishes at the model cost plus 20%, never above `maxCostUsd`; failed runs are free. Requires an unrestricted API key, usage-based billing and a card on file. Limits per account: 3 active runs and $100 of runs per UTC month. Send an Idempotency-Key header to make retries safe.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SupportRunsApi.new
create_support_run_request = Zernio::CreateSupportRunRequest.new({message: 'message_example'}) # CreateSupportRunRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409.
}

begin
  # Start a support run (private beta)
  result = api_instance.create_support_run(create_support_run_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SupportRunsApi->create_support_run: #{e}"
end
```

#### Using the create_support_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateSupportRun202Response>, Integer, Hash)> create_support_run_with_http_info(create_support_run_request, opts)

```ruby
begin
  # Start a support run (private beta)
  data, status_code, headers = api_instance.create_support_run_with_http_info(create_support_run_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateSupportRun202Response>
rescue Zernio::ApiError => e
  puts "Error when calling SupportRunsApi->create_support_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_support_run_request** | [**CreateSupportRunRequest**](CreateSupportRunRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe. Same key + same body replays the original response; same key + different body → 422; key still processing → 409. | [optional] |

### Return type

[**CreateSupportRun202Response**](CreateSupportRun202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_support_run

> <SupportRun> get_support_run(run_id)

Get a support run (private beta)

Private beta: returns 403 `feature_not_available` unless enabled for your account. Returns a run started by your team. Prefer the `support.run.completed` and `support.run.failed` webhooks; use this as the fallback, waiting `pollAfterSeconds` between polls. `costUsd` is the amount billed: the model cost plus 20%, never above `maxCostUsd`, and 0 for a failed run.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SupportRunsApi.new
run_id = 'run_id_example' # String | 

begin
  # Get a support run (private beta)
  result = api_instance.get_support_run(run_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SupportRunsApi->get_support_run: #{e}"
end
```

#### Using the get_support_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SupportRun>, Integer, Hash)> get_support_run_with_http_info(run_id)

```ruby
begin
  # Get a support run (private beta)
  data, status_code, headers = api_instance.get_support_run_with_http_info(run_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SupportRun>
rescue Zernio::ApiError => e
  puts "Error when calling SupportRunsApi->get_support_run_with_http_info: #{e}"
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

