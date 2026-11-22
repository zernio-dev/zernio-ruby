# Zernio::ListGoogleSearchConsoleSitemaps200ResponseDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **path** | **String** |  | [optional] |
| **last_submitted** | **Time** |  | [optional] |
| **last_downloaded** | **Time** |  | [optional] |
| **is_pending** | **Boolean** |  | [optional] |
| **is_sitemaps_index** | **Boolean** |  | [optional] |
| **type** | **String** |  | [optional] |
| **warnings** | **String** | Count as a string, as Google sends it. | [optional] |
| **errors** | **String** | Count as a string, as Google sends it. | [optional] |
| **contents** | [**Array&lt;ListGoogleSearchConsoleSitemaps200ResponseDataInnerContentsInner&gt;**](ListGoogleSearchConsoleSitemaps200ResponseDataInnerContentsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListGoogleSearchConsoleSitemaps200ResponseDataInner.new(
  path: https://acme.com/sitemap.xml,
  last_submitted: null,
  last_downloaded: null,
  is_pending: null,
  is_sitemaps_index: null,
  type: sitemap,
  warnings: null,
  errors: null,
  contents: null
)
```

