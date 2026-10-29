# Zernio::FilesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_file_picker_session**](FilesApi.md#create_file_picker_session) | **POST** /v1/files/picker-sessions | Create a hosted Google Picker session |
| [**create_folder**](FilesApi.md#create_folder) | **POST** /v1/files/folders | Create a folder |
| [**download_file**](FilesApi.md#download_file) | **GET** /v1/files/{fileId}/download | Download a file |
| [**get_file**](FilesApi.md#get_file) | **GET** /v1/files/{fileId} | Get a file or folder |
| [**get_file_share_link**](FilesApi.md#get_file_share_link) | **GET** /v1/files/{fileId}/share-link | Get an anyone-with-the-link share link |
| [**list_files**](FilesApi.md#list_files) | **GET** /v1/files | List files in a folder or search the drive |
| [**trash_file**](FilesApi.md#trash_file) | **DELETE** /v1/files/{fileId} | Move a file to the trash |
| [**update_file**](FilesApi.md#update_file) | **PATCH** /v1/files/{fileId} | Rename or move a file |
| [**upload_file**](FilesApi.md#upload_file) | **POST** /v1/files | Upload a file |


## create_file_picker_session

> <CreateFilePickerSession201Response> create_file_picker_session(create_file_picker_session_request)

Create a hosted Google Picker session

Creates a hosted Google Picker session so your end user can grant Zernio access to Drive files.  Google accounts are connected with `drive.file`, so Zernio opens only files it created or the user picked (see the Files tag).  1. Create a session. 2. Send the user to `url`. 3. They pick files in Google Picker on a Zernio-hosted page.  ### Redirect  When they finish, the browser is sent to `redirectUrl` with these query params added (existing params are kept):  - `status=picked`, `pickerSessionId`, `fileIds` (comma-separated Drive file ids, already checked against Drive), or - `status=cancelled`, `pickerSessionId` when the user pressed Cancel.  A `file.picked` webhook fires on every successful pick, so `redirectUrl` is optional for server-side integrations. Closing the picker without picking keeps the session open; the user can try again until it expires.  ### Limits  - The URL is single-use and expires after 30 minutes; create a new session for every pick. - Google accounts only: Microsoft accounts answer 400 `platform_not_supported` because OneDrive needs no picker. - Picks are permanent grants: once picked, a file stays readable through the Files endpoints until the user removes Zernio from their Google account. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
create_file_picker_session_request = Zernio::CreateFilePickerSessionRequest.new({account_id: 'account_id_example'}) # CreateFilePickerSessionRequest | 

begin
  # Create a hosted Google Picker session
  result = api_instance.create_file_picker_session(create_file_picker_session_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->create_file_picker_session: #{e}"
end
```

#### Using the create_file_picker_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateFilePickerSession201Response>, Integer, Hash)> create_file_picker_session_with_http_info(create_file_picker_session_request)

```ruby
begin
  # Create a hosted Google Picker session
  data, status_code, headers = api_instance.create_file_picker_session_with_http_info(create_file_picker_session_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateFilePickerSession201Response>
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->create_file_picker_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_file_picker_session_request** | [**CreateFilePickerSessionRequest**](CreateFilePickerSessionRequest.md) |  |  |

### Return type

[**CreateFilePickerSession201Response**](CreateFilePickerSession201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_folder

> <UploadFile201Response> create_folder(create_folder_request)

Create a folder

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
create_folder_request = Zernio::CreateFolderRequest.new({account_id: 'account_id_example', name: 'name_example'}) # CreateFolderRequest | 

begin
  # Create a folder
  result = api_instance.create_folder(create_folder_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->create_folder: #{e}"
end
```

#### Using the create_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadFile201Response>, Integer, Hash)> create_folder_with_http_info(create_folder_request)

```ruby
begin
  # Create a folder
  data, status_code, headers = api_instance.create_folder_with_http_info(create_folder_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadFile201Response>
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->create_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_folder_request** | [**CreateFolderRequest**](CreateFolderRequest.md) |  |  |

### Return type

[**UploadFile201Response**](UploadFile201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## download_file

> File download_file(file_id, account_id)

Download a file

Streams the bytes with `Content-Disposition: attachment`. Google Docs, Slides and Drawings arrive as PDF/PNG and Sheets as XLSX, named with the export extension. Folders answer 400.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
file_id = 'file_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.

begin
  # Download a file
  result = api_instance.download_file(file_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->download_file: #{e}"
end
```

#### Using the download_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_file_with_http_info(file_id, account_id)

```ruby
begin
  # Download a file
  data, status_code, headers = api_instance.download_file_with_http_info(file_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->download_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/octet-stream, application/json


## get_file

> <UploadFile201Response> get_file(file_id, account_id)

Get a file or folder

On Google Drive, a file Zernio neither created nor was given through Google Picker answers 404 `resource_not_found` with `details: { fileId, reason: file_not_granted }`; send the user through `POST /v1/files/picker-sessions` (pass the id in `fileIds` to show it first). The same 404 applies to download, update, trash and share-link.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
file_id = 'file_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.

begin
  # Get a file or folder
  result = api_instance.get_file(file_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->get_file: #{e}"
end
```

#### Using the get_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadFile201Response>, Integer, Hash)> get_file_with_http_info(file_id, account_id)

```ruby
begin
  # Get a file or folder
  data, status_code, headers = api_instance.get_file_with_http_info(file_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadFile201Response>
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->get_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |

### Return type

[**UploadFile201Response**](UploadFile201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_share_link

> <GetFileShareLink200Response> get_file_share_link(file_id, account_id)

Get an anyone-with-the-link share link

Grants read access to anyone holding the link (Drive `anyone` permission, OneDrive anonymous view link) and returns it. The grant stays until it is revoked on the provider.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
file_id = 'file_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.

begin
  # Get an anyone-with-the-link share link
  result = api_instance.get_file_share_link(file_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->get_file_share_link: #{e}"
end
```

#### Using the get_file_share_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFileShareLink200Response>, Integer, Hash)> get_file_share_link_with_http_info(file_id, account_id)

```ruby
begin
  # Get an anyone-with-the-link share link
  data, status_code, headers = api_instance.get_file_share_link_with_http_info(file_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFileShareLink200Response>
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->get_file_share_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |

### Return type

[**GetFileShareLink200Response**](GetFileShareLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_files

> <ListFiles200Response> list_files(account_id, opts)

List files in a folder or search the drive

Lists the children of `folderId` (the root by default), folders first.  With `q` and no `folderId` the whole drive is searched by name (on Google, every drive the app can see, shared drives included).  - The account must have been connected with `scopes=files` (412 `account_scope_missing` otherwise). - Cursors are opaque and provider-issued. - Google Drive returns only files Zernio created or the user picked (see the Files tag): an unpicked folder lists empty. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
account_id = 'account_id_example' # String | The connected Google or Microsoft account.
opts = {
  folder_id: 'folder_id_example', # String | Provider folder id; omit for the root.
  q: 'q_example', # String | Name search.
  cursor: 'cursor_example', # String | 
  limit: 56 # Integer | 
}

begin
  # List files in a folder or search the drive
  result = api_instance.list_files(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->list_files: #{e}"
end
```

#### Using the list_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFiles200Response>, Integer, Hash)> list_files_with_http_info(account_id, opts)

```ruby
begin
  # List files in a folder or search the drive
  data, status_code, headers = api_instance.list_files_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFiles200Response>
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->list_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected Google or Microsoft account. |  |
| **folder_id** | **String** | Provider folder id; omit for the root. | [optional] |
| **q** | **String** | Name search. | [optional] |
| **cursor** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |

### Return type

[**ListFiles200Response**](ListFiles200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trash_file

> <TrashFile200Response> trash_file(file_id, account_id)

Move a file to the trash

Drive trash or the OneDrive recycle bin; nothing is destroyed and the user can restore it on the provider.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
file_id = 'file_id_example' # String | 
account_id = 'account_id_example' # String | The connected Google or Microsoft account.

begin
  # Move a file to the trash
  result = api_instance.trash_file(file_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->trash_file: #{e}"
end
```

#### Using the trash_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TrashFile200Response>, Integer, Hash)> trash_file_with_http_info(file_id, account_id)

```ruby
begin
  # Move a file to the trash
  data, status_code, headers = api_instance.trash_file_with_http_info(file_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TrashFile200Response>
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->trash_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |
| **account_id** | **String** | The connected Google or Microsoft account. |  |

### Return type

[**TrashFile200Response**](TrashFile200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_file

> <UploadFile201Response> update_file(file_id, update_file_request)

Rename or move a file

`parentId` moves the item into another folder; `name` renames it. At least one is required.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
file_id = 'file_id_example' # String | 
update_file_request = Zernio::UpdateFileRequest.new({account_id: 'account_id_example'}) # UpdateFileRequest | 

begin
  # Rename or move a file
  result = api_instance.update_file(file_id, update_file_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->update_file: #{e}"
end
```

#### Using the update_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadFile201Response>, Integer, Hash)> update_file_with_http_info(file_id, update_file_request)

```ruby
begin
  # Rename or move a file
  data, status_code, headers = api_instance.update_file_with_http_info(file_id, update_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadFile201Response>
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->update_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **String** |  |  |
| **update_file_request** | [**UpdateFileRequest**](UpdateFileRequest.md) |  |  |

### Return type

[**UploadFile201Response**](UploadFile201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_file

> <UploadFile201Response> upload_file(upload_file_request)

Upload a file

Either `multipart/form-data` with the file under `file` plus `accountId`, `name` (defaults to the file name) and `parentId`, or JSON with a public `url` the file is fetched from (100 MB cap). Large files go through the provider's resumable upload.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::FilesApi.new
upload_file_request = Zernio::UploadFileRequest.new({account_id: 'account_id_example', name: 'name_example', content_type: 'image/png', url: 'url_example'}) # UploadFileRequest | 

begin
  # Upload a file
  result = api_instance.upload_file(upload_file_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->upload_file: #{e}"
end
```

#### Using the upload_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadFile201Response>, Integer, Hash)> upload_file_with_http_info(upload_file_request)

```ruby
begin
  # Upload a file
  data, status_code, headers = api_instance.upload_file_with_http_info(upload_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadFile201Response>
rescue Zernio::ApiError => e
  puts "Error when calling FilesApi->upload_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_file_request** | [**UploadFileRequest**](UploadFileRequest.md) |  |  |

### Return type

[**UploadFile201Response**](UploadFile201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

