# Zernio::AdLibraryApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**search_ad_library**](AdLibraryApi.md#search_ad_library) | **GET** /v1/ads/library | Search the public Ad Library |


## search_ad_library

> <SearchAdLibrary200Response> search_ad_library(opts)

Search the public Ad Library

Searches Meta's or LinkedIn's public Ad Library to see what ads other advertisers run, for competitor and market research.  ### Which library is searched  - Meta's Ad Library (`GET /ads_archive`) is searched with Zernio's own developer access, so `platform=meta` needs no connected account at all. - LinkedIn's Ad Library (`GET /rest/adLibrary`) runs on a connected `linkedin` / `linkedinads` account, passed as `accountId`. - Passing a Meta account as `accountId` also selects Meta.  Rows are returned in the platform's raw shape under `data`. `paging.after` is an opaque cursor on both (`null` when exhausted).  **Meta coverage.** Political and social-issue ads are searchable worldwide. Every other ad is in the archive only if it was delivered to the EU or UK within the last year, so a US-only commercial advertiser is invisible.  Spend, impressions and demographics are political-only fields and are left out of the default projection; request them via `fields`.  **Meta rate limit.** Meta searches are capped at 40 requests per hour per team, because all customers share Zernio's Meta quota. Meta can also throttle that shared quota. Either way you get a `429` with `Retry-After`: wait that long before retrying.  **LinkedIn coverage.** Ads served after June 1 2023, worldwide, kept for a year after their last impression. EU-delivered ads carry impression ranges and the disclosed targeting facets.  Pages are capped at 25 ads (`limit` > 25 is a 400). `after` is the next offset.  ### Which params apply  - Both: `q`, `countries`, `limit`, `after` - Meta-only: `pageIds`, `adType`, `status`, `platforms`, `mediaType`, `languages`, `searchType`, `fields`, `includeMedia`, `since`, `until` - LinkedIn-only: `advertiser`  Passing a param the account's platform does not support is a 400 naming the param. 

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
opts = {
  platform: 'meta', # String | Which archive to search. `meta` needs no accountId. Required unless accountId is given.
  account_id: 'account_id_example', # String | Zernio SocialAccount id. Required for LinkedIn (linkedin / linkedinads: its token searches). Optional for Meta, where any facebook / instagram / metaads account only selects the platform.
  q: 'q_example', # String | Keyword search. Meta does not translate it, so write it in the ads' language. Required unless pageIds (Meta) or advertiser (LinkedIn) is given.
  page_ids: 'page_ids_example', # String | Meta only. Comma-separated Facebook Page ids (max 10) whose ads to list.
  advertiser: 'advertiser_example', # String | LinkedIn only. Advertiser (Page) name to search.
  countries: 'countries_example', # String | Comma-separated ISO 3166-1 alpha-2 codes the ads reached. Meta defaults to ALL (an explicit ALL is Meta-only); LinkedIn searches every market when omitted.
  ad_type: 'ALL', # String | Meta only.
  status: 'ACTIVE', # String | Meta only. ACTIVE = eligible for delivery right now.
  platforms: 'platforms_example', # String | Meta only. Comma-separated publisher platforms: FACEBOOK, INSTAGRAM, AUDIENCE_NETWORK, MESSENGER, WHATSAPP, OCULUS, THREADS, STREAMING_SERVICES.
  media_type: 'ALL', # String | Meta only.
  languages: 'languages_example', # String | Meta only. Comma-separated ISO 639-1 codes of the ad text.
  since: Date.parse('2013-10-20'), # Date | Meta only. Earliest delivery date (YYYY-MM-DD). LinkedIn's archive does not filter by date, so it is a 400 there: filter on details.adStatistics.firstImpressionAt / latestImpressionAt instead (EU-delivered ads only).
  _until: Date.parse('2013-10-20'), # Date | Meta only. Latest delivery date (YYYY-MM-DD); a 400 on LinkedIn, see since.
  search_type: 'KEYWORD_UNORDERED', # String | Meta only. Whether q matches words in any order or as an exact phrase (comma-separate phrases to match all of them).
  fields: 'id,page_name,ad_delivery_start_time,ad_creative_bodies', # String | Meta only. Comma-separated Graph field override. Supports nested {} projections and Graph field modifiers, so a nested edge can be paged explicitly: without a .limit() modifier the expansion runs at the Meta default page size and the tail is dropped silently.
  include_media: true, # Boolean | Meta only. When `true`, each row also carries `media`: the ad's rendered creative (images, videos, carousel cards) as direct file URLs, so you don't have to open `ad_snapshot_url` yourself.  It also carries `destination_urls`: where the ad sends people (landing page, WhatsApp, app store), unwrapped from Facebook's redirect, in the order the ad shows them. Meta's archive does not return these itself.  - Meta CDN links are signed and expire: download what you need before each item's `expires_at`. - `media` and `destination_urls` are `null` when Meta would not render the snapshot for that ad. `media` is `[]` for a text-only ad, `destination_urls` is `[]` for an ad with no outbound link (lead forms, messages). - Every ad is rendered in a browser, so responses take several seconds longer, and `limit` is capped at 25 (`limit` > 25 is a 400). - With a `fields` override, include `ad_snapshot_url` or no row gets `media` or `destination_urls`. 
  limit: 56, # Integer | Rows per page. LinkedIn accepts at most 25.
  after: 'after_example' # String | paging.after of the previous page.
}

