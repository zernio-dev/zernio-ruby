# Zernio::EmailApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_email_shared_mailbox**](EmailApi.md#add_email_shared_mailbox) | **POST** /v1/email/shared-mailboxes | Add a shared mailbox |
| [**cancel_scheduled_email**](EmailApi.md#cancel_scheduled_email) | **DELETE** /v1/email/messages/scheduled/{scheduleId} | Cancel a scheduled email |
| [**create_email_draft**](EmailApi.md#create_email_draft) | **POST** /v1/email/drafts | Create a draft |
| [**create_email_label**](EmailApi.md#create_email_label) | **POST** /v1/email/labels | Create a label |
| [**create_email_signature**](EmailApi.md#create_email_signature) | **POST** /v1/email/signatures | Create a signature |
| [**create_imap_account**](EmailApi.md#create_imap_account) | **POST** /v1/email/imap/accounts | Connect an IMAP mailbox |
| [**declare_email_send_as**](EmailApi.md#declare_email_send_as) | **POST** /v1/email/send-as | Declare a send-as address |
| [**delete_email_draft**](EmailApi.md#delete_email_draft) | **DELETE** /v1/email/drafts/{draftId} | Delete a draft |
| [**delete_email_label**](EmailApi.md#delete_email_label) | **DELETE** /v1/email/labels/{labelId} | Delete a label |
| [**delete_email_send_as**](EmailApi.md#delete_email_send_as) | **DELETE** /v1/email/send-as/{email} | Remove a declared send-as address |
| [**delete_email_signature**](EmailApi.md#delete_email_signature) | **DELETE** /v1/email/signatures/{signatureId} | Delete a signature |
| [**discover_imap_settings**](EmailApi.md#discover_imap_settings) | **POST** /v1/email/imap/discover | Find the mail settings for an address |
| [**download_email_attachment**](EmailApi.md#download_email_attachment) | **GET** /v1/email/attachments/{attachmentId} | Download an attachment |
| [**forward_email_message**](EmailApi.md#forward_email_message) | **POST** /v1/email/messages/{messageId}/forward | Forward a message |
| [**get_email_draft**](EmailApi.md#get_email_draft) | **GET** /v1/email/drafts/{draftId} | Get a draft |
| [**get_email_message**](EmailApi.md#get_email_message) | **GET** /v1/email/messages/{messageId} | Get an email message |
| [**get_email_signature**](EmailApi.md#get_email_signature) | **GET** /v1/email/signatures/{signatureId} | Get a signature |
| [**get_email_thread**](EmailApi.md#get_email_thread) | **GET** /v1/email/threads/{threadId} | Get an email thread with its messages |
| [**get_scheduled_email**](EmailApi.md#get_scheduled_email) | **GET** /v1/email/messages/scheduled/{scheduleId} | Get a scheduled email |
| [**import_email_signatures**](EmailApi.md#import_email_signatures) | **POST** /v1/email/signatures/import | Import Gmail signatures |
| [**list_email_drafts**](EmailApi.md#list_email_drafts) | **GET** /v1/email/drafts | List drafts |
| [**list_email_folders**](EmailApi.md#list_email_folders) | **GET** /v1/email/folders | List mailbox folders |
| [**list_email_labels**](EmailApi.md#list_email_labels) | **GET** /v1/email/labels | List labels |
| [**list_email_messages**](EmailApi.md#list_email_messages) | **GET** /v1/email/messages | List email messages |
| [**list_email_send_as**](EmailApi.md#list_email_send_as) | **GET** /v1/email/send-as | List send-as addresses |
| [**list_email_shared_mailboxes**](EmailApi.md#list_email_shared_mailboxes) | **GET** /v1/email/shared-mailboxes | List shared mailboxes |
| [**list_email_signatures**](EmailApi.md#list_email_signatures) | **GET** /v1/email/signatures | List signatures |
| [**list_email_threads**](EmailApi.md#list_email_threads) | **GET** /v1/email/threads | List email threads |
| [**list_scheduled_emails**](EmailApi.md#list_scheduled_emails) | **GET** /v1/email/messages/scheduled | List scheduled emails |
| [**reply_email_message**](EmailApi.md#reply_email_message) | **POST** /v1/email/messages/{messageId}/reply | Reply to a message |
| [**send_email_draft**](EmailApi.md#send_email_draft) | **POST** /v1/email/drafts/{draftId}/send | Send a draft |
| [**send_email_message**](EmailApi.md#send_email_message) | **POST** /v1/email/messages | Send an email |
| [**trash_email_message**](EmailApi.md#trash_email_message) | **DELETE** /v1/email/messages/{messageId} | Move a message to trash |
| [**update_email_draft**](EmailApi.md#update_email_draft) | **PATCH** /v1/email/drafts/{draftId} | Update a draft |
| [**update_email_message**](EmailApi.md#update_email_message) | **PATCH** /v1/email/messages/{messageId} | Mark read or starred, label, or move a message |
| [**update_email_signature**](EmailApi.md#update_email_signature) | **PATCH** /v1/email/signatures/{signatureId} | Update a signature |
| [**update_email_thread**](EmailApi.md#update_email_thread) | **PATCH** /v1/email/threads/{threadId} | Update every message in a thread |


## add_email_shared_mailbox

> <AddEmailSharedMailbox200Response> add_email_shared_mailbox(add_email_shared_mailbox_request)

Add a shared mailbox

Adds an Outlook shared mailbox the connected user can open (Full Access in Exchange) as an account of its own on the same profile. It counts as a connected account.  The Microsoft account needs the `shared_mailboxes` area: connect or reconnect it with `scopes=email,shared_mailboxes`. Without it the call answers 412.  Zernio opens the mailbox before saving it. 403 `shared_mailbox_access_denied` means the user cannot open that address. Adding an address again returns the existing account with 200.  New mail is read every minute, because Microsoft sends no change notifications for shared mailboxes opened this way. Sending needs Send As or Send on Behalf on the mailbox. Remove it with `DELETE /v1/accounts/{accountId}`. Disconnecting the Microsoft account removes its shared mailboxes too. 

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
add_email_shared_mailbox_request = Zernio::AddEmailSharedMailboxRequest.new({account_id: 'account_id_example', address: 'support@contoso.com'}) # AddEmailSharedMailboxRequest | 

begin
  # Add a shared mailbox
  result = api_instance.add_email_shared_mailbox(add_email_shared_mailbox_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->add_email_shared_mailbox: #{e}"
end
```

#### Using the add_email_shared_mailbox_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddEmailSharedMailbox200Response>, Integer, Hash)> add_email_shared_mailbox_with_http_info(add_email_shared_mailbox_request)

```ruby
begin
  # Add a shared mailbox
  data, status_code, headers = api_instance.add_email_shared_mailbox_with_http_info(add_email_shared_mailbox_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddEmailSharedMailbox200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->add_email_shared_mailbox_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_email_shared_mailbox_request** | [**AddEmailSharedMailboxRequest**](AddEmailSharedMailboxRequest.md) |  |  |

### Return type

[**AddEmailSharedMailbox200Response**](AddEmailSharedMailbox200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_scheduled_email

> <SendEmailMessage202Response> cancel_scheduled_email(schedule_id, account_id)

Cancel a scheduled email

Cancels a send still waiting for its time and returns it with `status: cancelled`. One that is sending, sent or failed answers 409.

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
schedule_id = 'schedule_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # Cancel a scheduled email
  result = api_instance.cancel_scheduled_email(schedule_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->cancel_scheduled_email: #{e}"
end
```

#### Using the cancel_scheduled_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage202Response>, Integer, Hash)> cancel_scheduled_email_with_http_info(schedule_id, account_id)

```ruby
begin
  # Cancel a scheduled email
  data, status_code, headers = api_instance.cancel_scheduled_email_with_http_info(schedule_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEmailMessage202Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->cancel_scheduled_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **String** |  |  |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**SendEmailMessage202Response**](SendEmailMessage202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_email_draft

> <CreateEmailDraft201Response> create_email_draft(create_email_draft_request, opts)

Create a draft

Saves a draft in the user's mailbox, where they see it in their mail app. Recipients and subject can come later. `inReplyTo` makes a reply draft in that thread and `forwardOf` a forward draft with the original's attachments; the `kind` is fixed for the life of the draft.  Send it with `POST /v1/email/drafts/{draftId}/send`. Edits the user makes in their mail client are what goes out. Store the draft `id`, and pass its `version` as `If-Match` so an update or send applies only to the version you saw. 

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
create_email_draft_request = Zernio::CreateEmailDraftRequest.new({account_id: 'account_id_example'}) # CreateEmailDraftRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Create a draft
  result = api_instance.create_email_draft(create_email_draft_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->create_email_draft: #{e}"
end
```

#### Using the create_email_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailDraft201Response>, Integer, Hash)> create_email_draft_with_http_info(create_email_draft_request, opts)

```ruby
begin
  # Create a draft
  data, status_code, headers = api_instance.create_email_draft_with_http_info(create_email_draft_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailDraft201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->create_email_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_email_draft_request** | [**CreateEmailDraftRequest**](CreateEmailDraftRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**CreateEmailDraft201Response**](CreateEmailDraft201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_label

> <CreateEmailLabel200Response> create_email_label(create_email_label_request)

Create a label

Creates a Gmail label or an Outlook category. Safe to repeat: when the name already exists (case-insensitive) the existing label comes back with 200.

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
create_email_label_request = Zernio::CreateEmailLabelRequest.new({account_id: 'account_id_example', name: 'Hermia/Handled'}) # CreateEmailLabelRequest | 

begin
  # Create a label
  result = api_instance.create_email_label(create_email_label_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->create_email_label: #{e}"
end
```

#### Using the create_email_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailLabel200Response>, Integer, Hash)> create_email_label_with_http_info(create_email_label_request)

```ruby
begin
  # Create a label
  data, status_code, headers = api_instance.create_email_label_with_http_info(create_email_label_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailLabel200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->create_email_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_email_label_request** | [**CreateEmailLabelRequest**](CreateEmailLabelRequest.md) |  |  |

### Return type

[**CreateEmailLabel200Response**](CreateEmailLabel200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email_signature

> <CreateEmailSignature201Response> create_email_signature(create_email_signature_request)

Create a signature

Stores a signature Zernio appends on any provider. Without `accountId` it is workspace-wide. `defaultFor` makes it what `appendSignature` uses for those sending addresses. Up to 50 per workspace, 100 KB of html, no scripts.

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
create_email_signature_request = Zernio::CreateEmailSignatureRequest.new({name: 'Sales', html: '<b>Ada Lovelace</b><br>Acme Sales'}) # CreateEmailSignatureRequest | 

begin
  # Create a signature
  result = api_instance.create_email_signature(create_email_signature_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->create_email_signature: #{e}"
end
```

#### Using the create_email_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailSignature201Response>, Integer, Hash)> create_email_signature_with_http_info(create_email_signature_request)

```ruby
begin
  # Create a signature
  data, status_code, headers = api_instance.create_email_signature_with_http_info(create_email_signature_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailSignature201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->create_email_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_email_signature_request** | [**CreateEmailSignatureRequest**](CreateEmailSignatureRequest.md) |  |  |

### Return type

[**CreateEmailSignature201Response**](CreateEmailSignature201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_imap_account

> <ImapConnectResult> create_imap_account(create_imap_account_request)

Connect an IMAP mailbox

Connects any IMAP/SMTP mailbox without the hosted page. Email and password are enough when discovery finds the servers. Every check runs before anything is stored; a failure answers 422 with the failing stage's code. An address already on the profile is updated in place and keeps its accountId.  Send `Accept: application/x-ndjson` to stream one line per check as it runs, ending with a `result` line that holds the status and this body.

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
create_imap_account_request = Zernio::CreateImapAccountRequest.new({profile_id: 'profile_id_example', email: 'email_example'}) # CreateImapAccountRequest | 

begin
  # Connect an IMAP mailbox
  result = api_instance.create_imap_account(create_imap_account_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->create_imap_account: #{e}"
end
```

#### Using the create_imap_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ImapConnectResult>, Integer, Hash)> create_imap_account_with_http_info(create_imap_account_request)

```ruby
begin
  # Connect an IMAP mailbox
  data, status_code, headers = api_instance.create_imap_account_with_http_info(create_imap_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ImapConnectResult>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->create_imap_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_imap_account_request** | [**CreateImapAccountRequest**](CreateImapAccountRequest.md) |  |  |

### Return type

[**ImapConnectResult**](ImapConnectResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## declare_email_send_as

> <DeclareEmailSendAs200Response> declare_email_send_as(declare_email_send_as_request)

Declare a send-as address

Adds an address the provider cannot list, such as an Outlook shared mailbox, so `from` accepts it. It starts `unverified` and becomes `accepted` after its first send. Gmail answers 400: add aliases in Gmail settings instead. An address already listed comes back with 200.

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
declare_email_send_as_request = Zernio::DeclareEmailSendAsRequest.new({account_id: 'account_id_example', email: 'support@contoso.com'}) # DeclareEmailSendAsRequest | 

begin
  # Declare a send-as address
  result = api_instance.declare_email_send_as(declare_email_send_as_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->declare_email_send_as: #{e}"
end
```

#### Using the declare_email_send_as_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeclareEmailSendAs200Response>, Integer, Hash)> declare_email_send_as_with_http_info(declare_email_send_as_request)

```ruby
begin
  # Declare a send-as address
  data, status_code, headers = api_instance.declare_email_send_as_with_http_info(declare_email_send_as_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeclareEmailSendAs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->declare_email_send_as_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **declare_email_send_as_request** | [**DeclareEmailSendAsRequest**](DeclareEmailSendAsRequest.md) |  |  |

### Return type

[**DeclareEmailSendAs200Response**](DeclareEmailSendAs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_email_draft

> <DeleteEmailDraft200Response> delete_email_draft(draft_id, account_id)

Delete a draft

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
draft_id = 'draft_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # Delete a draft
  result = api_instance.delete_email_draft(draft_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->delete_email_draft: #{e}"
end
```

#### Using the delete_email_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteEmailDraft200Response>, Integer, Hash)> delete_email_draft_with_http_info(draft_id, account_id)

```ruby
begin
  # Delete a draft
  data, status_code, headers = api_instance.delete_email_draft_with_http_info(draft_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteEmailDraft200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->delete_email_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draft_id** | **String** |  |  |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**DeleteEmailDraft200Response**](DeleteEmailDraft200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_email_label

> <DeleteEmailDraft200Response> delete_email_label(label_id, account_id)

Delete a label

Deletes a Gmail user label or an Outlook category, by id or name (URL-encode a slash). Gmail removes the label from every message. Outlook keeps a deleted category on messages that already carry it; 412 when the organization blocks the category list.

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
label_id = 'label_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # Delete a label
  result = api_instance.delete_email_label(label_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->delete_email_label: #{e}"
end
```

#### Using the delete_email_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteEmailDraft200Response>, Integer, Hash)> delete_email_label_with_http_info(label_id, account_id)

```ruby
begin
  # Delete a label
  data, status_code, headers = api_instance.delete_email_label_with_http_info(label_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteEmailDraft200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->delete_email_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **label_id** | **String** |  |  |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**DeleteEmailDraft200Response**](DeleteEmailDraft200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_email_send_as

> <DeleteEmailSendAs200Response> delete_email_send_as(email, account_id)

Remove a declared send-as address

Removes an address declared with `POST /v1/email/send-as`. Addresses the provider lists cannot be removed here. URL-encode the `@`.

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
email = 'email_example' # String | 
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # Remove a declared send-as address
  result = api_instance.delete_email_send_as(email, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->delete_email_send_as: #{e}"
end
```

#### Using the delete_email_send_as_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteEmailSendAs200Response>, Integer, Hash)> delete_email_send_as_with_http_info(email, account_id)

```ruby
begin
  # Remove a declared send-as address
  data, status_code, headers = api_instance.delete_email_send_as_with_http_info(email, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteEmailSendAs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->delete_email_send_as_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  |  |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**DeleteEmailSendAs200Response**](DeleteEmailSendAs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_email_signature

> <DeleteEmailDraft200Response> delete_email_signature(signature_id)

Delete a signature

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
signature_id = 'signature_id_example' # String | 

begin
  # Delete a signature
  result = api_instance.delete_email_signature(signature_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->delete_email_signature: #{e}"
end
```

#### Using the delete_email_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteEmailDraft200Response>, Integer, Hash)> delete_email_signature_with_http_info(signature_id)

```ruby
begin
  # Delete a signature
  data, status_code, headers = api_instance.delete_email_signature_with_http_info(signature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteEmailDraft200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->delete_email_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_id** | **String** |  |  |

### Return type

[**DeleteEmailDraft200Response**](DeleteEmailDraft200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## discover_imap_settings

> <DiscoverImapSettings200Response> discover_imap_settings(discover_imap_settings_request)

Find the mail settings for an address

The routing decision the hosted page makes, for your own connect form: Google or Microsoft OAuth, IMAP with the servers and the provider's app-password steps, or unsupported. Sources run in parallel inside 15 seconds: presets, MX, autoconfig, Thunderbird's ISPDB (sent the domain only), SRV records, then a probe.

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
discover_imap_settings_request = Zernio::DiscoverImapSettingsRequest.new({email: 'ana@acme.es'}) # DiscoverImapSettingsRequest | 

begin
  # Find the mail settings for an address
  result = api_instance.discover_imap_settings(discover_imap_settings_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->discover_imap_settings: #{e}"
end
```

#### Using the discover_imap_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DiscoverImapSettings200Response>, Integer, Hash)> discover_imap_settings_with_http_info(discover_imap_settings_request)

```ruby
begin
  # Find the mail settings for an address
  data, status_code, headers = api_instance.discover_imap_settings_with_http_info(discover_imap_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DiscoverImapSettings200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->discover_imap_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discover_imap_settings_request** | [**DiscoverImapSettingsRequest**](DiscoverImapSettingsRequest.md) |  |  |

### Return type

[**DiscoverImapSettings200Response**](DiscoverImapSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.
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
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |
| **message_id** | **String** |  |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## forward_email_message

> <SendEmailMessage201Response> forward_email_message(message_id, forward_email_request, opts)

Forward a message

Forwards the message with its attachments. Your `text` or `html` goes above the forwarded mail, and the subject defaults to \"Fwd: \" plus the original's. On Google the forward stays in the original thread; on Microsoft it goes through Outlook's own forward.  `includeAttachments: false` keeps only the original's inline images, and `excludeAttachmentIds` leaves out the ones you name. Everything together stays under 25 MB.  `trackOpens`, `trackLinks` and `trackReplies` work as on send. Same protection, caps and headers as sending. The response carries `forwardedFrom`, and `email.sent` fires with `source: forward`. 

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
forward_email_request = Zernio::ForwardEmailRequest.new({account_id: 'account_id_example', to: [Zernio::EmailAddress.new({email: 'email_example'})]}) # ForwardEmailRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Forward a message
  result = api_instance.forward_email_message(message_id, forward_email_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->forward_email_message: #{e}"
end
```

#### Using the forward_email_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage201Response>, Integer, Hash)> forward_email_message_with_http_info(message_id, forward_email_request, opts)

```ruby
begin
  # Forward a message
  data, status_code, headers = api_instance.forward_email_message_with_http_info(message_id, forward_email_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEmailMessage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->forward_email_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_id** | **String** |  |  |
| **forward_email_request** | [**ForwardEmailRequest**](ForwardEmailRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**SendEmailMessage201Response**](SendEmailMessage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_email_draft

> <CreateEmailDraft201Response> get_email_draft(draft_id, account_id)

Get a draft

The draft as it stands in the mailbox now, with its bodies. A draft deleted in the mail client answers 404.

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
draft_id = 'draft_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # Get a draft
  result = api_instance.get_email_draft(draft_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_draft: #{e}"
end
```

#### Using the get_email_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailDraft201Response>, Integer, Hash)> get_email_draft_with_http_info(draft_id, account_id)

```ruby
begin
  # Get a draft
  data, status_code, headers = api_instance.get_email_draft_with_http_info(draft_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailDraft201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draft_id** | **String** |  |  |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**CreateEmailDraft201Response**](CreateEmailDraft201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.
opts = {
  include_headers: true, # Boolean | Include the raw internet headers under `headers`.
  raw: true, # Boolean | Include the MIME source under `raw`.
  clean: true # Boolean | Add a `clean` object: the new text without quoted replies, footers or tracking pixels, the `signature` on its own (it also stays in `text`), and a parsed `forwarded` header. Ready to hand to an LLM.
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
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |
| **include_headers** | **Boolean** | Include the raw internet headers under &#x60;headers&#x60;. | [optional][default to false] |
| **raw** | **Boolean** | Include the MIME source under &#x60;raw&#x60;. | [optional][default to false] |
| **clean** | **Boolean** | Add a &#x60;clean&#x60; object: the new text without quoted replies, footers or tracking pixels, the &#x60;signature&#x60; on its own (it also stays in &#x60;text&#x60;), and a parsed &#x60;forwarded&#x60; header. Ready to hand to an LLM. | [optional][default to false] |

### Return type

[**SendEmailMessage201Response**](SendEmailMessage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_signature

> <CreateEmailSignature201Response> get_email_signature(signature_id)

Get a signature

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
signature_id = 'signature_id_example' # String | 

begin
  # Get a signature
  result = api_instance.get_email_signature(signature_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_signature: #{e}"
end
```

#### Using the get_email_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailSignature201Response>, Integer, Hash)> get_email_signature_with_http_info(signature_id)

```ruby
begin
  # Get a signature
  data, status_code, headers = api_instance.get_email_signature_with_http_info(signature_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailSignature201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_id** | **String** |  |  |

### Return type

[**CreateEmailSignature201Response**](CreateEmailSignature201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_thread

> <GetEmailThread200Response> get_email_thread(thread_id, account_id, opts)

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.
opts = {
  clean: true # Boolean | Add a `clean` object to every message: the text each one added, without quoted replies, footers or tracking pixels, plus its `signature` and a parsed `forwarded` header.
}

begin
  # Get an email thread with its messages
  result = api_instance.get_email_thread(thread_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_email_thread: #{e}"
end
```

#### Using the get_email_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetEmailThread200Response>, Integer, Hash)> get_email_thread_with_http_info(thread_id, account_id, opts)

```ruby
begin
  # Get an email thread with its messages
  data, status_code, headers = api_instance.get_email_thread_with_http_info(thread_id, account_id, opts)
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
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |
| **clean** | **Boolean** | Add a &#x60;clean&#x60; object to every message: the text each one added, without quoted replies, footers or tracking pixels, plus its &#x60;signature&#x60; and a parsed &#x60;forwarded&#x60; header. | [optional][default to false] |

### Return type

[**GetEmailThread200Response**](GetEmailThread200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scheduled_email

> <SendEmailMessage202Response> get_scheduled_email(schedule_id, account_id)

Get a scheduled email

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
schedule_id = 'schedule_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # Get a scheduled email
  result = api_instance.get_scheduled_email(schedule_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_scheduled_email: #{e}"
end
```

#### Using the get_scheduled_email_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage202Response>, Integer, Hash)> get_scheduled_email_with_http_info(schedule_id, account_id)

```ruby
begin
  # Get a scheduled email
  data, status_code, headers = api_instance.get_scheduled_email_with_http_info(schedule_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEmailMessage202Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->get_scheduled_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **schedule_id** | **String** |  |  |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**SendEmailMessage202Response**](SendEmailMessage202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## import_email_signatures

> <ListEmailSignatures200Response> import_email_signatures(account_id)

Import Gmail signatures

Copies each Gmail send-as signature into a Zernio signature on that account, the default for its address. Repeating it refreshes the copies. Outlook answers 400: Microsoft Graph does not expose signatures.

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # Import Gmail signatures
  result = api_instance.import_email_signatures(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->import_email_signatures: #{e}"
end
```

#### Using the import_email_signatures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailSignatures200Response>, Integer, Hash)> import_email_signatures_with_http_info(account_id)

```ruby
begin
  # Import Gmail signatures
  data, status_code, headers = api_instance.import_email_signatures_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailSignatures200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->import_email_signatures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**ListEmailSignatures200Response**](ListEmailSignatures200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_drafts

> <ListEmailDrafts200Response> list_email_drafts(account_id, opts)

List drafts

The mailbox's drafts, newest first, including drafts the user wrote in their mail app. Drafts in the trash are left out. Rows carry no bodies on Google; get a draft to read them.

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  # List drafts
  result = api_instance.list_email_drafts(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_drafts: #{e}"
end
```

#### Using the list_email_drafts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailDrafts200Response>, Integer, Hash)> list_email_drafts_with_http_info(account_id, opts)

```ruby
begin
  # List drafts
  data, status_code, headers = api_instance.list_email_drafts_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailDrafts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_drafts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** |  | [optional] |

### Return type

[**ListEmailDrafts200Response**](ListEmailDrafts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_folders

> <ListEmailFolders200Response> list_email_folders(account_id)

List mailbox folders

On Google, folders are Gmail labels (system labels carry `wellKnown`; `unreadCount` and `totalCount` are present only where Gmail reports them). There is no archive folder on Google; archived mail is listed with `folder=archive`.  When the provider does not answer, the last list read for the same account within the past 24 hours is returned with `stale: true`, `asOf` and an `X-Zernio-Stale-As-Of` header instead of a 502. 

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

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
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**ListEmailFolders200Response**](ListEmailFolders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_labels

> <ListEmailLabels200Response> list_email_labels(account_id)

List labels

Gmail labels, system and user, or the Outlook category list. If an organization blocks reading the Outlook list, it comes back empty and categories still apply to messages by name.

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # List labels
  result = api_instance.list_email_labels(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_labels: #{e}"
end
```

#### Using the list_email_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailLabels200Response>, Integer, Hash)> list_email_labels_with_http_info(account_id)

```ruby
begin
  # List labels
  data, status_code, headers = api_instance.list_email_labels_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailLabels200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_labels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**ListEmailLabels200Response**](ListEmailLabels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_messages

> <ListEmailMessages200Response> list_email_messages(account_id, opts)

List email messages

Same filters and envelope as `GET /v1/email/threads`, one row per message. Bodies are omitted; fetch a message to read `text` and `html`.  ### On Google  - List rows also omit `attachments` (Gmail's metadata pages carry headers only); `hasAttachment=true` still filters server-side. - `sortOrder=asc` reverses the fetched page. - `archive` means mail without the inbox, trash or spam labels. 

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.
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
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |
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


## list_email_send_as

> <ListEmailSendAs200Response> list_email_send_as(account_id)

List send-as addresses

The addresses a mailbox can send from, for `from`, each with the signature `appendSignature` would add. Gmail lists every alias itself. Outlook lists the mailbox address and its aliases, plus any address declared with `POST /v1/email/send-as`.

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # List send-as addresses
  result = api_instance.list_email_send_as(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_send_as: #{e}"
end
```

#### Using the list_email_send_as_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailSendAs200Response>, Integer, Hash)> list_email_send_as_with_http_info(account_id)

```ruby
begin
  # List send-as addresses
  data, status_code, headers = api_instance.list_email_send_as_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailSendAs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_send_as_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**ListEmailSendAs200Response**](ListEmailSendAs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_shared_mailboxes

> <ListEmailSharedMailboxes200Response> list_email_shared_mailboxes(account_id)

List shared mailboxes

The Outlook shared mailboxes added under this Microsoft account. Each one is an account: pass its `accountId` to any `/v1/email` endpoint.

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

begin
  # List shared mailboxes
  result = api_instance.list_email_shared_mailboxes(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_shared_mailboxes: #{e}"
end
```

#### Using the list_email_shared_mailboxes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailSharedMailboxes200Response>, Integer, Hash)> list_email_shared_mailboxes_with_http_info(account_id)

```ruby
begin
  # List shared mailboxes
  data, status_code, headers = api_instance.list_email_shared_mailboxes_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailSharedMailboxes200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_shared_mailboxes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**ListEmailSharedMailboxes200Response**](ListEmailSharedMailboxes200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_signatures

> <ListEmailSignatures200Response> list_email_signatures(opts)

List signatures

Zernio-stored signatures: workspace-wide ones plus those of the accounts you can see. With `accountId`, only workspace-wide ones and that account's.

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
opts = {
  account_id: 'account_id_example' # String | 
}

begin
  # List signatures
  result = api_instance.list_email_signatures(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_signatures: #{e}"
end
```

#### Using the list_email_signatures_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEmailSignatures200Response>, Integer, Hash)> list_email_signatures_with_http_info(opts)

```ruby
begin
  # List signatures
  data, status_code, headers = api_instance.list_email_signatures_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEmailSignatures200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_email_signatures_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |

### Return type

[**ListEmailSignatures200Response**](ListEmailSignatures200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_email_threads

> <ListEmailThreads200Response> list_email_threads(account_id, opts)

List email threads

Threads of a connected Google, Microsoft or IMAP mailbox, newest first. Every filter that the provider cannot apply server-side is applied to the fetched page instead and named in `meta.filteredClientSide`, so a filtered page can hold fewer than `limit` items while `pagination.hasMore` stays true.  On Google, folders are Gmail labels: `folder` takes a well-known name or a label id, `archive` means mail carrying none of the inbox, trash or spam labels, and `sortOrder=asc` reverses the fetched page (Gmail lists newest first only).  The account must have been connected with `scopes=email` (412 `account_scope_missing` otherwise). 

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.
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
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |
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


## list_scheduled_emails

> <ListScheduledEmails200Response> list_scheduled_emails(account_id, opts)

List scheduled emails

Sends made with `scheduledFor` on this mailbox, in send order. Sent, failed and cancelled ones stay listed; filter with `status`.

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.
opts = {
  status: 'scheduled', # String | 
  cursor: 'cursor_example', # String | `pagination.nextCursor` of the previous page.
  limit: 56 # Integer | 
}

begin
  # List scheduled emails
  result = api_instance.list_scheduled_emails(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_scheduled_emails: #{e}"
end
```

#### Using the list_scheduled_emails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListScheduledEmails200Response>, Integer, Hash)> list_scheduled_emails_with_http_info(account_id, opts)

```ruby
begin
  # List scheduled emails
  data, status_code, headers = api_instance.list_scheduled_emails_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListScheduledEmails200Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->list_scheduled_emails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |
| **status** | **String** |  | [optional] |
| **cursor** | **String** | &#x60;pagination.nextCursor&#x60; of the previous page. | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**ListScheduledEmails200Response**](ListScheduledEmails200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reply_email_message

> <SendEmailMessage201Response> reply_email_message(message_id, reply_email_message_request, opts)

Reply to a message

Replies inside the provider's thread: the provider builds the quoted original and threading headers, your `html` or `text` goes above the quote. `to`, `cc`, `bcc`, `replyTo`, `subject`, `headers` and `attachments` are honoured.  `scheduledFor` schedules the reply (202) and `trackOpens`, `trackLinks` and `trackReplies` track it, as on send; `holdAsDraft` holds it as a reply draft in the thread until then. Same protection, caps and headers as sending. 

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
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Reply to a message
  result = api_instance.reply_email_message(message_id, reply_email_message_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->reply_email_message: #{e}"
end
```

#### Using the reply_email_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage201Response>, Integer, Hash)> reply_email_message_with_http_info(message_id, reply_email_message_request, opts)

```ruby
begin
  # Reply to a message
  data, status_code, headers = api_instance.reply_email_message_with_http_info(message_id, reply_email_message_request, opts)
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**SendEmailMessage201Response**](SendEmailMessage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_email_draft

> <SendEmailMessage201Response> send_email_draft(draft_id, send_email_draft_request, opts)

Send a draft

Sends the draft as it stands in the mailbox now, edits made in their mail app included, and returns the sent message with `draftId`. The draft needs at least one recipient. A draft the user deleted or already sent answers 404 `draft_not_found`.  With `If-Match` it goes out only if it is still the version the approver saw (412 `draft_conflict` otherwise). If the user removed the open pixel or rewrote links, tracking is put back before it is sent. Fires `email.sent` with `source: draft`.  Tracking set when the draft was created applies, and its `metadata` comes back on the sent message. Same protection, caps and headers as sending. 

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
draft_id = 'draft_id_example' # String | 
send_email_draft_request = Zernio::SendEmailDraftRequest.new({account_id: 'account_id_example'}) # SendEmailDraftRequest | 
opts = {
  if_match: 'if_match_example', # String | The draft `version` (also its `ETag`). The request applies only if the draft is still that version; otherwise 412 `draft_conflict` with the current draft in `details.draft`.
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Send a draft
  result = api_instance.send_email_draft(draft_id, send_email_draft_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->send_email_draft: #{e}"
end
```

#### Using the send_email_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage201Response>, Integer, Hash)> send_email_draft_with_http_info(draft_id, send_email_draft_request, opts)

```ruby
begin
  # Send a draft
  data, status_code, headers = api_instance.send_email_draft_with_http_info(draft_id, send_email_draft_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendEmailMessage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->send_email_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draft_id** | **String** |  |  |
| **send_email_draft_request** | [**SendEmailDraftRequest**](SendEmailDraftRequest.md) |  |  |
| **if_match** | **String** | The draft &#x60;version&#x60; (also its &#x60;ETag&#x60;). The request applies only if the draft is still that version; otherwise 412 &#x60;draft_conflict&#x60; with the current draft in &#x60;details.draft&#x60;. | [optional] |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

### Return type

[**SendEmailMessage201Response**](SendEmailMessage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_email_message

> <SendEmailMessage201Response> send_email_message(send_email_request, opts)

Send an email

Sends from the connected mailbox and returns the stored sent copy.  The message is mirrored into the inbox (`message.sent` fires once) and counted against the mailbox's daily cap. The cap is reported in the `X-Zernio-Send-Limit`, `X-Zernio-Send-Remaining` and `X-Zernio-Send-Reset` response headers, plus `X-Zernio-Send-Doubles-At` while the cap can still double.  ### Sending limits  These mailboxes are for one-to-one mail, not bulk sends. Protection on every mailbox:  - Daily cap: Microsoft 1,000; Google Workspace 500; Gmail consumer 200; IMAP 200. Reaching it answers 429 `email_send_cap_reached` with `details.cap`. - The cap of a Microsoft, Google Workspace or Gmail mailbox doubles once (2,000, 1,000 and 400) after 14 days with a successful send, counted since its last spam signal and never past the provider's own limit. Days need not be consecutive. - A spam signal starts the count over and returns the cap to its base. Signals: a same-body burst, a send refused over the mailbox's sending quota, a spam or blocklist bounce, or 10 hard bounces within an hour. Without one, a doubled cap stays doubled. - Higher limits are available on request for established senders. - The same body reaching more than 50 distinct recipients within an hour pauses the mailbox with an escalating cooldown (429 `rate_limited`, `account.rate_limited` webhook).  ### Scheduling  With `scheduledFor` the request answers 202 with a `ScheduledEmail` instead of sending. The account and payment method are checked now; the caps, cooldowns and the send itself run at `scheduledFor`. A send that fails then fires `email.send_failed`. List, read and cancel scheduled sends under `/v1/email/messages/scheduled`.  ### Tracking  - `trackOpens` adds a 1x1 image to the html and fires `email.opened`. - `trackLinks` rewrites every http(s) link in the html through a Zernio redirect and fires `email.link_clicked`. - `trackReplies` fires `email.thread_replied` when someone else writes in the thread.  Tracking costs nothing extra. Opens are approximate: image proxies prefetch and image blocking hides them.  ### Other errors  - 402: Gmail sends need a payment method on the workspace. Reading, calendar and files do not. - 400: `holdAsDraft` without `scheduledFor`; `trackOpens` or `trackLinks` without `html`; `scheduledFor` outside 1 minute to 30 days. 

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
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago. 
}

begin
  # Send an email
  result = api_instance.send_email_message(send_email_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->send_email_message: #{e}"
end
```

#### Using the send_email_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendEmailMessage201Response>, Integer, Hash)> send_email_message_with_http_info(send_email_request, opts)

```ruby
begin
  # Send an email
  data, status_code, headers = api_instance.send_email_message_with_http_info(send_email_request, opts)
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
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  On the Ads create, boost and duplicate endpoints, a same-body retry runs again once the cut-off request started more than 15 minutes ago.  | [optional] |

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
account_id = 'account_id_example' # String | The connected Google, Microsoft or IMAP account.

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
| **account_id** | **String** | The connected Google, Microsoft or IMAP account. |  |

### Return type

[**TrashEmailMessage200Response**](TrashEmailMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_email_draft

> <CreateEmailDraft201Response> update_email_draft(draft_id, update_email_draft_request, opts)

Update a draft

Changes the fields you send and keeps the rest. A reply draft stays in its thread, and a new body on a reply or forward draft goes above the quoted original. With `If-Match`, a draft someone edited since answers 412 `draft_conflict` with the current draft.

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
draft_id = 'draft_id_example' # String | 
update_email_draft_request = Zernio::UpdateEmailDraftRequest.new({account_id: 'account_id_example'}) # UpdateEmailDraftRequest | 
opts = {
  if_match: 'if_match_example' # String | The draft `version` (also its `ETag`). The request applies only if the draft is still that version; otherwise 412 `draft_conflict` with the current draft in `details.draft`.
}

begin
  # Update a draft
  result = api_instance.update_email_draft(draft_id, update_email_draft_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->update_email_draft: #{e}"
end
```

#### Using the update_email_draft_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailDraft201Response>, Integer, Hash)> update_email_draft_with_http_info(draft_id, update_email_draft_request, opts)

```ruby
begin
  # Update a draft
  data, status_code, headers = api_instance.update_email_draft_with_http_info(draft_id, update_email_draft_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailDraft201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->update_email_draft_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **draft_id** | **String** |  |  |
| **update_email_draft_request** | [**UpdateEmailDraftRequest**](UpdateEmailDraftRequest.md) |  |  |
| **if_match** | **String** | The draft &#x60;version&#x60; (also its &#x60;ETag&#x60;). The request applies only if the draft is still that version; otherwise 412 &#x60;draft_conflict&#x60; with the current draft in &#x60;details.draft&#x60;. | [optional] |

### Return type

[**CreateEmailDraft201Response**](CreateEmailDraft201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_email_message

> <SendEmailMessage201Response> update_email_message(message_id, email_message_patch)

Mark read or starred, label, or move a message

`addLabels` and `removeLabels` tag the message without moving it. `folder` moves it: on Google a move files the mail in one place, so it drops the inbox, trash, spam and user labels it held; `archive` removes the inbox label.

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
  # Mark read or starred, label, or move a message
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
  # Mark read or starred, label, or move a message
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


## update_email_signature

> <CreateEmailSignature201Response> update_email_signature(signature_id, update_email_signature_request)

Update a signature

Changes the name, html, text or `defaultFor`. Taking an address in `defaultFor` removes it from the other signatures of the same scope.

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
signature_id = 'signature_id_example' # String | 
update_email_signature_request = Zernio::UpdateEmailSignatureRequest.new # UpdateEmailSignatureRequest | 

begin
  # Update a signature
  result = api_instance.update_email_signature(signature_id, update_email_signature_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->update_email_signature: #{e}"
end
```

#### Using the update_email_signature_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEmailSignature201Response>, Integer, Hash)> update_email_signature_with_http_info(signature_id, update_email_signature_request)

```ruby
begin
  # Update a signature
  data, status_code, headers = api_instance.update_email_signature_with_http_info(signature_id, update_email_signature_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEmailSignature201Response>
rescue Zernio::ApiError => e
  puts "Error when calling EmailApi->update_email_signature_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **signature_id** | **String** |  |  |
| **update_email_signature_request** | [**UpdateEmailSignatureRequest**](UpdateEmailSignatureRequest.md) |  |  |

### Return type

[**CreateEmailSignature201Response**](CreateEmailSignature201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_email_thread

> <UpdateEmailThread200Response> update_email_thread(thread_id, email_message_patch)

Update every message in a thread

Applies `unread`, `starred`, `addLabels`, `removeLabels` or a `folder` move to each message of the thread.

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

