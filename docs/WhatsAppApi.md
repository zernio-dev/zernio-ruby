# Zernio::WhatsAppApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_whats_app_group_participants**](WhatsAppApi.md#add_whats_app_group_participants) | **POST** /v1/whatsapp/wa-groups/{groupId}/participants | Add participants |
| [**approve_whats_app_group_join_requests**](WhatsAppApi.md#approve_whats_app_group_join_requests) | **POST** /v1/whatsapp/wa-groups/{groupId}/join-requests | Approve join requests |
| [**block_whats_app_users**](WhatsAppApi.md#block_whats_app_users) | **POST** /v1/whatsapp/block-users | Block users |
| [**create_whats_app_dataset**](WhatsAppApi.md#create_whats_app_dataset) | **POST** /v1/whatsapp/dataset | Provision CTWA dataset |
| [**create_whats_app_group_chat**](WhatsAppApi.md#create_whats_app_group_chat) | **POST** /v1/whatsapp/wa-groups | Create group |
| [**create_whats_app_group_invite_link**](WhatsAppApi.md#create_whats_app_group_invite_link) | **POST** /v1/whatsapp/wa-groups/{groupId}/invite-link | Create invite link |
| [**create_whats_app_template**](WhatsAppApi.md#create_whats_app_template) | **POST** /v1/whatsapp/templates | Create template |
| [**delete_whats_app_group_chat**](WhatsAppApi.md#delete_whats_app_group_chat) | **DELETE** /v1/whatsapp/wa-groups/{groupId} | Delete group |
| [**delete_whats_app_template**](WhatsAppApi.md#delete_whats_app_template) | **DELETE** /v1/whatsapp/templates/{templateName} | Delete template |
| [**get_whats_app_block_status**](WhatsAppApi.md#get_whats_app_block_status) | **GET** /v1/whatsapp/block-users/status | Check if a user is blocked |
| [**get_whats_app_blocked_users**](WhatsAppApi.md#get_whats_app_blocked_users) | **GET** /v1/whatsapp/block-users | List blocked users |
| [**get_whats_app_business_profile**](WhatsAppApi.md#get_whats_app_business_profile) | **GET** /v1/whatsapp/business-profile | Get business profile |
| [**get_whats_app_dataset**](WhatsAppApi.md#get_whats_app_dataset) | **GET** /v1/whatsapp/dataset | Get CTWA conversions dataset |
| [**get_whats_app_display_name**](WhatsAppApi.md#get_whats_app_display_name) | **GET** /v1/whatsapp/business-profile/display-name | Get display name status |
| [**get_whats_app_group_chat**](WhatsAppApi.md#get_whats_app_group_chat) | **GET** /v1/whatsapp/wa-groups/{groupId} | Get group info |
| [**get_whats_app_template**](WhatsAppApi.md#get_whats_app_template) | **GET** /v1/whatsapp/templates/{templateName} | Get template |
| [**get_whats_app_templates**](WhatsAppApi.md#get_whats_app_templates) | **GET** /v1/whatsapp/templates | List templates |
| [**list_whats_app_conversions**](WhatsAppApi.md#list_whats_app_conversions) | **GET** /v1/whatsapp/conversions | List conversion events |
| [**list_whats_app_group_chats**](WhatsAppApi.md#list_whats_app_group_chats) | **GET** /v1/whatsapp/wa-groups | List active groups |
| [**list_whats_app_group_join_requests**](WhatsAppApi.md#list_whats_app_group_join_requests) | **GET** /v1/whatsapp/wa-groups/{groupId}/join-requests | List join requests |
| [**reject_whats_app_group_join_requests**](WhatsAppApi.md#reject_whats_app_group_join_requests) | **DELETE** /v1/whatsapp/wa-groups/{groupId}/join-requests | Reject join requests |
| [**remove_whats_app_group_participants**](WhatsAppApi.md#remove_whats_app_group_participants) | **DELETE** /v1/whatsapp/wa-groups/{groupId}/participants | Remove participants |
| [**send_whats_app_conversion**](WhatsAppApi.md#send_whats_app_conversion) | **POST** /v1/whatsapp/conversions | Send WhatsApp conversion event |
| [**unblock_whats_app_users**](WhatsAppApi.md#unblock_whats_app_users) | **DELETE** /v1/whatsapp/block-users | Unblock users |
| [**update_whats_app_business_profile**](WhatsAppApi.md#update_whats_app_business_profile) | **POST** /v1/whatsapp/business-profile | Update business profile |
| [**update_whats_app_display_name**](WhatsAppApi.md#update_whats_app_display_name) | **POST** /v1/whatsapp/business-profile/display-name | Request display name change |
| [**update_whats_app_group_chat**](WhatsAppApi.md#update_whats_app_group_chat) | **POST** /v1/whatsapp/wa-groups/{groupId} | Update group settings |
| [**update_whats_app_template**](WhatsAppApi.md#update_whats_app_template) | **PATCH** /v1/whatsapp/templates/{templateName} | Update template |
| [**upload_whats_app_profile_photo**](WhatsAppApi.md#upload_whats_app_profile_photo) | **POST** /v1/whatsapp/business-profile/photo | Upload profile picture |


## add_whats_app_group_participants

> <UnpublishPost200Response> add_whats_app_group_participants(group_id, account_id, add_whats_app_group_participants_request)

Add participants

Add participants to a WhatsApp group. Maximum 8 participants per request.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID
add_whats_app_group_participants_request = Zernio::AddWhatsAppGroupParticipantsRequest.new({phone_numbers: ['phone_numbers_example']}) # AddWhatsAppGroupParticipantsRequest | 

begin
  # Add participants
  result = api_instance.add_whats_app_group_participants(group_id, account_id, add_whats_app_group_participants_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->add_whats_app_group_participants: #{e}"
end
```

#### Using the add_whats_app_group_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> add_whats_app_group_participants_with_http_info(group_id, account_id, add_whats_app_group_participants_request)

```ruby
begin
  # Add participants
  data, status_code, headers = api_instance.add_whats_app_group_participants_with_http_info(group_id, account_id, add_whats_app_group_participants_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->add_whats_app_group_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |
| **add_whats_app_group_participants_request** | [**AddWhatsAppGroupParticipantsRequest**](AddWhatsAppGroupParticipantsRequest.md) |  |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## approve_whats_app_group_join_requests

> <UnpublishPost200Response> approve_whats_app_group_join_requests(group_id, account_id, approve_whats_app_group_join_requests_request)

Approve join requests

Approve pending join requests for a WhatsApp group.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID
approve_whats_app_group_join_requests_request = Zernio::ApproveWhatsAppGroupJoinRequestsRequest.new({phone_numbers: ['phone_numbers_example']}) # ApproveWhatsAppGroupJoinRequestsRequest | 

begin
  # Approve join requests
  result = api_instance.approve_whats_app_group_join_requests(group_id, account_id, approve_whats_app_group_join_requests_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->approve_whats_app_group_join_requests: #{e}"
end
```

#### Using the approve_whats_app_group_join_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> approve_whats_app_group_join_requests_with_http_info(group_id, account_id, approve_whats_app_group_join_requests_request)

```ruby
begin
  # Approve join requests
  data, status_code, headers = api_instance.approve_whats_app_group_join_requests_with_http_info(group_id, account_id, approve_whats_app_group_join_requests_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->approve_whats_app_group_join_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |
| **approve_whats_app_group_join_requests_request** | [**ApproveWhatsAppGroupJoinRequestsRequest**](ApproveWhatsAppGroupJoinRequestsRequest.md) |  |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## block_whats_app_users

> <BlockWhatsAppUsers200Response> block_whats_app_users(block_whats_app_users_request)

Block users

Block one or more WhatsApp users on this number. Blocked users cannot message your number or see that you are online, and your sends to them return an error.  Meta constraints, surfaced per-user in `failed` (the request itself still succeeds for the rest of the batch): - Only users who messaged your business within the last 24 hours can be   blocked (failures outside the window report \"Re-engagement required\"). - Up to 1,000 users per request; the blocklist caps at 64,000. - Other WhatsApp Business accounts cannot be blocked. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
block_whats_app_users_request = Zernio::BlockWhatsAppUsersRequest.new({account_id: 'account_id_example', users: ['users_example']}) # BlockWhatsAppUsersRequest | 

begin
  # Block users
  result = api_instance.block_whats_app_users(block_whats_app_users_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->block_whats_app_users: #{e}"
end
```

#### Using the block_whats_app_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BlockWhatsAppUsers200Response>, Integer, Hash)> block_whats_app_users_with_http_info(block_whats_app_users_request)

```ruby
begin
  # Block users
  data, status_code, headers = api_instance.block_whats_app_users_with_http_info(block_whats_app_users_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BlockWhatsAppUsers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->block_whats_app_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **block_whats_app_users_request** | [**BlockWhatsAppUsersRequest**](BlockWhatsAppUsersRequest.md) |  |  |

### Return type

[**BlockWhatsAppUsers200Response**](BlockWhatsAppUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_whats_app_dataset

> <CreateWhatsAppDataset200Response> create_whats_app_dataset(create_whats_app_dataset_request)

Provision CTWA dataset

Creates (or fetches, if one already exists) the Meta dataset that Click-to-WhatsApp ad events are reported against via the Conversions API, and persists its ID on the account as `metadata.metaCapiDatasetId`.  The call is GET-first idempotent — a WABA can only own one CTWA dataset, so a second call after a successful provision is a safe no-op that returns the same ID with `created: false`.  Requires the connected WhatsApp account's token to carry the `whatsapp_business_manage_events` permission. If the permission is missing the endpoint returns 422 with a message asking the user to reconnect the account. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
create_whats_app_dataset_request = Zernio::CreateWhatsAppDatasetRequest.new({account_id: 'account_id_example'}) # CreateWhatsAppDatasetRequest | 

begin
  # Provision CTWA dataset
  result = api_instance.create_whats_app_dataset(create_whats_app_dataset_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->create_whats_app_dataset: #{e}"
end
```

#### Using the create_whats_app_dataset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWhatsAppDataset200Response>, Integer, Hash)> create_whats_app_dataset_with_http_info(create_whats_app_dataset_request)

```ruby
begin
  # Provision CTWA dataset
  data, status_code, headers = api_instance.create_whats_app_dataset_with_http_info(create_whats_app_dataset_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWhatsAppDataset200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->create_whats_app_dataset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_whats_app_dataset_request** | [**CreateWhatsAppDatasetRequest**](CreateWhatsAppDatasetRequest.md) |  |  |

### Return type

[**CreateWhatsAppDataset200Response**](CreateWhatsAppDataset200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_whats_app_group_chat

> <CreateWhatsAppGroupChat201Response> create_whats_app_group_chat(create_whats_app_group_chat_request)

Create group

Create a new WhatsApp group chat. Returns the group ID and optionally an invite link.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
create_whats_app_group_chat_request = Zernio::CreateWhatsAppGroupChatRequest.new({account_id: 'account_id_example', subject: 'subject_example'}) # CreateWhatsAppGroupChatRequest | 

begin
  # Create group
  result = api_instance.create_whats_app_group_chat(create_whats_app_group_chat_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->create_whats_app_group_chat: #{e}"
end
```

#### Using the create_whats_app_group_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWhatsAppGroupChat201Response>, Integer, Hash)> create_whats_app_group_chat_with_http_info(create_whats_app_group_chat_request)

```ruby
begin
  # Create group
  data, status_code, headers = api_instance.create_whats_app_group_chat_with_http_info(create_whats_app_group_chat_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWhatsAppGroupChat201Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->create_whats_app_group_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_whats_app_group_chat_request** | [**CreateWhatsAppGroupChatRequest**](CreateWhatsAppGroupChatRequest.md) |  |  |

### Return type

[**CreateWhatsAppGroupChat201Response**](CreateWhatsAppGroupChat201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_whats_app_group_invite_link

> <CreateWhatsAppGroupInviteLink200Response> create_whats_app_group_invite_link(group_id, account_id)

Create invite link

Create a new invite link for a WhatsApp group. The previous link is revoked.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Create invite link
  result = api_instance.create_whats_app_group_invite_link(group_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->create_whats_app_group_invite_link: #{e}"
end
```

#### Using the create_whats_app_group_invite_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWhatsAppGroupInviteLink200Response>, Integer, Hash)> create_whats_app_group_invite_link_with_http_info(group_id, account_id)

```ruby
begin
  # Create invite link
  data, status_code, headers = api_instance.create_whats_app_group_invite_link_with_http_info(group_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWhatsAppGroupInviteLink200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->create_whats_app_group_invite_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**CreateWhatsAppGroupInviteLink200Response**](CreateWhatsAppGroupInviteLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_whats_app_template

> <CreateWhatsAppTemplate200Response> create_whats_app_template(create_whats_app_template_request)

Create template

Create a new message template. Supports two modes:  Custom template: Provide components with your own content. Submitted to Meta for review (can take up to 24h).  Library template: Provide library_template_name instead of components to use a pre-built template from Meta's template library. Library templates are pre-approved (no review wait). You can optionally customize parameters and buttons via library_template_body_inputs and library_template_button_inputs.  Browse available library templates at: https://business.facebook.com/wa/manage/message-templates/ 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
create_whats_app_template_request = Zernio::CreateWhatsAppTemplateRequest.new({account_id: 'account_id_example', name: 'name_example', category: 'AUTHENTICATION', language: 'language_example'}) # CreateWhatsAppTemplateRequest | 

begin
  # Create template
  result = api_instance.create_whats_app_template(create_whats_app_template_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->create_whats_app_template: #{e}"
end
```

#### Using the create_whats_app_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWhatsAppTemplate200Response>, Integer, Hash)> create_whats_app_template_with_http_info(create_whats_app_template_request)

```ruby
begin
  # Create template
  data, status_code, headers = api_instance.create_whats_app_template_with_http_info(create_whats_app_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWhatsAppTemplate200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->create_whats_app_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_whats_app_template_request** | [**CreateWhatsAppTemplateRequest**](CreateWhatsAppTemplateRequest.md) |  |  |

### Return type

[**CreateWhatsAppTemplate200Response**](CreateWhatsAppTemplate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_whats_app_group_chat

> <UnpublishPost200Response> delete_whats_app_group_chat(group_id, account_id)

Delete group

Delete a WhatsApp group and remove all participants.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Delete group
  result = api_instance.delete_whats_app_group_chat(group_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->delete_whats_app_group_chat: #{e}"
end
```

#### Using the delete_whats_app_group_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> delete_whats_app_group_chat_with_http_info(group_id, account_id)

```ruby
begin
  # Delete group
  data, status_code, headers = api_instance.delete_whats_app_group_chat_with_http_info(group_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->delete_whats_app_group_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_whats_app_template

> <UnpublishPost200Response> delete_whats_app_template(template_name, account_id)

Delete template

Permanently delete a message template by name. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
template_name = 'template_name_example' # String | Template name
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Delete template
  result = api_instance.delete_whats_app_template(template_name, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->delete_whats_app_template: #{e}"
end
```

#### Using the delete_whats_app_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> delete_whats_app_template_with_http_info(template_name, account_id)

```ruby
begin
  # Delete template
  data, status_code, headers = api_instance.delete_whats_app_template_with_http_info(template_name, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->delete_whats_app_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_name** | **String** | Template name |  |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_block_status

> <GetWhatsAppBlockStatus200Response> get_whats_app_block_status(account_id, user)

Check if a user is blocked

Definitive blocked-state lookup for a single contact. Meta exposes no membership endpoint, so this reads Zernio's blocklist mirror (kept in sync by the block/unblock endpoints; the first call per account backfills the mirror from Meta's full list). Constant-time regardless of blocklist size. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | 
user = 'user_example' # String | Consumer wa_id or E.164 phone (leading + optional)

begin
  # Check if a user is blocked
  result = api_instance.get_whats_app_block_status(account_id, user)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_block_status: #{e}"
end
```

#### Using the get_whats_app_block_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppBlockStatus200Response>, Integer, Hash)> get_whats_app_block_status_with_http_info(account_id, user)

```ruby
begin
  # Check if a user is blocked
  data, status_code, headers = api_instance.get_whats_app_block_status_with_http_info(account_id, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppBlockStatus200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_block_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **user** | **String** | Consumer wa_id or E.164 phone (leading + optional) |  |

### Return type

[**GetWhatsAppBlockStatus200Response**](GetWhatsAppBlockStatus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_blocked_users

> <GetWhatsAppBlockedUsers200Response> get_whats_app_blocked_users(account_id, opts)

List blocked users

List the WhatsApp users blocked on this number. Cursor-paginated; pass `nextCursor` back as `after` to fetch the next page. The blocklist holds up to 64,000 users. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID
opts = {
  limit: 56, # Integer | Page size.
  after: 'after_example' # String | Cursor from a previous response's `nextCursor`.
}

begin
  # List blocked users
  result = api_instance.get_whats_app_blocked_users(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_blocked_users: #{e}"
end
```

#### Using the get_whats_app_blocked_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppBlockedUsers200Response>, Integer, Hash)> get_whats_app_blocked_users_with_http_info(account_id, opts)

```ruby
begin
  # List blocked users
  data, status_code, headers = api_instance.get_whats_app_blocked_users_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppBlockedUsers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_blocked_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **limit** | **Integer** | Page size. | [optional] |
| **after** | **String** | Cursor from a previous response&#39;s &#x60;nextCursor&#x60;. | [optional] |

### Return type

[**GetWhatsAppBlockedUsers200Response**](GetWhatsAppBlockedUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_business_profile

> <GetWhatsAppBusinessProfile200Response> get_whats_app_business_profile(account_id)

Get business profile

Retrieve the WhatsApp Business profile for the account (about, address, description, email, websites, etc.). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get business profile
  result = api_instance.get_whats_app_business_profile(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_business_profile: #{e}"
end
```

#### Using the get_whats_app_business_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppBusinessProfile200Response>, Integer, Hash)> get_whats_app_business_profile_with_http_info(account_id)

```ruby
begin
  # Get business profile
  data, status_code, headers = api_instance.get_whats_app_business_profile_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppBusinessProfile200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_business_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppBusinessProfile200Response**](GetWhatsAppBusinessProfile200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_dataset

> <GetWhatsAppDataset200Response> get_whats_app_dataset(account_id)

Get CTWA conversions dataset

Returns the Meta Click-to-WhatsApp conversions dataset currently linked to the WhatsApp account, if one has been provisioned. Reads only from the stored `metadata.metaCapiDatasetId` — never hits Meta, never creates a dataset. Use this to detect whether `POST /v1/whatsapp/conversions` is configured for an account. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get CTWA conversions dataset
  result = api_instance.get_whats_app_dataset(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_dataset: #{e}"
end
```

#### Using the get_whats_app_dataset_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppDataset200Response>, Integer, Hash)> get_whats_app_dataset_with_http_info(account_id)

```ruby
begin
  # Get CTWA conversions dataset
  data, status_code, headers = api_instance.get_whats_app_dataset_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppDataset200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_dataset_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppDataset200Response**](GetWhatsAppDataset200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_display_name

> <GetWhatsAppDisplayName200Response> get_whats_app_display_name(account_id)

Get display name status

Fetch the current display name and its Meta review status for a WhatsApp Business account. Display name changes require Meta approval and can take 1-3 business days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get display name status
  result = api_instance.get_whats_app_display_name(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_display_name: #{e}"
end
```

#### Using the get_whats_app_display_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppDisplayName200Response>, Integer, Hash)> get_whats_app_display_name_with_http_info(account_id)

```ruby
begin
  # Get display name status
  data, status_code, headers = api_instance.get_whats_app_display_name_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppDisplayName200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_display_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppDisplayName200Response**](GetWhatsAppDisplayName200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_group_chat

> <GetWhatsAppGroupChat200Response> get_whats_app_group_chat(group_id, account_id)

Get group info

Retrieve metadata about a WhatsApp group including subject, description, participants, and settings.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get group info
  result = api_instance.get_whats_app_group_chat(group_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_group_chat: #{e}"
end
```

#### Using the get_whats_app_group_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppGroupChat200Response>, Integer, Hash)> get_whats_app_group_chat_with_http_info(group_id, account_id)

```ruby
begin
  # Get group info
  data, status_code, headers = api_instance.get_whats_app_group_chat_with_http_info(group_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppGroupChat200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_group_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppGroupChat200Response**](GetWhatsAppGroupChat200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_template

> <GetWhatsAppTemplate200Response> get_whats_app_template(template_name, account_id)

Get template

Retrieve a single message template by name. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
template_name = 'template_name_example' # String | Template name
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get template
  result = api_instance.get_whats_app_template(template_name, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_template: #{e}"
end
```

#### Using the get_whats_app_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppTemplate200Response>, Integer, Hash)> get_whats_app_template_with_http_info(template_name, account_id)

```ruby
begin
  # Get template
  data, status_code, headers = api_instance.get_whats_app_template_with_http_info(template_name, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppTemplate200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_name** | **String** | Template name |  |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppTemplate200Response**](GetWhatsAppTemplate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_templates

> <GetWhatsAppTemplates200Response> get_whats_app_templates(account_id)

List templates

List all message templates for the WhatsApp Business Account (WABA) associated with the given account. Templates are fetched directly from the WhatsApp Cloud API. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # List templates
  result = api_instance.get_whats_app_templates(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_templates: #{e}"
end
```

#### Using the get_whats_app_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppTemplates200Response>, Integer, Hash)> get_whats_app_templates_with_http_info(account_id)

```ruby
begin
  # List templates
  data, status_code, headers = api_instance.get_whats_app_templates_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppTemplates200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->get_whats_app_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppTemplates200Response**](GetWhatsAppTemplates200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_conversions

> <ListWhatsAppConversions200Response> list_whats_app_conversions(account_id, opts)

List conversion events

Returns the most recent conversion events sent through `POST /v1/whatsapp/conversions` for the given WhatsApp account. Sourced from delivery logs (Axiom `late` dataset), so the visible window is bounded by log retention (about 30 days). Useful for rendering a \"recent activity\" panel on the conversions setup tab without standing up a parallel persistence layer.  Per-event payload mirrors the structured log we write on every successful send: `eventName`, `conversationId`, `eventsReceived`, `eventsFailed`, `traceId`, `durationMs`, and the wall-clock `timestamp`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID
opts = {
  limit: 56 # Integer | Max events to return (1-200, default 50).
}

begin
  # List conversion events
  result = api_instance.list_whats_app_conversions(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->list_whats_app_conversions: #{e}"
end
```

#### Using the list_whats_app_conversions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppConversions200Response>, Integer, Hash)> list_whats_app_conversions_with_http_info(account_id, opts)

```ruby
begin
  # List conversion events
  data, status_code, headers = api_instance.list_whats_app_conversions_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppConversions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->list_whats_app_conversions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **limit** | **Integer** | Max events to return (1-200, default 50). | [optional][default to 50] |

### Return type

[**ListWhatsAppConversions200Response**](ListWhatsAppConversions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_group_chats

> <ListWhatsAppGroupChats200Response> list_whats_app_group_chats(account_id, opts)

List active groups

List active WhatsApp group chats for a business phone number. These are actual WhatsApp group conversations on the platform.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID
opts = {
  limit: 56, # Integer | Max groups to return
  after: 'after_example' # String | Pagination cursor
}

begin
  # List active groups
  result = api_instance.list_whats_app_group_chats(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->list_whats_app_group_chats: #{e}"
end
```

#### Using the list_whats_app_group_chats_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppGroupChats200Response>, Integer, Hash)> list_whats_app_group_chats_with_http_info(account_id, opts)

```ruby
begin
  # List active groups
  data, status_code, headers = api_instance.list_whats_app_group_chats_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppGroupChats200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->list_whats_app_group_chats_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **limit** | **Integer** | Max groups to return | [optional][default to 25] |
| **after** | **String** | Pagination cursor | [optional] |

### Return type

[**ListWhatsAppGroupChats200Response**](ListWhatsAppGroupChats200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_group_join_requests

> <ListWhatsAppGroupJoinRequests200Response> list_whats_app_group_join_requests(group_id, account_id)

List join requests

List pending join requests for a WhatsApp group (only for groups with approval_required mode).  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # List join requests
  result = api_instance.list_whats_app_group_join_requests(group_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->list_whats_app_group_join_requests: #{e}"
end
```

#### Using the list_whats_app_group_join_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppGroupJoinRequests200Response>, Integer, Hash)> list_whats_app_group_join_requests_with_http_info(group_id, account_id)

```ruby
begin
  # List join requests
  data, status_code, headers = api_instance.list_whats_app_group_join_requests_with_http_info(group_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppGroupJoinRequests200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->list_whats_app_group_join_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**ListWhatsAppGroupJoinRequests200Response**](ListWhatsAppGroupJoinRequests200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reject_whats_app_group_join_requests

> <UnpublishPost200Response> reject_whats_app_group_join_requests(group_id, account_id, reject_whats_app_group_join_requests_request)

Reject join requests

Reject pending join requests for a WhatsApp group.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID
reject_whats_app_group_join_requests_request = Zernio::RejectWhatsAppGroupJoinRequestsRequest.new({phone_numbers: ['phone_numbers_example']}) # RejectWhatsAppGroupJoinRequestsRequest | 

begin
  # Reject join requests
  result = api_instance.reject_whats_app_group_join_requests(group_id, account_id, reject_whats_app_group_join_requests_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->reject_whats_app_group_join_requests: #{e}"
end
```

#### Using the reject_whats_app_group_join_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> reject_whats_app_group_join_requests_with_http_info(group_id, account_id, reject_whats_app_group_join_requests_request)

```ruby
begin
  # Reject join requests
  data, status_code, headers = api_instance.reject_whats_app_group_join_requests_with_http_info(group_id, account_id, reject_whats_app_group_join_requests_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->reject_whats_app_group_join_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |
| **reject_whats_app_group_join_requests_request** | [**RejectWhatsAppGroupJoinRequestsRequest**](RejectWhatsAppGroupJoinRequestsRequest.md) |  |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_whats_app_group_participants

> <UnpublishPost200Response> remove_whats_app_group_participants(group_id, account_id, remove_whats_app_group_participants_request)

Remove participants

Remove participants from a WhatsApp group.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID
remove_whats_app_group_participants_request = Zernio::RemoveWhatsAppGroupParticipantsRequest.new({phone_numbers: ['phone_numbers_example']}) # RemoveWhatsAppGroupParticipantsRequest | 

begin
  # Remove participants
  result = api_instance.remove_whats_app_group_participants(group_id, account_id, remove_whats_app_group_participants_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->remove_whats_app_group_participants: #{e}"
end
```

#### Using the remove_whats_app_group_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> remove_whats_app_group_participants_with_http_info(group_id, account_id, remove_whats_app_group_participants_request)

```ruby
begin
  # Remove participants
  data, status_code, headers = api_instance.remove_whats_app_group_participants_with_http_info(group_id, account_id, remove_whats_app_group_participants_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->remove_whats_app_group_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |
| **remove_whats_app_group_participants_request** | [**RemoveWhatsAppGroupParticipantsRequest**](RemoveWhatsAppGroupParticipantsRequest.md) |  |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## send_whats_app_conversion

> <SendWhatsAppConversion200Response> send_whats_app_conversion(send_whats_app_conversion_request)

Send WhatsApp conversion event

Forward a WhatsApp Business Messaging conversion event (`LeadSubmitted`, `Purchase`, `AddToCart`, `InitiateCheckout`, `ViewContent`) to Meta's Conversions API with `action_source = business_messaging` and `messaging_channel = whatsapp`. The endpoint looks up the originating CTWA click ID (`ctwa_clid`) captured on the first inbound message of the conversation and replays it on every event so Meta can attribute the conversion back to the Click-to-WhatsApp ad that drove the chat.  Configuration prerequisite on the WhatsApp account metadata:   - `metaCapiDatasetId`: the Meta dataset ID linked to the WABA.     Provision one with `POST /v1/whatsapp/dataset`.  The WABA ID (already set automatically at connect time) is forwarded as `user_data.whatsapp_business_account_id`, which is the per-channel attribution identifier Meta requires for WhatsApp events. No Facebook Page ID is needed (that field is the Messenger-branch identifier).  Identify the conversation by either `conversationId` (preferred) or `phoneE164` (digits only, no `+`). At least one is required. If the conversation has no captured `ctwa_clid`, the request returns 422 because there is nothing to attribute.  Token and dataset coupling: the WhatsApp account's accessToken must have access to the configured `metaCapiDatasetId`. By default a WABA's system-user token is scoped to the WABA's own Business Manager and cannot post to a pixel owned by a different Business; Meta returns code 100 in that case. Either share the dataset with the WhatsApp app's Business in BM, or use a dataset already in the same Business as the WABA. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
send_whats_app_conversion_request = Zernio::SendWhatsAppConversionRequest.new({account_id: 'account_id_example', event_name: 'LeadSubmitted', event_id: 'event_id_example'}) # SendWhatsAppConversionRequest | 

begin
  # Send WhatsApp conversion event
  result = api_instance.send_whats_app_conversion(send_whats_app_conversion_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->send_whats_app_conversion: #{e}"
end
```

#### Using the send_whats_app_conversion_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendWhatsAppConversion200Response>, Integer, Hash)> send_whats_app_conversion_with_http_info(send_whats_app_conversion_request)

```ruby
begin
  # Send WhatsApp conversion event
  data, status_code, headers = api_instance.send_whats_app_conversion_with_http_info(send_whats_app_conversion_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendWhatsAppConversion200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->send_whats_app_conversion_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_whats_app_conversion_request** | [**SendWhatsAppConversionRequest**](SendWhatsAppConversionRequest.md) |  |  |

### Return type

[**SendWhatsAppConversion200Response**](SendWhatsAppConversion200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unblock_whats_app_users

> <UnblockWhatsAppUsers200Response> unblock_whats_app_users(unblock_whats_app_users_request)

Unblock users

Unblock one or more previously blocked WhatsApp users on this number. Up to 1,000 users per request; per-user failures are reported in `failed` without failing the rest of the batch. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
unblock_whats_app_users_request = Zernio::UnblockWhatsAppUsersRequest.new({account_id: 'account_id_example', users: ['users_example']}) # UnblockWhatsAppUsersRequest | 

begin
  # Unblock users
  result = api_instance.unblock_whats_app_users(unblock_whats_app_users_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->unblock_whats_app_users: #{e}"
end
```

#### Using the unblock_whats_app_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnblockWhatsAppUsers200Response>, Integer, Hash)> unblock_whats_app_users_with_http_info(unblock_whats_app_users_request)

```ruby
begin
  # Unblock users
  data, status_code, headers = api_instance.unblock_whats_app_users_with_http_info(unblock_whats_app_users_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnblockWhatsAppUsers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->unblock_whats_app_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unblock_whats_app_users_request** | [**UnblockWhatsAppUsersRequest**](UnblockWhatsAppUsersRequest.md) |  |  |

### Return type

[**UnblockWhatsAppUsers200Response**](UnblockWhatsAppUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_whats_app_business_profile

> <UnpublishPost200Response> update_whats_app_business_profile(update_whats_app_business_profile_request)

Update business profile

Update the WhatsApp Business profile. All fields are optional; only provided fields will be updated. Constraints: about max 139 chars, description max 512 chars, max 2 websites. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
update_whats_app_business_profile_request = Zernio::UpdateWhatsAppBusinessProfileRequest.new({account_id: 'account_id_example'}) # UpdateWhatsAppBusinessProfileRequest | 

begin
  # Update business profile
  result = api_instance.update_whats_app_business_profile(update_whats_app_business_profile_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->update_whats_app_business_profile: #{e}"
end
```

#### Using the update_whats_app_business_profile_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> update_whats_app_business_profile_with_http_info(update_whats_app_business_profile_request)

```ruby
begin
  # Update business profile
  data, status_code, headers = api_instance.update_whats_app_business_profile_with_http_info(update_whats_app_business_profile_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->update_whats_app_business_profile_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_whats_app_business_profile_request** | [**UpdateWhatsAppBusinessProfileRequest**](UpdateWhatsAppBusinessProfileRequest.md) |  |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_whats_app_display_name

> <UpdateWhatsAppDisplayName200Response> update_whats_app_display_name(update_whats_app_display_name_request)

Request display name change

Submit a display name change request for the WhatsApp Business account. The new name must follow WhatsApp naming guidelines (3-512 characters, must represent your business). Changes require Meta review and approval, which typically takes 1-3 business days. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
update_whats_app_display_name_request = Zernio::UpdateWhatsAppDisplayNameRequest.new({account_id: 'account_id_example', display_name: 'display_name_example'}) # UpdateWhatsAppDisplayNameRequest | 

begin
  # Request display name change
  result = api_instance.update_whats_app_display_name(update_whats_app_display_name_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->update_whats_app_display_name: #{e}"
end
```

#### Using the update_whats_app_display_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWhatsAppDisplayName200Response>, Integer, Hash)> update_whats_app_display_name_with_http_info(update_whats_app_display_name_request)

```ruby
begin
  # Request display name change
  data, status_code, headers = api_instance.update_whats_app_display_name_with_http_info(update_whats_app_display_name_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWhatsAppDisplayName200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->update_whats_app_display_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_whats_app_display_name_request** | [**UpdateWhatsAppDisplayNameRequest**](UpdateWhatsAppDisplayNameRequest.md) |  |  |

### Return type

[**UpdateWhatsAppDisplayName200Response**](UpdateWhatsAppDisplayName200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_whats_app_group_chat

> <UnpublishPost200Response> update_whats_app_group_chat(group_id, account_id, update_whats_app_group_chat_request)

Update group settings

Update the subject, description, or join approval mode of a WhatsApp group.  Not available on [Coexistence](/platforms/whatsapp/connection#whatsapp-business-app-coexistence) numbers. Requires a Cloud API-only number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
group_id = 'group_id_example' # String | Group ID
account_id = 'account_id_example' # String | WhatsApp social account ID
update_whats_app_group_chat_request = Zernio::UpdateWhatsAppGroupChatRequest.new # UpdateWhatsAppGroupChatRequest | 

begin
  # Update group settings
  result = api_instance.update_whats_app_group_chat(group_id, account_id, update_whats_app_group_chat_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->update_whats_app_group_chat: #{e}"
end
```

#### Using the update_whats_app_group_chat_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> update_whats_app_group_chat_with_http_info(group_id, account_id, update_whats_app_group_chat_request)

```ruby
begin
  # Update group settings
  data, status_code, headers = api_instance.update_whats_app_group_chat_with_http_info(group_id, account_id, update_whats_app_group_chat_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->update_whats_app_group_chat_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **group_id** | **String** | Group ID |  |
| **account_id** | **String** | WhatsApp social account ID |  |
| **update_whats_app_group_chat_request** | [**UpdateWhatsAppGroupChatRequest**](UpdateWhatsAppGroupChatRequest.md) |  |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_whats_app_template

> <UpdateWhatsAppTemplate200Response> update_whats_app_template(template_name, update_whats_app_template_request)

Update template

Update a message template's components. Only certain fields can be updated depending on the template's current approval state. Approved templates can only have components updated. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
template_name = 'template_name_example' # String | Template name
update_whats_app_template_request = Zernio::UpdateWhatsAppTemplateRequest.new({account_id: 'account_id_example', components: [Zernio::WhatsAppBodyComponent.new({type: 'body', text: 'text_example'})]}) # UpdateWhatsAppTemplateRequest | 

begin
  # Update template
  result = api_instance.update_whats_app_template(template_name, update_whats_app_template_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->update_whats_app_template: #{e}"
end
```

#### Using the update_whats_app_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateWhatsAppTemplate200Response>, Integer, Hash)> update_whats_app_template_with_http_info(template_name, update_whats_app_template_request)

```ruby
begin
  # Update template
  data, status_code, headers = api_instance.update_whats_app_template_with_http_info(template_name, update_whats_app_template_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateWhatsAppTemplate200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->update_whats_app_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_name** | **String** | Template name |  |
| **update_whats_app_template_request** | [**UpdateWhatsAppTemplateRequest**](UpdateWhatsAppTemplateRequest.md) |  |  |

### Return type

[**UpdateWhatsAppTemplate200Response**](UpdateWhatsAppTemplate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_whats_app_profile_photo

> <UnpublishPost200Response> upload_whats_app_profile_photo(account_id, file)

Upload profile picture

Upload a new profile picture for the WhatsApp Business Profile. Uses Meta's resumable upload API under the hood: creates an upload session, uploads the image bytes, then updates the business profile with the resulting handle. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID
file = File.new('/path/to/some/file') # File | Image file (JPEG or PNG, max 5MB, recommended 640x640)

begin
  # Upload profile picture
  result = api_instance.upload_whats_app_profile_photo(account_id, file)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->upload_whats_app_profile_photo: #{e}"
end
```

#### Using the upload_whats_app_profile_photo_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpublishPost200Response>, Integer, Hash)> upload_whats_app_profile_photo_with_http_info(account_id, file)

```ruby
begin
  # Upload profile picture
  data, status_code, headers = api_instance.upload_whats_app_profile_photo_with_http_info(account_id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpublishPost200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppApi->upload_whats_app_profile_photo_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |
| **file** | **File** | Image file (JPEG or PNG, max 5MB, recommended 640x640) |  |

### Return type

[**UnpublishPost200Response**](UnpublishPost200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json