begin
  # Search the public Ad Library
  result = api_instance.search_ad_library(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdLibraryApi->search_ad_library: #{e}"
end
```

#### Using the search_ad_library_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAdLibrary200Response>, Integer, Hash)> search_ad_library_with_http_info(opts)

```ruby
begin
  # Search the public Ad Library
  data, status_code, headers = api_instance.search_ad_library_with_http_info(opts)
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
| **platform** | **String** | Which archive to search. &#x60;meta&#x60; needs no accountId. Required unless accountId is given. | [optional] |
| **account_id** | **String** | Zernio SocialAccount id. Required for LinkedIn (linkedin / linkedinads: its token searches). Optional for Meta, where any facebook / instagram / metaads account only selects the platform. | [optional] |
| **q** | **String** | Keyword search. Meta does not translate it, so write it in the ads&#39; language. Required unless pageIds (Meta) or advertiser (LinkedIn) is given. | [optional] |
| **page_ids** | **String** | Meta only. Comma-separated Facebook Page ids (max 10) whose ads to list. | [optional] |
| **advertiser** | **String** | LinkedIn only. Advertiser (Page) name to search. | [optional] |
| **countries** | **String** | Comma-separated ISO 3166-1 alpha-2 codes the ads reached. Meta defaults to ALL (an explicit ALL is Meta-only); LinkedIn searches every market when omitted. | [optional] |
| **ad_type** | **String** | Meta only. | [optional][default to &#39;ALL&#39;] |
| **status** | **String** | Meta only. ACTIVE &#x3D; eligible for delivery right now. | [optional][default to &#39;ACTIVE&#39;] |
| **platforms** | **String** | Meta only. Comma-separated publisher platforms: FACEBOOK, INSTAGRAM, AUDIENCE_NETWORK, MESSENGER, WHATSAPP, OCULUS, THREADS, STREAMING_SERVICES. | [optional] |
| **media_type** | **String** | Meta only. | [optional] |
| **languages** | **String** | Meta only. Comma-separated ISO 639-1 codes of the ad text. | [optional] |
| **since** | **Date** | Meta only. Earliest delivery date (YYYY-MM-DD). LinkedIn&#39;s archive does not filter by date, so it is a 400 there: filter on details.adStatistics.firstImpressionAt / latestImpressionAt instead (EU-delivered ads only). | [optional] |
| **_until** | **Date** | Meta only. Latest delivery date (YYYY-MM-DD); a 400 on LinkedIn, see since. | [optional] |
| **search_type** | **String** | Meta only. Whether q matches words in any order or as an exact phrase (comma-separate phrases to match all of them). | [optional][default to &#39;KEYWORD_UNORDERED&#39;] |
| **fields** | **String** | Meta only. Comma-separated Graph field override. Supports nested {} projections and Graph field modifiers, so a nested edge can be paged explicitly: without a .limit() modifier the expansion runs at the Meta default page size and the tail is dropped silently. | [optional] |
| **include_media** | **Boolean** | Meta only. When &#x60;true&#x60;, each row also carries &#x60;media&#x60;: the ad&#39;s rendered creative (images, videos, carousel cards) as direct file URLs, so you don&#39;t have to open &#x60;ad_snapshot_url&#x60; yourself.  It also carries &#x60;destination_urls&#x60;: where the ad sends people (landing page, WhatsApp, app store), unwrapped from Facebook&#39;s redirect, in the order the ad shows them. Meta&#39;s archive does not return these itself.  - Meta CDN links are signed and expire: download what you need before each item&#39;s &#x60;expires_at&#x60;. - &#x60;media&#x60; and &#x60;destination_urls&#x60; are &#x60;null&#x60; when Meta would not render the snapshot for that ad. &#x60;media&#x60; is &#x60;[]&#x60; for a text-only ad, &#x60;destination_urls&#x60; is &#x60;[]&#x60; for an ad with no outbound link (lead forms, messages). - Every ad is rendered in a browser, so responses take several seconds longer, and &#x60;limit&#x60; is capped at 25 (&#x60;limit&#x60; &gt; 25 is a 400). - With a &#x60;fields&#x60; override, include &#x60;ad_snapshot_url&#x60; or no row gets &#x60;media&#x60; or &#x60;destination_urls&#x60;.  | [optional][default to false] |
| **limit** | **Integer** | Rows per page. LinkedIn accepts at most 25. | [optional][default to 25] |
| **after** | **String** | paging.after of the previous page. | [optional] |

### Return type

[**SearchAdLibrary200Response**](SearchAdLibrary200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

