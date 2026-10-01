# Zernio::ChangelogApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_changelog**](ChangelogApi.md#list_changelog) | **GET** /v1/changelog | List API changelog entries |


## list_changelog

> <ListChangelog200Response> list_changelog(opts)

List API changelog entries

The API changelog, newest first. No API key needed; one address may make 120 requests a minute. Each entry is what the `api.changelog.published` webhook delivered: the announcement in `message`, and in `changes` the deterministic diff of the OpenAPI spec (operations and schemas added, removed and modified) for automation to act on. Page with `before` set to the previous page's `nextCursor`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'

api_instance = Zernio::ChangelogApi.new
opts = {
  type: 'new_feature', # String | Only entries of this type.
  platform: 'whatsapp', # String | Only entries tagged with this platform or area slug (see `platforms` on the entry). One slug per request.
  before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Only entries published strictly before this instant. Pass the previous page's `nextCursor`.
  limit: 56 # Integer | 
}

begin
  # List API changelog entries
  result = api_instance.list_changelog(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ChangelogApi->list_changelog: #{e}"
end
```

#### Using the list_changelog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListChangelog200Response>, Integer, Hash)> list_changelog_with_http_info(opts)

```ruby
begin
  # List API changelog entries
  data, status_code, headers = api_instance.list_changelog_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListChangelog200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ChangelogApi->list_changelog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Only entries of this type. | [optional] |
| **platform** | **String** | Only entries tagged with this platform or area slug (see &#x60;platforms&#x60; on the entry). One slug per request. | [optional] |
| **before** | **Time** | Only entries published strictly before this instant. Pass the previous page&#39;s &#x60;nextCursor&#x60;. | [optional] |
| **limit** | **Integer** |  | [optional][default to 20] |

### Return type

[**ListChangelog200Response**](ListChangelog200Response.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

