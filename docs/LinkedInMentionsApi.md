# Late::LinkedInMentionsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_linked_in_mentions**](LinkedInMentionsApi.md#get_linked_in_mentions) | **GET** /v1/accounts/{accountId}/linkedin-mentions | Resolve LinkedIn mention |


## get_linked_in_mentions

> <GetLinkedInMentions200Response> get_linked_in_mentions(account_id, url, opts)

Resolve LinkedIn mention

Converts a LinkedIn profile or company URL to a URN for @mentions in posts.  How to use LinkedIn @mentions (2-step workflow):  1. Call this endpoint with the LinkedIn profile/company URL to get the mention URN and format. 2. Embed the returned mentionFormat (e.g. @[Vincent Jong](urn:li:person:xxx)) directly in your post's content field.  Example: - Resolve: GET /v1/accounts/{id}/linkedin-mentions?url=linkedin.com/in/vincentjong&displayName=Vincent Jong - Returns: mentionFormat: \"@[Vincent Jong](urn:li:person:xxx)\" - Use in post content: \"Great talk with @[Vincent Jong](urn:li:person:xxx) today!\"  Important: The mentions array field in POST /v1/posts is stored for reference only and does NOT trigger @mentions on LinkedIn. You must embed the mention format directly in the content text.  Requirements: - Person mentions require the LinkedIn account to be admin of at least one organization. This is a LinkedIn API limitation: the only endpoints that resolve profile URLs to member URNs (vanityUrl, peopleTypeahead) are scoped to organization followers. There is no public LinkedIn API to resolve a vanity URL without organization context. - Organization mentions (e.g. @Microsoft) work without this requirement. - For person mentions to be clickable, the displayName parameter must exactly match the name shown on their LinkedIn profile. - Person mentions DO work when published from personal profiles (the URN just needs to be valid). The limitation is only in the resolution step (URL to URN), not in publishing. 

### Examples

```ruby
require 'time'
require 'late-sdk'
# setup authorization
Late.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Late::LinkedInMentionsApi.new
account_id = 'account_id_example' # String | The LinkedIn account ID
url = 'miquelpalet' # String | LinkedIn profile URL, company URL, or vanity name.
opts = {
  display_name: 'Miquel Palet' # String | Exact display name as shown on LinkedIn. Required for person mentions to be clickable. Optional for org mentions.
}

begin
  # Resolve LinkedIn mention
  result = api_instance.get_linked_in_mentions(account_id, url, opts)
  p result
rescue Late::ApiError => e
  puts "Error when calling LinkedInMentionsApi->get_linked_in_mentions: #{e}"
end
```

#### Using the get_linked_in_mentions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLinkedInMentions200Response>, Integer, Hash)> get_linked_in_mentions_with_http_info(account_id, url, opts)

```ruby
begin
  # Resolve LinkedIn mention
  data, status_code, headers = api_instance.get_linked_in_mentions_with_http_info(account_id, url, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLinkedInMentions200Response>
rescue Late::ApiError => e
  puts "Error when calling LinkedInMentionsApi->get_linked_in_mentions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The LinkedIn account ID |  |
| **url** | **String** | LinkedIn profile URL, company URL, or vanity name. |  |
| **display_name** | **String** | Exact display name as shown on LinkedIn. Required for person mentions to be clickable. Optional for org mentions. | [optional] |

### Return type

[**GetLinkedInMentions200Response**](GetLinkedInMentions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

