# Zernio::AccountSettingsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_instagram_ice_breakers**](AccountSettingsApi.md#delete_instagram_ice_breakers) | **DELETE** /v1/accounts/{accountId}/instagram-ice-breakers | Delete IG ice breakers |
| [**delete_messenger_get_started**](AccountSettingsApi.md#delete_messenger_get_started) | **DELETE** /v1/accounts/{accountId}/messenger-get-started | Delete FB Get Started button |
| [**delete_messenger_greeting**](AccountSettingsApi.md#delete_messenger_greeting) | **DELETE** /v1/accounts/{accountId}/messenger-greeting | Delete FB greeting text |
| [**delete_messenger_ice_breakers**](AccountSettingsApi.md#delete_messenger_ice_breakers) | **DELETE** /v1/accounts/{accountId}/messenger-ice-breakers | Delete FB ice breakers |
| [**delete_messenger_menu**](AccountSettingsApi.md#delete_messenger_menu) | **DELETE** /v1/accounts/{accountId}/messenger-menu | Delete persistent menu |
| [**delete_telegram_commands**](AccountSettingsApi.md#delete_telegram_commands) | **DELETE** /v1/accounts/{accountId}/telegram-commands | Delete TG bot commands |
| [**get_instagram_ice_breakers**](AccountSettingsApi.md#get_instagram_ice_breakers) | **GET** /v1/accounts/{accountId}/instagram-ice-breakers | Get IG ice breakers |
| [**get_messenger_get_started**](AccountSettingsApi.md#get_messenger_get_started) | **GET** /v1/accounts/{accountId}/messenger-get-started | Get FB Get Started button |
| [**get_messenger_greeting**](AccountSettingsApi.md#get_messenger_greeting) | **GET** /v1/accounts/{accountId}/messenger-greeting | Get FB greeting text |
| [**get_messenger_ice_breakers**](AccountSettingsApi.md#get_messenger_ice_breakers) | **GET** /v1/accounts/{accountId}/messenger-ice-breakers | Get FB ice breakers |
| [**get_messenger_menu**](AccountSettingsApi.md#get_messenger_menu) | **GET** /v1/accounts/{accountId}/messenger-menu | Get persistent menu |
| [**get_telegram_commands**](AccountSettingsApi.md#get_telegram_commands) | **GET** /v1/accounts/{accountId}/telegram-commands | Get TG bot commands |
| [**set_instagram_ice_breakers**](AccountSettingsApi.md#set_instagram_ice_breakers) | **PUT** /v1/accounts/{accountId}/instagram-ice-breakers | Set IG ice breakers |
| [**set_messenger_get_started**](AccountSettingsApi.md#set_messenger_get_started) | **PUT** /v1/accounts/{accountId}/messenger-get-started | Set FB Get Started button |
| [**set_messenger_greeting**](AccountSettingsApi.md#set_messenger_greeting) | **PUT** /v1/accounts/{accountId}/messenger-greeting | Set FB greeting text |
| [**set_messenger_ice_breakers**](AccountSettingsApi.md#set_messenger_ice_breakers) | **PUT** /v1/accounts/{accountId}/messenger-ice-breakers | Set FB ice breakers |
| [**set_messenger_menu**](AccountSettingsApi.md#set_messenger_menu) | **PUT** /v1/accounts/{accountId}/messenger-menu | Set persistent menu |
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


## delete_messenger_greeting

> <UpdateYoutubeDefaultPlaylist200Response> delete_messenger_greeting(account_id)

Delete FB greeting text

Remove the greeting text from every locale.

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
  # Delete FB greeting text
  result = api_instance.delete_messenger_greeting(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_messenger_greeting: #{e}"
end
```

#### Using the delete_messenger_greeting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_messenger_greeting_with_http_info(account_id)

```ruby
begin
  # Delete FB greeting text
  data, status_code, headers = api_instance.delete_messenger_greeting_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_messenger_greeting_with_http_info: #{e}"
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


## delete_messenger_ice_breakers

> <UpdateYoutubeDefaultPlaylist200Response> delete_messenger_ice_breakers(account_id)

Delete FB ice breakers

Remove the ice breakers from every locale.

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
  # Delete FB ice breakers
  result = api_instance.delete_messenger_ice_breakers(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_messenger_ice_breakers: #{e}"
end
```

#### Using the delete_messenger_ice_breakers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_messenger_ice_breakers_with_http_info(account_id)

```ruby
begin
  # Delete FB ice breakers
  data, status_code, headers = api_instance.delete_messenger_ice_breakers_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->delete_messenger_ice_breakers_with_http_info: #{e}"
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

Delete persistent menu

Removes the persistent menu from this Facebook Messenger or Instagram account.

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
  # Delete persistent menu
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
  # Delete persistent menu
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


## get_messenger_greeting

> <GetMessengerGreeting200Response> get_messenger_greeting(account_id)

Get FB greeting text

Get the greeting text a Facebook page shows on its Messenger welcome screen, one entry per locale. `data` is empty when the page has none.

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
  # Get FB greeting text
  result = api_instance.get_messenger_greeting(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_messenger_greeting: #{e}"
end
```

#### Using the get_messenger_greeting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessengerGreeting200Response>, Integer, Hash)> get_messenger_greeting_with_http_info(account_id)

```ruby
begin
  # Get FB greeting text
  data, status_code, headers = api_instance.get_messenger_greeting_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessengerGreeting200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_messenger_greeting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetMessengerGreeting200Response**](GetMessengerGreeting200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_messenger_ice_breakers

> <GetMessengerIceBreakers200Response> get_messenger_ice_breakers(account_id)

Get FB ice breakers

Get the ice breakers (FAQ questions shown when a person opens a new Messenger thread) for a Facebook page, one entry per locale. Instagram ice breakers live at /v1/accounts/{accountId}/instagram-ice-breakers.

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
  # Get FB ice breakers
  result = api_instance.get_messenger_ice_breakers(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_messenger_ice_breakers: #{e}"
end
```

#### Using the get_messenger_ice_breakers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMessengerIceBreakers200Response>, Integer, Hash)> get_messenger_ice_breakers_with_http_info(account_id)

```ruby
begin
  # Get FB ice breakers
  data, status_code, headers = api_instance.get_messenger_ice_breakers_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMessengerIceBreakers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->get_messenger_ice_breakers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetMessengerIceBreakers200Response**](GetMessengerIceBreakers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_messenger_menu

> <GetMessengerMenu200Response> get_messenger_menu(account_id)

Get persistent menu

Get the persistent menu configuration for a Facebook Messenger or Instagram account. Instagram accounts connected through Facebook Login are read through their linked Page (Meta's `platform=instagram`), Instagram Login accounts through the Instagram API.

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
  # Get persistent menu
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
  # Get persistent menu
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


## set_messenger_greeting

> <UpdateYoutubeDefaultPlaylist200Response> set_messenger_greeting(account_id, set_messenger_greeting_request)

Set FB greeting text

Set the greeting text on a Facebook page's Messenger welcome screen (Meta's `greeting` Messenger Profile field). One entry must use locale `default`; add more for other locales. Meta personalises `{{user_first_name}}`, `{{user_last_name}}` and `{{user_full_name}}`. Replaces every locale already set.

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
set_messenger_greeting_request = Zernio::SetMessengerGreetingRequest.new({greeting: [Zernio::MessengerGreeting.new({locale: 'locale_example', text: 'text_example'})]}) # SetMessengerGreetingRequest | 

begin
  # Set FB greeting text
  result = api_instance.set_messenger_greeting(account_id, set_messenger_greeting_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_messenger_greeting: #{e}"
end
```

#### Using the set_messenger_greeting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> set_messenger_greeting_with_http_info(account_id, set_messenger_greeting_request)

```ruby
begin
  # Set FB greeting text
  data, status_code, headers = api_instance.set_messenger_greeting_with_http_info(account_id, set_messenger_greeting_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_messenger_greeting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **set_messenger_greeting_request** | [**SetMessengerGreetingRequest**](SetMessengerGreetingRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_messenger_ice_breakers

> <UpdateYoutubeDefaultPlaylist200Response> set_messenger_ice_breakers(account_id, set_messenger_ice_breakers_request)

Set FB ice breakers

Set up to 4 ice breakers per locale for a Facebook page (Meta's `ice_breakers` Messenger Profile field). One entry must use locale `default`. A tap sends a postback with the question's `payload`, which arrives as `message.received` with `metadata.postbackPayload`; use `zernio:workflow:<workflowId>` to start a workflow (it must be active on this account and profile). Replaces every locale already set.

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
set_messenger_ice_breakers_request = Zernio::SetMessengerIceBreakersRequest.new({ice_breakers: [Zernio::MessengerIceBreakerLocale.new({locale: 'locale_example', call_to_actions: [Zernio::MessengerIceBreakerLocaleCallToActionsInner.new({question: 'question_example', payload: 'payload_example'})]})]}) # SetMessengerIceBreakersRequest | 

begin
  # Set FB ice breakers
  result = api_instance.set_messenger_ice_breakers(account_id, set_messenger_ice_breakers_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_messenger_ice_breakers: #{e}"
end
```

#### Using the set_messenger_ice_breakers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> set_messenger_ice_breakers_with_http_info(account_id, set_messenger_ice_breakers_request)

```ruby
begin
  # Set FB ice breakers
  data, status_code, headers = api_instance.set_messenger_ice_breakers_with_http_info(account_id, set_messenger_ice_breakers_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AccountSettingsApi->set_messenger_ice_breakers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **set_messenger_ice_breakers_request** | [**SetMessengerIceBreakersRequest**](SetMessengerIceBreakersRequest.md) |  |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_messenger_menu

> set_messenger_menu(account_id, set_messenger_menu_request)

Set persistent menu

Set the persistent menu for a Facebook Messenger or Instagram account. Max 3 top-level items, max 5 nested items. On Facebook, Meta only shows a persistent menu on a page that has a Get Started button, so set one first with PUT /v1/accounts/{accountId}/messenger-get-started. A postback button whose payload is `zernio:workflow:<workflowId>` starts that workflow when tapped; the workflow must be active on this account and profile.

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
  # Set persistent menu
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
  # Set persistent menu
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

