# Zernio::CreateBlogArticleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **body_html** | **String** | Article body as HTML. | [optional] |
| **handle** | **String** | URL slug. Generated from the title when omitted. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tag names. WordPress resolves existing names case-insensitively and creates missing tags. | [optional] |
| **author** | **String** | Shopify author display name, or numeric WordPress user id serialized as a string. Assigning another WordPress user may require elevated capability. | [optional] |
| **excerpt** | **String** | Short summary shown in blog listings. | [optional] |
| **image** | [**CreateBlogArticleRequestImage**](CreateBlogArticleRequestImage.md) |  | [optional] |
| **seo** | [**CreateBlogArticleRequestSeo**](CreateBlogArticleRequestSeo.md) |  | [optional] |
| **is_published** | **Boolean** | Set false for a draft or true to publish. On WordPress false takes priority over a future publishDate; omission with no date defaults to draft. | [optional] |
| **publish_date** | **Time** | ISO 8601 datetime with offset (or Z). A future date schedules publication natively on the platform. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateBlogArticleRequest.new(
  title: null,
  body_html: null,
  handle: null,
  tags: null,
  author: null,
  excerpt: null,
  image: null,
  seo: null,
  is_published: null,
  publish_date: null
)
```

