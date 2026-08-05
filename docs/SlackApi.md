# Zernio::SlackApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_slack_members**](SlackApi.md#list_slack_members) | **GET** /v1/accounts/{accountId}/slack-members | List Slack workspace members |


## list_slack_members

> <ListSlackMembers200Response> list_slack_members(account_id, opts)

List Slack workspace members

Members of the connected Slack workspace that can receive a direct message, for populating a recipient picker. Bots, deactivated members and Slackbot are excluded. Start a DM by passing a member id as `participantId` to POST /v1/inbox/conversations.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::SlackApi.new
account_id = 'account_id_example' # String | 
opts = {
  query: 'query_example', # String | Case-insensitive filter over display name and handle.
  limit: 56 # Integer | 
}

begin
  # List Slack workspace members
  result = api_instance.list_slack_members(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling SlackApi->list_slack_members: #{e}"
end
```

#### Using the list_slack_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListSlackMembers200Response>, Integer, Hash)> list_slack_members_with_http_info(account_id, opts)

```ruby
begin
  # List Slack workspace members
  data, status_code, headers = api_instance.list_slack_members_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListSlackMembers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling SlackApi->list_slack_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **query** | **String** | Case-insensitive filter over display name and handle. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**ListSlackMembers200Response**](ListSlackMembers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

