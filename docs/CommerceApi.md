# Zernio::CommerceApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_commerce_discount_codes**](CommerceApi.md#add_commerce_discount_codes) | **POST** /v1/commerce/discounts/{discountId}/codes | Add codes to a discount |
| [**add_commerce_marketing_engagement**](CommerceApi.md#add_commerce_marketing_engagement) | **POST** /v1/commerce/marketing-activities/{remoteId}/engagements | Report daily engagement |
| [**add_commerce_product_images**](CommerceApi.md#add_commerce_product_images) | **POST** /v1/commerce/products/{productId}/images | Add images |
| [**change_collection_channels**](CommerceApi.md#change_collection_channels) | **POST** /v1/commerce/collections/{collectionId}/channels | Publish or unpublish a collection |
| [**change_commerce_collection_products**](CommerceApi.md#change_commerce_collection_products) | **POST** /v1/commerce/collections/{collectionId}/products | Add or remove products in a collection |
| [**change_commerce_inventory**](CommerceApi.md#change_commerce_inventory) | **POST** /v1/commerce/products/{productId}/inventory | Set or adjust stock |
| [**change_commerce_product_state**](CommerceApi.md#change_commerce_product_state) | **POST** /v1/commerce/products/state | Activate, deactivate, archive or delete products |
| [**change_commerce_product_tags**](CommerceApi.md#change_commerce_product_tags) | **POST** /v1/commerce/products/tags | Add or remove tags in bulk |
| [**change_product_channels**](CommerceApi.md#change_product_channels) | **POST** /v1/commerce/products/{productId}/channels | Publish or unpublish a product |
| [**create_commerce_catalog_sync**](CommerceApi.md#create_commerce_catalog_sync) | **POST** /v1/commerce/catalog-syncs | Sync a store into a Meta catalog |
| [**create_commerce_collection**](CommerceApi.md#create_commerce_collection) | **POST** /v1/commerce/collections | Create a collection |
| [**create_commerce_discount**](CommerceApi.md#create_commerce_discount) | **POST** /v1/commerce/discounts | Create a discount |
| [**create_commerce_menu**](CommerceApi.md#create_commerce_menu) | **POST** /v1/commerce/menus | Create a navigation menu |
| [**create_commerce_metaobject**](CommerceApi.md#create_commerce_metaobject) | **POST** /v1/commerce/metaobjects | Create a metaobject |
| [**create_commerce_page**](CommerceApi.md#create_commerce_page) | **POST** /v1/commerce/pages | Create a page |
| [**create_commerce_product**](CommerceApi.md#create_commerce_product) | **POST** /v1/commerce/products | Create a product |
| [**create_commerce_product_options**](CommerceApi.md#create_commerce_product_options) | **POST** /v1/commerce/products/{productId}/options | Add options |
| [**create_commerce_product_variants**](CommerceApi.md#create_commerce_product_variants) | **POST** /v1/commerce/products/{productId}/variants | Add variants |
| [**create_commerce_redirect**](CommerceApi.md#create_commerce_redirect) | **POST** /v1/commerce/redirects | Create a URL redirect |
| [**delete_collection_metafields**](CommerceApi.md#delete_collection_metafields) | **DELETE** /v1/commerce/collections/{collectionId}/metafields | Delete collection metafields |
| [**delete_commerce_catalog_sync**](CommerceApi.md#delete_commerce_catalog_sync) | **DELETE** /v1/commerce/catalog-syncs/{syncId} | Stop a catalog sync |
| [**delete_commerce_collection**](CommerceApi.md#delete_commerce_collection) | **DELETE** /v1/commerce/collections/{collectionId} | Delete a collection |
| [**delete_commerce_discount**](CommerceApi.md#delete_commerce_discount) | **DELETE** /v1/commerce/discounts/{discountId} | Delete a discount |
| [**delete_commerce_marketing_activity**](CommerceApi.md#delete_commerce_marketing_activity) | **DELETE** /v1/commerce/marketing-activities/{remoteId} | Delete a marketing activity |
| [**delete_commerce_menu**](CommerceApi.md#delete_commerce_menu) | **DELETE** /v1/commerce/menus/{menuId} | Delete a navigation menu |
| [**delete_commerce_metaobject**](CommerceApi.md#delete_commerce_metaobject) | **DELETE** /v1/commerce/metaobjects/{metaobjectId} | Delete a metaobject |
| [**delete_commerce_page**](CommerceApi.md#delete_commerce_page) | **DELETE** /v1/commerce/pages/{pageId} | Delete a page |
| [**delete_commerce_price_list_prices**](CommerceApi.md#delete_commerce_price_list_prices) | **DELETE** /v1/commerce/price-lists/{priceListId}/prices | Remove fixed prices |
| [**delete_commerce_product_options**](CommerceApi.md#delete_commerce_product_options) | **DELETE** /v1/commerce/products/{productId}/options | Delete options |
| [**delete_commerce_product_variants**](CommerceApi.md#delete_commerce_product_variants) | **DELETE** /v1/commerce/products/{productId}/variants | Delete variants |
| [**delete_commerce_redirect**](CommerceApi.md#delete_commerce_redirect) | **DELETE** /v1/commerce/redirects/{redirectId} | Delete a URL redirect |
| [**delete_product_metafields**](CommerceApi.md#delete_product_metafields) | **DELETE** /v1/commerce/products/{productId}/metafields | Delete product metafields |
| [**duplicate_commerce_product**](CommerceApi.md#duplicate_commerce_product) | **POST** /v1/commerce/products/{productId}/duplicate | Duplicate a product |
| [**get_commerce_catalog_sync**](CommerceApi.md#get_commerce_catalog_sync) | **GET** /v1/commerce/catalog-syncs/{syncId} | Get a catalog sync |
| [**get_commerce_collection**](CommerceApi.md#get_commerce_collection) | **GET** /v1/commerce/collections/{collectionId} | Get a collection |
| [**get_commerce_discount**](CommerceApi.md#get_commerce_discount) | **GET** /v1/commerce/discounts/{discountId} | Get a discount |
| [**get_commerce_menu**](CommerceApi.md#get_commerce_menu) | **GET** /v1/commerce/menus/{menuId} | Get a navigation menu |
| [**get_commerce_metaobject**](CommerceApi.md#get_commerce_metaobject) | **GET** /v1/commerce/metaobjects/{metaobjectId} | Get a metaobject |
| [**get_commerce_page**](CommerceApi.md#get_commerce_page) | **GET** /v1/commerce/pages/{pageId} | Get a page |
| [**get_commerce_product**](CommerceApi.md#get_commerce_product) | **GET** /v1/commerce/products/{productId} | Get a product |
| [**get_commerce_store**](CommerceApi.md#get_commerce_store) | **GET** /v1/commerce/store | Get a store |
| [**list_collection_metafields**](CommerceApi.md#list_collection_metafields) | **GET** /v1/commerce/collections/{collectionId}/metafields | List collection metafields |
| [**list_commerce_catalog_syncs**](CommerceApi.md#list_commerce_catalog_syncs) | **GET** /v1/commerce/catalog-syncs | List catalog syncs |
| [**list_commerce_channels**](CommerceApi.md#list_commerce_channels) | **GET** /v1/commerce/channels | List sales channels |
| [**list_commerce_collections**](CommerceApi.md#list_commerce_collections) | **GET** /v1/commerce/collections | List collections |
| [**list_commerce_discounts**](CommerceApi.md#list_commerce_discounts) | **GET** /v1/commerce/discounts | List discounts |
| [**list_commerce_inventory**](CommerceApi.md#list_commerce_inventory) | **GET** /v1/commerce/inventory | Get a product&#39;s stock |
| [**list_commerce_locations**](CommerceApi.md#list_commerce_locations) | **GET** /v1/commerce/locations | List locations |
| [**list_commerce_markets**](CommerceApi.md#list_commerce_markets) | **GET** /v1/commerce/markets | List markets |
| [**list_commerce_menus**](CommerceApi.md#list_commerce_menus) | **GET** /v1/commerce/menus | List navigation menus |
| [**list_commerce_metaobject_definitions**](CommerceApi.md#list_commerce_metaobject_definitions) | **GET** /v1/commerce/metaobject-definitions | List metaobject definitions |
| [**list_commerce_metaobjects**](CommerceApi.md#list_commerce_metaobjects) | **GET** /v1/commerce/metaobjects | List metaobjects of a type |
| [**list_commerce_pages**](CommerceApi.md#list_commerce_pages) | **GET** /v1/commerce/pages | List pages |
| [**list_commerce_price_lists**](CommerceApi.md#list_commerce_price_lists) | **GET** /v1/commerce/price-lists | List price lists |
| [**list_commerce_products**](CommerceApi.md#list_commerce_products) | **GET** /v1/commerce/products | List products |
| [**list_commerce_redirects**](CommerceApi.md#list_commerce_redirects) | **GET** /v1/commerce/redirects | List URL redirects |
| [**list_product_metafields**](CommerceApi.md#list_product_metafields) | **GET** /v1/commerce/products/{productId}/metafields | List product metafields |
| [**remove_commerce_product_images**](CommerceApi.md#remove_commerce_product_images) | **DELETE** /v1/commerce/products/{productId}/images | Remove images |
| [**reorder_commerce_collection_products**](CommerceApi.md#reorder_commerce_collection_products) | **POST** /v1/commerce/collections/{collectionId}/reorder | Reorder products in a collection |
| [**reorder_commerce_product_images**](CommerceApi.md#reorder_commerce_product_images) | **POST** /v1/commerce/products/{productId}/images/reorder | Reorder images |
| [**run_commerce_catalog_sync**](CommerceApi.md#run_commerce_catalog_sync) | **POST** /v1/commerce/catalog-syncs/{syncId}/run | Run a catalog sync now |
| [**set_collection_metafields**](CommerceApi.md#set_collection_metafields) | **PUT** /v1/commerce/collections/{collectionId}/metafields | Set collection metafields |
| [**set_commerce_discount_active**](CommerceApi.md#set_commerce_discount_active) | **POST** /v1/commerce/discounts/{discountId}/state | Activate or deactivate a discount |
| [**set_commerce_price_list_prices**](CommerceApi.md#set_commerce_price_list_prices) | **PUT** /v1/commerce/price-lists/{priceListId}/prices | Set fixed prices |
| [**set_product_metafields**](CommerceApi.md#set_product_metafields) | **PUT** /v1/commerce/products/{productId}/metafields | Set product metafields |
| [**update_commerce_collection**](CommerceApi.md#update_commerce_collection) | **PATCH** /v1/commerce/collections/{collectionId} | Update a collection |
| [**update_commerce_discount**](CommerceApi.md#update_commerce_discount) | **PATCH** /v1/commerce/discounts/{discountId} | Update a discount |
| [**update_commerce_menu**](CommerceApi.md#update_commerce_menu) | **PUT** /v1/commerce/menus/{menuId} | Replace a navigation menu |
| [**update_commerce_metaobject**](CommerceApi.md#update_commerce_metaobject) | **PATCH** /v1/commerce/metaobjects/{metaobjectId} | Update a metaobject |
| [**update_commerce_page**](CommerceApi.md#update_commerce_page) | **PATCH** /v1/commerce/pages/{pageId} | Update a page |
| [**update_commerce_product**](CommerceApi.md#update_commerce_product) | **PATCH** /v1/commerce/products/{productId} | Update a product |
| [**update_commerce_product_prices**](CommerceApi.md#update_commerce_product_prices) | **POST** /v1/commerce/products/{productId}/price | Update variant prices |
| [**update_commerce_redirect**](CommerceApi.md#update_commerce_redirect) | **PATCH** /v1/commerce/redirects/{redirectId} | Update a URL redirect |
| [**upsert_commerce_marketing_activity**](CommerceApi.md#upsert_commerce_marketing_activity) | **PUT** /v1/commerce/marketing-activities | Record a marketing activity |


## add_commerce_discount_codes

> <ReorderCommerceProductImages200Response> add_commerce_discount_codes(discount_id, add_commerce_discount_codes_request)

Add codes to a discount

Adds up to 250 more codes to a code discount, for example one per influencer. The platform adds them in the background. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
discount_id = 'discount_id_example' # String | Platform-native id.
add_commerce_discount_codes_request = Zernio::AddCommerceDiscountCodesRequest.new({account_id: 'account_id_example', codes: ['codes_example']}) # AddCommerceDiscountCodesRequest | 

begin
  # Add codes to a discount
  result = api_instance.add_commerce_discount_codes(discount_id, add_commerce_discount_codes_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->add_commerce_discount_codes: #{e}"
end
```

#### Using the add_commerce_discount_codes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReorderCommerceProductImages200Response>, Integer, Hash)> add_commerce_discount_codes_with_http_info(discount_id, add_commerce_discount_codes_request)

```ruby
begin
  # Add codes to a discount
  data, status_code, headers = api_instance.add_commerce_discount_codes_with_http_info(discount_id, add_commerce_discount_codes_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReorderCommerceProductImages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->add_commerce_discount_codes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount_id** | **String** | Platform-native id. |  |
| **add_commerce_discount_codes_request** | [**AddCommerceDiscountCodesRequest**](AddCommerceDiscountCodesRequest.md) |  |  |

### Return type

[**ReorderCommerceProductImages200Response**](ReorderCommerceProductImages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_commerce_marketing_engagement

> <AddCommerceMarketingEngagement201Response> add_commerce_marketing_engagement(remote_id, add_commerce_marketing_engagement_request)

Report daily engagement

Reports one day's numbers for an activity (UTC day), shown next to it in the store's Marketing section. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
remote_id = 'remote_id_example' # String | The remoteId given when recording it.
add_commerce_marketing_engagement_request = Zernio::AddCommerceMarketingEngagementRequest.new({account_id: 'account_id_example', date: Date.today}) # AddCommerceMarketingEngagementRequest | 

begin
  # Report daily engagement
  result = api_instance.add_commerce_marketing_engagement(remote_id, add_commerce_marketing_engagement_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->add_commerce_marketing_engagement: #{e}"
end
```

#### Using the add_commerce_marketing_engagement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddCommerceMarketingEngagement201Response>, Integer, Hash)> add_commerce_marketing_engagement_with_http_info(remote_id, add_commerce_marketing_engagement_request)

```ruby
begin
  # Report daily engagement
  data, status_code, headers = api_instance.add_commerce_marketing_engagement_with_http_info(remote_id, add_commerce_marketing_engagement_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddCommerceMarketingEngagement201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->add_commerce_marketing_engagement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The remoteId given when recording it. |  |
| **add_commerce_marketing_engagement_request** | [**AddCommerceMarketingEngagementRequest**](AddCommerceMarketingEngagementRequest.md) |  |  |

### Return type

[**AddCommerceMarketingEngagement201Response**](AddCommerceMarketingEngagement201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_commerce_product_images

> <CreateCommerceProduct201Response> add_commerce_product_images(product_id, add_commerce_product_images_request)

Add images

Adds images from public URLs. The platform fetches them, so they can appear on the product a few seconds after the call returns. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
add_commerce_product_images_request = Zernio::AddCommerceProductImagesRequest.new({account_id: 'account_id_example', images: [Zernio::CreateCommerceProductRequestImagesInner.new({url: 'url_example'})]}) # AddCommerceProductImagesRequest | 

begin
  # Add images
  result = api_instance.add_commerce_product_images(product_id, add_commerce_product_images_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->add_commerce_product_images: #{e}"
end
```

#### Using the add_commerce_product_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> add_commerce_product_images_with_http_info(product_id, add_commerce_product_images_request)

```ruby
begin
  # Add images
  data, status_code, headers = api_instance.add_commerce_product_images_with_http_info(product_id, add_commerce_product_images_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->add_commerce_product_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **add_commerce_product_images_request** | [**AddCommerceProductImagesRequest**](AddCommerceProductImagesRequest.md) |  |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_collection_channels

> <ChangeCollectionChannels200Response> change_collection_channels(collection_id, change_product_channels_request)

Publish or unpublish a collection

Publishes to and/or unpublishes from sales channels (the online store, Shop, POS and others). List channels with GET /v1/commerce/channels. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native id.
change_product_channels_request = Zernio::ChangeProductChannelsRequest.new({account_id: 'account_id_example'}) # ChangeProductChannelsRequest | 

begin
  # Publish or unpublish a collection
  result = api_instance.change_collection_channels(collection_id, change_product_channels_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_collection_channels: #{e}"
end
```

#### Using the change_collection_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangeCollectionChannels200Response>, Integer, Hash)> change_collection_channels_with_http_info(collection_id, change_product_channels_request)

```ruby
begin
  # Publish or unpublish a collection
  data, status_code, headers = api_instance.change_collection_channels_with_http_info(collection_id, change_product_channels_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangeCollectionChannels200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_collection_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native id. |  |
| **change_product_channels_request** | [**ChangeProductChannelsRequest**](ChangeProductChannelsRequest.md) |  |  |

### Return type

[**ChangeCollectionChannels200Response**](ChangeCollectionChannels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_commerce_collection_products

> <ChangeCommerceCollectionProducts200Response> change_commerce_collection_products(collection_id, change_commerce_collection_products_request)

Add or remove products in a collection

Adds and/or removes hand-picked products. Products a collection includes through its own rules are not affected. `pending` is true when the platform finishes the change in the background; the product count then catches up a few seconds later. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native collection id.
change_commerce_collection_products_request = Zernio::ChangeCommerceCollectionProductsRequest.new({account_id: 'account_id_example'}) # ChangeCommerceCollectionProductsRequest | 

begin
  # Add or remove products in a collection
  result = api_instance.change_commerce_collection_products(collection_id, change_commerce_collection_products_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_commerce_collection_products: #{e}"
end
```

#### Using the change_commerce_collection_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangeCommerceCollectionProducts200Response>, Integer, Hash)> change_commerce_collection_products_with_http_info(collection_id, change_commerce_collection_products_request)

```ruby
begin
  # Add or remove products in a collection
  data, status_code, headers = api_instance.change_commerce_collection_products_with_http_info(collection_id, change_commerce_collection_products_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangeCommerceCollectionProducts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_commerce_collection_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native collection id. |  |
| **change_commerce_collection_products_request** | [**ChangeCommerceCollectionProductsRequest**](ChangeCommerceCollectionProductsRequest.md) |  |  |

### Return type

[**ChangeCommerceCollectionProducts200Response**](ChangeCommerceCollectionProducts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_commerce_inventory

> <ListCommerceInventory200Response> change_commerce_inventory(product_id, change_commerce_inventory_request)

Set or adjust stock

`set` makes `quantity` the new available count; `adjust` adds `quantity` (negative to subtract). The variant must be stocked at the location. Answers the product's stock after the change. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
change_commerce_inventory_request = Zernio::ChangeCommerceInventoryRequest.new({account_id: 'account_id_example', changes: [Zernio::ChangeCommerceInventoryRequestChangesInner.new({variant_id: 'variant_id_example', location_id: 'location_id_example', quantity: 37})]}) # ChangeCommerceInventoryRequest | 

begin
  # Set or adjust stock
  result = api_instance.change_commerce_inventory(product_id, change_commerce_inventory_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_commerce_inventory: #{e}"
end
```

#### Using the change_commerce_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceInventory200Response>, Integer, Hash)> change_commerce_inventory_with_http_info(product_id, change_commerce_inventory_request)

```ruby
begin
  # Set or adjust stock
  data, status_code, headers = api_instance.change_commerce_inventory_with_http_info(product_id, change_commerce_inventory_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceInventory200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_commerce_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **change_commerce_inventory_request** | [**ChangeCommerceInventoryRequest**](ChangeCommerceInventoryRequest.md) |  |  |

### Return type

[**ListCommerceInventory200Response**](ListCommerceInventory200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_commerce_product_state

> <ChangeCommerceProductState200Response> change_commerce_product_state(change_commerce_product_state_request)

Activate, deactivate, archive or delete products

Applies one action to up to 50 products and reports each product's outcome, so one failure does not abort the rest. On Shopify, `deactivate` sets the product to draft and `delete` is permanent. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
change_commerce_product_state_request = Zernio::ChangeCommerceProductStateRequest.new({account_id: 'account_id_example', product_ids: ['product_ids_example'], action: 'activate'}) # ChangeCommerceProductStateRequest | 

begin
  # Activate, deactivate, archive or delete products
  result = api_instance.change_commerce_product_state(change_commerce_product_state_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_commerce_product_state: #{e}"
end
```

#### Using the change_commerce_product_state_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangeCommerceProductState200Response>, Integer, Hash)> change_commerce_product_state_with_http_info(change_commerce_product_state_request)

```ruby
begin
  # Activate, deactivate, archive or delete products
  data, status_code, headers = api_instance.change_commerce_product_state_with_http_info(change_commerce_product_state_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangeCommerceProductState200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_commerce_product_state_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_commerce_product_state_request** | [**ChangeCommerceProductStateRequest**](ChangeCommerceProductStateRequest.md) |  |  |

### Return type

[**ChangeCommerceProductState200Response**](ChangeCommerceProductState200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_commerce_product_tags

> <ChangeCommerceProductTags200Response> change_commerce_product_tags(change_commerce_product_tags_request)

Add or remove tags in bulk

Adds and/or removes tags on up to 50 products and reports each product's outcome. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
change_commerce_product_tags_request = Zernio::ChangeCommerceProductTagsRequest.new({account_id: 'account_id_example', product_ids: ['product_ids_example']}) # ChangeCommerceProductTagsRequest | 

begin
  # Add or remove tags in bulk
  result = api_instance.change_commerce_product_tags(change_commerce_product_tags_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_commerce_product_tags: #{e}"
end
```

#### Using the change_commerce_product_tags_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangeCommerceProductTags200Response>, Integer, Hash)> change_commerce_product_tags_with_http_info(change_commerce_product_tags_request)

```ruby
begin
  # Add or remove tags in bulk
  data, status_code, headers = api_instance.change_commerce_product_tags_with_http_info(change_commerce_product_tags_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangeCommerceProductTags200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_commerce_product_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_commerce_product_tags_request** | [**ChangeCommerceProductTagsRequest**](ChangeCommerceProductTagsRequest.md) |  |  |

### Return type

[**ChangeCommerceProductTags200Response**](ChangeCommerceProductTags200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## change_product_channels

> <ChangeProductChannels200Response> change_product_channels(product_id, change_product_channels_request)

Publish or unpublish a product

Publishes to and/or unpublishes from sales channels (the online store, Shop, POS and others). List channels with GET /v1/commerce/channels. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
change_product_channels_request = Zernio::ChangeProductChannelsRequest.new({account_id: 'account_id_example'}) # ChangeProductChannelsRequest | 

begin
  # Publish or unpublish a product
  result = api_instance.change_product_channels(product_id, change_product_channels_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_product_channels: #{e}"
end
```

#### Using the change_product_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangeProductChannels200Response>, Integer, Hash)> change_product_channels_with_http_info(product_id, change_product_channels_request)

```ruby
begin
  # Publish or unpublish a product
  data, status_code, headers = api_instance.change_product_channels_with_http_info(product_id, change_product_channels_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangeProductChannels200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->change_product_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **change_product_channels_request** | [**ChangeProductChannelsRequest**](ChangeProductChannelsRequest.md) |  |  |

### Return type

[**ChangeProductChannels200Response**](ChangeProductChannels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_catalog_sync

> <CreateCommerceCatalogSync202Response> create_commerce_catalog_sync(create_commerce_catalog_sync_request)

Sync a store into a Meta catalog

Keeps a Meta product catalog in sync with the store, for catalog ads (`goal: catalog_sales`) and Shops. The first full run starts right away in the background; `runStatus` and the item counts report its outcome. Every active product variant that is published to the online store and has an image becomes a catalog item, grouped by product (`item_group_id`). After that, product changes on the store update the catalog within minutes, and a daily full run removes items for products or variants the store no longer has. Items are namespaced to the store, so a catalog can take several stores and a run never touches items it did not create.  `catalogAccountId` is a connected facebook, instagram or metaads account whose Meta login can manage the catalog (the catalog_management permission); find catalogs with `GET /v1/ads/catalogs`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
create_commerce_catalog_sync_request = Zernio::CreateCommerceCatalogSyncRequest.new({account_id: 'account_id_example', catalog_account_id: 'catalog_account_id_example', catalog_id: 'catalog_id_example'}) # CreateCommerceCatalogSyncRequest | 

begin
  # Sync a store into a Meta catalog
  result = api_instance.create_commerce_catalog_sync(create_commerce_catalog_sync_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_catalog_sync: #{e}"
end
```

#### Using the create_commerce_catalog_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceCatalogSync202Response>, Integer, Hash)> create_commerce_catalog_sync_with_http_info(create_commerce_catalog_sync_request)

```ruby
begin
  # Sync a store into a Meta catalog
  data, status_code, headers = api_instance.create_commerce_catalog_sync_with_http_info(create_commerce_catalog_sync_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceCatalogSync202Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_catalog_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_commerce_catalog_sync_request** | [**CreateCommerceCatalogSyncRequest**](CreateCommerceCatalogSyncRequest.md) |  |  |

### Return type

[**CreateCommerceCatalogSync202Response**](CreateCommerceCatalogSync202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_collection

> <CreateCommerceCollection201Response> create_commerce_collection(create_commerce_collection_request)

Create a collection

Creates a collection, optionally with hand-picked products. On Shopify the collection starts unpublished from the online store; publish it from the Shopify admin. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
create_commerce_collection_request = Zernio::CreateCommerceCollectionRequest.new({account_id: 'account_id_example', title: 'title_example'}) # CreateCommerceCollectionRequest | 

begin
  # Create a collection
  result = api_instance.create_commerce_collection(create_commerce_collection_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_collection: #{e}"
end
```

#### Using the create_commerce_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceCollection201Response>, Integer, Hash)> create_commerce_collection_with_http_info(create_commerce_collection_request)

```ruby
begin
  # Create a collection
  data, status_code, headers = api_instance.create_commerce_collection_with_http_info(create_commerce_collection_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceCollection201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_commerce_collection_request** | [**CreateCommerceCollectionRequest**](CreateCommerceCollectionRequest.md) |  |  |

### Return type

[**CreateCommerceCollection201Response**](CreateCommerceCollection201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_discount

> <CreateCommerceDiscount201Response> create_commerce_discount(create_commerce_discount_request)

Create a discount

Creates a code discount (buyers enter a code) or an automatic one (applied at checkout), as a percentage, a fixed amount or free shipping. It applies to every product unless productIds or collectionIds narrow it, and to every buyer. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
create_commerce_discount_request = Zernio::CreateCommerceDiscountRequest.new({account_id: 'account_id_example', title: 'title_example', method: 'code', type: 'percentage'}) # CreateCommerceDiscountRequest | 

begin
  # Create a discount
  result = api_instance.create_commerce_discount(create_commerce_discount_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_discount: #{e}"
end
```

#### Using the create_commerce_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceDiscount201Response>, Integer, Hash)> create_commerce_discount_with_http_info(create_commerce_discount_request)

```ruby
begin
  # Create a discount
  data, status_code, headers = api_instance.create_commerce_discount_with_http_info(create_commerce_discount_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceDiscount201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_commerce_discount_request** | [**CreateCommerceDiscountRequest**](CreateCommerceDiscountRequest.md) |  |  |

### Return type

[**CreateCommerceDiscount201Response**](CreateCommerceDiscount201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_menu

> <CreateCommerceMenu201Response> create_commerce_menu(create_commerce_menu_request)

Create a navigation menu

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
create_commerce_menu_request = Zernio::CreateCommerceMenuRequest.new({account_id: 'account_id_example', title: 'title_example', handle: 'handle_example', items: [Zernio::CommerceMenuItemInput.new({title: 'title_example', type: 'frontpage'})]}) # CreateCommerceMenuRequest | 

begin
  # Create a navigation menu
  result = api_instance.create_commerce_menu(create_commerce_menu_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_menu: #{e}"
end
```

#### Using the create_commerce_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceMenu201Response>, Integer, Hash)> create_commerce_menu_with_http_info(create_commerce_menu_request)

```ruby
begin
  # Create a navigation menu
  data, status_code, headers = api_instance.create_commerce_menu_with_http_info(create_commerce_menu_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceMenu201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_commerce_menu_request** | [**CreateCommerceMenuRequest**](CreateCommerceMenuRequest.md) |  |  |

### Return type

[**CreateCommerceMenu201Response**](CreateCommerceMenu201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_metaobject

> <CreateCommerceMetaobject201Response> create_commerce_metaobject(create_commerce_metaobject_request)

Create a metaobject

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
create_commerce_metaobject_request = Zernio::CreateCommerceMetaobjectRequest.new({account_id: 'account_id_example', type: 'type_example', fields: [Zernio::UpdateAdTrackingTagsRequestUrlTagsInner.new({key: 'key_example', value: 'value_example'})]}) # CreateCommerceMetaobjectRequest | 

begin
  # Create a metaobject
  result = api_instance.create_commerce_metaobject(create_commerce_metaobject_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_metaobject: #{e}"
end
```

#### Using the create_commerce_metaobject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceMetaobject201Response>, Integer, Hash)> create_commerce_metaobject_with_http_info(create_commerce_metaobject_request)

```ruby
begin
  # Create a metaobject
  data, status_code, headers = api_instance.create_commerce_metaobject_with_http_info(create_commerce_metaobject_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceMetaobject201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_metaobject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_commerce_metaobject_request** | [**CreateCommerceMetaobjectRequest**](CreateCommerceMetaobjectRequest.md) |  |  |

### Return type

[**CreateCommerceMetaobject201Response**](CreateCommerceMetaobject201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_page

> <CreateCommercePage201Response> create_commerce_page(create_commerce_page_request)

Create a page

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
create_commerce_page_request = Zernio::CreateCommercePageRequest.new({account_id: 'account_id_example', title: 'title_example'}) # CreateCommercePageRequest | 

begin
  # Create a page
  result = api_instance.create_commerce_page(create_commerce_page_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_page: #{e}"
end
```

#### Using the create_commerce_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommercePage201Response>, Integer, Hash)> create_commerce_page_with_http_info(create_commerce_page_request)

```ruby
begin
  # Create a page
  data, status_code, headers = api_instance.create_commerce_page_with_http_info(create_commerce_page_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommercePage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_commerce_page_request** | [**CreateCommercePageRequest**](CreateCommercePageRequest.md) |  |  |

### Return type

[**CreateCommercePage201Response**](CreateCommercePage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_product

> <CreateCommerceProduct201Response> create_commerce_product(create_commerce_product_request)

Create a product

Creates a product with its options and variants. `status` defaults to `draft`: no platform offers a sandbox for product writes, so nothing goes on sale unless you ask for `active`. A product without `options` has exactly one variant. Images are fetched by the platform from the given URLs and may appear on the product a few seconds later. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
create_commerce_product_request = Zernio::CreateCommerceProductRequest.new({account_id: 'account_id_example', title: 'title_example', variants: [Zernio::CreateCommerceProductRequestVariantsInner.new({price: nil})]}) # CreateCommerceProductRequest | 

begin
  # Create a product
  result = api_instance.create_commerce_product(create_commerce_product_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_product: #{e}"
end
```

#### Using the create_commerce_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> create_commerce_product_with_http_info(create_commerce_product_request)

```ruby
begin
  # Create a product
  data, status_code, headers = api_instance.create_commerce_product_with_http_info(create_commerce_product_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_commerce_product_request** | [**CreateCommerceProductRequest**](CreateCommerceProductRequest.md) |  |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_product_options

> <CreateCommerceProduct201Response> create_commerce_product_options(product_id, create_commerce_product_options_request)

Add options

Adds option axes (e.g. Size, Color) and their values. With createVariants true the platform creates a variant for every new combination; otherwise existing variants take the first value. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
create_commerce_product_options_request = Zernio::CreateCommerceProductOptionsRequest.new({account_id: 'account_id_example', options: [Zernio::CreateTestLeadRequestFieldDataInner.new({name: 'name_example', values: ['values_example']})]}) # CreateCommerceProductOptionsRequest | 

begin
  # Add options
  result = api_instance.create_commerce_product_options(product_id, create_commerce_product_options_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_product_options: #{e}"
end
```

#### Using the create_commerce_product_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> create_commerce_product_options_with_http_info(product_id, create_commerce_product_options_request)

```ruby
begin
  # Add options
  data, status_code, headers = api_instance.create_commerce_product_options_with_http_info(product_id, create_commerce_product_options_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_product_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **create_commerce_product_options_request** | [**CreateCommerceProductOptionsRequest**](CreateCommerceProductOptionsRequest.md) |  |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_product_variants

> <CreateCommerceProduct201Response> create_commerce_product_variants(product_id, create_commerce_product_variants_request)

Add variants

Adds variants to a product. Each variant names a value for every product option (create options first with POST .../options). A product's placeholder default variant is replaced when real ones arrive. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
create_commerce_product_variants_request = Zernio::CreateCommerceProductVariantsRequest.new({account_id: 'account_id_example', variants: [Zernio::CreateCommerceProductVariantsRequestVariantsInner.new({price: nil})]}) # CreateCommerceProductVariantsRequest | 

begin
  # Add variants
  result = api_instance.create_commerce_product_variants(product_id, create_commerce_product_variants_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_product_variants: #{e}"
end
```

#### Using the create_commerce_product_variants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> create_commerce_product_variants_with_http_info(product_id, create_commerce_product_variants_request)

```ruby
begin
  # Add variants
  data, status_code, headers = api_instance.create_commerce_product_variants_with_http_info(product_id, create_commerce_product_variants_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_product_variants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **create_commerce_product_variants_request** | [**CreateCommerceProductVariantsRequest**](CreateCommerceProductVariantsRequest.md) |  |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_commerce_redirect

> <CreateCommerceRedirect201Response> create_commerce_redirect(create_commerce_redirect_request)

Create a URL redirect

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
create_commerce_redirect_request = Zernio::CreateCommerceRedirectRequest.new({account_id: 'account_id_example', path: 'path_example', target: 'target_example'}) # CreateCommerceRedirectRequest | 

begin
  # Create a URL redirect
  result = api_instance.create_commerce_redirect(create_commerce_redirect_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_redirect: #{e}"
end
```

#### Using the create_commerce_redirect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceRedirect201Response>, Integer, Hash)> create_commerce_redirect_with_http_info(create_commerce_redirect_request)

```ruby
begin
  # Create a URL redirect
  data, status_code, headers = api_instance.create_commerce_redirect_with_http_info(create_commerce_redirect_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceRedirect201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->create_commerce_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_commerce_redirect_request** | [**CreateCommerceRedirectRequest**](CreateCommerceRedirectRequest.md) |  |  |

### Return type

[**CreateCommerceRedirect201Response**](CreateCommerceRedirect201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_collection_metafields

> <DeleteProductMetafields200Response> delete_collection_metafields(collection_id, account_id, keys)

Delete collection metafields

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.
keys = 'keys_example' # String | Comma-separated namespace.key pairs.

begin
  # Delete collection metafields
  result = api_instance.delete_collection_metafields(collection_id, account_id, keys)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_collection_metafields: #{e}"
end
```

#### Using the delete_collection_metafields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteProductMetafields200Response>, Integer, Hash)> delete_collection_metafields_with_http_info(collection_id, account_id, keys)

```ruby
begin
  # Delete collection metafields
  data, status_code, headers = api_instance.delete_collection_metafields_with_http_info(collection_id, account_id, keys)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteProductMetafields200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_collection_metafields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **keys** | **String** | Comma-separated namespace.key pairs. |  |

### Return type

[**DeleteProductMetafields200Response**](DeleteProductMetafields200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_catalog_sync

> <DeleteCommerceCatalogSync200Response> delete_commerce_catalog_sync(sync_id)

Stop a catalog sync

Stops syncing. Items already in the catalog stay there.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
sync_id = 'sync_id_example' # String | 

begin
  # Stop a catalog sync
  result = api_instance.delete_commerce_catalog_sync(sync_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_catalog_sync: #{e}"
end
```

#### Using the delete_commerce_catalog_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommerceCatalogSync200Response>, Integer, Hash)> delete_commerce_catalog_sync_with_http_info(sync_id)

```ruby
begin
  # Stop a catalog sync
  data, status_code, headers = api_instance.delete_commerce_catalog_sync_with_http_info(sync_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommerceCatalogSync200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_catalog_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_id** | **String** |  |  |

### Return type

[**DeleteCommerceCatalogSync200Response**](DeleteCommerceCatalogSync200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_collection

> <DeleteCommerceCollection200Response> delete_commerce_collection(collection_id, account_id)

Delete a collection

Deletes the collection. Its products are not affected.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native collection id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Delete a collection
  result = api_instance.delete_commerce_collection(collection_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_collection: #{e}"
end
```

#### Using the delete_commerce_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommerceCollection200Response>, Integer, Hash)> delete_commerce_collection_with_http_info(collection_id, account_id)

```ruby
begin
  # Delete a collection
  data, status_code, headers = api_instance.delete_commerce_collection_with_http_info(collection_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommerceCollection200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native collection id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**DeleteCommerceCollection200Response**](DeleteCommerceCollection200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_discount

> <DeleteCommerceDiscount200Response> delete_commerce_discount(discount_id, account_id)

Delete a discount

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
discount_id = 'discount_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Delete a discount
  result = api_instance.delete_commerce_discount(discount_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_discount: #{e}"
end
```

#### Using the delete_commerce_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommerceDiscount200Response>, Integer, Hash)> delete_commerce_discount_with_http_info(discount_id, account_id)

```ruby
begin
  # Delete a discount
  data, status_code, headers = api_instance.delete_commerce_discount_with_http_info(discount_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommerceDiscount200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**DeleteCommerceDiscount200Response**](DeleteCommerceDiscount200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_marketing_activity

> <DeleteCommerceMarketingActivity200Response> delete_commerce_marketing_activity(remote_id, account_id)

Delete a marketing activity

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
remote_id = 'remote_id_example' # String | The remoteId given when recording it.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Delete a marketing activity
  result = api_instance.delete_commerce_marketing_activity(remote_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_marketing_activity: #{e}"
end
```

#### Using the delete_commerce_marketing_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommerceMarketingActivity200Response>, Integer, Hash)> delete_commerce_marketing_activity_with_http_info(remote_id, account_id)

```ruby
begin
  # Delete a marketing activity
  data, status_code, headers = api_instance.delete_commerce_marketing_activity_with_http_info(remote_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommerceMarketingActivity200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_marketing_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The remoteId given when recording it. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**DeleteCommerceMarketingActivity200Response**](DeleteCommerceMarketingActivity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_menu

> <DeleteCommerceMenu200Response> delete_commerce_menu(menu_id, account_id)

Delete a navigation menu

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
menu_id = 'menu_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Delete a navigation menu
  result = api_instance.delete_commerce_menu(menu_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_menu: #{e}"
end
```

#### Using the delete_commerce_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommerceMenu200Response>, Integer, Hash)> delete_commerce_menu_with_http_info(menu_id, account_id)

```ruby
begin
  # Delete a navigation menu
  data, status_code, headers = api_instance.delete_commerce_menu_with_http_info(menu_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommerceMenu200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **menu_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**DeleteCommerceMenu200Response**](DeleteCommerceMenu200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_metaobject

> <DeleteCommerceMetaobject200Response> delete_commerce_metaobject(metaobject_id, account_id)

Delete a metaobject

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
metaobject_id = 'metaobject_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Delete a metaobject
  result = api_instance.delete_commerce_metaobject(metaobject_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_metaobject: #{e}"
end
```

#### Using the delete_commerce_metaobject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommerceMetaobject200Response>, Integer, Hash)> delete_commerce_metaobject_with_http_info(metaobject_id, account_id)

```ruby
begin
  # Delete a metaobject
  data, status_code, headers = api_instance.delete_commerce_metaobject_with_http_info(metaobject_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommerceMetaobject200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_metaobject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metaobject_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**DeleteCommerceMetaobject200Response**](DeleteCommerceMetaobject200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_page

> <DeleteCommercePage200Response> delete_commerce_page(page_id, account_id)

Delete a page

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
page_id = 'page_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Delete a page
  result = api_instance.delete_commerce_page(page_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_page: #{e}"
end
```

#### Using the delete_commerce_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommercePage200Response>, Integer, Hash)> delete_commerce_page_with_http_info(page_id, account_id)

```ruby
begin
  # Delete a page
  data, status_code, headers = api_instance.delete_commerce_page_with_http_info(page_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommercePage200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**DeleteCommercePage200Response**](DeleteCommercePage200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_price_list_prices

> <DeleteCommercePriceListPrices200Response> delete_commerce_price_list_prices(price_list_id, account_id, variant_ids)

Remove fixed prices

The variants go back to the market's converted price. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
price_list_id = 'price_list_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.
variant_ids = 'variant_ids_example' # String | Comma-separated ids.

begin
  # Remove fixed prices
  result = api_instance.delete_commerce_price_list_prices(price_list_id, account_id, variant_ids)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_price_list_prices: #{e}"
end
```

#### Using the delete_commerce_price_list_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommercePriceListPrices200Response>, Integer, Hash)> delete_commerce_price_list_prices_with_http_info(price_list_id, account_id, variant_ids)

```ruby
begin
  # Remove fixed prices
  data, status_code, headers = api_instance.delete_commerce_price_list_prices_with_http_info(price_list_id, account_id, variant_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommercePriceListPrices200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_price_list_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_list_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **variant_ids** | **String** | Comma-separated ids. |  |

### Return type

[**DeleteCommercePriceListPrices200Response**](DeleteCommercePriceListPrices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_product_options

> <CreateCommerceProduct201Response> delete_commerce_product_options(product_id, account_id, names)

Delete options

Deletes options by name, with the variants that depended on them. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.
names = 'names_example' # String | Comma-separated option names.

begin
  # Delete options
  result = api_instance.delete_commerce_product_options(product_id, account_id, names)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_product_options: #{e}"
end
```

#### Using the delete_commerce_product_options_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> delete_commerce_product_options_with_http_info(product_id, account_id, names)

```ruby
begin
  # Delete options
  data, status_code, headers = api_instance.delete_commerce_product_options_with_http_info(product_id, account_id, names)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_product_options_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **names** | **String** | Comma-separated option names. |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_product_variants

> <CreateCommerceProduct201Response> delete_commerce_product_variants(product_id, account_id, variant_ids)

Delete variants

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.
variant_ids = 'variant_ids_example' # String | Comma-separated ids.

begin
  # Delete variants
  result = api_instance.delete_commerce_product_variants(product_id, account_id, variant_ids)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_product_variants: #{e}"
end
```

#### Using the delete_commerce_product_variants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> delete_commerce_product_variants_with_http_info(product_id, account_id, variant_ids)

```ruby
begin
  # Delete variants
  data, status_code, headers = api_instance.delete_commerce_product_variants_with_http_info(product_id, account_id, variant_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_product_variants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **variant_ids** | **String** | Comma-separated ids. |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_commerce_redirect

> <DeleteCommerceRedirect200Response> delete_commerce_redirect(redirect_id, account_id)

Delete a URL redirect

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
redirect_id = 'redirect_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Delete a URL redirect
  result = api_instance.delete_commerce_redirect(redirect_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_redirect: #{e}"
end
```

#### Using the delete_commerce_redirect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteCommerceRedirect200Response>, Integer, Hash)> delete_commerce_redirect_with_http_info(redirect_id, account_id)

```ruby
begin
  # Delete a URL redirect
  data, status_code, headers = api_instance.delete_commerce_redirect_with_http_info(redirect_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteCommerceRedirect200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_commerce_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**DeleteCommerceRedirect200Response**](DeleteCommerceRedirect200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_product_metafields

> <DeleteProductMetafields200Response> delete_product_metafields(product_id, account_id, keys)

Delete product metafields

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.
keys = 'keys_example' # String | Comma-separated namespace.key pairs.

begin
  # Delete product metafields
  result = api_instance.delete_product_metafields(product_id, account_id, keys)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_product_metafields: #{e}"
end
```

#### Using the delete_product_metafields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteProductMetafields200Response>, Integer, Hash)> delete_product_metafields_with_http_info(product_id, account_id, keys)

```ruby
begin
  # Delete product metafields
  data, status_code, headers = api_instance.delete_product_metafields_with_http_info(product_id, account_id, keys)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteProductMetafields200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->delete_product_metafields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **keys** | **String** | Comma-separated namespace.key pairs. |  |

### Return type

[**DeleteProductMetafields200Response**](DeleteProductMetafields200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## duplicate_commerce_product

> <CreateCommerceProduct201Response> duplicate_commerce_product(product_id, duplicate_commerce_product_request)

Duplicate a product

Copies a product with its options, variants and (by default) images. The copy starts as a draft. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
duplicate_commerce_product_request = Zernio::DuplicateCommerceProductRequest.new({account_id: 'account_id_example', title: 'title_example'}) # DuplicateCommerceProductRequest | 

begin
  # Duplicate a product
  result = api_instance.duplicate_commerce_product(product_id, duplicate_commerce_product_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->duplicate_commerce_product: #{e}"
end
```

#### Using the duplicate_commerce_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> duplicate_commerce_product_with_http_info(product_id, duplicate_commerce_product_request)

```ruby
begin
  # Duplicate a product
  data, status_code, headers = api_instance.duplicate_commerce_product_with_http_info(product_id, duplicate_commerce_product_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->duplicate_commerce_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **duplicate_commerce_product_request** | [**DuplicateCommerceProductRequest**](DuplicateCommerceProductRequest.md) |  |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_commerce_catalog_sync

> <CreateCommerceCatalogSync202Response> get_commerce_catalog_sync(sync_id)

Get a catalog sync

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
sync_id = 'sync_id_example' # String | 

begin
  # Get a catalog sync
  result = api_instance.get_commerce_catalog_sync(sync_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_catalog_sync: #{e}"
end
```

#### Using the get_commerce_catalog_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceCatalogSync202Response>, Integer, Hash)> get_commerce_catalog_sync_with_http_info(sync_id)

```ruby
begin
  # Get a catalog sync
  data, status_code, headers = api_instance.get_commerce_catalog_sync_with_http_info(sync_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceCatalogSync202Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_catalog_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_id** | **String** |  |  |

### Return type

[**CreateCommerceCatalogSync202Response**](CreateCommerceCatalogSync202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_collection

> <CreateCommerceCollection201Response> get_commerce_collection(collection_id, account_id)

Get a collection

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native collection id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Get a collection
  result = api_instance.get_commerce_collection(collection_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_collection: #{e}"
end
```

#### Using the get_commerce_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceCollection201Response>, Integer, Hash)> get_commerce_collection_with_http_info(collection_id, account_id)

```ruby
begin
  # Get a collection
  data, status_code, headers = api_instance.get_commerce_collection_with_http_info(collection_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceCollection201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native collection id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**CreateCommerceCollection201Response**](CreateCommerceCollection201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_discount

> <CreateCommerceDiscount201Response> get_commerce_discount(discount_id, account_id)

Get a discount

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
discount_id = 'discount_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Get a discount
  result = api_instance.get_commerce_discount(discount_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_discount: #{e}"
end
```

#### Using the get_commerce_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceDiscount201Response>, Integer, Hash)> get_commerce_discount_with_http_info(discount_id, account_id)

```ruby
begin
  # Get a discount
  data, status_code, headers = api_instance.get_commerce_discount_with_http_info(discount_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceDiscount201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**CreateCommerceDiscount201Response**](CreateCommerceDiscount201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_menu

> <CreateCommerceMenu201Response> get_commerce_menu(menu_id, account_id)

Get a navigation menu

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
menu_id = 'menu_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Get a navigation menu
  result = api_instance.get_commerce_menu(menu_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_menu: #{e}"
end
```

#### Using the get_commerce_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceMenu201Response>, Integer, Hash)> get_commerce_menu_with_http_info(menu_id, account_id)

```ruby
begin
  # Get a navigation menu
  data, status_code, headers = api_instance.get_commerce_menu_with_http_info(menu_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceMenu201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **menu_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**CreateCommerceMenu201Response**](CreateCommerceMenu201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_metaobject

> <CreateCommerceMetaobject201Response> get_commerce_metaobject(metaobject_id, account_id)

Get a metaobject

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
metaobject_id = 'metaobject_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Get a metaobject
  result = api_instance.get_commerce_metaobject(metaobject_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_metaobject: #{e}"
end
```

#### Using the get_commerce_metaobject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceMetaobject201Response>, Integer, Hash)> get_commerce_metaobject_with_http_info(metaobject_id, account_id)

```ruby
begin
  # Get a metaobject
  data, status_code, headers = api_instance.get_commerce_metaobject_with_http_info(metaobject_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceMetaobject201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_metaobject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metaobject_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**CreateCommerceMetaobject201Response**](CreateCommerceMetaobject201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_page

> <CreateCommercePage201Response> get_commerce_page(page_id, account_id)

Get a page

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
page_id = 'page_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Get a page
  result = api_instance.get_commerce_page(page_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_page: #{e}"
end
```

#### Using the get_commerce_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommercePage201Response>, Integer, Hash)> get_commerce_page_with_http_info(page_id, account_id)

```ruby
begin
  # Get a page
  data, status_code, headers = api_instance.get_commerce_page_with_http_info(page_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommercePage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**CreateCommercePage201Response**](CreateCommercePage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_product

> <CreateCommerceProduct201Response> get_commerce_product(product_id, account_id)

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

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native product id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Get a product
  result = api_instance.get_commerce_product(product_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_product: #{e}"
end
```

#### Using the get_commerce_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> get_commerce_product_with_http_info(product_id, account_id)

```ruby
begin
  # Get a product
  data, status_code, headers = api_instance.get_commerce_product_with_http_info(product_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native product id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_commerce_store

> <GetCommerceStore200Response> get_commerce_store(account_id)

Get a store

Returns the connected store with its currency, country and the `capabilities` it supports, so an integration can tell up front which Commerce operations the store serves. On Shopify, stock, sales channels, discounts, navigation, metaobjects, markets, marketing and image removal need permissions the store owner approves separately: `missingCapabilities` lists what is not granted yet and `grantPermissionsUrl` is the page where the owner approves it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # Get a store
  result = api_instance.get_commerce_store(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_store: #{e}"
end
```

#### Using the get_commerce_store_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCommerceStore200Response>, Integer, Hash)> get_commerce_store_with_http_info(account_id)

```ruby
begin
  # Get a store
  data, status_code, headers = api_instance.get_commerce_store_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCommerceStore200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->get_commerce_store_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**GetCommerceStore200Response**](GetCommerceStore200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_collection_metafields

> <ListProductMetafields200Response> list_collection_metafields(collection_id, account_id)

List collection metafields

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List collection metafields
  result = api_instance.list_collection_metafields(collection_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_collection_metafields: #{e}"
end
```

#### Using the list_collection_metafields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductMetafields200Response>, Integer, Hash)> list_collection_metafields_with_http_info(collection_id, account_id)

```ruby
begin
  # List collection metafields
  data, status_code, headers = api_instance.list_collection_metafields_with_http_info(collection_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductMetafields200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_collection_metafields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListProductMetafields200Response**](ListProductMetafields200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_catalog_syncs

> <ListCommerceCatalogSyncs200Response> list_commerce_catalog_syncs(account_id)

List catalog syncs

The ad-platform catalogs this store is kept in sync with.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List catalog syncs
  result = api_instance.list_commerce_catalog_syncs(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_catalog_syncs: #{e}"
end
```

#### Using the list_commerce_catalog_syncs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceCatalogSyncs200Response>, Integer, Hash)> list_commerce_catalog_syncs_with_http_info(account_id)

```ruby
begin
  # List catalog syncs
  data, status_code, headers = api_instance.list_commerce_catalog_syncs_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceCatalogSyncs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_catalog_syncs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListCommerceCatalogSyncs200Response**](ListCommerceCatalogSyncs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_channels

> <ListCommerceChannels200Response> list_commerce_channels(account_id)

List sales channels

Where products and collections can be published: the online store, Shop, POS and installed channel apps. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List sales channels
  result = api_instance.list_commerce_channels(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_channels: #{e}"
end
```

#### Using the list_commerce_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceChannels200Response>, Integer, Hash)> list_commerce_channels_with_http_info(account_id)

```ruby
begin
  # List sales channels
  data, status_code, headers = api_instance.list_commerce_channels_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceChannels200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListCommerceChannels200Response**](ListCommerceChannels200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_collections

> <ListCommerceCollections200Response> list_commerce_collections(account_id, opts)

List collections

Lists the store's product collections. Cursor-paginated like products. List a collection's products with `GET /v1/commerce/products?collectionId=...`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | 
  query: 'query_example' # String | Platform collection search syntax (Shopify: title, handle, collection_type, ...).
}

begin
  # List collections
  result = api_instance.list_commerce_collections(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_collections: #{e}"
end
```

#### Using the list_commerce_collections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceCollections200Response>, Integer, Hash)> list_commerce_collections_with_http_info(account_id, opts)

```ruby
begin
  # List collections
  data, status_code, headers = api_instance.list_commerce_collections_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceCollections200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_collections_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **cursor** | **String** |  | [optional] |
| **query** | **String** | Platform collection search syntax (Shopify: title, handle, collection_type, ...). | [optional] |

### Return type

[**ListCommerceCollections200Response**](ListCommerceCollections200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_discounts

> <ListCommerceDiscounts200Response> list_commerce_discounts(account_id, opts)

List discounts

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | 
  query: 'query_example' # String | Platform search syntax, passed through.
}

begin
  # List discounts
  result = api_instance.list_commerce_discounts(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_discounts: #{e}"
end
```

#### Using the list_commerce_discounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceDiscounts200Response>, Integer, Hash)> list_commerce_discounts_with_http_info(account_id, opts)

```ruby
begin
  # List discounts
  data, status_code, headers = api_instance.list_commerce_discounts_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceDiscounts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_discounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **cursor** | **String** |  | [optional] |
| **query** | **String** | Platform search syntax, passed through. | [optional] |

### Return type

[**ListCommerceDiscounts200Response**](ListCommerceDiscounts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_inventory

> <ListCommerceInventory200Response> list_commerce_inventory(account_id, product_id)

Get a product's stock

Stock per variant and location: available, on hand, committed to orders and incoming. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.
product_id = 'product_id_example' # String | 

begin
  # Get a product's stock
  result = api_instance.list_commerce_inventory(account_id, product_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_inventory: #{e}"
end
```

#### Using the list_commerce_inventory_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceInventory200Response>, Integer, Hash)> list_commerce_inventory_with_http_info(account_id, product_id)

```ruby
begin
  # Get a product's stock
  data, status_code, headers = api_instance.list_commerce_inventory_with_http_info(account_id, product_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceInventory200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_inventory_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **product_id** | **String** |  |  |

### Return type

[**ListCommerceInventory200Response**](ListCommerceInventory200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_locations

> <ListCommerceLocations200Response> list_commerce_locations(account_id)

List locations

The store's stock locations (warehouses, shops). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List locations
  result = api_instance.list_commerce_locations(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_locations: #{e}"
end
```

#### Using the list_commerce_locations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceLocations200Response>, Integer, Hash)> list_commerce_locations_with_http_info(account_id)

```ruby
begin
  # List locations
  data, status_code, headers = api_instance.list_commerce_locations_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceLocations200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_locations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListCommerceLocations200Response**](ListCommerceLocations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_markets

> <ListCommerceMarkets200Response> list_commerce_markets(account_id)

List markets

The regions the store sells to, each with its own currency and pricing. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List markets
  result = api_instance.list_commerce_markets(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_markets: #{e}"
end
```

#### Using the list_commerce_markets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceMarkets200Response>, Integer, Hash)> list_commerce_markets_with_http_info(account_id)

```ruby
begin
  # List markets
  data, status_code, headers = api_instance.list_commerce_markets_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceMarkets200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_markets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListCommerceMarkets200Response**](ListCommerceMarkets200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_menus

> <ListCommerceMenus200Response> list_commerce_menus(account_id)

List navigation menus

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List navigation menus
  result = api_instance.list_commerce_menus(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_menus: #{e}"
end
```

#### Using the list_commerce_menus_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceMenus200Response>, Integer, Hash)> list_commerce_menus_with_http_info(account_id)

```ruby
begin
  # List navigation menus
  data, status_code, headers = api_instance.list_commerce_menus_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceMenus200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_menus_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListCommerceMenus200Response**](ListCommerceMenus200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_metaobject_definitions

> <ListCommerceMetaobjectDefinitions200Response> list_commerce_metaobject_definitions(account_id)

List metaobject definitions

The custom content types defined on the store and their fields. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List metaobject definitions
  result = api_instance.list_commerce_metaobject_definitions(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_metaobject_definitions: #{e}"
end
```

#### Using the list_commerce_metaobject_definitions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceMetaobjectDefinitions200Response>, Integer, Hash)> list_commerce_metaobject_definitions_with_http_info(account_id)

```ruby
begin
  # List metaobject definitions
  data, status_code, headers = api_instance.list_commerce_metaobject_definitions_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceMetaobjectDefinitions200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_metaobject_definitions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListCommerceMetaobjectDefinitions200Response**](ListCommerceMetaobjectDefinitions200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_metaobjects

> <ListCommerceMetaobjects200Response> list_commerce_metaobjects(account_id, type, opts)

List metaobjects of a type

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.
type = 'type_example' # String | Definition type from GET /v1/commerce/metaobject-definitions.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  # List metaobjects of a type
  result = api_instance.list_commerce_metaobjects(account_id, type, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_metaobjects: #{e}"
end
```

#### Using the list_commerce_metaobjects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceMetaobjects200Response>, Integer, Hash)> list_commerce_metaobjects_with_http_info(account_id, type, opts)

```ruby
begin
  # List metaobjects of a type
  data, status_code, headers = api_instance.list_commerce_metaobjects_with_http_info(account_id, type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceMetaobjects200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_metaobjects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **type** | **String** | Definition type from GET /v1/commerce/metaobject-definitions. |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **cursor** | **String** |  | [optional] |

### Return type

[**ListCommerceMetaobjects200Response**](ListCommerceMetaobjects200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_pages

> <ListCommercePages200Response> list_commerce_pages(account_id, opts)

List pages

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | 
  query: 'query_example' # String | Platform search syntax, passed through.
}

begin
  # List pages
  result = api_instance.list_commerce_pages(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_pages: #{e}"
end
```

#### Using the list_commerce_pages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommercePages200Response>, Integer, Hash)> list_commerce_pages_with_http_info(account_id, opts)

```ruby
begin
  # List pages
  data, status_code, headers = api_instance.list_commerce_pages_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommercePages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_pages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **cursor** | **String** |  | [optional] |
| **query** | **String** | Platform search syntax, passed through. | [optional] |

### Return type

[**ListCommercePages200Response**](ListCommercePages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_price_lists

> <ListCommercePriceLists200Response> list_commerce_price_lists(account_id)

List price lists

Price lists hold fixed prices per variant for a market. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List price lists
  result = api_instance.list_commerce_price_lists(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_price_lists: #{e}"
end
```

#### Using the list_commerce_price_lists_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommercePriceLists200Response>, Integer, Hash)> list_commerce_price_lists_with_http_info(account_id)

```ruby
begin
  # List price lists
  data, status_code, headers = api_instance.list_commerce_price_lists_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommercePriceLists200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_price_lists_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListCommercePriceLists200Response**](ListCommercePriceLists200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_products

> <ListCommerceProducts200Response> list_commerce_products(account_id, opts)

List products

Lists the store's products with their variants, options and images. Cursor-paginated: pass `limit` (1-100, default 20) and the `cursor` from a previous response's `nextCursor`, which is null on the last page. Filter with `status` and/or `query` (the platform's product search syntax, passed through verbatim). A status the platform has no equivalent of returns an empty page. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | Opaque cursor from a previous response. Omit for the first page.
  status: Zernio::CommerceProductStatus::ACTIVE, # CommerceProductStatus | 
  query: 'query_example', # String | Platform product search syntax (Shopify: title, vendor, product_type, tag, sku, handle, ...).
  collection_id: 'collection_id_example' # String | Only products in this collection.
}

begin
  # List products
  result = api_instance.list_commerce_products(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_products: #{e}"
end
```

#### Using the list_commerce_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceProducts200Response>, Integer, Hash)> list_commerce_products_with_http_info(account_id, opts)

```ruby
begin
  # List products
  data, status_code, headers = api_instance.list_commerce_products_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceProducts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **cursor** | **String** | Opaque cursor from a previous response. Omit for the first page. | [optional] |
| **status** | [**CommerceProductStatus**](.md) |  | [optional] |
| **query** | **String** | Platform product search syntax (Shopify: title, vendor, product_type, tag, sku, handle, ...). | [optional] |
| **collection_id** | **String** | Only products in this collection. | [optional] |

### Return type

[**ListCommerceProducts200Response**](ListCommerceProducts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_commerce_redirects

> <ListCommerceRedirects200Response> list_commerce_redirects(account_id, opts)

List URL redirects

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
account_id = 'account_id_example' # String | Connected store SocialAccount id.
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | 
  query: 'query_example' # String | Platform search syntax, passed through.
}

begin
  # List URL redirects
  result = api_instance.list_commerce_redirects(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_redirects: #{e}"
end
```

#### Using the list_commerce_redirects_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCommerceRedirects200Response>, Integer, Hash)> list_commerce_redirects_with_http_info(account_id, opts)

```ruby
begin
  # List URL redirects
  data, status_code, headers = api_instance.list_commerce_redirects_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCommerceRedirects200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_commerce_redirects_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **limit** | **Integer** |  | [optional][default to 20] |
| **cursor** | **String** |  | [optional] |
| **query** | **String** | Platform search syntax, passed through. | [optional] |

### Return type

[**ListCommerceRedirects200Response**](ListCommerceRedirects200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_product_metafields

> <ListProductMetafields200Response> list_product_metafields(product_id, account_id)

List product metafields

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.

begin
  # List product metafields
  result = api_instance.list_product_metafields(product_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_product_metafields: #{e}"
end
```

#### Using the list_product_metafields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductMetafields200Response>, Integer, Hash)> list_product_metafields_with_http_info(product_id, account_id)

```ruby
begin
  # List product metafields
  data, status_code, headers = api_instance.list_product_metafields_with_http_info(product_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductMetafields200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->list_product_metafields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |

### Return type

[**ListProductMetafields200Response**](ListProductMetafields200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_commerce_product_images

> <CreateCommerceProduct201Response> remove_commerce_product_images(product_id, account_id, image_ids)

Remove images

Removes images from the product by image id (the `id` on each image). The file stays in the store's media library. Needs the products.images_remove capability. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
account_id = 'account_id_example' # String | Connected store SocialAccount id.
image_ids = 'image_ids_example' # String | Comma-separated ids.

begin
  # Remove images
  result = api_instance.remove_commerce_product_images(product_id, account_id, image_ids)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->remove_commerce_product_images: #{e}"
end
```

#### Using the remove_commerce_product_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> remove_commerce_product_images_with_http_info(product_id, account_id, image_ids)

```ruby
begin
  # Remove images
  data, status_code, headers = api_instance.remove_commerce_product_images_with_http_info(product_id, account_id, image_ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->remove_commerce_product_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **account_id** | **String** | Connected store SocialAccount id. |  |
| **image_ids** | **String** | Comma-separated ids. |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reorder_commerce_collection_products

> <ReorderCommerceProductImages200Response> reorder_commerce_collection_products(collection_id, reorder_commerce_collection_products_request)

Reorder products in a collection

Moves products to new 0-based positions. Only for collections sorted `manual`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native id.
reorder_commerce_collection_products_request = Zernio::ReorderCommerceCollectionProductsRequest.new({account_id: 'account_id_example', moves: [Zernio::ReorderCommerceCollectionProductsRequestMovesInner.new({product_id: 'product_id_example', position: 37})]}) # ReorderCommerceCollectionProductsRequest | 

begin
  # Reorder products in a collection
  result = api_instance.reorder_commerce_collection_products(collection_id, reorder_commerce_collection_products_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->reorder_commerce_collection_products: #{e}"
end
```

#### Using the reorder_commerce_collection_products_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReorderCommerceProductImages200Response>, Integer, Hash)> reorder_commerce_collection_products_with_http_info(collection_id, reorder_commerce_collection_products_request)

```ruby
begin
  # Reorder products in a collection
  data, status_code, headers = api_instance.reorder_commerce_collection_products_with_http_info(collection_id, reorder_commerce_collection_products_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReorderCommerceProductImages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->reorder_commerce_collection_products_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native id. |  |
| **reorder_commerce_collection_products_request** | [**ReorderCommerceCollectionProductsRequest**](ReorderCommerceCollectionProductsRequest.md) |  |  |

### Return type

[**ReorderCommerceProductImages200Response**](ReorderCommerceProductImages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reorder_commerce_product_images

> <ReorderCommerceProductImages200Response> reorder_commerce_product_images(product_id, reorder_commerce_product_images_request)

Reorder images

Puts the product's images in the given order; the first becomes the featured image. `pending` is true while the platform finishes in the background. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
reorder_commerce_product_images_request = Zernio::ReorderCommerceProductImagesRequest.new({account_id: 'account_id_example', image_ids: ['image_ids_example']}) # ReorderCommerceProductImagesRequest | 

begin
  # Reorder images
  result = api_instance.reorder_commerce_product_images(product_id, reorder_commerce_product_images_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->reorder_commerce_product_images: #{e}"
end
```

#### Using the reorder_commerce_product_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReorderCommerceProductImages200Response>, Integer, Hash)> reorder_commerce_product_images_with_http_info(product_id, reorder_commerce_product_images_request)

```ruby
begin
  # Reorder images
  data, status_code, headers = api_instance.reorder_commerce_product_images_with_http_info(product_id, reorder_commerce_product_images_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReorderCommerceProductImages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->reorder_commerce_product_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **reorder_commerce_product_images_request** | [**ReorderCommerceProductImagesRequest**](ReorderCommerceProductImagesRequest.md) |  |  |

### Return type

[**ReorderCommerceProductImages200Response**](ReorderCommerceProductImages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## run_commerce_catalog_sync

> <CreateCommerceCatalogSync202Response> run_commerce_catalog_sync(sync_id)

Run a catalog sync now

Queues a full run. Poll GET /v1/commerce/catalog-syncs/{syncId} for the outcome.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
sync_id = 'sync_id_example' # String | 

begin
  # Run a catalog sync now
  result = api_instance.run_commerce_catalog_sync(sync_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->run_commerce_catalog_sync: #{e}"
end
```

#### Using the run_commerce_catalog_sync_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceCatalogSync202Response>, Integer, Hash)> run_commerce_catalog_sync_with_http_info(sync_id)

```ruby
begin
  # Run a catalog sync now
  data, status_code, headers = api_instance.run_commerce_catalog_sync_with_http_info(sync_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceCatalogSync202Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->run_commerce_catalog_sync_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_id** | **String** |  |  |

### Return type

[**CreateCommerceCatalogSync202Response**](CreateCommerceCatalogSync202Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_collection_metafields

> <ListProductMetafields200Response> set_collection_metafields(collection_id, set_product_metafields_request)

Set collection metafields

Creates or updates custom fields by namespace and key. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native id.
set_product_metafields_request = Zernio::SetProductMetafieldsRequest.new({account_id: 'account_id_example', metafields: [Zernio::CommerceMetafield.new({namespace: 'namespace_example', key: 'key_example', type: 'type_example', value: 'value_example'})]}) # SetProductMetafieldsRequest | 

begin
  # Set collection metafields
  result = api_instance.set_collection_metafields(collection_id, set_product_metafields_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->set_collection_metafields: #{e}"
end
```

#### Using the set_collection_metafields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductMetafields200Response>, Integer, Hash)> set_collection_metafields_with_http_info(collection_id, set_product_metafields_request)

```ruby
begin
  # Set collection metafields
  data, status_code, headers = api_instance.set_collection_metafields_with_http_info(collection_id, set_product_metafields_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductMetafields200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->set_collection_metafields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native id. |  |
| **set_product_metafields_request** | [**SetProductMetafieldsRequest**](SetProductMetafieldsRequest.md) |  |  |

### Return type

[**ListProductMetafields200Response**](ListProductMetafields200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_commerce_discount_active

> <CreateCommerceDiscount201Response> set_commerce_discount_active(discount_id, set_commerce_discount_active_request)

Activate or deactivate a discount

Deactivating ends the discount now; activating starts it now. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
discount_id = 'discount_id_example' # String | Platform-native id.
set_commerce_discount_active_request = Zernio::SetCommerceDiscountActiveRequest.new({account_id: 'account_id_example', active: false}) # SetCommerceDiscountActiveRequest | 

begin
  # Activate or deactivate a discount
  result = api_instance.set_commerce_discount_active(discount_id, set_commerce_discount_active_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->set_commerce_discount_active: #{e}"
end
```

#### Using the set_commerce_discount_active_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceDiscount201Response>, Integer, Hash)> set_commerce_discount_active_with_http_info(discount_id, set_commerce_discount_active_request)

```ruby
begin
  # Activate or deactivate a discount
  data, status_code, headers = api_instance.set_commerce_discount_active_with_http_info(discount_id, set_commerce_discount_active_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceDiscount201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->set_commerce_discount_active_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount_id** | **String** | Platform-native id. |  |
| **set_commerce_discount_active_request** | [**SetCommerceDiscountActiveRequest**](SetCommerceDiscountActiveRequest.md) |  |  |

### Return type

[**CreateCommerceDiscount201Response**](CreateCommerceDiscount201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_commerce_price_list_prices

> <SetCommercePriceListPrices200Response> set_commerce_price_list_prices(price_list_id, set_commerce_price_list_prices_request)

Set fixed prices

Sets fixed prices for variants in the price list's currency, overriding the converted price in that market. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
price_list_id = 'price_list_id_example' # String | Platform-native id.
set_commerce_price_list_prices_request = Zernio::SetCommercePriceListPricesRequest.new({account_id: 'account_id_example', prices: [Zernio::SetCommercePriceListPricesRequestPricesInner.new({variant_id: 'variant_id_example', price: 'price_example'})]}) # SetCommercePriceListPricesRequest | 

begin
  # Set fixed prices
  result = api_instance.set_commerce_price_list_prices(price_list_id, set_commerce_price_list_prices_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->set_commerce_price_list_prices: #{e}"
end
```

#### Using the set_commerce_price_list_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetCommercePriceListPrices200Response>, Integer, Hash)> set_commerce_price_list_prices_with_http_info(price_list_id, set_commerce_price_list_prices_request)

```ruby
begin
  # Set fixed prices
  data, status_code, headers = api_instance.set_commerce_price_list_prices_with_http_info(price_list_id, set_commerce_price_list_prices_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetCommercePriceListPrices200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->set_commerce_price_list_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **price_list_id** | **String** | Platform-native id. |  |
| **set_commerce_price_list_prices_request** | [**SetCommercePriceListPricesRequest**](SetCommercePriceListPricesRequest.md) |  |  |

### Return type

[**SetCommercePriceListPrices200Response**](SetCommercePriceListPrices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_product_metafields

> <ListProductMetafields200Response> set_product_metafields(product_id, set_product_metafields_request)

Set product metafields

Creates or updates custom fields by namespace and key. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native id.
set_product_metafields_request = Zernio::SetProductMetafieldsRequest.new({account_id: 'account_id_example', metafields: [Zernio::CommerceMetafield.new({namespace: 'namespace_example', key: 'key_example', type: 'type_example', value: 'value_example'})]}) # SetProductMetafieldsRequest | 

begin
  # Set product metafields
  result = api_instance.set_product_metafields(product_id, set_product_metafields_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->set_product_metafields: #{e}"
end
```

#### Using the set_product_metafields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListProductMetafields200Response>, Integer, Hash)> set_product_metafields_with_http_info(product_id, set_product_metafields_request)

```ruby
begin
  # Set product metafields
  data, status_code, headers = api_instance.set_product_metafields_with_http_info(product_id, set_product_metafields_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListProductMetafields200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->set_product_metafields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native id. |  |
| **set_product_metafields_request** | [**SetProductMetafieldsRequest**](SetProductMetafieldsRequest.md) |  |  |

### Return type

[**ListProductMetafields200Response**](ListProductMetafields200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commerce_collection

> <CreateCommerceCollection201Response> update_commerce_collection(collection_id, update_commerce_collection_request)

Update a collection

Partial update; at least one field besides accountId is required. Change membership with POST /v1/commerce/collections/{collectionId}/products.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
collection_id = 'collection_id_example' # String | Platform-native collection id.
update_commerce_collection_request = Zernio::UpdateCommerceCollectionRequest.new({account_id: 'account_id_example'}) # UpdateCommerceCollectionRequest | 

begin
  # Update a collection
  result = api_instance.update_commerce_collection(collection_id, update_commerce_collection_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_collection: #{e}"
end
```

#### Using the update_commerce_collection_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceCollection201Response>, Integer, Hash)> update_commerce_collection_with_http_info(collection_id, update_commerce_collection_request)

```ruby
begin
  # Update a collection
  data, status_code, headers = api_instance.update_commerce_collection_with_http_info(collection_id, update_commerce_collection_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceCollection201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_collection_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **collection_id** | **String** | Platform-native collection id. |  |
| **update_commerce_collection_request** | [**UpdateCommerceCollectionRequest**](UpdateCommerceCollectionRequest.md) |  |  |

### Return type

[**CreateCommerceCollection201Response**](CreateCommerceCollection201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commerce_discount

> <CreateCommerceDiscount201Response> update_commerce_discount(discount_id, update_commerce_discount_request)

Update a discount

Changes a percentage, fixed-amount or free-shipping discount. Buy-X-get-Y and app discounts are read-only here. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
discount_id = 'discount_id_example' # String | Platform-native id.
update_commerce_discount_request = Zernio::UpdateCommerceDiscountRequest.new({account_id: 'account_id_example'}) # UpdateCommerceDiscountRequest | 

begin
  # Update a discount
  result = api_instance.update_commerce_discount(discount_id, update_commerce_discount_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_discount: #{e}"
end
```

#### Using the update_commerce_discount_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceDiscount201Response>, Integer, Hash)> update_commerce_discount_with_http_info(discount_id, update_commerce_discount_request)

```ruby
begin
  # Update a discount
  data, status_code, headers = api_instance.update_commerce_discount_with_http_info(discount_id, update_commerce_discount_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceDiscount201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_discount_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **discount_id** | **String** | Platform-native id. |  |
| **update_commerce_discount_request** | [**UpdateCommerceDiscountRequest**](UpdateCommerceDiscountRequest.md) |  |  |

### Return type

[**CreateCommerceDiscount201Response**](CreateCommerceDiscount201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commerce_menu

> <CreateCommerceMenu201Response> update_commerce_menu(menu_id, update_commerce_menu_request)

Replace a navigation menu

Replaces the title and the whole item tree. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
menu_id = 'menu_id_example' # String | Platform-native id.
update_commerce_menu_request = Zernio::UpdateCommerceMenuRequest.new({account_id: 'account_id_example', title: 'title_example', items: [Zernio::CommerceMenuItemInput.new({title: 'title_example', type: 'frontpage'})]}) # UpdateCommerceMenuRequest | 

begin
  # Replace a navigation menu
  result = api_instance.update_commerce_menu(menu_id, update_commerce_menu_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_menu: #{e}"
end
```

#### Using the update_commerce_menu_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceMenu201Response>, Integer, Hash)> update_commerce_menu_with_http_info(menu_id, update_commerce_menu_request)

```ruby
begin
  # Replace a navigation menu
  data, status_code, headers = api_instance.update_commerce_menu_with_http_info(menu_id, update_commerce_menu_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceMenu201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_menu_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **menu_id** | **String** | Platform-native id. |  |
| **update_commerce_menu_request** | [**UpdateCommerceMenuRequest**](UpdateCommerceMenuRequest.md) |  |  |

### Return type

[**CreateCommerceMenu201Response**](CreateCommerceMenu201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commerce_metaobject

> <CreateCommerceMetaobject201Response> update_commerce_metaobject(metaobject_id, update_commerce_metaobject_request)

Update a metaobject

Sets the given field values; fields left out keep theirs. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
metaobject_id = 'metaobject_id_example' # String | Platform-native id.
update_commerce_metaobject_request = Zernio::UpdateCommerceMetaobjectRequest.new({account_id: 'account_id_example', fields: [Zernio::UpdateAdTrackingTagsRequestUrlTagsInner.new({key: 'key_example', value: 'value_example'})]}) # UpdateCommerceMetaobjectRequest | 

begin
  # Update a metaobject
  result = api_instance.update_commerce_metaobject(metaobject_id, update_commerce_metaobject_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_metaobject: #{e}"
end
```

#### Using the update_commerce_metaobject_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceMetaobject201Response>, Integer, Hash)> update_commerce_metaobject_with_http_info(metaobject_id, update_commerce_metaobject_request)

```ruby
begin
  # Update a metaobject
  data, status_code, headers = api_instance.update_commerce_metaobject_with_http_info(metaobject_id, update_commerce_metaobject_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceMetaobject201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_metaobject_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metaobject_id** | **String** | Platform-native id. |  |
| **update_commerce_metaobject_request** | [**UpdateCommerceMetaobjectRequest**](UpdateCommerceMetaobjectRequest.md) |  |  |

### Return type

[**CreateCommerceMetaobject201Response**](CreateCommerceMetaobject201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commerce_page

> <CreateCommercePage201Response> update_commerce_page(page_id, update_commerce_page_request)

Update a page

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
page_id = 'page_id_example' # String | Platform-native id.
update_commerce_page_request = Zernio::UpdateCommercePageRequest.new({account_id: 'account_id_example'}) # UpdateCommercePageRequest | 

begin
  # Update a page
  result = api_instance.update_commerce_page(page_id, update_commerce_page_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_page: #{e}"
end
```

#### Using the update_commerce_page_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommercePage201Response>, Integer, Hash)> update_commerce_page_with_http_info(page_id, update_commerce_page_request)

```ruby
begin
  # Update a page
  data, status_code, headers = api_instance.update_commerce_page_with_http_info(page_id, update_commerce_page_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommercePage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_page_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Platform-native id. |  |
| **update_commerce_page_request** | [**UpdateCommercePageRequest**](UpdateCommercePageRequest.md) |  |  |

### Return type

[**CreateCommercePage201Response**](CreateCommercePage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commerce_product

> <CreateCommerceProduct201Response> update_commerce_product(product_id, update_commerce_product_request)

Update a product

Partial-updates the product's own fields; at least one besides `accountId` is required. `tags` replaces the full list. Change prices with `POST /v1/commerce/products/{productId}/price` and status with `POST /v1/commerce/products/state`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native product id.
update_commerce_product_request = Zernio::UpdateCommerceProductRequest.new({account_id: 'account_id_example'}) # UpdateCommerceProductRequest | 

begin
  # Update a product
  result = api_instance.update_commerce_product(product_id, update_commerce_product_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_product: #{e}"
end
```

#### Using the update_commerce_product_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> update_commerce_product_with_http_info(product_id, update_commerce_product_request)

```ruby
begin
  # Update a product
  data, status_code, headers = api_instance.update_commerce_product_with_http_info(product_id, update_commerce_product_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_product_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native product id. |  |
| **update_commerce_product_request** | [**UpdateCommerceProductRequest**](UpdateCommerceProductRequest.md) |  |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commerce_product_prices

> <CreateCommerceProduct201Response> update_commerce_product_prices(product_id, update_commerce_product_prices_request)

Update variant prices

Sets the price and/or compare-at price of the listed variants. Other variants are untouched. Amounts are in the store currency; send `compareAtPrice: null` to remove a strike-through price. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
product_id = 'product_id_example' # String | Platform-native product id.
update_commerce_product_prices_request = Zernio::UpdateCommerceProductPricesRequest.new({account_id: 'account_id_example', variants: [Zernio::UpdateCommerceProductPricesRequestVariantsInner.new({id: 'id_example'})]}) # UpdateCommerceProductPricesRequest | 

begin
  # Update variant prices
  result = api_instance.update_commerce_product_prices(product_id, update_commerce_product_prices_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_product_prices: #{e}"
end
```

#### Using the update_commerce_product_prices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceProduct201Response>, Integer, Hash)> update_commerce_product_prices_with_http_info(product_id, update_commerce_product_prices_request)

```ruby
begin
  # Update variant prices
  data, status_code, headers = api_instance.update_commerce_product_prices_with_http_info(product_id, update_commerce_product_prices_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceProduct201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_product_prices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **product_id** | **String** | Platform-native product id. |  |
| **update_commerce_product_prices_request** | [**UpdateCommerceProductPricesRequest**](UpdateCommerceProductPricesRequest.md) |  |  |

### Return type

[**CreateCommerceProduct201Response**](CreateCommerceProduct201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_commerce_redirect

> <CreateCommerceRedirect201Response> update_commerce_redirect(redirect_id, update_commerce_redirect_request)

Update a URL redirect

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
redirect_id = 'redirect_id_example' # String | Platform-native id.
update_commerce_redirect_request = Zernio::UpdateCommerceRedirectRequest.new({account_id: 'account_id_example'}) # UpdateCommerceRedirectRequest | 

begin
  # Update a URL redirect
  result = api_instance.update_commerce_redirect(redirect_id, update_commerce_redirect_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_redirect: #{e}"
end
```

#### Using the update_commerce_redirect_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCommerceRedirect201Response>, Integer, Hash)> update_commerce_redirect_with_http_info(redirect_id, update_commerce_redirect_request)

```ruby
begin
  # Update a URL redirect
  data, status_code, headers = api_instance.update_commerce_redirect_with_http_info(redirect_id, update_commerce_redirect_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCommerceRedirect201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->update_commerce_redirect_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **redirect_id** | **String** | Platform-native id. |  |
| **update_commerce_redirect_request** | [**UpdateCommerceRedirectRequest**](UpdateCommerceRedirectRequest.md) |  |  |

### Return type

[**CreateCommerceRedirect201Response**](CreateCommerceRedirect201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upsert_commerce_marketing_activity

> <UpsertCommerceMarketingActivity200Response> upsert_commerce_marketing_activity(upsert_commerce_marketing_activity_request)

Record a marketing activity

Creates or updates (by `remoteId`) an activity in the store's Marketing section, so the merchant sees a post, ad or message you ran for them, with its link and UTM parameters for attribution. Use your own id (for example the Zernio post or ad id) as `remoteId`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CommerceApi.new
upsert_commerce_marketing_activity_request = Zernio::UpsertCommerceMarketingActivityRequest.new({account_id: 'account_id_example', remote_id: 'remote_id_example', title: 'title_example', url: 'url_example', tactic: 'ad', channel: 'social', status: 'active'}) # UpsertCommerceMarketingActivityRequest | 

begin
  # Record a marketing activity
  result = api_instance.upsert_commerce_marketing_activity(upsert_commerce_marketing_activity_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->upsert_commerce_marketing_activity: #{e}"
end
```

#### Using the upsert_commerce_marketing_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpsertCommerceMarketingActivity200Response>, Integer, Hash)> upsert_commerce_marketing_activity_with_http_info(upsert_commerce_marketing_activity_request)

```ruby
begin
  # Record a marketing activity
  data, status_code, headers = api_instance.upsert_commerce_marketing_activity_with_http_info(upsert_commerce_marketing_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpsertCommerceMarketingActivity200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CommerceApi->upsert_commerce_marketing_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upsert_commerce_marketing_activity_request** | [**UpsertCommerceMarketingActivityRequest**](UpsertCommerceMarketingActivityRequest.md) |  |  |

### Return type

[**UpsertCommerceMarketingActivity200Response**](UpsertCommerceMarketingActivity200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

