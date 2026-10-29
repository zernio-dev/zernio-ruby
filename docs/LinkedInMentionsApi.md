# Zernio::LinkedInMentionsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_linked_in_mentions**](LinkedInMentionsApi.md#get_linked_in_mentions) | **GET** /v1/accounts/{accountId}/linkedin-mentions | Resolve LinkedIn mention |


## get_linked_in_mentions

> <GetLinkedInMentions200Response> get_linked_in_mentions(account_id, url, opts)

Resolve LinkedIn mention

Converts a LinkedIn profile or company URL to a URN for @mentions in posts.  You usually do not need this endpoint. Put the profile or company URL inside `@[...]` in the post `content` (for example `@[https://www.linkedin.com/in/vincentjong]`) and the post resolves it for you, using LinkedIn's own name.  Use this endpoint to preview what a URL resolves to, or to get ready-made `@[Name](urn)` markup, which still works in `content` and is published exactly as written.  ### Example  1. Resolve: GET /v1/accounts/{id}/linkedin-mentions?url=linkedin.com/in/vincentjong 2. Returns: mentionFormat: \"@[Vincent Jong](urn:li:person:xxx)\" 3. Use in post content: \"Great talk with @[Vincent Jong](urn:li:person:xxx) today!\"  Important: the mentions array field in POST /v1/posts is stored for reference only and does NOT trigger @mentions on LinkedIn. Write the mention in the content text.  ### Requirements  - Resolving a profile URL to a person mention requires the LinkedIn account to be admin of at least one organization: both endpoints that resolve a profile URL to a member URN take an organization you administer. - A resolved person mention publishes from any account. Organization mentions (e.g. @Microsoft) have no such requirement. - Person mentions DO work when published from personal profiles (the URN only needs to be valid). The limitation is only in the resolution step (URL to URN), not in publishing.  ### Why a profile can 404  The two resolution endpoints are not scoped alike:  - peopleTypeahead?q=organizationFollowers only returns that organization's followers. - vanityUrl?q=vanityUrlAsOrganization does not, and its resolvable set is opaque.  A 404 here does not mean the person is unknown to you or unknown to LinkedIn: a live public profile can 404 with no reason given.  ### Display name  displayName is deprecated and ignored in practice: the endpoint reads the person's real name from LinkedIn itself. LinkedIn renders a person mention as a link only when the mention text is the person's first name, last name or full name (case-sensitive). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LinkedInMentionsApi.new
account_id = 'account_id_example' # String | The LinkedIn account ID
url = 'miquelpalet' # String | LinkedIn profile URL, company URL, or vanity name.
opts = {
  display_name: 'Miquel Palet' # String | Deprecated: omit it. When omitted, the real name is read from LinkedIn. Ignored for org mentions, which always use the organization's LinkedIn name.  When sent for a person, it overrides the mention text, and LinkedIn renders the mention only if it is exactly the person's first name, last name or full name (case-sensitive). 
}

begin
  # Resolve LinkedIn mention
  result = api_instance.get_linked_in_mentions(account_id, url, opts)
  p result
rescue Zernio::ApiError => e
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
rescue Zernio::ApiError => e
  puts "Error when calling LinkedInMentionsApi->get_linked_in_mentions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The LinkedIn account ID |  |
| **url** | **String** | LinkedIn profile URL, company URL, or vanity name. |  |
| **display_name** | **String** | Deprecated: omit it. When omitted, the real name is read from LinkedIn. Ignored for org mentions, which always use the organization&#39;s LinkedIn name.  When sent for a person, it overrides the mention text, and LinkedIn renders the mention only if it is exactly the person&#39;s first name, last name or full name (case-sensitive).  | [optional] |

### Return type

[**GetLinkedInMentions200Response**](GetLinkedInMentions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

