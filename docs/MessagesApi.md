# Late::MessagesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_message_reaction**](MessagesApi.md#add_message_reaction) | **POST** /v1/inbox/conversations/{conversationId}/messages/{messageId}/reactions | Add reaction |
| [**create_inbox_conversation**](MessagesApi.md#create_inbox_conversation) | **POST** /v1/inbox/conversations | Create conversation |
| [**delete_inbox_message**](MessagesApi.md#delete_inbox_message) | **DELETE** /v1/inbox/conversations/{conversationId}/messages/{messageId} | Delete message |
| [**edit_inbox_message**](MessagesApi.md#edit_inbox_message) | **PATCH** /v1/inbox/conversations/{conversationId}/messages/{messageId} | Edit message |
| [**get_inbox_conversation**](MessagesApi.md#get_inbox_conversation) | **GET** /v1/inbox/conversations/{conversationId} | Get conversation |
| [**get_inbox_conversation_messages**](MessagesApi.md#get_inbox_conversation_messages) | **GET** /v1/inbox/conversations/{conversationId}/messages | List messages |
| [**list_inbox_conversations**](MessagesApi.md#list_inbox_conversations) | **GET** /v1/inbox/conversations | List conversations |
| [**remove_message_reaction**](MessagesApi.md#remove_message_reaction) | **DELETE** /v1/inbox/conversations/{conversationId}/messages/{messageId}/reactions | Remove reaction |
| [**send_inbox_message**](MessagesApi.md#send_inbox_message) | **POST** /v1/inbox/conversations/{conversationId}/messages | Send message |
| [**send_typing_indicator**](MessagesApi.md#send_typing_indicator) | **POST** /v1/inbox/conversations/{conversationId}/typing | Send typing indicator |
| [**update_inbox_conversation**](MessagesApi.md#update_inbox_conversation) | **PUT** /v1/inbox/conversations/{conversationId} | Update conversation status |
| [**upload_media_direct**](MessagesApi.md#upload_media_direct) | **POST** /v1/media/upload-direct | Upload media file |


## add_message_reaction

> <UpdateYoutubeDefaultPlaylist200Response> add_message_reaction(conversation_id, message_id, add_message_reaction_request)

Add reaction

Add an emoji reaction to a message. Platform support: - **Telegram**: Supports a subset of Unicode emoji reactions - **WhatsApp**: Supports any standard emoji (one reaction per message per sender) - **All others**: Returns 400 (not supported) 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
message_id = 'message_id_example' # String | The platform message ID to react to
add_message_reaction_request = Late::AddMessageReactionRequest.new({account_id: 'account_id_example', emoji: '👍'}) # AddMessageReactionRequest | 

begin
  # Add reaction
  result = api_instance.add_message_reaction(conversation_id, message_id, add_message_reaction_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->add_message_reaction: #{e}"
end
```

#### Using the add_message_reaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> add_message_reaction_with_http_info(conversation_id, message_id, add_message_reaction_request)

```ruby
begin
  # Add reaction
  data, status_code, headers = api_instance.add_message_reaction_with_http_info(conversation_id, message_id, add_message_reaction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->add_message_reaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID |  |
| **message_id** | **String** | The platform message ID to react to |  |
| **add_message_reaction_request** | [**AddMessageReactionRequest**](AddMessageReactionRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_inbox_conversation

> <CreateInboxConversation201Response> create_inbox_conversation(create_inbox_conversation_request)

Create conversation

Initiate a new direct message conversation with a specified user. If a conversation already exists with the recipient, the message is added to the existing thread.  **Currently supported platforms:** Twitter/X only. Other platforms will return `PLATFORM_NOT_SUPPORTED`.  **DM eligibility:** Before sending, the endpoint checks if the recipient accepts DMs from your account (via the `receives_your_dm` field). If not, a 422 error with code `DM_NOT_ALLOWED` is returned. You can skip this check with `skipDmCheck: true` if you have already verified eligibility.  **X API tier requirement:** DM write endpoints require X API Pro tier ($5,000/month) or Enterprise access. This applies to BYOK (Bring Your Own Key) users who provide their own X API credentials.  **Rate limits:** 200 requests per 15 minutes, 1,000 per 24 hours per user, 15,000 per 24 hours per app (shared across all DM endpoints). 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
create_inbox_conversation_request = Late::CreateInboxConversationRequest.new({account_id: 'account_id_example'}) # CreateInboxConversationRequest | 

begin
  # Create conversation
  result = api_instance.create_inbox_conversation(create_inbox_conversation_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->create_inbox_conversation: #{e}"
end
```

#### Using the create_inbox_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateInboxConversation201Response>, Integer, Hash)> create_inbox_conversation_with_http_info(create_inbox_conversation_request)

```ruby
begin
  # Create conversation
  data, status_code, headers = api_instance.create_inbox_conversation_with_http_info(create_inbox_conversation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateInboxConversation201Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->create_inbox_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_inbox_conversation_request** | [**CreateInboxConversationRequest**](CreateInboxConversationRequest.md) |  |  |

### Return type

[**CreateInboxConversation201Response**](CreateInboxConversation201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## delete_inbox_message

> <UpdateYoutubeDefaultPlaylist200Response> delete_inbox_message(conversation_id, message_id, account_id)

Delete message

Delete a message from a conversation. Platform support varies: - **Telegram**: Full delete (bot's own messages anytime, others if admin) - **X/Twitter**: Full delete (own DM events only) - **Bluesky**: Delete for self only (recipient still sees it) - **Reddit**: Delete from sender's view only - **Facebook, Instagram, WhatsApp**: Not supported (returns 400) 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
message_id = 'message_id_example' # String | The platform message ID to delete
account_id = 'account_id_example' # String | Social account ID

begin
  # Delete message
  result = api_instance.delete_inbox_message(conversation_id, message_id, account_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->delete_inbox_message: #{e}"
end
```

#### Using the delete_inbox_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_inbox_message_with_http_info(conversation_id, message_id, account_id)

```ruby
begin
  # Delete message
  data, status_code, headers = api_instance.delete_inbox_message_with_http_info(conversation_id, message_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->delete_inbox_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID |  |
| **message_id** | **String** | The platform message ID to delete |  |
| **account_id** | **String** | Social account ID |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## edit_inbox_message

> <EditInboxMessage200Response> edit_inbox_message(conversation_id, message_id, edit_inbox_message_request)

Edit message

Edit the text and/or reply markup of a previously sent Telegram message. Only supported for Telegram. Returns 400 for other platforms. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
message_id = 'message_id_example' # String | The Telegram message ID to edit
edit_inbox_message_request = Late::EditInboxMessageRequest.new({account_id: 'account_id_example'}) # EditInboxMessageRequest | 

begin
  # Edit message
  result = api_instance.edit_inbox_message(conversation_id, message_id, edit_inbox_message_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->edit_inbox_message: #{e}"
end
```

#### Using the edit_inbox_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EditInboxMessage200Response>, Integer, Hash)> edit_inbox_message_with_http_info(conversation_id, message_id, edit_inbox_message_request)

```ruby
begin
  # Edit message
  data, status_code, headers = api_instance.edit_inbox_message_with_http_info(conversation_id, message_id, edit_inbox_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EditInboxMessage200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->edit_inbox_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID |  |
| **message_id** | **String** | The Telegram message ID to edit |  |
| **edit_inbox_message_request** | [**EditInboxMessageRequest**](EditInboxMessageRequest.md) |  |  |

### Return type

[**EditInboxMessage200Response**](EditInboxMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_inbox_conversation

> <GetInboxConversation200Response> get_inbox_conversation(conversation_id, account_id)

Get conversation

Retrieve details and metadata for a specific conversation. Requires accountId query parameter.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID (id field from list conversations endpoint). This is the platform-specific conversation identifier, not an internal database ID.
account_id = 'account_id_example' # String | The social account ID

begin
  # Get conversation
  result = api_instance.get_inbox_conversation(conversation_id, account_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->get_inbox_conversation: #{e}"
end
```

#### Using the get_inbox_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxConversation200Response>, Integer, Hash)> get_inbox_conversation_with_http_info(conversation_id, account_id)

```ruby
begin
  # Get conversation
  data, status_code, headers = api_instance.get_inbox_conversation_with_http_info(conversation_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxConversation200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->get_inbox_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID (id field from list conversations endpoint). This is the platform-specific conversation identifier, not an internal database ID. |  |
| **account_id** | **String** | The social account ID |  |

### Return type

[**GetInboxConversation200Response**](GetInboxConversation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_inbox_conversation_messages

> <GetInboxConversationMessages200Response> get_inbox_conversation_messages(conversation_id, account_id)

List messages

Fetch messages for a specific conversation. Requires accountId query parameter.  **Twitter/X limitation:** X's encrypted \"X Chat\" messages are not accessible via the API. Conversations where the other participant uses encrypted X Chat may only show your outgoing messages. See the [list conversations endpoint](#/Messages/listInboxConversations) for more details. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID (id field from list conversations endpoint). This is the platform-specific conversation identifier, not an internal database ID.
account_id = 'account_id_example' # String | Social account ID

begin
  # List messages
  result = api_instance.get_inbox_conversation_messages(conversation_id, account_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->get_inbox_conversation_messages: #{e}"
end
```

#### Using the get_inbox_conversation_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetInboxConversationMessages200Response>, Integer, Hash)> get_inbox_conversation_messages_with_http_info(conversation_id, account_id)

```ruby
begin
  # List messages
  data, status_code, headers = api_instance.get_inbox_conversation_messages_with_http_info(conversation_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetInboxConversationMessages200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->get_inbox_conversation_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID (id field from list conversations endpoint). This is the platform-specific conversation identifier, not an internal database ID. |  |
| **account_id** | **String** | Social account ID |  |

### Return type

[**GetInboxConversationMessages200Response**](GetInboxConversationMessages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_inbox_conversations

> <ListInboxConversations200Response> list_inbox_conversations(opts)

List conversations

Fetch conversations (DMs) from all connected messaging accounts in a single API call. Supports filtering by profile and platform. Results are aggregated and deduplicated. Supported platforms: Facebook, Instagram, Twitter/X, Bluesky, Reddit, Telegram.  **Twitter/X limitation:** X has replaced traditional DMs with encrypted \"X Chat\" for many accounts. Messages sent or received through encrypted X Chat are not accessible via X's API (the `/2/dm_events` endpoint only returns legacy unencrypted DMs). This means some Twitter/X conversations may show only outgoing messages or appear empty. This is an X platform limitation that affects all third-party applications. See [X's docs on encrypted messaging](https://help.x.com/en/using-x/about-chat) for more details. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
opts = {
  profile_id: 'profile_id_example', # String | Filter by profile ID
  platform: 'facebook', # String | Filter by platform
  status: 'active', # String | Filter by conversation status
  sort_order: 'asc', # String | Sort order by updated time
  limit: 56, # Integer | Maximum number of conversations to return
  cursor: 'cursor_example', # String | Pagination cursor for next page
  account_id: 'account_id_example' # String | Filter by specific social account ID
}

begin
  # List conversations
  result = api_instance.list_inbox_conversations(opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->list_inbox_conversations: #{e}"
end
```

#### Using the list_inbox_conversations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListInboxConversations200Response>, Integer, Hash)> list_inbox_conversations_with_http_info(opts)

```ruby
begin
  # List conversations
  data, status_code, headers = api_instance.list_inbox_conversations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListInboxConversations200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->list_inbox_conversations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** | Filter by profile ID | [optional] |
| **platform** | **String** | Filter by platform | [optional] |
| **status** | **String** | Filter by conversation status | [optional] |
| **sort_order** | **String** | Sort order by updated time | [optional][default to &#39;desc&#39;] |
| **limit** | **Integer** | Maximum number of conversations to return | [optional][default to 50] |
| **cursor** | **String** | Pagination cursor for next page | [optional] |
| **account_id** | **String** | Filter by specific social account ID | [optional] |

### Return type

[**ListInboxConversations200Response**](ListInboxConversations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_message_reaction

> <UpdateYoutubeDefaultPlaylist200Response> remove_message_reaction(conversation_id, message_id, account_id)

Remove reaction

Remove a reaction from a message. Platform support: - **Telegram**: Send empty reaction array to clear - **WhatsApp**: Send empty emoji to remove - **All others**: Returns 400 (not supported) 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
message_id = 'message_id_example' # String | The platform message ID
account_id = 'account_id_example' # String | Social account ID

begin
  # Remove reaction
  result = api_instance.remove_message_reaction(conversation_id, message_id, account_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->remove_message_reaction: #{e}"
end
```

#### Using the remove_message_reaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> remove_message_reaction_with_http_info(conversation_id, message_id, account_id)

```ruby
begin
  # Remove reaction
  data, status_code, headers = api_instance.remove_message_reaction_with_http_info(conversation_id, message_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->remove_message_reaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID |  |
| **message_id** | **String** | The platform message ID |  |
| **account_id** | **String** | Social account ID |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_inbox_message

> <SendInboxMessage200Response> send_inbox_message(conversation_id, send_inbox_message_request)

Send message

Send a message in a conversation. Supports text, attachments, quick replies, buttons, and message tags. Attachment and interactive message support varies by platform.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID (id field from list conversations endpoint). This is the platform-specific conversation identifier, not an internal database ID.
send_inbox_message_request = Late::SendInboxMessageRequest.new({account_id: 'account_id_example'}) # SendInboxMessageRequest | 

begin
  # Send message
  result = api_instance.send_inbox_message(conversation_id, send_inbox_message_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->send_inbox_message: #{e}"
end
```

#### Using the send_inbox_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendInboxMessage200Response>, Integer, Hash)> send_inbox_message_with_http_info(conversation_id, send_inbox_message_request)

```ruby
begin
  # Send message
  data, status_code, headers = api_instance.send_inbox_message_with_http_info(conversation_id, send_inbox_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendInboxMessage200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->send_inbox_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID (id field from list conversations endpoint). This is the platform-specific conversation identifier, not an internal database ID. |  |
| **send_inbox_message_request** | [**SendInboxMessageRequest**](SendInboxMessageRequest.md) |  |  |

### Return type

[**SendInboxMessage200Response**](SendInboxMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json


## send_typing_indicator

> <UpdateYoutubeDefaultPlaylist200Response> send_typing_indicator(conversation_id, send_typing_indicator_request)

Send typing indicator

Show a typing indicator in a conversation. Platform support: - **Facebook Messenger**: Shows \"Page is typing...\" for 20 seconds - **Telegram**: Shows \"Bot is typing...\" for 5 seconds - **All others**: Returns 200 but no-op (platform doesn't support it)  Typing indicators are best-effort. The endpoint always returns 200 even if the platform call fails. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID
send_typing_indicator_request = Late::SendTypingIndicatorRequest.new({account_id: 'account_id_example'}) # SendTypingIndicatorRequest | 

begin
  # Send typing indicator
  result = api_instance.send_typing_indicator(conversation_id, send_typing_indicator_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->send_typing_indicator: #{e}"
end
```

#### Using the send_typing_indicator_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> send_typing_indicator_with_http_info(conversation_id, send_typing_indicator_request)

```ruby
begin
  # Send typing indicator
  data, status_code, headers = api_instance.send_typing_indicator_with_http_info(conversation_id, send_typing_indicator_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->send_typing_indicator_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID |  |
| **send_typing_indicator_request** | [**SendTypingIndicatorRequest**](SendTypingIndicatorRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_inbox_conversation

> <UpdateInboxConversation200Response> update_inbox_conversation(conversation_id, update_inbox_conversation_request)

Update conversation status

Archive or activate a conversation. Requires accountId in request body.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
conversation_id = 'conversation_id_example' # String | The conversation ID (id field from list conversations endpoint). This is the platform-specific conversation identifier, not an internal database ID.
update_inbox_conversation_request = Late::UpdateInboxConversationRequest.new({account_id: 'account_id_example', status: 'active'}) # UpdateInboxConversationRequest | 

begin
  # Update conversation status
  result = api_instance.update_inbox_conversation(conversation_id, update_inbox_conversation_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->update_inbox_conversation: #{e}"
end
```

#### Using the update_inbox_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateInboxConversation200Response>, Integer, Hash)> update_inbox_conversation_with_http_info(conversation_id, update_inbox_conversation_request)

```ruby
begin
  # Update conversation status
  data, status_code, headers = api_instance.update_inbox_conversation_with_http_info(conversation_id, update_inbox_conversation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateInboxConversation200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->update_inbox_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The conversation ID (id field from list conversations endpoint). This is the platform-specific conversation identifier, not an internal database ID. |  |
| **update_inbox_conversation_request** | [**UpdateInboxConversationRequest**](UpdateInboxConversationRequest.md) |  |  |

### Return type

[**UpdateInboxConversation200Response**](UpdateInboxConversation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_media_direct

> <UploadMediaDirect200Response> upload_media_direct(file, opts)

Upload media file

Upload a media file using API key authentication and get back a publicly accessible URL. The URL can be used as `attachmentUrl` when sending inbox messages.  Files are stored in temporary storage and auto-delete after 7 days. Maximum file size is 25MB.  Unlike `/v1/media/upload` (which uses upload tokens for end-user flows), this endpoint uses standard Bearer token authentication for programmatic use. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::MessagesApi.new
file = File.new('/path/to/some/file') # File | The file to upload (max 25MB)
opts = {
  content_type: 'content_type_example' # String | Override MIME type (e.g. \\\"image/jpeg\\\"). Auto-detected from file if not provided.
}

begin
  # Upload media file
  result = api_instance.upload_media_direct(file, opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->upload_media_direct: #{e}"
end
```

#### Using the upload_media_direct_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadMediaDirect200Response>, Integer, Hash)> upload_media_direct_with_http_info(file, opts)

```ruby
begin
  # Upload media file
  data, status_code, headers = api_instance.upload_media_direct_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadMediaDirect200Response>
rescue Late::ApiError => e
  puts "Error when calling MessagesApi->upload_media_direct_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | The file to upload (max 25MB) |  |
| **content_type** | **String** | Override MIME type (e.g. \\\&quot;image/jpeg\\\&quot;). Auto-detected from file if not provided. | [optional] |

### Return type

[**UploadMediaDirect200Response**](UploadMediaDirect200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

