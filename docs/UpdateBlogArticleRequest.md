# Zernio::UpdateBlogArticleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** |  | [optional] |
| **body_html** | **String** | Article body as HTML. | [optional] |
| **handle** | **String** | URL slug of the article. | [optional] |
| **tags** | **Array&lt;String&gt;** | Replaces the full tag list. | [optional] |
| **author** | **String** | Display name of the article author. | [optional] |
| **excerpt** | **String** | Short summary shown in blog listings. | [optional] |
| **image** | [**CreateBlogArticleRequestImage**](CreateBlogArticleRequestImage.md) |  | [optional] |
| **seo** | [**CreateBlogArticleRequestSeo**](CreateBlogArticleRequestSeo.md) |  | [optional] |
| **is_published** | **Boolean** | Set false to unpublish the article back to a draft. | [optional] |
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

