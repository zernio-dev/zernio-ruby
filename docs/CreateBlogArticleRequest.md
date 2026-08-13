# Zernio::CreateBlogArticleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  |  |
| **body_html** | **String** | Article body as HTML. | [optional] |
| **handle** | **String** | URL slug. Generated from the title when omitted. | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **author** | **String** | Display name of the article author. | [optional] |
| **excerpt** | **String** | Short summary shown in blog listings. | [optional] |
| **image** | [**CreateBlogArticleRequestImage**](CreateBlogArticleRequestImage.md) |  | [optional] |
| **seo** | [**CreateBlogArticleRequestSeo**](CreateBlogArticleRequestSeo.md) |  | [optional] |
| **is_published** | **Boolean** | Set false to create the article as a draft. | [optional] |
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

