# Zernio::DiscordApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_discord_member_role**](DiscordApi.md#add_discord_member_role) | **PUT** /v1/discord/guilds/{guildId}/members/{userId}/roles/{roleId} | Assign a role to a guild member |
| [**create_discord_guild_role**](DiscordApi.md#create_discord_guild_role) | **POST** /v1/discord/guilds/{guildId}/roles | Create a Discord guild role |
| [**create_discord_scheduled_event**](DiscordApi.md#create_discord_scheduled_event) | **POST** /v1/discord/guilds/{guildId}/events | Create a Discord scheduled event |
| [**create_discord_thread**](DiscordApi.md#create_discord_thread) | **POST** /v1/discord/channels/{channelId}/threads | Create a Discord public thread |
| [**crosspost_discord_message**](DiscordApi.md#crosspost_discord_message) | **POST** /v1/discord/channels/{channelId}/messages/{messageId}/crosspost | Crosspost a Discord announcement message |
| [**delete_discord_guild_role**](DiscordApi.md#delete_discord_guild_role) | **DELETE** /v1/discord/guilds/{guildId}/roles/{roleId} | Delete a Discord guild role |
| [**delete_discord_message**](DiscordApi.md#delete_discord_message) | **DELETE** /v1/discord/channels/{channelId}/messages/{messageId} | Delete a Discord channel message |
| [**delete_discord_scheduled_event**](DiscordApi.md#delete_discord_scheduled_event) | **DELETE** /v1/discord/guilds/{guildId}/events/{eventId} | Delete a Discord scheduled event |
| [**edit_discord_guild_role**](DiscordApi.md#edit_discord_guild_role) | **PATCH** /v1/discord/guilds/{guildId}/roles/{roleId} | Edit a Discord guild role |
| [**get_discord_channels**](DiscordApi.md#get_discord_channels) | **GET** /v1/accounts/{accountId}/discord-channels | List Discord guild channels |
| [**get_discord_scheduled_event**](DiscordApi.md#get_discord_scheduled_event) | **GET** /v1/discord/guilds/{guildId}/events/{eventId} | Get a Discord scheduled event |
| [**get_discord_settings**](DiscordApi.md#get_discord_settings) | **GET** /v1/accounts/{accountId}/discord-settings | Get Discord account settings |
| [**list_discord_guild_members**](DiscordApi.md#list_discord_guild_members) | **GET** /v1/discord/guilds/{guildId}/members | List Discord guild members |
| [**list_discord_guild_roles**](DiscordApi.md#list_discord_guild_roles) | **GET** /v1/discord/guilds/{guildId}/roles | List Discord guild roles |
| [**list_discord_pinned_messages**](DiscordApi.md#list_discord_pinned_messages) | **GET** /v1/discord/channels/{channelId}/pins | List pinned messages |
| [**list_discord_scheduled_events**](DiscordApi.md#list_discord_scheduled_events) | **GET** /v1/discord/guilds/{guildId}/events | List Discord scheduled events |
| [**pin_discord_message**](DiscordApi.md#pin_discord_message) | **PUT** /v1/discord/channels/{channelId}/pins/{messageId} | Pin a Discord message |
| [**remove_discord_member_role**](DiscordApi.md#remove_discord_member_role) | **DELETE** /v1/discord/guilds/{guildId}/members/{userId}/roles/{roleId} | Remove a role from a guild member |
| [**send_discord_direct_message**](DiscordApi.md#send_discord_direct_message) | **POST** /v1/discord/dms | Send a Discord Direct Message |
| [**unpin_discord_message**](DiscordApi.md#unpin_discord_message) | **DELETE** /v1/discord/channels/{channelId}/pins/{messageId} | Unpin a Discord message |
| [**update_discord_scheduled_event**](DiscordApi.md#update_discord_scheduled_event) | **PATCH** /v1/discord/guilds/{guildId}/events/{eventId} | Update a Discord scheduled event |
| [**update_discord_settings**](DiscordApi.md#update_discord_settings) | **PATCH** /v1/accounts/{accountId}/discord-settings | Update Discord settings |


## add_discord_member_role

> <AddDiscordMemberRole200Response> add_discord_member_role(guild_id, user_id, role_id, account_id)

Assign a role to a guild member

Assign one role to one member. Idempotent on Discord's side — re-running on a member who already has the role is a 204 no-op.  Path shape mirrors Discord's own API (`PUT /guilds/{guild}/members/{user}/roles/{role}`) for zero-translation mental mapping.  Bot needs MANAGE_ROLES permission in the guild AND its highest role must be above the target role (Discord hierarchy rule). The `@everyone` role (where roleId == guildId) cannot be assigned. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | 
user_id = 'user_id_example' # String | Discord user snowflake to assign the role to.
role_id = 'role_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Assign a role to a guild member
  result = api_instance.add_discord_member_role(guild_id, user_id, role_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->add_discord_member_role: #{e}"
end
```

#### Using the add_discord_member_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddDiscordMemberRole200Response>, Integer, Hash)> add_discord_member_role_with_http_info(guild_id, user_id, role_id, account_id)

```ruby
begin
  # Assign a role to a guild member
  data, status_code, headers = api_instance.add_discord_member_role_with_http_info(guild_id, user_id, role_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddDiscordMemberRole200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->add_discord_member_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** |  |  |
| **user_id** | **String** | Discord user snowflake to assign the role to. |  |
| **role_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**AddDiscordMemberRole200Response**](AddDiscordMemberRole200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_discord_guild_role

> <CreateDiscordGuildRole201Response> create_discord_guild_role(guild_id, account_id, create_discord_guild_role_request)

Create a Discord guild role

Creates a new role in the guild.  Requires the bot to hold the Manage Roles permission. Guilds that added the Zernio bot before role management shipped must re-invite it, because Discord applies the permission set at invite time.  Discord's role hierarchy applies: the bot cannot create a role positioned at or above its own highest role, and cannot grant permissions it does not itself hold. Either attempt returns a 403 carrying Discord's own error. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | Discord guild snowflake ID
account_id = 'account_id_example' # String | SocialAccount _id of the Discord account bound to this guild
create_discord_guild_role_request = Zernio::CreateDiscordGuildRoleRequest.new({name: 'name_example'}) # CreateDiscordGuildRoleRequest | 

begin
  # Create a Discord guild role
  result = api_instance.create_discord_guild_role(guild_id, account_id, create_discord_guild_role_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->create_discord_guild_role: #{e}"
end
```

#### Using the create_discord_guild_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscordGuildRole201Response>, Integer, Hash)> create_discord_guild_role_with_http_info(guild_id, account_id, create_discord_guild_role_request)

```ruby
begin
  # Create a Discord guild role
  data, status_code, headers = api_instance.create_discord_guild_role_with_http_info(guild_id, account_id, create_discord_guild_role_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscordGuildRole201Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->create_discord_guild_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** | Discord guild snowflake ID |  |
| **account_id** | **String** | SocialAccount _id of the Discord account bound to this guild |  |
| **create_discord_guild_role_request** | [**CreateDiscordGuildRoleRequest**](CreateDiscordGuildRoleRequest.md) |  |  |

### Return type

[**CreateDiscordGuildRole201Response**](CreateDiscordGuildRole201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_discord_scheduled_event

> <CreateDiscordScheduledEvent200Response> create_discord_scheduled_event(guild_id, create_discord_scheduled_event_request)

Create a Discord scheduled event

Create a guild scheduled event. Three event types, selected via the discriminator on `entity.type`:    - `external` — off-platform (Zoom, in-person, livestream). Requires     both `location` and `endsAt`. Most common type for scheduler     integrations.   - `voice` — hosted in a Discord voice channel. Requires `channelId`.   - `stage` — hosted in a Discord stage channel. Requires `channelId`.  Bot needs MANAGE_EVENTS in the guild. Existing installs (pre-events PR) need a re-invite OR a server admin manually granting the permission — see route header for details. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | 
create_discord_scheduled_event_request = Zernio::CreateDiscordScheduledEventRequest.new({account_id: 'account_id_example', name: 'name_example', starts_at: Time.now, entity: Zernio::CreateDiscordScheduledEventRequestEntityOneOf.new({type: 'external', location: 'location_example', ends_at: Time.now})}) # CreateDiscordScheduledEventRequest | 

begin
  # Create a Discord scheduled event
  result = api_instance.create_discord_scheduled_event(guild_id, create_discord_scheduled_event_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->create_discord_scheduled_event: #{e}"
end
```

#### Using the create_discord_scheduled_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscordScheduledEvent200Response>, Integer, Hash)> create_discord_scheduled_event_with_http_info(guild_id, create_discord_scheduled_event_request)

```ruby
begin
  # Create a Discord scheduled event
  data, status_code, headers = api_instance.create_discord_scheduled_event_with_http_info(guild_id, create_discord_scheduled_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscordScheduledEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->create_discord_scheduled_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** |  |  |
| **create_discord_scheduled_event_request** | [**CreateDiscordScheduledEventRequest**](CreateDiscordScheduledEventRequest.md) |  |  |

### Return type

[**CreateDiscordScheduledEvent200Response**](CreateDiscordScheduledEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_discord_thread

> <CreateDiscordThread200Response> create_discord_thread(channel_id, account_id, create_discord_thread_request)

Create a Discord public thread

Creates a public thread in a channel. Pass `messageId` to start the thread from an existing message, or omit it to create a standalone thread.  Threads created here are always public. Requires the bot to hold Create Public Threads, which the Zernio bot requests at install time. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
channel_id = 'channel_id_example' # String | Discord channel snowflake ID
account_id = 'account_id_example' # String | SocialAccount _id of the Discord account bound to this channel's guild
create_discord_thread_request = Zernio::CreateDiscordThreadRequest.new({name: 'name_example'}) # CreateDiscordThreadRequest | 

begin
  # Create a Discord public thread
  result = api_instance.create_discord_thread(channel_id, account_id, create_discord_thread_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->create_discord_thread: #{e}"
end
```

#### Using the create_discord_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscordThread200Response>, Integer, Hash)> create_discord_thread_with_http_info(channel_id, account_id, create_discord_thread_request)

```ruby
begin
  # Create a Discord public thread
  data, status_code, headers = api_instance.create_discord_thread_with_http_info(channel_id, account_id, create_discord_thread_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscordThread200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->create_discord_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | Discord channel snowflake ID |  |
| **account_id** | **String** | SocialAccount _id of the Discord account bound to this channel&#39;s guild |  |
| **create_discord_thread_request** | [**CreateDiscordThreadRequest**](CreateDiscordThreadRequest.md) |  |  |

### Return type

[**CreateDiscordThread200Response**](CreateDiscordThread200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## crosspost_discord_message

> <CrosspostDiscordMessage200Response> crosspost_discord_message(channel_id, message_id, account_id)

Crosspost a Discord announcement message

Publishes a message from an announcement channel so it propagates to every server following that channel.  The source channel must be an announcement channel. Calling this on a regular text channel returns a 400 before Discord is contacted, because Discord's own error for this case is opaque. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
channel_id = 'channel_id_example' # String | Discord announcement channel snowflake ID
message_id = 'message_id_example' # String | Discord message snowflake ID
account_id = 'account_id_example' # String | SocialAccount _id of the Discord account bound to this channel's guild

begin
  # Crosspost a Discord announcement message
  result = api_instance.crosspost_discord_message(channel_id, message_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->crosspost_discord_message: #{e}"
end
```

#### Using the crosspost_discord_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CrosspostDiscordMessage200Response>, Integer, Hash)> crosspost_discord_message_with_http_info(channel_id, message_id, account_id)

```ruby
begin
  # Crosspost a Discord announcement message
  data, status_code, headers = api_instance.crosspost_discord_message_with_http_info(channel_id, message_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CrosspostDiscordMessage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->crosspost_discord_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | Discord announcement channel snowflake ID |  |
| **message_id** | **String** | Discord message snowflake ID |  |
| **account_id** | **String** | SocialAccount _id of the Discord account bound to this channel&#39;s guild |  |

### Return type

[**CrosspostDiscordMessage200Response**](CrosspostDiscordMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_discord_guild_role

> <UpdateYoutubeDefaultPlaylist200Response> delete_discord_guild_role(guild_id, role_id, account_id)

Delete a Discord guild role

Permanently deletes a role from the guild and removes it from every member. This cannot be undone.  Requires the bot to hold Manage Roles, and the target role must sit below the bot's highest role. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | Discord guild snowflake ID
role_id = 'role_id_example' # String | Discord role snowflake ID
account_id = 'account_id_example' # String | SocialAccount _id of the Discord account bound to this guild

begin
  # Delete a Discord guild role
  result = api_instance.delete_discord_guild_role(guild_id, role_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->delete_discord_guild_role: #{e}"
end
```

#### Using the delete_discord_guild_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_discord_guild_role_with_http_info(guild_id, role_id, account_id)

```ruby
begin
  # Delete a Discord guild role
  data, status_code, headers = api_instance.delete_discord_guild_role_with_http_info(guild_id, role_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->delete_discord_guild_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** | Discord guild snowflake ID |  |
| **role_id** | **String** | Discord role snowflake ID |  |
| **account_id** | **String** | SocialAccount _id of the Discord account bound to this guild |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_discord_message

> <UpdateYoutubeDefaultPlaylist200Response> delete_discord_message(channel_id, message_id, account_id)

Delete a Discord channel message

Deletes a message from a channel, for moderation and cleanup. This cannot be undone.  Deleting a message the bot did not send requires the bot to hold the Manage Messages permission, which the Zernio bot requests at install time. Deleting the bot's own message needs no extra permission.  Ownership is verified by resolving the channel's guild and confirming the caller owns a Discord account bound to it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
channel_id = 'channel_id_example' # String | Discord channel snowflake ID
message_id = 'message_id_example' # String | Discord message snowflake ID
account_id = 'account_id_example' # String | SocialAccount _id of the Discord account bound to this channel's guild

begin
  # Delete a Discord channel message
  result = api_instance.delete_discord_message(channel_id, message_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->delete_discord_message: #{e}"
end
```

#### Using the delete_discord_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateYoutubeDefaultPlaylist200Response>, Integer, Hash)> delete_discord_message_with_http_info(channel_id, message_id, account_id)

```ruby
begin
  # Delete a Discord channel message
  data, status_code, headers = api_instance.delete_discord_message_with_http_info(channel_id, message_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateYoutubeDefaultPlaylist200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->delete_discord_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | Discord channel snowflake ID |  |
| **message_id** | **String** | Discord message snowflake ID |  |
| **account_id** | **String** | SocialAccount _id of the Discord account bound to this channel&#39;s guild |  |

### Return type

[**UpdateYoutubeDefaultPlaylist200Response**](UpdateYoutubeDefaultPlaylist200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_discord_scheduled_event

> <DeleteDiscordScheduledEvent200Response> delete_discord_scheduled_event(guild_id, event_id, account_id)

Delete a Discord scheduled event

Hard-delete an event. Use PATCH with `status: 'cancelled'` instead if you want the event preserved in the guild's history. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | 
event_id = 'event_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Delete a Discord scheduled event
  result = api_instance.delete_discord_scheduled_event(guild_id, event_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->delete_discord_scheduled_event: #{e}"
end
```

#### Using the delete_discord_scheduled_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteDiscordScheduledEvent200Response>, Integer, Hash)> delete_discord_scheduled_event_with_http_info(guild_id, event_id, account_id)

```ruby
begin
  # Delete a Discord scheduled event
  data, status_code, headers = api_instance.delete_discord_scheduled_event_with_http_info(guild_id, event_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteDiscordScheduledEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->delete_discord_scheduled_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** |  |  |
| **event_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**DeleteDiscordScheduledEvent200Response**](DeleteDiscordScheduledEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## edit_discord_guild_role

> <CreateDiscordGuildRole201Response> edit_discord_guild_role(guild_id, role_id, account_id, edit_discord_guild_role_request)

Edit a Discord guild role

Updates a role's name, color, hoist, mentionable flag, or permission bitfield. At least one field must be supplied. Omitted fields are left unchanged.  Requires the bot to hold Manage Roles, and the target role must sit below the bot's highest role. See the create-role operation for the re-invite requirement. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | Discord guild snowflake ID
role_id = 'role_id_example' # String | Discord role snowflake ID
account_id = 'account_id_example' # String | SocialAccount _id of the Discord account bound to this guild
edit_discord_guild_role_request = Zernio::EditDiscordGuildRoleRequest.new # EditDiscordGuildRoleRequest | 

begin
  # Edit a Discord guild role
  result = api_instance.edit_discord_guild_role(guild_id, role_id, account_id, edit_discord_guild_role_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->edit_discord_guild_role: #{e}"
end
```

#### Using the edit_discord_guild_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscordGuildRole201Response>, Integer, Hash)> edit_discord_guild_role_with_http_info(guild_id, role_id, account_id, edit_discord_guild_role_request)

```ruby
begin
  # Edit a Discord guild role
  data, status_code, headers = api_instance.edit_discord_guild_role_with_http_info(guild_id, role_id, account_id, edit_discord_guild_role_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscordGuildRole201Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->edit_discord_guild_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** | Discord guild snowflake ID |  |
| **role_id** | **String** | Discord role snowflake ID |  |
| **account_id** | **String** | SocialAccount _id of the Discord account bound to this guild |  |
| **edit_discord_guild_role_request** | [**EditDiscordGuildRoleRequest**](EditDiscordGuildRoleRequest.md) |  |  |

### Return type

[**CreateDiscordGuildRole201Response**](CreateDiscordGuildRole201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_discord_channels

> <GetDiscordChannels200Response> get_discord_channels(account_id)

List Discord guild channels

Returns the text, announcement, and forum channels in the connected Discord guild. Use this to discover available channels when switching the connected channel via PATCH /v1/accounts/{accountId}/discord-settings.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
account_id = 'account_id_example' # String | 

begin
  # List Discord guild channels
  result = api_instance.get_discord_channels(account_id)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## get_discord_scheduled_event

> <CreateDiscordScheduledEvent200Response> get_discord_scheduled_event(guild_id, event_id, account_id)

Get a Discord scheduled event

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | 
event_id = 'event_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Get a Discord scheduled event
  result = api_instance.get_discord_scheduled_event(guild_id, event_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->get_discord_scheduled_event: #{e}"
end
```

#### Using the get_discord_scheduled_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscordScheduledEvent200Response>, Integer, Hash)> get_discord_scheduled_event_with_http_info(guild_id, event_id, account_id)

```ruby
begin
  # Get a Discord scheduled event
  data, status_code, headers = api_instance.get_discord_scheduled_event_with_http_info(guild_id, event_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscordScheduledEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->get_discord_scheduled_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** |  |  |
| **event_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**CreateDiscordScheduledEvent200Response**](CreateDiscordScheduledEvent200Response.md)

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
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
account_id = 'account_id_example' # String | 

begin
  # Get Discord account settings
  result = api_instance.get_discord_settings(account_id)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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


## list_discord_guild_members

> <ListDiscordGuildMembers200Response> list_discord_guild_members(guild_id, account_id, opts)

List Discord guild members

Cursor-paginated list of guild members. Returns Discord's raw member objects so callers can build community-ops automation (e.g. \"add role to all members joined in the last 7 days\") on the actual platform shape.  **Important:** this endpoint requires the privileged \"Server Members Intent\" enabled on the Discord app (Developer Portal → Bot tab → toggle \"Server Members Intent\" ON, then Save). Without it, Discord returns an empty array with no error. Verify the intent is enabled before relying on this endpoint.  Pagination: pass `after` = the last `user.id` from the previous page. Omit on the first call. Response includes a `nextCursor` and `hasMore` flag so callers don't need to know Discord's pagination shape. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  limit: 56, # Integer | Page size (1-1000).
  after: 'after_example' # String | Snowflake of the last member from the previous page.
}

begin
  # List Discord guild members
  result = api_instance.list_discord_guild_members(guild_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->list_discord_guild_members: #{e}"
end
```

#### Using the list_discord_guild_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDiscordGuildMembers200Response>, Integer, Hash)> list_discord_guild_members_with_http_info(guild_id, account_id, opts)

```ruby
begin
  # List Discord guild members
  data, status_code, headers = api_instance.list_discord_guild_members_with_http_info(guild_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDiscordGuildMembers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->list_discord_guild_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **limit** | **Integer** | Page size (1-1000). | [optional][default to 100] |
| **after** | **String** | Snowflake of the last member from the previous page. | [optional] |

### Return type

[**ListDiscordGuildMembers200Response**](ListDiscordGuildMembers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_discord_guild_roles

> <ListDiscordGuildRoles200Response> list_discord_guild_roles(guild_id, account_id)

List Discord guild roles

Returns all roles in a Discord guild. Useful for building role-mention pickers, role-permission UIs, or finding the role ID before calling the role-assign endpoint.  Roles are returned unordered — sort client-side by `position` if you need Discord's UI ordering.  Caller must pass `accountId` of a Discord SocialAccount bound to this guild (route verifies team access + guild match). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | Discord guild snowflake ID
account_id = 'account_id_example' # String | SocialAccount _id of the Discord account bound to this guild

begin
  # List Discord guild roles
  result = api_instance.list_discord_guild_roles(guild_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->list_discord_guild_roles: #{e}"
end
```

#### Using the list_discord_guild_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDiscordGuildRoles200Response>, Integer, Hash)> list_discord_guild_roles_with_http_info(guild_id, account_id)

```ruby
begin
  # List Discord guild roles
  data, status_code, headers = api_instance.list_discord_guild_roles_with_http_info(guild_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDiscordGuildRoles200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->list_discord_guild_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** | Discord guild snowflake ID |  |
| **account_id** | **String** | SocialAccount _id of the Discord account bound to this guild |  |

### Return type

[**ListDiscordGuildRoles200Response**](ListDiscordGuildRoles200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_discord_pinned_messages

> <ListDiscordPinnedMessages200Response> list_discord_pinned_messages(channel_id, account_id)

List pinned messages

Returns the channel's pinned messages, sorted most-recently-pinned first. Discord caps a channel at 50 pinned messages and returns the full list unpaginated.  Bot needs READ_MESSAGE_HISTORY in the channel (granted by default BOT_PERMISSIONS). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
channel_id = 'channel_id_example' # String | Discord channel snowflake.
account_id = 'account_id_example' # String | SocialAccount _id of any Discord account in the same guild.

begin
  # List pinned messages
  result = api_instance.list_discord_pinned_messages(channel_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->list_discord_pinned_messages: #{e}"
end
```

#### Using the list_discord_pinned_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDiscordPinnedMessages200Response>, Integer, Hash)> list_discord_pinned_messages_with_http_info(channel_id, account_id)

```ruby
begin
  # List pinned messages
  data, status_code, headers = api_instance.list_discord_pinned_messages_with_http_info(channel_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDiscordPinnedMessages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->list_discord_pinned_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | Discord channel snowflake. |  |
| **account_id** | **String** | SocialAccount _id of any Discord account in the same guild. |  |

### Return type

[**ListDiscordPinnedMessages200Response**](ListDiscordPinnedMessages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_discord_scheduled_events

> <ListDiscordScheduledEvents200Response> list_discord_scheduled_events(guild_id, account_id, opts)

List Discord scheduled events

Return all scheduled events in the guild. Events are distinct from messages — they appear in the server's Events panel and Discord auto-notifies interested members ahead of start time.  Pass `withUserCount=true` to include `user_count` (number of members who RSVP'd) on each event. Useful for surfacing engagement. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  with_user_count: true # Boolean | Include user_count on each event.
}

begin
  # List Discord scheduled events
  result = api_instance.list_discord_scheduled_events(guild_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->list_discord_scheduled_events: #{e}"
end
```

#### Using the list_discord_scheduled_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDiscordScheduledEvents200Response>, Integer, Hash)> list_discord_scheduled_events_with_http_info(guild_id, account_id, opts)

```ruby
begin
  # List Discord scheduled events
  data, status_code, headers = api_instance.list_discord_scheduled_events_with_http_info(guild_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDiscordScheduledEvents200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->list_discord_scheduled_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **with_user_count** | **Boolean** | Include user_count on each event. | [optional] |

### Return type

[**ListDiscordScheduledEvents200Response**](ListDiscordScheduledEvents200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## pin_discord_message

> <PinDiscordMessage200Response> pin_discord_message(channel_id, message_id, account_id)

Pin a Discord message

Pin a specific message in a channel. Path shape mirrors Discord's own API (`PUT /channels/{cid}/pins/{mid}`).  Idempotent — re-pinning an already-pinned message is a 204 no-op.  Constraints:   - Bot needs MANAGE_MESSAGES in the channel.   - 50-pin cap per channel — hitting it returns 400 (Discord-side).     Caller should unpin one first. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
channel_id = 'channel_id_example' # String | 
message_id = 'message_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Pin a Discord message
  result = api_instance.pin_discord_message(channel_id, message_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->pin_discord_message: #{e}"
end
```

#### Using the pin_discord_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PinDiscordMessage200Response>, Integer, Hash)> pin_discord_message_with_http_info(channel_id, message_id, account_id)

```ruby
begin
  # Pin a Discord message
  data, status_code, headers = api_instance.pin_discord_message_with_http_info(channel_id, message_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PinDiscordMessage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->pin_discord_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** |  |  |
| **message_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**PinDiscordMessage200Response**](PinDiscordMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_discord_member_role

> <RemoveDiscordMemberRole200Response> remove_discord_member_role(guild_id, user_id, role_id, account_id)

Remove a role from a guild member

Remove one role from one member. Idempotent — removing a role the member doesn't have returns 204 no-op.  Same permission + hierarchy constraints as the PUT counterpart. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | 
user_id = 'user_id_example' # String | 
role_id = 'role_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Remove a role from a guild member
  result = api_instance.remove_discord_member_role(guild_id, user_id, role_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->remove_discord_member_role: #{e}"
end
```

#### Using the remove_discord_member_role_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveDiscordMemberRole200Response>, Integer, Hash)> remove_discord_member_role_with_http_info(guild_id, user_id, role_id, account_id)

```ruby
begin
  # Remove a role from a guild member
  data, status_code, headers = api_instance.remove_discord_member_role_with_http_info(guild_id, user_id, role_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveDiscordMemberRole200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->remove_discord_member_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** |  |  |
| **user_id** | **String** |  |  |
| **role_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**RemoveDiscordMemberRole200Response**](RemoveDiscordMemberRole200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## send_discord_direct_message

> <SendDiscordDirectMessage200Response> send_discord_direct_message(send_discord_direct_message_request)

Send a Discord Direct Message

Send a 1:1 Direct Message from the bot to a Discord user (by snowflake ID). Supports the same payload shape as channel posts — content, embeds, media attachments, and TTS.  Constraints (Discord platform limits):   - The bot can only DM users it shares at least one guild with.   - If the recipient has DMs disabled for non-friends, Discord returns 403     (surfaces as a 502 platform error).   - `content` capped at 2,000 chars.   - At least one of `content`, `embeds`, or `attachments` is required.   - The recipient must be identified by Discord snowflake ID (not username).  This is a dedicated endpoint rather than a `POST /v1/posts` variant because DMs are 1:1 operational messages (onboarding, billing reminders, support pings) with a different lifecycle than scheduled channel posts. DMs are not persisted to `Post` / `ExternalPost` and are always sent immediately. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
send_discord_direct_message_request = Zernio::SendDiscordDirectMessageRequest.new({account_id: '65a1b2c3d4e5f60718293a4b', user_id: '1234567890123456789'}) # SendDiscordDirectMessageRequest | 

begin
  # Send a Discord Direct Message
  result = api_instance.send_discord_direct_message(send_discord_direct_message_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->send_discord_direct_message: #{e}"
end
```

#### Using the send_discord_direct_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SendDiscordDirectMessage200Response>, Integer, Hash)> send_discord_direct_message_with_http_info(send_discord_direct_message_request)

```ruby
begin
  # Send a Discord Direct Message
  data, status_code, headers = api_instance.send_discord_direct_message_with_http_info(send_discord_direct_message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SendDiscordDirectMessage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->send_discord_direct_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **send_discord_direct_message_request** | [**SendDiscordDirectMessageRequest**](SendDiscordDirectMessageRequest.md) |  |  |

### Return type

[**SendDiscordDirectMessage200Response**](SendDiscordDirectMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## unpin_discord_message

> <UnpinDiscordMessage200Response> unpin_discord_message(channel_id, message_id, account_id)

Unpin a Discord message

Unpin a message. Same MANAGE_MESSAGES permission requirement as pin. Idempotent — unpinning a non-pinned message is a 204 no-op. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
channel_id = 'channel_id_example' # String | 
message_id = 'message_id_example' # String | 
account_id = 'account_id_example' # String | 

begin
  # Unpin a Discord message
  result = api_instance.unpin_discord_message(channel_id, message_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->unpin_discord_message: #{e}"
end
```

#### Using the unpin_discord_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UnpinDiscordMessage200Response>, Integer, Hash)> unpin_discord_message_with_http_info(channel_id, message_id, account_id)

```ruby
begin
  # Unpin a Discord message
  data, status_code, headers = api_instance.unpin_discord_message_with_http_info(channel_id, message_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UnpinDiscordMessage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->unpin_discord_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** |  |  |
| **message_id** | **String** |  |  |
| **account_id** | **String** |  |  |

### Return type

[**UnpinDiscordMessage200Response**](UnpinDiscordMessage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_discord_scheduled_event

> <CreateDiscordScheduledEvent200Response> update_discord_scheduled_event(guild_id, event_id, update_discord_scheduled_event_request)

Update a Discord scheduled event

Patch any subset of fields. Passing `status: 'cancelled'` is how you cancel an event — Discord doesn't have a dedicated cancel endpoint, it's a status transition.  Most status transitions Discord enforces (you can't go SCHEDULED → COMPLETED directly). The common consumer case is SCHEDULED → CANCELED. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
guild_id = 'guild_id_example' # String | 
event_id = 'event_id_example' # String | 
update_discord_scheduled_event_request = Zernio::UpdateDiscordScheduledEventRequest.new({account_id: 'account_id_example'}) # UpdateDiscordScheduledEventRequest | 

begin
  # Update a Discord scheduled event
  result = api_instance.update_discord_scheduled_event(guild_id, event_id, update_discord_scheduled_event_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->update_discord_scheduled_event: #{e}"
end
```

#### Using the update_discord_scheduled_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateDiscordScheduledEvent200Response>, Integer, Hash)> update_discord_scheduled_event_with_http_info(guild_id, event_id, update_discord_scheduled_event_request)

```ruby
begin
  # Update a Discord scheduled event
  data, status_code, headers = api_instance.update_discord_scheduled_event_with_http_info(guild_id, event_id, update_discord_scheduled_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateDiscordScheduledEvent200Response>
rescue Zernio::ApiError => e
  puts "Error when calling DiscordApi->update_discord_scheduled_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **guild_id** | **String** |  |  |
| **event_id** | **String** |  |  |
| **update_discord_scheduled_event_request** | [**UpdateDiscordScheduledEventRequest**](UpdateDiscordScheduledEventRequest.md) |  |  |

### Return type

[**CreateDiscordScheduledEvent200Response**](CreateDiscordScheduledEvent200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_discord_settings

> <UpdateDiscordSettings200Response> update_discord_settings(account_id, update_discord_settings_request)

Update Discord settings

Update Discord account settings. Supports two operations (can be combined):  1. **Webhook identity** - Set the default display name and avatar that appear as the message author on every post. These are account-level defaults; individual posts can override them via platformSpecificData.webhookUsername / webhookAvatarUrl.  2. **Switch channel** - Move the connection to a different channel in the same guild. A new webhook is automatically created in the target channel. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::DiscordApi.new
account_id = 'account_id_example' # String | 
update_discord_settings_request = Zernio::UpdateDiscordSettingsRequest.new # UpdateDiscordSettingsRequest | 

begin
  # Update Discord settings
  result = api_instance.update_discord_settings(account_id, update_discord_settings_request)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
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

