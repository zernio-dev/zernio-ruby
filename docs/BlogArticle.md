# Zernio::BlogArticle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Platform-native article/post id: numeric on Shopify and WordPress, a GUID on Wix, a hex item id on Webflow. | [optional] |
| **blog_id** | **String** | Platform-native id of the blog the article belongs to. | [optional] |
| **platform** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **body_html** | **String** | Article body as HTML. Wix stores rich content, converted from and to HTML; Wix lists return null (get the article for its body). | [optional] |
| **handle** | **String** | URL slug of the article. | [optional] |
| **url** | **String** | WordPress and Wix. Public URL of the article while it is published; null for drafts and scheduled posts, and on a Wix site that is not published yet. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tag names. On WordPress and Wix, missing tag names are created and matching is case-insensitive. | [optional] |
| **author** | **String** | Shopify author display name, numeric WordPress user id serialized as a string, or Wix site member id. Wix posts without one are attributed to the site&#39;s default author. | [optional] |
| **excerpt** | **String** | Short summary shown in blog listings. | [optional] |
| **image** | [**BlogArticleImage**](BlogArticleImage.md) |  | [optional] |
| **is_published** | **Boolean** | False while the article is a draft or its publish date is still in the future. | [optional] |
| **published_at** | **Time** | Publication time. On WordPress this is present only when status is &#x60;publish&#x60;; null for drafts, pending/private posts, and scheduled posts. | [optional] |
| **status** | **String** | WordPress and Wix. Post status (&#x60;future&#x60; &#x3D; scheduled, &#x60;pending&#x60; &#x3D; in review on Wix); omitted for Shopify. | [optional] |
| **publish_date** | **Time** | WordPress and Wix. Scheduled publication time in UTC when status is &#x60;future&#x60;; null for other statuses and omitted for Shopify. | [optional] |
| **created_at** | **Time** | Creation time when the platform exposes one. WordPress returns null because its core date is the editable publication date. | [optional] |
| **updated_at** | **Time** | Last modification time. WordPress returns modified_gmt as UTC. | [optional] |

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
  url: null,
  tags: null,
  author: null,
  excerpt: null,
  image: null,
  is_published: null,
  published_at: null,
  status: null,
  publish_date: null,
  created_at: null,
  updated_at: null
)
```

