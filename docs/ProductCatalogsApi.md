# Zernio::ProductCatalogsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**batch_ad_catalog_products**](ProductCatalogsApi.md#batch_ad_catalog_products) | **POST** /v1/ads/catalogs/{catalogId}/products/batch | Create, update or delete products in bulk |
| [**create_ad_catalog**](ProductCatalogsApi.md#create_ad_catalog) | **POST** /v1/ads/catalogs | Create a Meta product catalog |
| [**create_ad_catalog_feed**](ProductCatalogsApi.md#create_ad_catalog_feed) | **POST** /v1/ads/catalogs/{catalogId}/feeds | Create a product feed |
| [**create_ad_catalog_feed_upload**](ProductCatalogsApi.md#create_ad_catalog_feed_upload) | **POST** /v1/ads/catalogs/{catalogId}/feeds/{feedId}/uploads | Fetch a feed file now |
| [**create_ad_catalog_product**](ProductCatalogsApi.md#create_ad_catalog_product) | **POST** /v1/ads/catalogs/{catalogId}/products | Add a product to a catalog |
| [**create_ad_catalog_product_set**](ProductCatalogsApi.md#create_ad_catalog_product_set) | **POST** /v1/ads/catalogs/{catalogId}/product-sets | Create a product set |
| [**delete_ad_catalog**](ProductCatalogsApi.md#delete_ad_catalog) | **DELETE** /v1/ads/catalogs/{catalogId} | Delete a product catalog |
| [**delete_ad_catalog_product**](ProductCatalogsApi.md#delete_ad_catalog_product) | **DELETE** /v1/ads/catalogs/{catalogId}/products/{productId} | Delete a product |
| [**delete_ad_catalog_product_set**](ProductCatalogsApi.md#delete_ad_catalog_product_set) | **DELETE** /v1/ads/catalogs/{catalogId}/product-sets/{productSetId} | Delete a product set |
| [**get_ad_catalog**](ProductCatalogsApi.md#get_ad_catalog) | **GET** /v1/ads/catalogs/{catalogId} | Get a product catalog |
| [**get_ad_catalog_batch**](ProductCatalogsApi.md#get_ad_catalog_batch) | **GET** /v1/ads/catalogs/{catalogId}/batches/{handle} | Get a bulk request&#39;s status |
| [**get_ad_catalog_product**](ProductCatalogsApi.md#get_ad_catalog_product) | **GET** /v1/ads/catalogs/{catalogId}/products/{productId} | Get a product |
| [**list_ad_catalog_feed_uploads**](ProductCatalogsApi.md#list_ad_catalog_feed_uploads) | **GET** /v1/ads/catalogs/{catalogId}/feeds/{feedId}/uploads | List a feed&#39;s uploads |
| [**list_ad_catalog_feeds**](ProductCatalogsApi.md#list_ad_catalog_feeds) | **GET** /v1/ads/catalogs/{catalogId}/feeds | List a catalog&#39;s product feeds |
| [**list_ad_catalog_product_sets**](ProductCatalogsApi.md#list_ad_catalog_product_sets) | **GET** /v1/ads/catalogs/{catalogId}/product-sets | List a catalog&#39;s product sets |
| [**list_ad_catalog_products**](ProductCatalogsApi.md#list_ad_catalog_products) | **GET** /v1/ads/catalogs/{catalogId}/products | List a catalog&#39;s products |
| [**list_ad_catalogs**](ProductCatalogsApi.md#list_ad_catalogs) | **GET** /v1/ads/catalogs | List Meta product catalogs |
| [**update_ad_catalog_product**](ProductCatalogsApi.md#update_ad_catalog_product) | **PUT** /v1/ads/catalogs/{catalogId}/products/{productId} | Update a product |
| [**update_ad_catalog_product_set**](ProductCatalogsApi.md#update_ad_catalog_product_set) | **PUT** /v1/ads/catalogs/{catalogId}/product-sets/{productSetId} | Update a product set |


## batch_ad_catalog_products

> <BatchAdCatalogProducts202Response> batch_ad_catalog_products(catalog_id, batch_ad_catalog_products_request)

Create, update or delete products in bulk

Up to 5000 CREATE / UPDATE / DELETE requests keyed by `retailerId`, processed asynchronously by Meta. Returns handles; poll GET /v1/ads/catalogs/{catalogId}/batches/{handle} for the outcome and per-item errors. CREATE requests need name, url, imageUrl, price and currency.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
batch_ad_catalog_products_request = Zernio::BatchAdCatalogProductsRequest.new({account_id: 'account_id_example', requests: [Zernio::BatchAdCatalogProductsRequestRequestsInner.new({method: 'CREATE', product: Zernio::BatchAdCatalogProductsRequestRequestsInnerProduct.new({retailer_id: 'retailer_id_example'})})]}) # BatchAdCatalogProductsRequest | 

begin
  # Create, update or delete products in bulk
  result = api_instance.batch_ad_catalog_products(catalog_id, batch_ad_catalog_products_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->batch_ad_catalog_products: #{e}"
end
```

#### Using the batch_ad_catalog_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchAdCatalogProducts202Response>, Integer, Hash)> batch_ad_catalog_products_with_http_info(catalog_id, batch_ad_catalog_products_request)

```ruby
begin
  # Create, update or delete products in bulk
  data, status_code, headers = api_instance.batch_ad_catalog_products_with_http_info(catalog_id, batch_ad_catalog_products_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchAdCatalogProducts202Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->batch_ad_catalog_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **batch_ad_catalog_products_request** | [**BatchAdCatalogProductsRequest**](BatchAdCatalogProductsRequest.md) |  |  |

### Return type

[**BatchAdCatalogProducts202Response**](BatchAdCatalogProducts202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_catalog

> <CreateAdCatalog201Response> create_ad_catalog(create_ad_catalog_request)

Create a Meta product catalog

Creates a Meta Commerce catalog in the business portfolio (resolved like GET). The same catalog serves Advantage+ catalog ads, Instagram/Facebook Shops and the WhatsApp Business catalog: link it to a WhatsApp number with POST /v1/whatsapp/catalogs. Needs catalog_management on the Meta login.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
create_ad_catalog_request = Zernio::CreateAdCatalogRequest.new({account_id: 'account_id_example', name: 'name_example'}) # CreateAdCatalogRequest | 

begin
  # Create a Meta product catalog
  result = api_instance.create_ad_catalog(create_ad_catalog_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog: #{e}"
end
```

#### Using the create_ad_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalog201Response>, Integer, Hash)> create_ad_catalog_with_http_info(create_ad_catalog_request)

```ruby
begin
  # Create a Meta product catalog
  data, status_code, headers = api_instance.create_ad_catalog_with_http_info(create_ad_catalog_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalog201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_catalog_request** | [**CreateAdCatalogRequest**](CreateAdCatalogRequest.md) |  |  |

### Return type

[**CreateAdCatalog201Response**](CreateAdCatalog201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_catalog_feed

> <CreateAdCatalogFeed201Response> create_ad_catalog_feed(catalog_id, create_ad_catalog_feed_request)

Create a product feed

A feed pulls a CSV/TSV/XML product file from a URL. With `schedule` Meta fetches it on a cadence; without it, trigger fetches with POST /v1/ads/catalogs/{catalogId}/feeds/{feedId}/uploads.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
create_ad_catalog_feed_request = Zernio::CreateAdCatalogFeedRequest.new({account_id: 'account_id_example', name: 'name_example'}) # CreateAdCatalogFeedRequest | 

begin
  # Create a product feed
  result = api_instance.create_ad_catalog_feed(catalog_id, create_ad_catalog_feed_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_feed: #{e}"
end
```

#### Using the create_ad_catalog_feed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalogFeed201Response>, Integer, Hash)> create_ad_catalog_feed_with_http_info(catalog_id, create_ad_catalog_feed_request)

```ruby
begin
  # Create a product feed
  data, status_code, headers = api_instance.create_ad_catalog_feed_with_http_info(catalog_id, create_ad_catalog_feed_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalogFeed201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_feed_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **create_ad_catalog_feed_request** | [**CreateAdCatalogFeedRequest**](CreateAdCatalogFeedRequest.md) |  |  |

### Return type

[**CreateAdCatalogFeed201Response**](CreateAdCatalogFeed201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_catalog_feed_upload

> <CreateAdCatalogFeedUpload202Response> create_ad_catalog_feed_upload(catalog_id, feed_id, create_ad_catalog_feed_upload_request)

Fetch a feed file now

Asks Meta to fetch the product file at `url` into the feed. Processing is asynchronous: read the outcome with GET uploads.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
feed_id = 'feed_id_example' # String | 
create_ad_catalog_feed_upload_request = Zernio::CreateAdCatalogFeedUploadRequest.new({account_id: 'account_id_example', url: 'url_example'}) # CreateAdCatalogFeedUploadRequest | 

begin
  # Fetch a feed file now
  result = api_instance.create_ad_catalog_feed_upload(catalog_id, feed_id, create_ad_catalog_feed_upload_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_feed_upload: #{e}"
end
```

#### Using the create_ad_catalog_feed_upload_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalogFeedUpload202Response>, Integer, Hash)> create_ad_catalog_feed_upload_with_http_info(catalog_id, feed_id, create_ad_catalog_feed_upload_request)

```ruby
begin
  # Fetch a feed file now
  data, status_code, headers = api_instance.create_ad_catalog_feed_upload_with_http_info(catalog_id, feed_id, create_ad_catalog_feed_upload_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalogFeedUpload202Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_feed_upload_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **feed_id** | **String** |  |  |
| **create_ad_catalog_feed_upload_request** | [**CreateAdCatalogFeedUploadRequest**](CreateAdCatalogFeedUploadRequest.md) |  |  |

### Return type

[**CreateAdCatalogFeedUpload202Response**](CreateAdCatalogFeedUpload202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_catalog_product

> <CreateAdCatalogProduct201Response> create_ad_catalog_product(catalog_id, create_ad_catalog_product_request)

Add a product to a catalog

Adds one product. `retailerId` is your SKU and stays the handle for later lookups and batch updates. For many products at once use POST /v1/ads/catalogs/{catalogId}/products/batch. Needs catalog_management on the Meta login.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
create_ad_catalog_product_request = Zernio::CreateAdCatalogProductRequest.new({account_id: 'account_id_example', product: Zernio::CreateAdCatalogProductRequestProduct.new({retailer_id: 'retailer_id_example', name: 'name_example', url: 'url_example', image_url: 'image_url_example', price: 3.56, currency: 'currency_example'})}) # CreateAdCatalogProductRequest | 

begin
  # Add a product to a catalog
  result = api_instance.create_ad_catalog_product(catalog_id, create_ad_catalog_product_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_product: #{e}"
end
```

#### Using the create_ad_catalog_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalogProduct201Response>, Integer, Hash)> create_ad_catalog_product_with_http_info(catalog_id, create_ad_catalog_product_request)

```ruby
begin
  # Add a product to a catalog
  data, status_code, headers = api_instance.create_ad_catalog_product_with_http_info(catalog_id, create_ad_catalog_product_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalogProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **create_ad_catalog_product_request** | [**CreateAdCatalogProductRequest**](CreateAdCatalogProductRequest.md) |  |  |

### Return type

[**CreateAdCatalogProduct201Response**](CreateAdCatalogProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ad_catalog_product_set

> <CreateAdCatalogProductSet201Response> create_ad_catalog_product_set(catalog_id, create_ad_catalog_product_set_request)

Create a product set

A product set is a filter over the catalog, e.g. `{\"retailer_id\": {\"is_any\": [\"sku-1\", \"sku-2\"]}}` or `{\"brand\": {\"i_contains\": \"acme\"}}` (Meta's product set filter syntax).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
create_ad_catalog_product_set_request = Zernio::CreateAdCatalogProductSetRequest.new({account_id: 'account_id_example', name: 'name_example', filter: { key: 3.56}}) # CreateAdCatalogProductSetRequest | 

begin
  # Create a product set
  result = api_instance.create_ad_catalog_product_set(catalog_id, create_ad_catalog_product_set_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_product_set: #{e}"
end
```

#### Using the create_ad_catalog_product_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalogProductSet201Response>, Integer, Hash)> create_ad_catalog_product_set_with_http_info(catalog_id, create_ad_catalog_product_set_request)

```ruby
begin
  # Create a product set
  data, status_code, headers = api_instance.create_ad_catalog_product_set_with_http_info(catalog_id, create_ad_catalog_product_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalogProductSet201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->create_ad_catalog_product_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **create_ad_catalog_product_set_request** | [**CreateAdCatalogProductSetRequest**](CreateAdCatalogProductSetRequest.md) |  |  |

### Return type

[**CreateAdCatalogProductSet201Response**](CreateAdCatalogProductSet201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ad_catalog

> <DeleteAdCatalog200Response> delete_ad_catalog(catalog_id, account_id, opts)

Delete a product catalog

Deletes the catalog and every product in it on Meta. Ads and WhatsApp numbers that use it lose their catalog.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # Delete a product catalog
  result = api_instance.delete_ad_catalog(catalog_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->delete_ad_catalog: #{e}"
end
```

#### Using the delete_ad_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAdCatalog200Response>, Integer, Hash)> delete_ad_catalog_with_http_info(catalog_id, account_id, opts)

```ruby
begin
  # Delete a product catalog
  data, status_code, headers = api_instance.delete_ad_catalog_with_http_info(catalog_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAdCatalog200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->delete_ad_catalog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**DeleteAdCatalog200Response**](DeleteAdCatalog200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ad_catalog_product

> <DeleteAdCatalogProduct200Response> delete_ad_catalog_product(catalog_id, product_id, account_id, opts)

Delete a product

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
product_id = 'product_id_example' # String | Meta product item ID (from the products list; not the retailer id)
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # Delete a product
  result = api_instance.delete_ad_catalog_product(catalog_id, product_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->delete_ad_catalog_product: #{e}"
end
```

#### Using the delete_ad_catalog_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAdCatalogProduct200Response>, Integer, Hash)> delete_ad_catalog_product_with_http_info(catalog_id, product_id, account_id, opts)

```ruby
begin
  # Delete a product
  data, status_code, headers = api_instance.delete_ad_catalog_product_with_http_info(catalog_id, product_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAdCatalogProduct200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->delete_ad_catalog_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **product_id** | **String** | Meta product item ID (from the products list; not the retailer id) |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**DeleteAdCatalogProduct200Response**](DeleteAdCatalogProduct200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ad_catalog_product_set

> <DeleteAdCatalogProductSet200Response> delete_ad_catalog_product_set(catalog_id, product_set_id, account_id, opts)

Delete a product set

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
product_set_id = 'product_set_id_example' # String | 
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # Delete a product set
  result = api_instance.delete_ad_catalog_product_set(catalog_id, product_set_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->delete_ad_catalog_product_set: #{e}"
end
```

#### Using the delete_ad_catalog_product_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAdCatalogProductSet200Response>, Integer, Hash)> delete_ad_catalog_product_set_with_http_info(catalog_id, product_set_id, account_id, opts)

```ruby
begin
  # Delete a product set
  data, status_code, headers = api_instance.delete_ad_catalog_product_set_with_http_info(catalog_id, product_set_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAdCatalogProductSet200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->delete_ad_catalog_product_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **product_set_id** | **String** |  |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**DeleteAdCatalogProductSet200Response**](DeleteAdCatalogProductSet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_catalog

> <CreateAdCatalog201Response> get_ad_catalog(catalog_id, account_id, opts)

Get a product catalog

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # Get a product catalog
  result = api_instance.get_ad_catalog(catalog_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->get_ad_catalog: #{e}"
end
```

#### Using the get_ad_catalog_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalog201Response>, Integer, Hash)> get_ad_catalog_with_http_info(catalog_id, account_id, opts)

```ruby
begin
  # Get a product catalog
  data, status_code, headers = api_instance.get_ad_catalog_with_http_info(catalog_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalog201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->get_ad_catalog_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**CreateAdCatalog201Response**](CreateAdCatalog201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_catalog_batch

> <GetAdCatalogBatch200Response> get_ad_catalog_batch(catalog_id, handle, account_id, opts)

Get a bulk request's status

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
handle = 'handle_example' # String | Handle returned by the batch call
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # Get a bulk request's status
  result = api_instance.get_ad_catalog_batch(catalog_id, handle, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->get_ad_catalog_batch: #{e}"
end
```

#### Using the get_ad_catalog_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdCatalogBatch200Response>, Integer, Hash)> get_ad_catalog_batch_with_http_info(catalog_id, handle, account_id, opts)

```ruby
begin
  # Get a bulk request's status
  data, status_code, headers = api_instance.get_ad_catalog_batch_with_http_info(catalog_id, handle, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdCatalogBatch200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->get_ad_catalog_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **handle** | **String** | Handle returned by the batch call |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**GetAdCatalogBatch200Response**](GetAdCatalogBatch200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_catalog_product

> <CreateAdCatalogProduct201Response> get_ad_catalog_product(catalog_id, product_id, account_id, opts)

Get a product

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
product_id = 'product_id_example' # String | Meta product item ID (from the products list; not the retailer id)
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # Get a product
  result = api_instance.get_ad_catalog_product(catalog_id, product_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->get_ad_catalog_product: #{e}"
end
```

#### Using the get_ad_catalog_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalogProduct201Response>, Integer, Hash)> get_ad_catalog_product_with_http_info(catalog_id, product_id, account_id, opts)

```ruby
begin
  # Get a product
  data, status_code, headers = api_instance.get_ad_catalog_product_with_http_info(catalog_id, product_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalogProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->get_ad_catalog_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **product_id** | **String** | Meta product item ID (from the products list; not the retailer id) |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**CreateAdCatalogProduct201Response**](CreateAdCatalogProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_catalog_feed_uploads

> <ListAdCatalogFeedUploads200Response> list_ad_catalog_feed_uploads(catalog_id, feed_id, account_id, opts)

List a feed's uploads

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
feed_id = 'feed_id_example' # String | 
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # List a feed's uploads
  result = api_instance.list_ad_catalog_feed_uploads(catalog_id, feed_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalog_feed_uploads: #{e}"
end
```

#### Using the list_ad_catalog_feed_uploads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogFeedUploads200Response>, Integer, Hash)> list_ad_catalog_feed_uploads_with_http_info(catalog_id, feed_id, account_id, opts)

```ruby
begin
  # List a feed's uploads
  data, status_code, headers = api_instance.list_ad_catalog_feed_uploads_with_http_info(catalog_id, feed_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogFeedUploads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalog_feed_uploads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **feed_id** | **String** |  |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**ListAdCatalogFeedUploads200Response**](ListAdCatalogFeedUploads200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_catalog_feeds

> <ListAdCatalogFeeds200Response> list_ad_catalog_feeds(catalog_id, account_id, opts)

List a catalog's product feeds

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # List a catalog's product feeds
  result = api_instance.list_ad_catalog_feeds(catalog_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalog_feeds: #{e}"
end
```

#### Using the list_ad_catalog_feeds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogFeeds200Response>, Integer, Hash)> list_ad_catalog_feeds_with_http_info(catalog_id, account_id, opts)

```ruby
begin
  # List a catalog's product feeds
  data, status_code, headers = api_instance.list_ad_catalog_feeds_with_http_info(catalog_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogFeeds200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalog_feeds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**ListAdCatalogFeeds200Response**](ListAdCatalogFeeds200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_catalog_product_sets

> <ListAdCatalogProductSets200Response> list_ad_catalog_product_sets(catalog_id, account_id, opts)

List a catalog's product sets

Lists a Meta product catalog's product sets, the unit a catalog ad promotes. Pass the chosen set id, not the parent catalog id, as `promotedObject.productSetId` on POST /v1/ads/create with `goal: catalog_sales`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example' # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
}

begin
  # List a catalog's product sets
  result = api_instance.list_ad_catalog_product_sets(catalog_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalog_product_sets: #{e}"
end
```

#### Using the list_ad_catalog_product_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogProductSets200Response>, Integer, Hash)> list_ad_catalog_product_sets_with_http_info(catalog_id, account_id, opts)

```ruby
begin
  # List a catalog's product sets
  data, status_code, headers = api_instance.list_ad_catalog_product_sets_with_http_info(catalog_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogProductSets200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalog_product_sets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |

### Return type

[**ListAdCatalogProductSets200Response**](ListAdCatalogProductSets200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_catalog_products

> <ListAdCatalogProducts200Response> list_ad_catalog_products(catalog_id, account_id, opts)

List a catalog's products

Pages through the catalog's products. Filter by your own `retailerId` to look one up. `price` and `salePrice` come back formatted by Meta (for example \"€49.90\").

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example', # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account's own
  limit: 56, # Integer | 
  after: 'after_example', # String | Cursor from the previous page's `nextCursor`
  retailer_id: 'retailer_id_example' # String | Only the product with this retailer id (your SKU)
}

begin
  # List a catalog's products
  result = api_instance.list_ad_catalog_products(catalog_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalog_products: #{e}"
end
```

#### Using the list_ad_catalog_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogProducts200Response>, Integer, Hash)> list_ad_catalog_products_with_http_info(catalog_id, account_id, opts)

```ruby
begin
  # List a catalog's products
  data, status_code, headers = api_instance.list_ad_catalog_products_with_http_info(catalog_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogProducts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalog_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token performs the call instead of the account&#39;s own | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **after** | **String** | Cursor from the previous page&#39;s &#x60;nextCursor&#x60; | [optional] |
| **retailer_id** | **String** | Only the product with this retailer id (your SKU) | [optional] |

### Return type

[**ListAdCatalogProducts200Response**](ListAdCatalogProducts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_catalogs

> <ListAdCatalogs200Response> list_ad_catalogs(account_id, opts)

List Meta product catalogs

Lists the Meta Commerce catalogs of a business portfolio (owned + agency-shared). The business comes from `businessId`, else the ad account's owner (`adAccountId`), else the WhatsApp Business Account's owner when `accountId` is a WhatsApp connection, else the only business the Meta login can see. Reads work with scopes customers already granted.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
account_id = 'account_id_example' # String | A facebook, instagram, metaads or whatsapp account ID
opts = {
  catalog_account_id: 'catalog_account_id_example', # String | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token is used instead of the account's own (needed for WhatsApp connections, whose token cannot manage catalogs).
  ad_account_id: 'ad_account_id_example', # String | Meta ad account ID (act_...) whose owner business to list
  business_id: 'business_id_example' # String | Meta business portfolio ID to list. When it is omitted and the Meta login can see several portfolios, the 400 carries `details.businesses` (id + name) so a client can offer the choice.
}

begin
  # List Meta product catalogs
  result = api_instance.list_ad_catalogs(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalogs: #{e}"
end
```

#### Using the list_ad_catalogs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogs200Response>, Integer, Hash)> list_ad_catalogs_with_http_info(account_id, opts)

```ruby
begin
  # List Meta product catalogs
  data, status_code, headers = api_instance.list_ad_catalogs_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->list_ad_catalogs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | A facebook, instagram, metaads or whatsapp account ID |  |
| **catalog_account_id** | **String** | A facebook, instagram or metaads account whose Meta login carries catalog_management; its token is used instead of the account&#39;s own (needed for WhatsApp connections, whose token cannot manage catalogs). | [optional] |
| **ad_account_id** | **String** | Meta ad account ID (act_...) whose owner business to list | [optional] |
| **business_id** | **String** | Meta business portfolio ID to list. When it is omitted and the Meta login can see several portfolios, the 400 carries &#x60;details.businesses&#x60; (id + name) so a client can offer the choice. | [optional] |

### Return type

[**ListAdCatalogs200Response**](ListAdCatalogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad_catalog_product

> <CreateAdCatalogProduct201Response> update_ad_catalog_product(catalog_id, product_id, update_ad_catalog_product_request)

Update a product

Partial update: only the fields sent change. `retailerId` cannot change.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
product_id = 'product_id_example' # String | Meta product item ID (from the products list; not the retailer id)
update_ad_catalog_product_request = Zernio::UpdateAdCatalogProductRequest.new({account_id: 'account_id_example', product: Zernio::MetaCatalogProductInput.new}) # UpdateAdCatalogProductRequest | 

begin
  # Update a product
  result = api_instance.update_ad_catalog_product(catalog_id, product_id, update_ad_catalog_product_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->update_ad_catalog_product: #{e}"
end
```

#### Using the update_ad_catalog_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalogProduct201Response>, Integer, Hash)> update_ad_catalog_product_with_http_info(catalog_id, product_id, update_ad_catalog_product_request)

```ruby
begin
  # Update a product
  data, status_code, headers = api_instance.update_ad_catalog_product_with_http_info(catalog_id, product_id, update_ad_catalog_product_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalogProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->update_ad_catalog_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **product_id** | **String** | Meta product item ID (from the products list; not the retailer id) |  |
| **update_ad_catalog_product_request** | [**UpdateAdCatalogProductRequest**](UpdateAdCatalogProductRequest.md) |  |  |

### Return type

[**CreateAdCatalogProduct201Response**](CreateAdCatalogProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ad_catalog_product_set

> <CreateAdCatalogProductSet201Response> update_ad_catalog_product_set(catalog_id, product_set_id, update_ad_catalog_product_set_request)

Update a product set

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductCatalogsApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
product_set_id = 'product_set_id_example' # String | 
update_ad_catalog_product_set_request = Zernio::UpdateAdCatalogProductSetRequest.new({account_id: 'account_id_example'}) # UpdateAdCatalogProductSetRequest | 

begin
  # Update a product set
  result = api_instance.update_ad_catalog_product_set(catalog_id, product_set_id, update_ad_catalog_product_set_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->update_ad_catalog_product_set: #{e}"
end
```

#### Using the update_ad_catalog_product_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCatalogProductSet201Response>, Integer, Hash)> update_ad_catalog_product_set_with_http_info(catalog_id, product_set_id, update_ad_catalog_product_set_request)

```ruby
begin
  # Update a product set
  data, status_code, headers = api_instance.update_ad_catalog_product_set_with_http_info(catalog_id, product_set_id, update_ad_catalog_product_set_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCatalogProductSet201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductCatalogsApi->update_ad_catalog_product_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **product_set_id** | **String** |  |  |
| **update_ad_catalog_product_set_request** | [**UpdateAdCatalogProductSetRequest**](UpdateAdCatalogProductSetRequest.md) |  |  |

### Return type

[**CreateAdCatalogProductSet201Response**](CreateAdCatalogProductSet201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

