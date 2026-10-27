# Zernio::EmailApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**download_email_attachment**](EmailApi.md#download_email_attachment) | **GET** /v1/email/attachments/{attachmentId} | Download an attachment |
| [**get_email_message**](EmailApi.md#get_email_message) | **GET** /v1/email/messages/{messageId} | Get an email message |
| [**get_email_thread**](EmailApi.md#get_email_thread) | **GET** /v1/email/threads/{threadId} | Get an email thread with its messages |
| [**list_email_folders**](EmailApi.md#list_email_folders) | **GET** /v1/email/folders | List mailbox folders |
| [**list_email_messages**](EmailApi.md#list_email_messages) | **GET** /v1/email/messages | List email messages |
| [**list_email_threads**](EmailApi.md#list_email_threads) | **GET** /v1/email/threads | List email threads |
| [**reply_email_message**](EmailApi.md#reply_email_message) | **POST** /v1/email/messages/{messageId}/reply | Reply to a message |
| [**send_email_message**](EmailApi.md#send_email_message) | **POST** /v1/email/messages | Send an email |
| [**trash_email_message**](EmailApi.md#trash_email_message) | **DELETE** /v1/email/messages/{messageId} | Move a message to trash |
| [**update_email_message**](EmailApi.md#update_email_message) | **PATCH** /v1/email/messages/{messageId} | Mark read or starred, or move a message |
| [**update_email_thread**](EmailApi.md#update_email_thread) | **PATCH** /v1/email/threads/{threadId} | Update every message in a thread |


## download_email_attachment

> File download_email_attachment(attachment_id, account_id, message_id)

Download an attachment

Streams the attachment bytes with its `Content-Type` and a `Content-Disposition` carrying the filename.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
attachment_id = 'attachment_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.
message_id = 'message_id_example' # String | 

begin
  # Download an attachment
  result = api_instance.download_email_attachment(attachment_id, account_id, message_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->download_email_attachment: #{e}"
end
```

#### Using the download_email_attachment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_email_attachment_with_http_info(attachment_id, account_id, message_id)

```ruby
begin
  # Download an attachment
  data, status_code, headers = api_instance.download_email_attachment_with_http_info(attachment_id, account_id, message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->download_email_attachment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attachment_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |
| **message_id** | **String** |  |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_email_message

> <SendEmailMessage201Response> get_email_message(message_id, account_id, opts)

Get an email message

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
message_id = 'message_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.
opts = {
  include_headers: true, # Boolean | Include the raw internet headers under `headers`.
  raw: true # Boolean | Include the MIME source under `raw`.
}

begin
  # Get an email message
  result = api_instance.get_email_message(message_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_message: #{e}"
end
```

#### Using the get_email_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage201Response>, Integer, Hash)> get_email_message_with_http_info(message_id, account_id, opts)

```ruby
begin
  # Get an email message
  data, status_code, headers = api_instance.get_email_message_with_http_info(message_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEmailMessage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |
| **include_headers** | **Boolean** | Include the raw internet headers under &#x60;headers&#x60;. | [optional][default to false] |
| **raw** | **Boolean** | Include the MIME source under &#x60;raw&#x60;. | [optional][default to false] |

### Return type

[**SendEmailMessage201Response**](SendEmailMessage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_thread

> <GetEmailThread200Response> get_email_thread(thread_id, account_id)

Get an email thread with its messages

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
thread_id = 'thread_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.

begin
  # Get an email thread with its messages
  result = api_instance.get_email_thread(thread_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_thread: #{e}"
end
```

#### Using the get_email_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailThread200Response>, Integer, Hash)> get_email_thread_with_http_info(thread_id, account_id)

```ruby
begin
  # Get an email thread with its messages
  data, status_code, headers = api_instance.get_email_thread_with_http_info(thread_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetEmailThread200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |

### Return type

[**GetEmailThread200Response**](GetEmailThread200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_folders

> <ListEmailFolders200Response> list_email_folders(account_id)

List mailbox folders

On Google, folders are Gmail labels (system labels carry `wellKnown`; `unreadCount` and `totalCount` are present only where Gmail reports them). There is no archive folder on Google; archived mail is listed with `folder=archive`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
account_id = 'account_id_example' # String | The connected Google or Microsoft account.

begin
  # List mailbox folders
  result = api_instance.list_email_folders(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_folders: #{e}"
end
```

#### Using the list_email_folders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailFolders200Response>, Integer, Hash)> list_email_folders_with_http_info(account_id)

```ruby
begin
  # List mailbox folders
  data, status_code, headers = api_instance.list_email_folders_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailFolders200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_folders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google or Microsoft account. |  |

### Return type

[**ListEmailFolders200Response**](ListEmailFolders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_messages

> <ListEmailMessages200Response> list_email_messages(account_id, opts)

List email messages

Same filters and envelope as `GET /v1/email/threads`, one row per message. Bodies are omitted; fetch a message to read `text` and `html`. On Google, list rows also omit `attachments` (Gmail's metadata pages carry headers only; `hasAttachment=true` still filters server-side), `sortOrder=asc` reverses the fetched page and `archive` means mail without the inbox, trash or spam labels.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
account_id = 'account_id_example' # String | The connected Google or Microsoft account.
opts = {
  folder: 'folder_example', # String | 
  unread: true, # Boolean | 
  starred: true, # Boolean | 
  has_attachment: true, # Boolean | 
  subject: 'subject_example', # String | 
  from: 'from_example', # String | 
  to: 'to_example', # String | 
  cc: 'cc_example', # String | 
  bcc: 'bcc_example', # String | 
  any_email: 'any_email_example', # String | 
  after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  search_query_native: 'search_query_native_example', # String | 
  sort_order: 'asc', # String | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # List email messages
  result = api_instance.list_email_messages(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_messages: #{e}"
end
```

#### Using the list_email_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailMessages200Response>, Integer, Hash)> list_email_messages_with_http_info(account_id, opts)

```ruby
begin
  # List email messages
  data, status_code, headers = api_instance.list_email_messages_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailMessages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google or Microsoft account. |  |
| **folder** | **String** |  | [optional] |
| **unread** | **Boolean** |  | [optional] |
| **starred** | **Boolean** |  | [optional] |
| **has_attachment** | **Boolean** |  | [optional] |
| **subject** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **cc** | **String** |  | [optional] |
| **bcc** | **String** |  | [optional] |
| **any_email** | **String** |  | [optional] |
| **after** | **Time** |  | [optional] |
| **before** | **Time** |  | [optional] |
| **search_query_native** | **String** |  | [optional] |
| **sort_order** | **String** |  | [optional][default to &#39;desc&#39;] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**ListEmailMessages200Response**](ListEmailMessages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_threads

> <ListEmailThreads200Response> list_email_threads(account_id, opts)

List email threads

Threads of a connected Google or Microsoft mailbox, newest first. Every filter that the provider cannot apply server-side is applied to the fetched page instead and named in `meta.filteredClientSide`, so a filtered page can hold fewer than `limit` items while `pagination.hasMore` stays true.  On Google, folders are Gmail labels: `folder` takes a well-known name or a label id, `archive` means mail carrying none of the inbox, trash or spam labels, and `sortOrder=asc` reverses the fetched page (Gmail lists newest first only).  The account must have been connected with `scopes=email` (412 `account_scope_missing` otherwise). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
account_id = 'account_id_example' # String | The connected Google or Microsoft account.
opts = {
  folder: 'folder_example', # String | Well-known folder (`inbox`, `sent`, `drafts`, `trash`, `spam`, `archive`) or a provider folder id from `GET /v1/email/folders`. Default inbox.
  unread: true, # Boolean | 
  starred: true, # Boolean | 
  has_attachment: true, # Boolean | 
  subject: 'subject_example', # String | Substring match on the subject.
  from: 'from_example', # String | Sender address.
  to: 'to_example', # String | A recipient address.
  cc: 'cc_example', # String | 
  bcc: 'bcc_example', # String | Applied client-side on Microsoft.
  any_email: 'any_email_example', # String | Matches from, to, cc or bcc. Applied client-side on Microsoft.
  after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  search_query_native: 'search_query_native_example', # String | The provider's own search syntax (Gmail search operators, Microsoft KQL). On Microsoft it cannot be combined with other filters or server-side ordering; those are applied to the page.
  sort_order: 'asc', # String | 
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # List email threads
  result = api_instance.list_email_threads(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_threads: #{e}"
end
```

#### Using the list_email_threads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailThreads200Response>, Integer, Hash)> list_email_threads_with_http_info(account_id, opts)

```ruby
begin
  # List email threads
  data, status_code, headers = api_instance.list_email_threads_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailThreads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_threads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google or Microsoft account. |  |
| **folder** | **String** | Well-known folder (&#x60;inbox&#x60;, &#x60;sent&#x60;, &#x60;drafts&#x60;, &#x60;trash&#x60;, &#x60;spam&#x60;, &#x60;archive&#x60;) or a provider folder id from &#x60;GET /v1/email/folders&#x60;. Default inbox. | [optional] |
| **unread** | **Boolean** |  | [optional] |
| **starred** | **Boolean** |  | [optional] |
| **has_attachment** | **Boolean** |  | [optional] |
| **subject** | **String** | Substring match on the subject. | [optional] |
| **from** | **String** | Sender address. | [optional] |
| **to** | **String** | A recipient address. | [optional] |
| **cc** | **String** |  | [optional] |
| **bcc** | **String** | Applied client-side on Microsoft. | [optional] |
| **any_email** | **String** | Matches from, to, cc or bcc. Applied client-side on Microsoft. | [optional] |
| **after** | **Time** |  | [optional] |
| **before** | **Time** |  | [optional] |
| **search_query_native** | **String** | The provider&#39;s own search syntax (Gmail search operators, Microsoft KQL). On Microsoft it cannot be combined with other filters or server-side ordering; those are applied to the page. | [optional] |
| **sort_order** | **String** |  | [optional][default to &#39;desc&#39;] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**ListEmailThreads200Response**](ListEmailThreads200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reply_email_message

> <SendEmailMessage201Response> reply_email_message(message_id, reply_email_message_request)

Reply to a message

Replies inside the provider's thread: the provider builds the quoted original and threading headers, your `html` or `text` goes above the quote. `to`, `cc`, `bcc`, `replyTo`, `subject`, `headers` and `attachments` are honoured; `scheduledFor` and `holdAsDraft` are rejected like on send. Same protection, caps and headers as sending.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
message_id = 'message_id_example' # String | 
reply_email_message_request = Zernio::ReplyEmailMessageRequest.new({account_id: 'account_id_example', to: [Zernio::EmailAddress.new({email: 'email_example'})], subject: 'subject_example'}) # ReplyEmailMessageRequest | 

begin
  # Reply to a message
  result = api_instance.reply_email_message(message_id, reply_email_message_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->reply_email_message: #{e}"
end
```

#### Using the reply_email_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage201Response>, Integer, Hash)> reply_email_message_with_http_info(message_id, reply_email_message_request)

```ruby
begin
  # Reply to a message
  data, status_code, headers = api_instance.reply_email_message_with_http_info(message_id, reply_email_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEmailMessage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->reply_email_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** |  |  |
| **reply_email_message_request** | [**ReplyEmailMessageRequest**](ReplyEmailMessageRequest.md) |  |  |

### Return type

[**SendEmailMessage201Response**](SendEmailMessage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_email_message

> <SendEmailMessage201Response> send_email_message(send_email_request)

Send an email

Sends from the connected mailbox and returns the stored sent copy. The message is mirrored into the inbox (`message.sent` fires once) and counted against the mailbox's daily cap, reported in the `X-Zernio-Send-Limit`, `X-Zernio-Send-Remaining` and `X-Zernio-Send-Reset` response headers.  Protection on every mailbox: a daily cap (Microsoft 1,000; Google Workspace 500; Gmail consumer 200) that answers 429 `email_send_cap_reached` with `details.cap`; the same body reaching more than 50 distinct recipients within an hour pauses the mailbox with an escalating cooldown (429 `rate_limited`, `account.rate_limited` webhook). These mailboxes are for one-to-one mail, not bulk sends. Gmail sends need a payment method on the workspace (402). Reading, calendar and files do not.  `scheduledFor` and `holdAsDraft` are reserved and currently rejected with 400. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
send_email_request = Zernio::SendEmailRequest.new({account_id: 'account_id_example', to: [Zernio::EmailAddress.new({email: 'email_example'})], subject: 'subject_example'}) # SendEmailRequest | 

begin
  # Send an email
  result = api_instance.send_email_message(send_email_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->send_email_message: #{e}"
end
```

#### Using the send_email_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage201Response>, Integer, Hash)> send_email_message_with_http_info(send_email_request)

```ruby
begin
  # Send an email
  data, status_code, headers = api_instance.send_email_message_with_http_info(send_email_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEmailMessage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->send_email_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_email_request** | [**SendEmailRequest**](SendEmailRequest.md) |  |  |

### Return type

[**SendEmailMessage201Response**](SendEmailMessage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## trash_email_message

> <TrashEmailMessage200Response> trash_email_message(message_id, account_id)

Move a message to trash

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
message_id = 'message_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.

begin
  # Move a message to trash
  result = api_instance.trash_email_message(message_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->trash_email_message: #{e}"
end
```

#### Using the trash_email_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrashEmailMessage200Response>, Integer, Hash)> trash_email_message_with_http_info(message_id, account_id)

```ruby
begin
  # Move a message to trash
  data, status_code, headers = api_instance.trash_email_message_with_http_info(message_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrashEmailMessage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->trash_email_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |

### Return type

[**TrashEmailMessage200Response**](TrashEmailMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_email_message

> <SendEmailMessage201Response> update_email_message(message_id, email_message_patch)

Mark read or starred, or move a message

`folder` moves the message. On Google a move swaps the inbox, trash and spam labels and keeps every other label; `archive` removes the inbox label.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
message_id = 'message_id_example' # String | 
email_message_patch = Zernio::EmailMessagePatch.new({account_id: 'account_id_example'}) # EmailMessagePatch | 

begin
  # Mark read or starred, or move a message
  result = api_instance.update_email_message(message_id, email_message_patch)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->update_email_message: #{e}"
end
```

#### Using the update_email_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage201Response>, Integer, Hash)> update_email_message_with_http_info(message_id, email_message_patch)

```ruby
begin
  # Mark read or starred, or move a message
  data, status_code, headers = api_instance.update_email_message_with_http_info(message_id, email_message_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEmailMessage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->update_email_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** |  |  |
| **email_message_patch** | [**EmailMessagePatch**](EmailMessagePatch.md) |  |  |

### Return type

[**SendEmailMessage201Response**](SendEmailMessage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_email_thread

> <UpdateEmailThread200Response> update_email_thread(thread_id, email_message_patch)

Update every message in a thread

Applies `unread`, `starred` or a `folder` move to each message of the thread.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::EmailApi.new
thread_id = 'thread_id_example' # String | 
email_message_patch = Zernio::EmailMessagePatch.new({account_id: 'account_id_example'}) # EmailMessagePatch | 

begin
  # Update every message in a thread
  result = api_instance.update_email_thread(thread_id, email_message_patch)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->update_email_thread: #{e}"
end
```

#### Using the update_email_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateEmailThread200Response>, Integer, Hash)> update_email_thread_with_http_info(thread_id, email_message_patch)

```ruby
begin
  # Update every message in a thread
  data, status_code, headers = api_instance.update_email_thread_with_http_info(thread_id, email_message_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateEmailThread200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->update_email_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_id** | **String** |  |  |
| **email_message_patch** | [**EmailMessagePatch**](EmailMessagePatch.md) |  |  |

### Return type

[**UpdateEmailThread200Response**](UpdateEmailThread200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

