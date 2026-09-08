# Zernio::BusinessAgentWebsiteInput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** |  |  |
| **included_sub_domains** | **Array&lt;String&gt;** |  | [optional] |
| **included_url_patterns** | **Array&lt;String&gt;** | Only URLs containing one of these substrings are ingested. | [optional] |
| **excluded_sub_domains** | **Array&lt;String&gt;** |  | [optional] |
| **excluded_url_patterns** | **Array&lt;String&gt;** |  | [optional] |
| **single_urls** | **Array&lt;String&gt;** | Crawl only these exact pages instead of the whole site. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentWebsiteInput.new(
  url: null,
  included_sub_domains: null,
  included_url_patterns: null,
  excluded_sub_domains: null,
  excluded_url_patterns: null,
  single_urls: null
)
```

