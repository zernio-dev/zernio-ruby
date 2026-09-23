# Zernio::IMessageApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_imessage_group_participant**](IMessageApi.md#add_imessage_group_participant) | **POST** /v1/imessage/groups/{conversationId}/participants | Add a participant to an iMessage group |
| [**cancel_imessage_sender**](IMessageApi.md#cancel_imessage_sender) | **DELETE** /v1/imessage/senders/{senderId} | Cancel an iMessage sender |
| [**create_imessage_group**](IMessageApi.md#create_imessage_group) | **POST** /v1/imessage/groups | Start an iMessage group chat |
| [**create_imessage_opt_in_link**](IMessageApi.md#create_imessage_opt_in_link) | **POST** /v1/imessage/senders/{senderId}/opt-in-links | Create a tracked iMessage opt-in link |
| [**get_imessage_group**](IMessageApi.md#get_imessage_group) | **GET** /v1/imessage/groups/{conversationId} | Get an iMessage group |
| [**get_imessage_sender**](IMessageApi.md#get_imessage_sender) | **GET** /v1/imessage/senders/{senderId} | Get iMessage sender status |
| [**list_imessage_audience**](IMessageApi.md#list_imessage_audience) | **GET** /v1/imessage/audience | List iMessage audience |
| [**list_imessage_available_numbers**](IMessageApi.md#list_imessage_available_numbers) | **GET** /v1/imessage/senders/available-numbers | List instantly available iMessage numbers |
| [**list_imessage_sender_orders**](IMessageApi.md#list_imessage_sender_orders) | **GET** /v1/imessage/senders/order | List iMessage sender orders |
| [**list_imessage_senders**](IMessageApi.md#list_imessage_senders) | **GET** /v1/imessage/senders | List iMessage senders |
| [**order_imessage_sender**](IMessageApi.md#order_imessage_sender) | **POST** /v1/imessage/senders/order | Order a new iMessage sender |
| [**register_imessage_sender**](IMessageApi.md#register_imessage_sender) | **POST** /v1/imessage/senders | Register an iMessage sender |
| [**remove_imessage_group_participant**](IMessageApi.md#remove_imessage_group_participant) | **DELETE** /v1/imessage/groups/{conversationId}/participants | Remove a participant from an iMessage group |
| [**reserve_imessage_available_number**](IMessageApi.md#reserve_imessage_available_number) | **POST** /v1/imessage/senders/available-numbers/{numberId}/reserve | Reserve an available iMessage number |
| [**set_imessage_subscription**](IMessageApi.md#set_imessage_subscription) | **POST** /v1/imessage/audience/subscription | Subscribe or opt out an iMessage contact |
| [**update_imessage_group**](IMessageApi.md#update_imessage_group) | **PATCH** /v1/imessage/groups/{conversationId} | Rename an iMessage group or change its photo |
| [**update_imessage_sender**](IMessageApi.md#update_imessage_sender) | **PATCH** /v1/imessage/senders/{senderId} | Update an iMessage sender |


## add_imessage_group_participant

> <AddImessageGroupParticipant200Response> add_imessage_group_participant(conversation_id, add_imessage_group_participant_request)

Add a participant to an iMessage group

Applied asynchronously by the provider; the participant list on the next group webhook reflects it.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
conversation_id = 'conversation_id_example' # String | 
add_imessage_group_participant_request = Zernio::AddImessageGroupParticipantRequest.new({account_id: 'account_id_example', contact: 'contact_example'}) # AddImessageGroupParticipantRequest | 

begin
  # Add a participant to an iMessage group
  result = api_instance.add_imessage_group_participant(conversation_id, add_imessage_group_participant_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->add_imessage_group_participant: #{e}"
end
```

#### Using the add_imessage_group_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddImessageGroupParticipant200Response>, Integer, Hash)> add_imessage_group_participant_with_http_info(conversation_id, add_imessage_group_participant_request)

```ruby
begin
  # Add a participant to an iMessage group
  data, status_code, headers = api_instance.add_imessage_group_participant_with_http_info(conversation_id, add_imessage_group_participant_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddImessageGroupParticipant200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->add_imessage_group_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** |  |  |
| **add_imessage_group_participant_request** | [**AddImessageGroupParticipantRequest**](AddImessageGroupParticipantRequest.md) |  |  |

### Return type

[**AddImessageGroupParticipant200Response**](AddImessageGroupParticipant200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_imessage_sender

> <OrderImessageSender202Response> cancel_imessage_sender(sender_id)

Cancel an iMessage sender

Cancels the sender at the provider and deactivates its messaging account. Billing stops with the current month (no proration or refunds, matching phone numbers). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
sender_id = 'sender_id_example' # String | 

begin
  # Cancel an iMessage sender
  result = api_instance.cancel_imessage_sender(sender_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->cancel_imessage_sender: #{e}"
end
```

#### Using the cancel_imessage_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderImessageSender202Response>, Integer, Hash)> cancel_imessage_sender_with_http_info(sender_id)

```ruby
begin
  # Cancel an iMessage sender
  data, status_code, headers = api_instance.cancel_imessage_sender_with_http_info(sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderImessageSender202Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->cancel_imessage_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **String** |  |  |

### Return type

[**OrderImessageSender202Response**](OrderImessageSender202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_imessage_group

> <CreateImessageGroup202Response> create_imessage_group(create_imessage_group_request)

Start an iMessage group chat

Creates a group chat from one of your senders and sends its first message. The provider processes it asynchronously: the response carries the request id, and the thread appears in the inbox (with its group conversation id) on the first webhook. Starting a group counts as messaging new contacts, so the sender needs the provider's init-conversations add-on and the same sending intervals apply; without it the request fails with 409 `recipient_must_message_first`. WhatsApp groups need a `name`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
create_imessage_group_request = Zernio::CreateImessageGroupRequest.new({account_id: 'account_id_example', contacts: ['contacts_example'], text: 'text_example'}) # CreateImessageGroupRequest | 

begin
  # Start an iMessage group chat
  result = api_instance.create_imessage_group(create_imessage_group_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->create_imessage_group: #{e}"
end
```

#### Using the create_imessage_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateImessageGroup202Response>, Integer, Hash)> create_imessage_group_with_http_info(create_imessage_group_request)

```ruby
begin
  # Start an iMessage group chat
  data, status_code, headers = api_instance.create_imessage_group_with_http_info(create_imessage_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateImessageGroup202Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->create_imessage_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_imessage_group_request** | [**CreateImessageGroupRequest**](CreateImessageGroupRequest.md) |  |  |

### Return type

[**CreateImessageGroup202Response**](CreateImessageGroup202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_imessage_opt_in_link

> <CreateImessageOptInLink200Response> create_imessage_opt_in_link(sender_id, create_imessage_opt_in_link_request)

Create a tracked iMessage opt-in link

Generates a per-campaign link that opens Messages on this sender with `body` prefilled. A thread the contact opens skips the pacing and the first-message content rule that apply when the sender writes first, and it is the only way in for senders without the add-on for new contacts (their sends to anyone else fail with `recipient_must_message_first`).  Each link carries a unique code in place of the `[opt-in-code]` placeholder; when the contact sends it, the resulting `message.received` webhook (and the stored inbox message's `metadata`) has `optIn: true` and your `parameters` under `optInParameters`, so you can attribute the conversation to the campaign or lead that produced it.  For an untracked link, use the sender's `optInLink` instead. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
sender_id = 'sender_id_example' # String | 
create_imessage_opt_in_link_request = Zernio::CreateImessageOptInLinkRequest.new({body: 'body_example'}) # CreateImessageOptInLinkRequest | 

begin
  # Create a tracked iMessage opt-in link
  result = api_instance.create_imessage_opt_in_link(sender_id, create_imessage_opt_in_link_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->create_imessage_opt_in_link: #{e}"
end
```

#### Using the create_imessage_opt_in_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateImessageOptInLink200Response>, Integer, Hash)> create_imessage_opt_in_link_with_http_info(sender_id, create_imessage_opt_in_link_request)

```ruby
begin
  # Create a tracked iMessage opt-in link
  data, status_code, headers = api_instance.create_imessage_opt_in_link_with_http_info(sender_id, create_imessage_opt_in_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateImessageOptInLink200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->create_imessage_opt_in_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **String** |  |  |
| **create_imessage_opt_in_link_request** | [**CreateImessageOptInLinkRequest**](CreateImessageOptInLinkRequest.md) |  |  |

### Return type

[**CreateImessageOptInLink200Response**](CreateImessageOptInLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_imessage_group

> <GetImessageGroup200Response> get_imessage_group(conversation_id, account_id)

Get an iMessage group

The group's name, participants and channel as the provider currently sees them. The conversation must be a group thread of the given account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
conversation_id = 'conversation_id_example' # String | The inbox conversation id (or the provider group id)
account_id = 'account_id_example' # String | 

begin
  # Get an iMessage group
  result = api_instance.get_imessage_group(conversation_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->get_imessage_group: #{e}"
end
```

#### Using the get_imessage_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetImessageGroup200Response>, Integer, Hash)> get_imessage_group_with_http_info(conversation_id, account_id)

```ruby
begin
  # Get an iMessage group
  data, status_code, headers = api_instance.get_imessage_group_with_http_info(conversation_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetImessageGroup200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->get_imessage_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** | The inbox conversation id (or the provider group id) |  |
| **account_id** | **String** |  |  |

### Return type

[**GetImessageGroup200Response**](GetImessageGroup200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_imessage_sender

> <GetImessageSender200Response> get_imessage_sender(sender_id)

Get iMessage sender status

Lifecycle status of an ordered or registered sender (poll while an order activates), plus the provider's live platform health for it.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
sender_id = 'sender_id_example' # String | 

begin
  # Get iMessage sender status
  result = api_instance.get_imessage_sender(sender_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->get_imessage_sender: #{e}"
end
```

#### Using the get_imessage_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetImessageSender200Response>, Integer, Hash)> get_imessage_sender_with_http_info(sender_id)

```ruby
begin
  # Get iMessage sender status
  data, status_code, headers = api_instance.get_imessage_sender_with_http_info(sender_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetImessageSender200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->get_imessage_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **String** |  |  |

### Return type

[**GetImessageSender200Response**](GetImessageSender200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_imessage_audience

> <ListImessageAudience200Response> list_imessage_audience(opts)

List iMessage audience

Contacts who have messaged your iMessage senders (1:1 threads), with subscription state and, for threads opened through a tracked opt-in link, the parameters that brought them in. Newest activity first.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
opts = {
  account_id: 'account_id_example', # String | Limit to one sender account
  status: 'subscribed', # String | 
  search: 'search_example', # String | Matches the contact handle or name
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List iMessage audience
  result = api_instance.list_imessage_audience(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->list_imessage_audience: #{e}"
end
```

#### Using the list_imessage_audience_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListImessageAudience200Response>, Integer, Hash)> list_imessage_audience_with_http_info(opts)

```ruby
begin
  # List iMessage audience
  data, status_code, headers = api_instance.list_imessage_audience_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListImessageAudience200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->list_imessage_audience_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Limit to one sender account | [optional] |
| **status** | **String** |  | [optional] |
| **search** | **String** | Matches the contact handle or name | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListImessageAudience200Response**](ListImessageAudience200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_imessage_available_numbers

> <ListImessageAvailableNumbers200Response> list_imessage_available_numbers(opts)

List instantly available iMessage numbers

Phone numbers the provider has already registered and can assign on the spot. Order one by passing its `id` as `availableNumberId` to POST /v1/imessage/senders/order: the sender activates immediately instead of after the usual provisioning wait. Reserve it first with POST /v1/imessage/senders/available-numbers/{numberId}/reserve while the buyer decides. The list is a snapshot; a number can be taken between listing and ordering. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
opts = {
  region: 'US' # String | 
}

begin
  # List instantly available iMessage numbers
  result = api_instance.list_imessage_available_numbers(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->list_imessage_available_numbers: #{e}"
end
```

#### Using the list_imessage_available_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListImessageAvailableNumbers200Response>, Integer, Hash)> list_imessage_available_numbers_with_http_info(opts)

```ruby
begin
  # List instantly available iMessage numbers
  data, status_code, headers = api_instance.list_imessage_available_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListImessageAvailableNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->list_imessage_available_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **region** | **String** |  | [optional] |

### Return type

[**ListImessageAvailableNumbers200Response**](ListImessageAvailableNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_imessage_sender_orders

> <ListImessageSenderOrders200Response> list_imessage_sender_orders(opts)

List iMessage sender orders

Every sender lifecycle doc your team owns (ordered or registered), across statuses. Canceled senders are omitted unless `includeCanceled=true`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
opts = {
  include_canceled: true # Boolean | 
}

begin
  # List iMessage sender orders
  result = api_instance.list_imessage_sender_orders(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->list_imessage_sender_orders: #{e}"
end
```

#### Using the list_imessage_sender_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListImessageSenderOrders200Response>, Integer, Hash)> list_imessage_sender_orders_with_http_info(opts)

```ruby
begin
  # List iMessage sender orders
  data, status_code, headers = api_instance.list_imessage_sender_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListImessageSenderOrders200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->list_imessage_sender_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_canceled** | **Boolean** |  | [optional][default to false] |

### Return type

[**ListImessageSenderOrders200Response**](ListImessageSenderOrders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_imessage_senders

> <ListImessageSenders200Response> list_imessage_senders

List iMessage senders

Lists the iMessage senders registered across your accessible profiles.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new

begin
  # List iMessage senders
  result = api_instance.list_imessage_senders
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->list_imessage_senders: #{e}"
end
```

#### Using the list_imessage_senders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListImessageSenders200Response>, Integer, Hash)> list_imessage_senders_with_http_info

```ruby
begin
  # List iMessage senders
  data, status_code, headers = api_instance.list_imessage_senders_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListImessageSenders200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->list_imessage_senders_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListImessageSenders200Response**](ListImessageSenders200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## order_imessage_sender

> <OrderImessageSender202Response> order_imessage_sender(order_imessage_sender_request)

Order a new iMessage sender

Orders a NEW dedicated iMessage sender from the delivery provider (compare with POST /v1/imessage/senders, which registers a sender you already own). Activation is asynchronous (minutes to a few hours): the response is 202 with the lifecycle object; poll GET /v1/imessage/senders/{senderId} or subscribe to the account.connected webhook. Billing starts at activation (monthly per sender, no proration). Requires usage-based billing and a valid payment method. Pass purchaseIntentId to make retries idempotent — the provider-side order is never retried automatically. Ordered phone senders include SMS/RCS fallback with call forwarding and the ability to message contacts who have not written first (sending intervals still apply). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
order_imessage_sender_request = Zernio::OrderImessageSenderRequest.new({profile_id: 'profile_id_example', kind: 'phone'}) # OrderImessageSenderRequest | 

begin
  # Order a new iMessage sender
  result = api_instance.order_imessage_sender(order_imessage_sender_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->order_imessage_sender: #{e}"
end
```

#### Using the order_imessage_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderImessageSender202Response>, Integer, Hash)> order_imessage_sender_with_http_info(order_imessage_sender_request)

```ruby
begin
  # Order a new iMessage sender
  data, status_code, headers = api_instance.order_imessage_sender_with_http_info(order_imessage_sender_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderImessageSender202Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->order_imessage_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_imessage_sender_request** | [**OrderImessageSenderRequest**](OrderImessageSenderRequest.md) |  |  |

### Return type

[**OrderImessageSender202Response**](OrderImessageSender202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## register_imessage_sender

> <RegisterImessageSender200Response> register_imessage_sender(register_imessage_sender_request)

Register an iMessage sender

Registers a provider-provisioned iMessage sender (a phone number or an email handle) that YOU already own on a profile, creating an `imessage` account that sends and receives through the inbox conversation endpoints. To have Zernio order a new sender for you, use POST /v1/imessage/senders/order instead. Registration attaches the monthly sender fee (billed while active) and requires a payment method (402 without one). One sender per profile: re-registering the SAME handle refreshes it; a different handle returns 409 until the existing sender is canceled. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
register_imessage_sender_request = Zernio::RegisterImessageSenderRequest.new({profile_id: 'profile_id_example', sender: 'sender_example'}) # RegisterImessageSenderRequest | 

begin
  # Register an iMessage sender
  result = api_instance.register_imessage_sender(register_imessage_sender_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->register_imessage_sender: #{e}"
end
```

#### Using the register_imessage_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegisterImessageSender200Response>, Integer, Hash)> register_imessage_sender_with_http_info(register_imessage_sender_request)

```ruby
begin
  # Register an iMessage sender
  data, status_code, headers = api_instance.register_imessage_sender_with_http_info(register_imessage_sender_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegisterImessageSender200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->register_imessage_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **register_imessage_sender_request** | [**RegisterImessageSenderRequest**](RegisterImessageSenderRequest.md) |  |  |

### Return type

[**RegisterImessageSender200Response**](RegisterImessageSender200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_imessage_group_participant

> <AddImessageGroupParticipant200Response> remove_imessage_group_participant(conversation_id, account_id, contact)

Remove a participant from an iMessage group

Applied asynchronously by the provider.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
conversation_id = 'conversation_id_example' # String | 
account_id = 'account_id_example' # String | 
contact = 'contact_example' # String | E.164 phone or iMessage email

begin
  # Remove a participant from an iMessage group
  result = api_instance.remove_imessage_group_participant(conversation_id, account_id, contact)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->remove_imessage_group_participant: #{e}"
end
```

#### Using the remove_imessage_group_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddImessageGroupParticipant200Response>, Integer, Hash)> remove_imessage_group_participant_with_http_info(conversation_id, account_id, contact)

```ruby
begin
  # Remove a participant from an iMessage group
  data, status_code, headers = api_instance.remove_imessage_group_participant_with_http_info(conversation_id, account_id, contact)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddImessageGroupParticipant200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->remove_imessage_group_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **contact** | **String** | E.164 phone or iMessage email |  |

### Return type

[**AddImessageGroupParticipant200Response**](AddImessageGroupParticipant200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reserve_imessage_available_number

> <ReserveImessageAvailableNumber200Response> reserve_imessage_available_number(number_id)

Reserve an available iMessage number

Holds the number for 3 minutes so nobody else can order it while the buyer decides. Place the order (POST /v1/imessage/senders/order with availableNumberId) before the hold expires. No request body.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
number_id = 'number_id_example' # String | 

begin
  # Reserve an available iMessage number
  result = api_instance.reserve_imessage_available_number(number_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->reserve_imessage_available_number: #{e}"
end
```

#### Using the reserve_imessage_available_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReserveImessageAvailableNumber200Response>, Integer, Hash)> reserve_imessage_available_number_with_http_info(number_id)

```ruby
begin
  # Reserve an available iMessage number
  data, status_code, headers = api_instance.reserve_imessage_available_number_with_http_info(number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReserveImessageAvailableNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->reserve_imessage_available_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number_id** | **String** |  |  |

### Return type

[**ReserveImessageAvailableNumber200Response**](ReserveImessageAvailableNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_imessage_subscription

> <SetImessageSubscription200Response> set_imessage_subscription(set_imessage_subscription_request)

Subscribe or opt out an iMessage contact

Opted-out contacts are refused at send time (409 recipient_opted_out) until re-subscribed. Their inbound messages still arrive. Scoped to your account: it does not change the contact's state with other businesses.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
set_imessage_subscription_request = Zernio::SetImessageSubscriptionRequest.new({account_id: 'account_id_example', conversation_id: 'conversation_id_example', subscribed: false}) # SetImessageSubscriptionRequest | 

begin
  # Subscribe or opt out an iMessage contact
  result = api_instance.set_imessage_subscription(set_imessage_subscription_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->set_imessage_subscription: #{e}"
end
```

#### Using the set_imessage_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetImessageSubscription200Response>, Integer, Hash)> set_imessage_subscription_with_http_info(set_imessage_subscription_request)

```ruby
begin
  # Subscribe or opt out an iMessage contact
  data, status_code, headers = api_instance.set_imessage_subscription_with_http_info(set_imessage_subscription_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetImessageSubscription200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->set_imessage_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_imessage_subscription_request** | [**SetImessageSubscriptionRequest**](SetImessageSubscriptionRequest.md) |  |  |

### Return type

[**SetImessageSubscription200Response**](SetImessageSubscription200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_imessage_group

> <UpdateImessageGroup200Response> update_imessage_group(conversation_id, update_imessage_group_request)

Rename an iMessage group or change its photo

One change per call: either `name` or `photoUrl` (an empty `photoUrl` removes the photo). Applied asynchronously by the provider; a rename is mirrored on the inbox conversation right away.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
conversation_id = 'conversation_id_example' # String | 
update_imessage_group_request = Zernio::UpdateImessageGroupRequest.new({account_id: 'account_id_example'}) # UpdateImessageGroupRequest | 

begin
  # Rename an iMessage group or change its photo
  result = api_instance.update_imessage_group(conversation_id, update_imessage_group_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->update_imessage_group: #{e}"
end
```

#### Using the update_imessage_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateImessageGroup200Response>, Integer, Hash)> update_imessage_group_with_http_info(conversation_id, update_imessage_group_request)

```ruby
begin
  # Rename an iMessage group or change its photo
  data, status_code, headers = api_instance.update_imessage_group_with_http_info(conversation_id, update_imessage_group_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateImessageGroup200Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->update_imessage_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conversation_id** | **String** |  |  |
| **update_imessage_group_request** | [**UpdateImessageGroupRequest**](UpdateImessageGroupRequest.md) |  |  |

### Return type

[**UpdateImessageGroup200Response**](UpdateImessageGroup200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_imessage_sender

> <OrderImessageSender202Response> update_imessage_sender(sender_id, update_imessage_sender_request)

Update an iMessage sender

Display name (inbox and API responses) and the contact card (vCard) recipients see when they save the sender. The contact card is what a contactCard send shares.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::IMessageApi.new
sender_id = 'sender_id_example' # String | 
update_imessage_sender_request = Zernio::UpdateImessageSenderRequest.new # UpdateImessageSenderRequest | 

begin
  # Update an iMessage sender
  result = api_instance.update_imessage_sender(sender_id, update_imessage_sender_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->update_imessage_sender: #{e}"
end
```

#### Using the update_imessage_sender_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrderImessageSender202Response>, Integer, Hash)> update_imessage_sender_with_http_info(sender_id, update_imessage_sender_request)

```ruby
begin
  # Update an iMessage sender
  data, status_code, headers = api_instance.update_imessage_sender_with_http_info(sender_id, update_imessage_sender_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrderImessageSender202Response>
rescue Zernio::ApiError => e
  puts "Error when calling IMessageApi->update_imessage_sender_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sender_id** | **String** |  |  |
| **update_imessage_sender_request** | [**UpdateImessageSenderRequest**](UpdateImessageSenderRequest.md) |  |  |

### Return type

[**OrderImessageSender202Response**](OrderImessageSender202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

