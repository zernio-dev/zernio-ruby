# Zernio::AccountSettingsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_instagram_ice_breakers**](AccountSettingsApi.md#delete_instagram_ice_breakers) | **DELETE** /v1/accounts/{accountId}/instagram-ice-breakers | Delete IG ice breakers |
| [**delete_messenger_get_started**](AccountSettingsApi.md#delete_messenger_get_started) | **DELETE** /v1/accounts/{accountId}/messenger-get-started | Delete FB Get Started button |
| [**delete_messenger_menu**](AccountSettingsApi.md#delete_messenger_menu) | **DELETE** /v1/accounts/{accountId}/messenger-menu | Delete FB persistent menu |
| [**delete_telegram_commands**](AccountSettingsApi.md#delete_telegram_commands) | **DELETE** /v1/accounts/{accountId}/telegram-commands | Delete TG bot commands |
| [**get_instagram_ice_breakers**](AccountSettingsApi.md#get_instagram_ice_breakers) | **GET** /v1/accounts/{accountId}/instagram-ice-breakers | Get IG ice breakers |
| [**get_messenger_get_started**](AccountSettingsApi.md#get_messenger_get_started) | **GET** /v1/accounts/{accountId}/messenger-get-started | Get FB Get Started button |
| [**get_messenger_menu**](AccountSettingsApi.md#get_messenger_menu) | **GET** /v1/accounts/{accountId}/messenger-menu | Get FB persistent menu |
| [**get_telegram_commands**](AccountSettingsApi.md#get_telegram_commands) | **GET** /v1/accounts/{accountId}/telegram-commands | Get TG bot commands |
| [**set_instagram_ice_breakers**](AccountSettingsApi.md#set_instagram_ice_breakers) | **PUT** /v1/accounts/{accountId}/instagram-ice-breakers | Set IG ice breakers |
| [**set_messenger_get_started**](AccountSettingsApi.md#set_messenger_get_started) | **PUT** /v1/accounts/{accountId}/messenger-get-started | Set FB Get Started button |
| [**set_messenger_menu**](AccountSettingsApi.md#set_messenger_menu) | **PUT** /v1/accounts/{accountId}/messenger-menu | Set FB persistent menu |
| [**set_telegram_commands**](AccountSettingsApi.md#set_telegram_commands) | **PUT** /v1/accounts/{accountId}/telegram-commands | Set TG bot commands |


## delete_instagram_ice_breakers

> delete_instagram_ice_breakers(account_id)

Delete IG ice breakers

Removes the ice breaker questions from an Instagram account's Messenger experience.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 

begin
  # Delete IG ice breakers
  api_instance.delete_instagram_ice_breakers(account_id)
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_instagram_ice_breakers: #{e}"
end
```

#### Using the delete_instagram_ice_breakers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_instagram_ice_breakers_with_http_info(account_id)

```ruby
begin
  # Delete IG ice breakers
  data, status_code, headers = api_instance.delete_instagram_ice_breakers_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_instagram_ice_breakers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_messenger_get_started

> <UpdateYoutubeDefaultPlaylist200Response> delete_messenger_get_started(account_id)

Delete FB Get Started button

Remove the Get Started button. Meta refuses while a persistent menu is set, so delete the menu first.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 

begin
  # Delete FB Get Started button
  result = api_instance.delete_messenger_get_started(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_messenger_get_started: #{e}"
end
```

#### Using the delete_messenger_get_started_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_messenger_get_started_with_http_info(account_id)

```ruby
begin
  # Delete FB Get Started button
  data, status_code, headers = api_instance.delete_messenger_get_started_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_messenger_get_started_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_messenger_menu

> delete_messenger_menu(account_id)

Delete FB persistent menu

Removes the persistent menu from Facebook Messenger conversations for this account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 

begin
  # Delete FB persistent menu
  api_instance.delete_messenger_menu(account_id)
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_messenger_menu: #{e}"
end
```

#### Using the delete_messenger_menu_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_messenger_menu_with_http_info(account_id)

```ruby
begin
  # Delete FB persistent menu
  data, status_code, headers = api_instance.delete_messenger_menu_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_messenger_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_telegram_commands

> delete_telegram_commands(account_id)

Delete TG bot commands

Clears all bot commands configured for a Telegram bot account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 

begin
  # Delete TG bot commands
  api_instance.delete_telegram_commands(account_id)
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_telegram_commands: #{e}"
end
```

#### Using the delete_telegram_commands_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_telegram_commands_with_http_info(account_id)

```ruby
begin
  # Delete TG bot commands
  data, status_code, headers = api_instance.delete_telegram_commands_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_telegram_commands_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_instagram_ice_breakers

> <GetMessengerMenu200Response> get_instagram_ice_breakers(account_id)

Get IG ice breakers

Get the ice breaker configuration for an Instagram account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 

begin
  # Get IG ice breakers
  result = api_instance.get_instagram_ice_breakers(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_instagram_ice_breakers: #{e}"
end
```

#### Using the get_instagram_ice_breakers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessengerMenu200Response>, Integer, Hash)> get_instagram_ice_breakers_with_http_info(account_id)

```ruby
begin
  # Get IG ice breakers
  data, status_code, headers = api_instance.get_instagram_ice_breakers_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessengerMenu200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_instagram_ice_breakers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetMessengerMenu200Response**](GetMessengerMenu200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_messenger_get_started

> <GetMessengerGetStarted200Response> get_messenger_get_started(account_id)

Get FB Get Started button

Get the Get Started button payload for a Facebook Messenger account. `data` is null when the page has none.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 

begin
  # Get FB Get Started button
  result = api_instance.get_messenger_get_started(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_messenger_get_started: #{e}"
end
```

#### Using the get_messenger_get_started_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessengerGetStarted200Response>, Integer, Hash)> get_messenger_get_started_with_http_info(account_id)

```ruby
begin
  # Get FB Get Started button
  data, status_code, headers = api_instance.get_messenger_get_started_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessengerGetStarted200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_messenger_get_started_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetMessengerGetStarted200Response**](GetMessengerGetStarted200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_messenger_menu

> <GetMessengerMenu200Response> get_messenger_menu(account_id)

Get FB persistent menu

Get the persistent menu configuration for a Facebook Messenger account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 

begin
  # Get FB persistent menu
  result = api_instance.get_messenger_menu(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_messenger_menu: #{e}"
end
```

#### Using the get_messenger_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessengerMenu200Response>, Integer, Hash)> get_messenger_menu_with_http_info(account_id)

```ruby
begin
  # Get FB persistent menu
  data, status_code, headers = api_instance.get_messenger_menu_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessengerMenu200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_messenger_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetMessengerMenu200Response**](GetMessengerMenu200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_telegram_commands

> <GetTelegramCommands200Response> get_telegram_commands(account_id)

Get TG bot commands

Get the bot commands configuration for a Telegram account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 

begin
  # Get TG bot commands
  result = api_instance.get_telegram_commands(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_telegram_commands: #{e}"
end
```

#### Using the get_telegram_commands_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTelegramCommands200Response>, Integer, Hash)> get_telegram_commands_with_http_info(account_id)

```ruby
begin
  # Get TG bot commands
  data, status_code, headers = api_instance.get_telegram_commands_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTelegramCommands200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_telegram_commands_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetTelegramCommands200Response**](GetTelegramCommands200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_instagram_ice_breakers

> set_instagram_ice_breakers(account_id, set_instagram_ice_breakers_request)

Set IG ice breakers

Set ice breakers for an Instagram account. Max 4 ice breakers, question max 80 chars.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 
set_instagram_ice_breakers_request = Zernio::SetInstagramIceBreakersRequest.new({ice_breakers: [Zernio::SetInstagramIceBreakersRequestIceBreakersInner.new({question: 'question_example', payload: 'payload_example'})]}) # SetInstagramIceBreakersRequest | 

begin
  # Set IG ice breakers
  api_instance.set_instagram_ice_breakers(account_id, set_instagram_ice_breakers_request)
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_instagram_ice_breakers: #{e}"
end
```

#### Using the set_instagram_ice_breakers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_instagram_ice_breakers_with_http_info(account_id, set_instagram_ice_breakers_request)

```ruby
begin
  # Set IG ice breakers
  data, status_code, headers = api_instance.set_instagram_ice_breakers_with_http_info(account_id, set_instagram_ice_breakers_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_instagram_ice_breakers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **set_instagram_ice_breakers_request** | [**SetInstagramIceBreakersRequest**](SetInstagramIceBreakersRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_messenger_get_started

> <UpdateYoutubeDefaultPlaylist200Response> set_messenger_get_started(account_id, set_messenger_get_started_request)

Set FB Get Started button

Set the Get Started button shown on a Facebook page's Messenger welcome screen. Meta requires it before a persistent menu can be set. Tapping it sends a postback with `payload`, which arrives as a `message.received` webhook carrying it in `metadata.postbackPayload`. Use `zernio:workflow:<workflowId>` to start a workflow on the tap; the workflow must be active on this account and profile.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 
set_messenger_get_started_request = Zernio::SetMessengerGetStartedRequest.new({payload: 'payload_example'}) # SetMessengerGetStartedRequest | 

begin
  # Set FB Get Started button
  result = api_instance.set_messenger_get_started(account_id, set_messenger_get_started_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_messenger_get_started: #{e}"
end
```

#### Using the set_messenger_get_started_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> set_messenger_get_started_with_http_info(account_id, set_messenger_get_started_request)

```ruby
begin
  # Set FB Get Started button
  data, status_code, headers = api_instance.set_messenger_get_started_with_http_info(account_id, set_messenger_get_started_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_messenger_get_started_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **set_messenger_get_started_request** | [**SetMessengerGetStartedRequest**](SetMessengerGetStartedRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_messenger_menu

> set_messenger_menu(account_id, set_messenger_menu_request)

Set FB persistent menu

Set the persistent menu for a Facebook Messenger account. Max 3 top-level items, max 5 nested items. Meta only shows a persistent menu on a page that has a Get Started button, so set one first with PUT /v1/accounts/{accountId}/messenger-get-started. A postback button whose payload is `zernio:workflow:<workflowId>` starts that workflow when tapped; the workflow must be active on this account and profile.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 
set_messenger_menu_request = Zernio::SetMessengerMenuRequest.new({persistent_menu: [3.56]}) # SetMessengerMenuRequest | 

begin
  # Set FB persistent menu
  api_instance.set_messenger_menu(account_id, set_messenger_menu_request)
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_messenger_menu: #{e}"
end
```

#### Using the set_messenger_menu_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_messenger_menu_with_http_info(account_id, set_messenger_menu_request)

```ruby
begin
  # Set FB persistent menu
  data, status_code, headers = api_instance.set_messenger_menu_with_http_info(account_id, set_messenger_menu_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_messenger_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **set_messenger_menu_request** | [**SetMessengerMenuRequest**](SetMessengerMenuRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_telegram_commands

> set_telegram_commands(account_id, set_telegram_commands_request)

Set TG bot commands

Set bot commands for a Telegram account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AccountSettingsApi.new
account_id = 'account_id_example' # String | 
set_telegram_commands_request = Zernio::SetTelegramCommandsRequest.new({commands: [Zernio::SetTelegramCommandsRequestCommandsInner.new({command: 'command_example', description: 'description_example'})]}) # SetTelegramCommandsRequest | 

begin
  # Set TG bot commands
  api_instance.set_telegram_commands(account_id, set_telegram_commands_request)
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_telegram_commands: #{e}"
end
```

#### Using the set_telegram_commands_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_telegram_commands_with_http_info(account_id, set_telegram_commands_request)

```ruby
begin
  # Set TG bot commands
  data, status_code, headers = api_instance.set_telegram_commands_with_http_info(account_id, set_telegram_commands_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_telegram_commands_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **set_telegram_commands_request** | [**SetTelegramCommandsRequest**](SetTelegramCommandsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

