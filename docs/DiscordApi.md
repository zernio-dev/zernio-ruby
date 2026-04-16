# Late::DiscordApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_discord_channels**](DiscordApi.md#get_discord_channels) | **GET** /v1/accounts/{accountId}/discord-channels | List Discord guild channels |
| [**get_discord_settings**](DiscordApi.md#get_discord_settings) | **GET** /v1/accounts/{accountId}/discord-settings | Get Discord account settings |
| [**update_discord_settings**](DiscordApi.md#update_discord_settings) | **PATCH** /v1/accounts/{accountId}/discord-settings | Update Discord settings |


## get_discord_channels

> <GetDiscordChannels200Response> get_discord_channels(account_id)

List Discord guild channels

Returns the text, announcement, and forum channels in the connected Discord guild. Use this to discover available channels when switching the connected channel via PATCH /v1/accounts/{accountId}/discord-settings.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::DiscordApi.new
account_id = 'account_id_example' # String | 

begin
  # List Discord guild channels
  result = api_instance.get_discord_channels(account_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling DiscordApi->get_discord_channels: #{e}"
end
```

#### Using the get_discord_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDiscordChannels200Response>, Integer, Hash)> get_discord_channels_with_http_info(account_id)

```ruby
begin
  # List Discord guild channels
  data, status_code, headers = api_instance.get_discord_channels_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDiscordChannels200Response>
rescue Late::ApiError => e
  puts "Error when calling DiscordApi->get_discord_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetDiscordChannels200Response**](GetDiscordChannels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_discord_settings

> <GetDiscordSettings200Response> get_discord_settings(account_id)

Get Discord account settings

Returns the current Discord account settings including webhook identity (display name and avatar), connected channel, and guild information.

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::DiscordApi.new
account_id = 'account_id_example' # String | 

begin
  # Get Discord account settings
  result = api_instance.get_discord_settings(account_id)
  p result
rescue Late::ApiError => e
  puts "Error when calling DiscordApi->get_discord_settings: #{e}"
end
```

#### Using the get_discord_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetDiscordSettings200Response>, Integer, Hash)> get_discord_settings_with_http_info(account_id)

```ruby
begin
  # Get Discord account settings
  data, status_code, headers = api_instance.get_discord_settings_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetDiscordSettings200Response>
rescue Late::ApiError => e
  puts "Error when calling DiscordApi->get_discord_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |

### Return type

[**GetDiscordSettings200Response**](GetDiscordSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_discord_settings

> <UpdateDiscordSettings200Response> update_discord_settings(account_id, update_discord_settings_request)

Update Discord settings

Update Discord account settings. Supports two operations (can be combined):  1. **Webhook identity** - Set the default display name and avatar that appear as the message author on every post. These are account-level defaults; individual posts can override them via platformSpecificData.webhookUsername / webhookAvatarUrl.  2. **Switch channel** - Move the connection to a different channel in the same guild. A new webhook is automatically created in the target channel. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::DiscordApi.new
account_id = 'account_id_example' # String | 
update_discord_settings_request = Late::UpdateDiscordSettingsRequest.new({account_id: 'account_id_example'}) # UpdateDiscordSettingsRequest | 

begin
  # Update Discord settings
  result = api_instance.update_discord_settings(account_id, update_discord_settings_request)
  p result
rescue Late::ApiError => e
  puts "Error when calling DiscordApi->update_discord_settings: #{e}"
end
```

#### Using the update_discord_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateDiscordSettings200Response>, Integer, Hash)> update_discord_settings_with_http_info(account_id, update_discord_settings_request)

```ruby
begin
  # Update Discord settings
  data, status_code, headers = api_instance.update_discord_settings_with_http_info(account_id, update_discord_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateDiscordSettings200Response>
rescue Late::ApiError => e
  puts "Error when calling DiscordApi->update_discord_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **update_discord_settings_request** | [**UpdateDiscordSettingsRequest**](UpdateDiscordSettingsRequest.md) |  |  |

### Return type

[**UpdateDiscordSettings200Response**](UpdateDiscordSettings200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

