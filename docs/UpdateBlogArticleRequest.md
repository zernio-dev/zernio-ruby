# Zernio::UpdateBlogArticleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **body_html** | **String** | Article body as HTML. | [optional] |
| **handle** | **String** | URL slug of the article. | [optional] |
| **tags** | **Array&lt;String&gt;** | Replaces the full tag-name list. WordPress resolves existing names case-insensitively and creates missing tags. | [optional] |
| **author** | **String** | Shopify author display name, or numeric WordPress user id serialized as a string. Assigning another WordPress user may require elevated capability. | [optional] |
| **excerpt** | **String** | Short summary shown in blog listings. | [optional] |
| **image** | [**UpdateBlogArticleRequestImage**](UpdateBlogArticleRequestImage.md) |  | [optional] |
| **seo** | [**CreateBlogArticleRequestSeo**](CreateBlogArticleRequestSeo.md) |  | [optional] |
| **is_published** | **Boolean** | Set false to move to draft or true to publish. On WordPress false takes priority over a future publishDate; omission preserves status unless publishDate is sent. | [optional] |
| **publish_date** | **Time** | ISO 8601 datetime with offset (or Z). A future date schedules publication natively on the platform. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateBlogArticleRequest.new(
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

