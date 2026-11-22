# Zernio::WorkspacesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_workspace**](WorkspacesApi.md#create_workspace) | **POST** /v1/workspaces | Create workspace |
| [**create_workspace_api_key**](WorkspacesApi.md#create_workspace_api_key) | **POST** /v1/workspaces/{workspaceId}/api-keys | Create workspace key |
| [**delete_workspace**](WorkspacesApi.md#delete_workspace) | **DELETE** /v1/workspaces/{workspaceId} | Delete workspace |
| [**get_workspace**](WorkspacesApi.md#get_workspace) | **GET** /v1/workspaces/{workspaceId} | Get workspace |
| [**list_workspaces**](WorkspacesApi.md#list_workspaces) | **GET** /v1/workspaces | List workspaces |
| [**update_workspace**](WorkspacesApi.md#update_workspace) | **PATCH** /v1/workspaces/{workspaceId} | Rename workspace |


## create_workspace

> <CreateWorkspace201Response> create_workspace(create_workspace_request)

Create workspace

Creates a new, empty workspace owned by the key's owner, for example one per client of your product.  - Send `apiKey` to get the new workspace's first key in the same call. A key only manages its own workspace, so no other key can mint one there later. - The workspace has no billing. Its keys can read, but writes return 402 `workspace_billing_required` until billing is set up at `billing.setupUrl`. - Needs a full-access key. Creation is capped at 5 a day and 20 owned workspaces without billing (429). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkspacesApi.new
create_workspace_request = Zernio::CreateWorkspaceRequest.new({name: 'name_example'}) # CreateWorkspaceRequest | 

begin
  # Create workspace
  result = api_instance.create_workspace(create_workspace_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace: #{e}"
end
```

#### Using the create_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkspace201Response>, Integer, Hash)> create_workspace_with_http_info(create_workspace_request)

```ruby
begin
  # Create workspace
  data, status_code, headers = api_instance.create_workspace_with_http_info(create_workspace_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkspace201Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_workspace_request** | [**CreateWorkspaceRequest**](CreateWorkspaceRequest.md) |  |  |

### Return type

[**CreateWorkspace201Response**](CreateWorkspace201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_workspace_api_key

> <CreateWorkspaceApiKey201Response> create_workspace_api_key(workspace_id, create_workspace_api_key_request)

Create workspace key

Creates another API key that acts in this workspace as its creator. It covers every profile, and its full value is returned only once.  - The caller must be owner or admin there. - The calling credential must be a full-access key of this same workspace. Profile-scoped, restricted and handed-over keys, OAuth tokens and keys of other workspaces get 403. - For another workspace, use the dashboard. For a new one, send `apiKey` on `POST /v1/workspaces`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkspacesApi.new
workspace_id = 'workspace_id_example' # String | 
create_workspace_api_key_request = Zernio::CreateWorkspaceApiKeyRequest.new({name: 'name_example'}) # CreateWorkspaceApiKeyRequest | 

begin
  # Create workspace key
  result = api_instance.create_workspace_api_key(workspace_id, create_workspace_api_key_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace_api_key: #{e}"
end
```

#### Using the create_workspace_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateWorkspaceApiKey201Response>, Integer, Hash)> create_workspace_api_key_with_http_info(workspace_id, create_workspace_api_key_request)

```ruby
begin
  # Create workspace key
  data, status_code, headers = api_instance.create_workspace_api_key_with_http_info(workspace_id, create_workspace_api_key_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateWorkspaceApiKey201Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->create_workspace_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** |  |  |
| **create_workspace_api_key_request** | [**CreateWorkspaceApiKeyRequest**](CreateWorkspaceApiKeyRequest.md) |  |  |

### Return type

[**CreateWorkspaceApiKey201Response**](CreateWorkspaceApiKey201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_workspace

> <GetWorkspace200Response> delete_workspace(workspace_id, opts)

Delete workspace

Schedules the workspace for deletion 48 hours ahead, as the dashboard does. Members keep working, publishing is paused, and the owner or an admin can cancel from the dashboard until then. Only this workspace's data is deleted, never its members' accounts.  - Owner only, with a full-access key of this workspace. A key of another workspace gets 403; delete it from the dashboard. - A Personal workspace is never deleted. - Refused while the workspace owes a payment or holds a phone number or carrier registration (409 `deletion_blocked`). - With a balance above $0, send `moveBalanceTo` (another billed workspace you own) or `forfeitBalance=true`. Balances are never refunded. Without either the call returns 422 `deletion_balance_choice`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkspacesApi.new
workspace_id = 'workspace_id_example' # String | 
opts = {
  move_balance_to: 'move_balance_to_example', # String | A billed workspace you own that receives the remaining balance.
  forfeit_balance: true # Boolean | Leave the remaining balance; it is written off when the workspace is deleted.
}

begin
  # Delete workspace
  result = api_instance.delete_workspace(workspace_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->delete_workspace: #{e}"
end
```

#### Using the delete_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkspace200Response>, Integer, Hash)> delete_workspace_with_http_info(workspace_id, opts)

```ruby
begin
  # Delete workspace
  data, status_code, headers = api_instance.delete_workspace_with_http_info(workspace_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkspace200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->delete_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** |  |  |
| **move_balance_to** | **String** | A billed workspace you own that receives the remaining balance. | [optional] |
| **forfeit_balance** | **Boolean** | Leave the remaining balance; it is written off when the workspace is deleted. | [optional] |

### Return type

[**GetWorkspace200Response**](GetWorkspace200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_workspace

> <GetWorkspace200Response> get_workspace(workspace_id)

Get workspace

Returns one workspace the key's owner belongs to, with their role. Owners, admins and billing admins also get `billing` (whether it is set up, and where to set it up); members and viewers do not.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkspacesApi.new
workspace_id = 'workspace_id_example' # String | 

begin
  # Get workspace
  result = api_instance.get_workspace(workspace_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspace: #{e}"
end
```

#### Using the get_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkspace200Response>, Integer, Hash)> get_workspace_with_http_info(workspace_id)

```ruby
begin
  # Get workspace
  data, status_code, headers = api_instance.get_workspace_with_http_info(workspace_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkspace200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->get_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** |  |  |

### Return type

[**GetWorkspace200Response**](GetWorkspace200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_workspaces

> <ListWorkspaces200Response> list_workspaces(opts)

List workspaces

Lists every workspace the key's owner belongs to, with their role in each: teams first by name, their Personal workspace last. Any key of the owner lists them all, whatever workspace that key acts in.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkspacesApi.new
opts = {
  limit: 56, # Integer | Page size.
  skip: 56 # Integer | Number of workspaces to skip.
}

begin
  # List workspaces
  result = api_instance.list_workspaces(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->list_workspaces: #{e}"
end
```

#### Using the list_workspaces_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWorkspaces200Response>, Integer, Hash)> list_workspaces_with_http_info(opts)

```ruby
begin
  # List workspaces
  data, status_code, headers = api_instance.list_workspaces_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWorkspaces200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->list_workspaces_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Page size. | [optional][default to 50] |
| **skip** | **Integer** | Number of workspaces to skip. | [optional][default to 0] |

### Return type

[**ListWorkspaces200Response**](ListWorkspaces200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_workspace

> <GetWorkspace200Response> update_workspace(workspace_id, update_workspace_request)

Rename workspace

Renames a workspace. Owner or admin there, with a full-access key of this workspace (a key of another workspace gets 403: rename it from the dashboard). Only a Personal workspace can be called \"Personal\".

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WorkspacesApi.new
workspace_id = 'workspace_id_example' # String | 
update_workspace_request = Zernio::UpdateWorkspaceRequest.new({name: 'name_example'}) # UpdateWorkspaceRequest | 

begin
  # Rename workspace
  result = api_instance.update_workspace(workspace_id, update_workspace_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->update_workspace: #{e}"
end
```

#### Using the update_workspace_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWorkspace200Response>, Integer, Hash)> update_workspace_with_http_info(workspace_id, update_workspace_request)

```ruby
begin
  # Rename workspace
  data, status_code, headers = api_instance.update_workspace_with_http_info(workspace_id, update_workspace_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWorkspace200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WorkspacesApi->update_workspace_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** |  |  |
| **update_workspace_request** | [**UpdateWorkspaceRequest**](UpdateWorkspaceRequest.md) |  |  |

### Return type

[**GetWorkspace200Response**](GetWorkspace200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

