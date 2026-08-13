# Zernio::BlogsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_blog**](BlogsApi.md#create_blog) | **POST** /v1/accounts/{accountId}/blogs | Create a blog |
| [**create_blog_article**](BlogsApi.md#create_blog_article) | **POST** /v1/accounts/{accountId}/blogs/{blogId}/articles | Create a blog article |
| [**delete_blog**](BlogsApi.md#delete_blog) | **DELETE** /v1/accounts/{accountId}/blogs/{blogId} | Delete a blog |
| [**delete_blog_article**](BlogsApi.md#delete_blog_article) | **DELETE** /v1/accounts/{accountId}/blogs/{blogId}/articles/{articleId} | Delete a blog article |
| [**get_blog**](BlogsApi.md#get_blog) | **GET** /v1/accounts/{accountId}/blogs/{blogId} | Get a blog |
| [**get_blog_article**](BlogsApi.md#get_blog_article) | **GET** /v1/accounts/{accountId}/blogs/{blogId}/articles/{articleId} | Get a blog article |
| [**list_blog_articles**](BlogsApi.md#list_blog_articles) | **GET** /v1/accounts/{accountId}/blogs/{blogId}/articles | List blog articles |
| [**list_blogs**](BlogsApi.md#list_blogs) | **GET** /v1/accounts/{accountId}/blogs | List blogs |
| [**update_blog**](BlogsApi.md#update_blog) | **PATCH** /v1/accounts/{accountId}/blogs/{blogId} | Update a blog |
| [**update_blog_article**](BlogsApi.md#update_blog_article) | **PATCH** /v1/accounts/{accountId}/blogs/{blogId}/articles/{articleId} | Update a blog article |


## create_blog

> <CreateBlog201Response> create_blog(account_id, create_blog_request)

Create a blog

Creates a blog on the connected store. The platform generates the URL `handle` from the title when omitted.  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
create_blog_request = Zernio::CreateBlogRequest.new({title: 'title_example'}) # CreateBlogRequest | 

begin
  # Create a blog
  result = api_instance.create_blog(account_id, create_blog_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->create_blog: #{e}"
end
```

#### Using the create_blog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBlog201Response>, Integer, Hash)> create_blog_with_http_info(account_id, create_blog_request)

```ruby
begin
  # Create a blog
  data, status_code, headers = api_instance.create_blog_with_http_info(account_id, create_blog_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBlog201Response>
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->create_blog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **create_blog_request** | [**CreateBlogRequest**](CreateBlogRequest.md) |  |  |

### Return type

[**CreateBlog201Response**](CreateBlog201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_blog_article

> <CreateBlogArticle201Response> create_blog_article(account_id, blog_id, create_blog_article_request)

Create a blog article

Creates an article on the blog. Publishing behavior:  - `isPublished: false` keeps the article as a draft. - A future `publishDate` schedules publication natively on the   platform; the platform publishes it at that time with no Zernio   queue involved. - `seo.title` / `seo.description` map to Shopify's global `title_tag`   and `description_tag` metafields (the fields Shopify themes read for   the page title and meta description).  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
blog_id = 'blog_id_example' # String | Platform-native numeric blog id. Non-numeric values return 400.
create_blog_article_request = Zernio::CreateBlogArticleRequest.new({title: 'title_example'}) # CreateBlogArticleRequest | 

begin
  # Create a blog article
  result = api_instance.create_blog_article(account_id, blog_id, create_blog_article_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->create_blog_article: #{e}"
end
```

#### Using the create_blog_article_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBlogArticle201Response>, Integer, Hash)> create_blog_article_with_http_info(account_id, blog_id, create_blog_article_request)

```ruby
begin
  # Create a blog article
  data, status_code, headers = api_instance.create_blog_article_with_http_info(account_id, blog_id, create_blog_article_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBlogArticle201Response>
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->create_blog_article_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **blog_id** | **String** | Platform-native numeric blog id. Non-numeric values return 400. |  |
| **create_blog_article_request** | [**CreateBlogArticleRequest**](CreateBlogArticleRequest.md) |  |  |

### Return type

[**CreateBlogArticle201Response**](CreateBlogArticle201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_blog

> delete_blog(account_id, blog_id)

Delete a blog

Deletes the blog AND every article in it. The delete happens on the platform and is permanent; Zernio stores nothing to restore it from.  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
blog_id = 'blog_id_example' # String | Platform-native numeric blog id. Non-numeric values return 400.

begin
  # Delete a blog
  api_instance.delete_blog(account_id, blog_id)
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->delete_blog: #{e}"
end
```

#### Using the delete_blog_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_blog_with_http_info(account_id, blog_id)

```ruby
begin
  # Delete a blog
  data, status_code, headers = api_instance.delete_blog_with_http_info(account_id, blog_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->delete_blog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **blog_id** | **String** | Platform-native numeric blog id. Non-numeric values return 400. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_blog_article

> delete_blog_article(account_id, blog_id, article_id)

Delete a blog article

Deletes the article. The delete happens on the platform and is permanent; Zernio stores nothing to restore it from.  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
blog_id = 'blog_id_example' # String | Platform-native numeric blog id. Non-numeric values return 400.
article_id = 'article_id_example' # String | Platform-native numeric article id. Non-numeric values return 400.

begin
  # Delete a blog article
  api_instance.delete_blog_article(account_id, blog_id, article_id)
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->delete_blog_article: #{e}"
end
```

#### Using the delete_blog_article_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_blog_article_with_http_info(account_id, blog_id, article_id)

```ruby
begin
  # Delete a blog article
  data, status_code, headers = api_instance.delete_blog_article_with_http_info(account_id, blog_id, article_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->delete_blog_article_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **blog_id** | **String** | Platform-native numeric blog id. Non-numeric values return 400. |  |
| **article_id** | **String** | Platform-native numeric article id. Non-numeric values return 400. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_blog

> <CreateBlog201Response> get_blog(account_id, blog_id)

Get a blog

Fetches a single blog. `blogId` is the platform's numeric blog id from `GET /v1/accounts/{accountId}/blogs`, not a Zernio id.  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
blog_id = 'blog_id_example' # String | Platform-native numeric blog id. Non-numeric values return 400.

begin
  # Get a blog
  result = api_instance.get_blog(account_id, blog_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->get_blog: #{e}"
end
```

#### Using the get_blog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBlog201Response>, Integer, Hash)> get_blog_with_http_info(account_id, blog_id)

```ruby
begin
  # Get a blog
  data, status_code, headers = api_instance.get_blog_with_http_info(account_id, blog_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBlog201Response>
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->get_blog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **blog_id** | **String** | Platform-native numeric blog id. Non-numeric values return 400. |  |

### Return type

[**CreateBlog201Response**](CreateBlog201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_blog_article

> <CreateBlogArticle201Response> get_blog_article(account_id, blog_id, article_id)

Get a blog article

Fetches a single article. An article addressed through a blog it does not belong to is a 404 (code blog_article_not_found).  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
blog_id = 'blog_id_example' # String | Platform-native numeric blog id. Non-numeric values return 400.
article_id = 'article_id_example' # String | Platform-native numeric article id. Non-numeric values return 400.

begin
  # Get a blog article
  result = api_instance.get_blog_article(account_id, blog_id, article_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->get_blog_article: #{e}"
end
```

#### Using the get_blog_article_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBlogArticle201Response>, Integer, Hash)> get_blog_article_with_http_info(account_id, blog_id, article_id)

```ruby
begin
  # Get a blog article
  data, status_code, headers = api_instance.get_blog_article_with_http_info(account_id, blog_id, article_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBlogArticle201Response>
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->get_blog_article_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **blog_id** | **String** | Platform-native numeric blog id. Non-numeric values return 400. |  |
| **article_id** | **String** | Platform-native numeric article id. Non-numeric values return 400. |  |

### Return type

[**CreateBlogArticle201Response**](CreateBlogArticle201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_blog_articles

> <ListBlogArticles200Response> list_blog_articles(account_id, blog_id, opts)

List blog articles

Lists the articles of a blog. Cursor-paginated: pass `limit` (1-50, default 20) and the `cursor` from a previous response's `nextCursor`; `nextCursor` is null when there are no more pages.  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
blog_id = 'blog_id_example' # String | Platform-native numeric blog id. Non-numeric values return 400.
opts = {
  limit: 56, # Integer | Page size (1-50).
  cursor: 'cursor_example' # String | Opaque cursor from a previous response. Omit for the first page.
}

begin
  # List blog articles
  result = api_instance.list_blog_articles(account_id, blog_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->list_blog_articles: #{e}"
end
```

#### Using the list_blog_articles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBlogArticles200Response>, Integer, Hash)> list_blog_articles_with_http_info(account_id, blog_id, opts)

```ruby
begin
  # List blog articles
  data, status_code, headers = api_instance.list_blog_articles_with_http_info(account_id, blog_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBlogArticles200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->list_blog_articles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **blog_id** | **String** | Platform-native numeric blog id. Non-numeric values return 400. |  |
| **limit** | **Integer** | Page size (1-50). | [optional][default to 20] |
| **cursor** | **String** | Opaque cursor from a previous response. Omit for the first page. | [optional] |

### Return type

[**ListBlogArticles200Response**](ListBlogArticles200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_blogs

> <ListBlogs200Response> list_blogs(account_id, opts)

List blogs

Lists the blogs on the connected store, newest-first as the platform returns them. Cursor-paginated: pass `limit` (1-50, default 20) and the `cursor` from a previous response's `nextCursor`; `nextCursor` is null when there are no more pages.  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
opts = {
  limit: 56, # Integer | Page size (1-50).
  cursor: 'cursor_example' # String | Opaque cursor from a previous response. Omit for the first page.
}

begin
  # List blogs
  result = api_instance.list_blogs(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->list_blogs: #{e}"
end
```

#### Using the list_blogs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListBlogs200Response>, Integer, Hash)> list_blogs_with_http_info(account_id, opts)

```ruby
begin
  # List blogs
  data, status_code, headers = api_instance.list_blogs_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListBlogs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->list_blogs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **limit** | **Integer** | Page size (1-50). | [optional][default to 20] |
| **cursor** | **String** | Opaque cursor from a previous response. Omit for the first page. | [optional] |

### Return type

[**ListBlogs200Response**](ListBlogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_blog

> <CreateBlog201Response> update_blog(account_id, blog_id, update_blog_request)

Update a blog

Partial-updates a blog. Send any subset of `title` and `handle`; at least one field is required (an empty body returns 400).  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
blog_id = 'blog_id_example' # String | Platform-native numeric blog id. Non-numeric values return 400.
update_blog_request = Zernio::UpdateBlogRequest.new # UpdateBlogRequest | 

begin
  # Update a blog
  result = api_instance.update_blog(account_id, blog_id, update_blog_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->update_blog: #{e}"
end
```

#### Using the update_blog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBlog201Response>, Integer, Hash)> update_blog_with_http_info(account_id, blog_id, update_blog_request)

```ruby
begin
  # Update a blog
  data, status_code, headers = api_instance.update_blog_with_http_info(account_id, blog_id, update_blog_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBlog201Response>
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->update_blog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **blog_id** | **String** | Platform-native numeric blog id. Non-numeric values return 400. |  |
| **update_blog_request** | [**UpdateBlogRequest**](UpdateBlogRequest.md) |  |  |

### Return type

[**CreateBlog201Response**](CreateBlog201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_blog_article

> <CreateBlogArticle201Response> update_blog_article(account_id, blog_id, article_id, update_blog_article_request)

Update a blog article

Partial-updates an article. Send any subset of the create fields (`title`, `bodyHtml`, `handle`, `tags`, `author`, `excerpt`, `image`, `seo`, `isPublished`, `publishDate`); at least one field is required (an empty body returns 400). `isPublished` and `publishDate` behave as on create: `isPublished: false` unpublishes back to a draft and a future `publishDate` schedules publication natively on the platform.  Supported on Shopify (platform `shopify`). Accounts on platforms without blogs support return 400; a blogs-capable platform that lacks this specific operation returns 405. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::BlogsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
blog_id = 'blog_id_example' # String | Platform-native numeric blog id. Non-numeric values return 400.
article_id = 'article_id_example' # String | Platform-native numeric article id. Non-numeric values return 400.
update_blog_article_request = Zernio::UpdateBlogArticleRequest.new # UpdateBlogArticleRequest | 

begin
  # Update a blog article
  result = api_instance.update_blog_article(account_id, blog_id, article_id, update_blog_article_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->update_blog_article: #{e}"
end
```

#### Using the update_blog_article_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBlogArticle201Response>, Integer, Hash)> update_blog_article_with_http_info(account_id, blog_id, article_id, update_blog_article_request)

```ruby
begin
  # Update a blog article
  data, status_code, headers = api_instance.update_blog_article_with_http_info(account_id, blog_id, article_id, update_blog_article_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBlogArticle201Response>
rescue Zernio::ApiError => e
  puts "Error when calling BlogsApi->update_blog_article_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **blog_id** | **String** | Platform-native numeric blog id. Non-numeric values return 400. |  |
| **article_id** | **String** | Platform-native numeric article id. Non-numeric values return 400. |  |
| **update_blog_article_request** | [**UpdateBlogArticleRequest**](UpdateBlogArticleRequest.md) |  |  |

### Return type

[**CreateBlogArticle201Response**](CreateBlogArticle201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

