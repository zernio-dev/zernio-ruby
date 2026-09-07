# Zernio::AdLibraryApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**search_ad_library**](AdLibraryApi.md#search_ad_library) | **GET** /v1/ads/library | Search the public Ad Library |


## search_ad_library

> <SearchAdLibrary200Response> search_ad_library(account_id, opts)

Search the public Ad Library

Competitor and market research over the platform's public ad archive, searched with the customer's own connected token (no extra scope): Meta's Ad Library (`GET /ads_archive`) for a `facebook` / `instagram` / `metaads` account, LinkedIn's Ad Library (`GET /rest/adLibrary`) for a `linkedin` / `linkedinads` account. Rows are returned in the platform's raw shape under `data`; `paging.after` is an opaque cursor on both (`null` when exhausted).  **Meta coverage.** Political and social-issue ads are searchable worldwide. Every other ad is in the archive only if it was delivered to the EU or UK within the last year, so a US-only commercial advertiser is invisible. Spend, impressions and demographics are political-only fields and are left out of the default projection; request them via `fields`. Meta serves the archive only to people who confirmed their identity and location at facebook.com/ID: until the Facebook user behind the connection has done so, the call fails with `meta_identity_confirmation_required` (403).  **LinkedIn coverage.** Ads served after June 1 2023, worldwide, kept for a year after their last impression. EU-delivered ads carry impression ranges and the disclosed targeting facets. Pages are capped at 25 ads (`limit` > 25 is a 400); `after` is the next offset.  Which params apply: `q`, `countries`, `since`, `until`, `limit`, `after` on both; `pageIds`, `adType`, `status`, `platforms`, `mediaType`, `languages`, `searchType`, `fields` are Meta-only; `advertiser` is LinkedIn-only. Passing a param the account's platform does not support is a 400 naming the param.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdLibraryApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (facebook / instagram / metaads for Meta, linkedin / linkedinads for LinkedIn). Its token is the one that searches.
opts = {
  q: 'q_example', # String | Keyword search. Meta does not translate it, so write it in the ads' language. Required unless pageIds (Meta) or advertiser (LinkedIn) is given.
  page_ids: 'page_ids_example', # String | Meta only. Comma-separated Facebook Page ids (max 10) whose ads to list.
  advertiser: 'advertiser_example', # String | LinkedIn only. Advertiser (Page) name to search.
  countries: 'countries_example', # String | Comma-separated ISO 3166-1 alpha-2 codes the ads reached. Meta defaults to ALL (an explicit ALL is Meta-only); LinkedIn searches every market when omitted.
  ad_type: 'ALL', # String | Meta only.
  status: 'ACTIVE', # String | Meta only. ACTIVE = eligible for delivery right now.
  platforms: 'platforms_example', # String | Meta only. Comma-separated publisher platforms: FACEBOOK, INSTAGRAM, AUDIENCE_NETWORK, MESSENGER, WHATSAPP, OCULUS, THREADS, STREAMING_SERVICES.
  media_type: 'ALL', # String | Meta only.
  languages: 'languages_example', # String | Meta only. Comma-separated ISO 639-1 codes of the ad text.
  since: Date.parse('2013-10-20'), # Date | Earliest delivery date (YYYY-MM-DD).
  _until: Date.parse('2013-10-20'), # Date | Latest delivery date (YYYY-MM-DD).
  search_type: 'KEYWORD_UNORDERED', # String | Meta only. Whether q matches words in any order or as an exact phrase (comma-separate phrases to match all of them).
  fields: 'fields_example', # String | Meta only. Raw Graph projection override, e.g. add spend,impressions,demographic_distribution for political ads.
  limit: 56, # Integer | Rows per page. LinkedIn accepts at most 25.
  after: 'after_example' # String | paging.after of the previous page.
}

begin
  # Search the public Ad Library
  result = api_instance.search_ad_library(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdLibraryApi->search_ad_library: #{e}"
end
```

#### Using the search_ad_library_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAdLibrary200Response>, Integer, Hash)> search_ad_library_with_http_info(account_id, opts)

```ruby
begin
  # Search the public Ad Library
  data, status_code, headers = api_instance.search_ad_library_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAdLibrary200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdLibraryApi->search_ad_library_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (facebook / instagram / metaads for Meta, linkedin / linkedinads for LinkedIn). Its token is the one that searches. |  |
| **q** | **String** | Keyword search. Meta does not translate it, so write it in the ads&#39; language. Required unless pageIds (Meta) or advertiser (LinkedIn) is given. | [optional] |
| **page_ids** | **String** | Meta only. Comma-separated Facebook Page ids (max 10) whose ads to list. | [optional] |
| **advertiser** | **String** | LinkedIn only. Advertiser (Page) name to search. | [optional] |
| **countries** | **String** | Comma-separated ISO 3166-1 alpha-2 codes the ads reached. Meta defaults to ALL (an explicit ALL is Meta-only); LinkedIn searches every market when omitted. | [optional] |
| **ad_type** | **String** | Meta only. | [optional][default to &#39;ALL&#39;] |
| **status** | **String** | Meta only. ACTIVE &#x3D; eligible for delivery right now. | [optional][default to &#39;ACTIVE&#39;] |
| **platforms** | **String** | Meta only. Comma-separated publisher platforms: FACEBOOK, INSTAGRAM, AUDIENCE_NETWORK, MESSENGER, WHATSAPP, OCULUS, THREADS, STREAMING_SERVICES. | [optional] |
| **media_type** | **String** | Meta only. | [optional] |
| **languages** | **String** | Meta only. Comma-separated ISO 639-1 codes of the ad text. | [optional] |
| **since** | **Date** | Earliest delivery date (YYYY-MM-DD). | [optional] |
| **_until** | **Date** | Latest delivery date (YYYY-MM-DD). | [optional] |
| **search_type** | **String** | Meta only. Whether q matches words in any order or as an exact phrase (comma-separate phrases to match all of them). | [optional][default to &#39;KEYWORD_UNORDERED&#39;] |
| **fields** | **String** | Meta only. Raw Graph projection override, e.g. add spend,impressions,demographic_distribution for political ads. | [optional] |
| **limit** | **Integer** | Rows per page. LinkedIn accepts at most 25. | [optional][default to 25] |
| **after** | **String** | paging.after of the previous page. | [optional] |

### Return type

[**SearchAdLibrary200Response**](SearchAdLibrary200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

