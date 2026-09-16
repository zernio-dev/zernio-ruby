# Zernio::ProductsApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_product**](ProductsApi.md#get_product) | **GET** /v1/accounts/{accountId}/products/{productId} | Get a product |
| [**list_products**](ProductsApi.md#list_products) | **GET** /v1/accounts/{accountId}/products | List products |
| [**update_product**](ProductsApi.md#update_product) | **PATCH** /v1/accounts/{accountId}/products/{productId} | Update a product |


## get_product

> <GetProduct200Response> get_product(account_id, product_id)

Get a product

Fetches a single product with its variants, options and images. `productId` is the platform's numeric product id from `GET /v1/accounts/{accountId}/products`, not a Zernio id.  Supported on Shopify (platform `shopify`); accounts on other platforms return 400. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
product_id = 'product_id_example' # String | Platform-native numeric product id. Non-numeric values return 400.

begin
  # Get a product
  result = api_instance.get_product(account_id, product_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductsApi->get_product: #{e}"
end
```

#### Using the get_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProduct200Response>, Integer, Hash)> get_product_with_http_info(account_id, product_id)

```ruby
begin
  # Get a product
  data, status_code, headers = api_instance.get_product_with_http_info(account_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProduct200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductsApi->get_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **product_id** | **String** | Platform-native numeric product id. Non-numeric values return 400. |  |

### Return type

[**GetProduct200Response**](GetProduct200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_products

> <ListProducts200Response> list_products(account_id, opts)

List products

Lists the products on the connected store in the platform's default order, each with its variants, options and images. Cursor-paginated: pass `limit` (1-50, default 20) and the `cursor` from a previous response's `nextCursor`; `nextCursor` is null when there are no more pages. Filter with `status` and/or `query` (the platform's product search syntax, e.g. `title:*shirt* vendor:Acme tag:summer`).  Supported on Shopify (platform `shopify`); accounts on other platforms return 400. A store connected before product access was added answers 403 insufficient_permissions until the merchant reconnects it through `GET /v1/connect/shopify`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
opts = {
  limit: 56, # Integer | Page size (1-50).
  cursor: 'cursor_example', # String | Opaque cursor from a previous response. Omit for the first page.
  status: 'active', # String | Only products in this status.
  query: 'query_example' # String | Platform product search syntax, passed through verbatim (Shopify: title, vendor, product_type, tag, sku, handle, created_at, updated_at, ...).
}

begin
  # List products
  result = api_instance.list_products(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductsApi->list_products: #{e}"
end
```

#### Using the list_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProducts200Response>, Integer, Hash)> list_products_with_http_info(account_id, opts)

```ruby
begin
  # List products
  data, status_code, headers = api_instance.list_products_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProducts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductsApi->list_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **limit** | **Integer** | Page size (1-50). | [optional][default to 20] |
| **cursor** | **String** | Opaque cursor from a previous response. Omit for the first page. | [optional] |
| **status** | **String** | Only products in this status. | [optional] |
| **query** | **String** | Platform product search syntax, passed through verbatim (Shopify: title, vendor, product_type, tag, sku, handle, created_at, updated_at, ...). | [optional] |

### Return type

[**ListProducts200Response**](ListProducts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_product

> <GetProduct200Response> update_product(account_id, product_id, update_product_request)

Update a product

Partial-updates a product. Send any subset of `title`, `descriptionHtml`, `handle`, `vendor`, `productType`, `tags`, `status`, `seo` and `variants`; at least one field is required (an empty body returns 400). `tags` replaces the full tag list. `variants` updates the price and compare-at price of the listed variant ids only; other variants are untouched, and a variant id that does not belong to the product is a 400. Responds with the product as it is after the update.  Supported on Shopify (platform `shopify`); accounts on other platforms return 400. A store connected before product access was added answers 403 insufficient_permissions until the merchant reconnects it through `GET /v1/connect/shopify`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ProductsApi.new
account_id = 'account_id_example' # String | Connected Shopify SocialAccount id.
product_id = 'product_id_example' # String | Platform-native numeric product id. Non-numeric values return 400.
update_product_request = Zernio::UpdateProductRequest.new # UpdateProductRequest | 

begin
  # Update a product
  result = api_instance.update_product(account_id, product_id, update_product_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ProductsApi->update_product: #{e}"
end
```

#### Using the update_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetProduct200Response>, Integer, Hash)> update_product_with_http_info(account_id, product_id, update_product_request)

```ruby
begin
  # Update a product
  data, status_code, headers = api_instance.update_product_with_http_info(account_id, product_id, update_product_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetProduct200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ProductsApi->update_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Shopify SocialAccount id. |  |
| **product_id** | **String** | Platform-native numeric product id. Non-numeric values return 400. |  |
| **update_product_request** | [**UpdateProductRequest**](UpdateProductRequest.md) |  |  |

### Return type

[**GetProduct200Response**](GetProduct200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

