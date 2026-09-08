# Zernio::BusinessAgentWebsite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **included_sub_domains** | **Array&lt;String&gt;** |  | [optional] |
| **included_url_patterns** | **Array&lt;String&gt;** | Only URLs containing one of these substrings are ingested. | [optional] |
| **excluded_sub_domains** | **Array&lt;String&gt;** |  | [optional] |
| **excluded_url_patterns** | **Array&lt;String&gt;** |  | [optional] |
| **single_urls** | **Array&lt;String&gt;** | Crawl only these exact pages instead of the whole site. | [optional] |
| **id** | **String** |  |  |
| **crawl_status** | **String** | not_started, pending, in_progress, completed, completed_no_data or failed (see crawl_error). | [optional] |
| **crawl_error** | **String** |  | [optional] |
| **pages_crawled** | **Integer** |  | [optional] |
| **last_crawled_at** | **Integer** | Unix seconds. | [optional] |
| **created_at** | **Integer** | Unix seconds. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentWebsite.new(
  url: null,
  included_sub_domains: null,
  included_url_patterns: null,
  excluded_sub_domains: null,
  excluded_url_patterns: null,
  single_urls: null,
  id: null,
  crawl_status: null,
  crawl_error: null,
  pages_crawled: null,
  last_crawled_at: null,
  created_at: null
)
```

