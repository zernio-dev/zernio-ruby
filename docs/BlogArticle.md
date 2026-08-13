# Zernio::BlogArticle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native article id (numeric string for Shopify). | [optional] |
| **blog_id** | **String** | Platform-native id of the blog the article belongs to. | [optional] |
| **platform** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **body_html** | **String** | Article body as HTML. | [optional] |
| **handle** | **String** | URL slug of the article. | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **author** | **String** | Display name of the article author. | [optional] |
| **excerpt** | **String** | Short summary shown in blog listings. | [optional] |
| **image** | [**BlogArticleImage**](BlogArticleImage.md) |  | [optional] |
| **is_published** | **Boolean** | False while the article is a draft or its publish date is still in the future. | [optional] |
| **published_at** | **Time** | When the article was (or is scheduled to be) published; null for drafts. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BlogArticle.new(
  id: null,
  blog_id: null,
  platform: null,
  title: null,
  body_html: null,
  handle: null,
  tags: null,
  author: null,
  excerpt: null,
  image: null,
  is_published: null,
  published_at: null,
  created_at: null,
  updated_at: null
)
```

