# Zernio::FeedbackApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**submit_feedback**](FeedbackApi.md#submit_feedback) | **POST** /v1/feedback | Submit feedback |


## submit_feedback

> <FeedbackReceipt> submit_feedback(submit_feedback_request)

Submit feedback

Report a bug, a missing feature or a documentation gap. Every submission is read by the Zernio team. Designed for AI agents: when a call fails in a way that looks like our bug, or the API lacks something you need, send one structured report here.  Include `endpoint` and `requestId` (the `x-request-id` response header of the failing call) when you have them; they let us find the exact request.  Submitting the same `summary` again within 24 hours is idempotent: it returns the original `id` with `duplicate: true` and a `200`. Each API user can file at most 20 submissions per 24 hours. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FeedbackApi.new
submit_feedback_request = Zernio::SubmitFeedbackRequest.new({type: 'bug', summary: 'summary_example'}) # SubmitFeedbackRequest | 

begin
  # Submit feedback
  result = api_instance.submit_feedback(submit_feedback_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FeedbackApi->submit_feedback: #{e}"
end
```

#### Using the submit_feedback_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeedbackReceipt>, Integer, Hash)> submit_feedback_with_http_info(submit_feedback_request)

```ruby
begin
  # Submit feedback
  data, status_code, headers = api_instance.submit_feedback_with_http_info(submit_feedback_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeedbackReceipt>
rescue Zernio::ApiError => e
  puts "Error when calling FeedbackApi->submit_feedback_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submit_feedback_request** | [**SubmitFeedbackRequest**](SubmitFeedbackRequest.md) |  |  |

### Return type

[**FeedbackReceipt**](FeedbackReceipt.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

