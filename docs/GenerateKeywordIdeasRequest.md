# Zernio::GenerateKeywordIdeasRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio googleads SocialAccount id. |  |
| **customer_id** | **String** | Numeric Google Ads customer id (no dashes); only needed when the connection has several accounts. | [optional] |
| **seed_keywords** | **Array&lt;String&gt;** | Seed terms. Provide these, seedUrl, or both. | [optional] |
| **seed_url** | **String** | Landing page to mine for ideas. Provide this, seedKeywords, or both. | [optional] |
| **countries** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 country codes. Omitted &#x3D; worldwide. | [optional] |
| **language_constant_id** | **String** | Google languageConstant id (1000 &#x3D; English). | [optional][default to &#39;1000&#39;] |
| **network** | **String** |  | [optional][default to &#39;GOOGLE_SEARCH&#39;] |
| **include_adult_keywords** | **Boolean** |  | [optional] |
| **page_size** | **Integer** |  | [optional] |
| **page_token** | **String** | Cursor from paging.nextPageToken of the previous page. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GenerateKeywordIdeasRequest.new(
  account_id: null,
  customer_id: null,
  seed_keywords: null,
  seed_url: null,
  countries: null,
  language_constant_id: null,
  network: null,
  include_adult_keywords: null,
  page_size: null,
  page_token: null
)
```

