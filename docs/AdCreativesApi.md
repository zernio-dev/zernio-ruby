# Zernio::AdCreativesApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ad_creative**](AdCreativesApi.md#create_ad_creative) | **POST** /v1/ads/creatives | Create a standalone creative |
| [**delete_ad_creative**](AdCreativesApi.md#delete_ad_creative) | **DELETE** /v1/ads/creatives/{creativeId} | Delete a creative |
| [**generate_ad_previews**](AdCreativesApi.md#generate_ad_previews) | **POST** /v1/ads/preview | Render pre-create ad previews |
| [**get_ad_creative**](AdCreativesApi.md#get_ad_creative) | **GET** /v1/ads/creatives/{creativeId} | Creative details |
| [**get_ad_previews**](AdCreativesApi.md#get_ad_previews) | **GET** /v1/ads/{adId}/preview | Render previews of an existing ad |
| [**list_ad_catalog_product_sets**](AdCreativesApi.md#list_ad_catalog_product_sets) | **GET** /v1/ads/catalogs/{catalogId}/product-sets | List a catalog&#39;s product sets |
| [**list_ad_catalogs**](AdCreativesApi.md#list_ad_catalogs) | **GET** /v1/ads/catalogs | List Meta product catalogs |
| [**list_ad_creatives**](AdCreativesApi.md#list_ad_creatives) | **GET** /v1/ads/creatives | Creative library |
| [**list_ad_images**](AdCreativesApi.md#list_ad_images) | **GET** /v1/ads/images | Ad image library |
| [**update_ad_creative**](AdCreativesApi.md#update_ad_creative) | **PUT** /v1/ads/creatives/{creativeId} | Rename a creative |
| [**upload_ad_image**](AdCreativesApi.md#upload_ad_image) | **POST** /v1/ads/images | Upload an ad image from base64 |


## create_ad_creative

> <CreateAdCreative201Response> create_ad_creative(create_ad_creative_request)

Create a standalone creative

Creates a creative in the library WITHOUT an ad, reusable on the create endpoints via `existingCreativeId`. Provide exactly one of `imageUrl` (uploaded server-side), `imageHash` (from POST /v1/ads/images or the library list), or `carouselCards` (2-10 hand-built cards). The Page (and linked Instagram account, when present) is resolved from `accountId` as the story actor.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
create_ad_creative_request = Zernio::CreateAdCreativeRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', headline: 'headline_example', body: 'body_example', link_url: 'link_url_example'}) # CreateAdCreativeRequest | 

begin
  # Create a standalone creative
  result = api_instance.create_ad_creative(create_ad_creative_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->create_ad_creative: #{e}"
end
```

#### Using the create_ad_creative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAdCreative201Response>, Integer, Hash)> create_ad_creative_with_http_info(create_ad_creative_request)

```ruby
begin
  # Create a standalone creative
  data, status_code, headers = api_instance.create_ad_creative_with_http_info(create_ad_creative_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAdCreative201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->create_ad_creative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_ad_creative_request** | [**CreateAdCreativeRequest**](CreateAdCreativeRequest.md) |  |  |

### Return type

[**CreateAdCreative201Response**](CreateAdCreative201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_ad_creative

> <DeleteAdCreative200Response> delete_ad_creative(creative_id, account_id)

Delete a creative

Deletes a creative from the library. Meta only allows deleting creatives not referenced by any ad — otherwise its 400 surfaces verbatim.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
creative_id = 'creative_id_example' # String | Platform creative id
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.

begin
  # Delete a creative
  result = api_instance.delete_ad_creative(creative_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->delete_ad_creative: #{e}"
end
```

#### Using the delete_ad_creative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAdCreative200Response>, Integer, Hash)> delete_ad_creative_with_http_info(creative_id, account_id)

```ruby
begin
  # Delete a creative
  data, status_code, headers = api_instance.delete_ad_creative_with_http_info(creative_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAdCreative200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->delete_ad_creative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creative_id** | **String** | Platform creative id |  |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |

### Return type

[**DeleteAdCreative200Response**](DeleteAdCreative200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## generate_ad_previews

> <GenerateAdPreviews200Response> generate_ad_previews(generate_ad_previews_request)

Render pre-create ad previews

Renders how a creative would look per placement BEFORE any ad exists, via Meta's `/generatepreviews`. Provide exactly one creative source: `existingCreativeId` or `creativeSpec`. Each preview is an HTML `<iframe>` snippet embeddable directly. Unknown `formats` values return Meta's 400 verbatim. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
generate_ad_previews_request = Zernio::GenerateAdPreviewsRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'}) # GenerateAdPreviewsRequest | 

begin
  # Render pre-create ad previews
  result = api_instance.generate_ad_previews(generate_ad_previews_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->generate_ad_previews: #{e}"
end
```

#### Using the generate_ad_previews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GenerateAdPreviews200Response>, Integer, Hash)> generate_ad_previews_with_http_info(generate_ad_previews_request)

```ruby
begin
  # Render pre-create ad previews
  data, status_code, headers = api_instance.generate_ad_previews_with_http_info(generate_ad_previews_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GenerateAdPreviews200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->generate_ad_previews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **generate_ad_previews_request** | [**GenerateAdPreviewsRequest**](GenerateAdPreviewsRequest.md) |  |  |

### Return type

[**GenerateAdPreviews200Response**](GenerateAdPreviews200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_ad_creative

> <GetAdCreative200Response> get_ad_creative(creative_id, account_id, opts)

Creative details

One creative's details, verbatim from Meta. `fields` is a raw-passthrough override of the default projection.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
creative_id = 'creative_id_example' # String | Platform creative id
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
opts = {
  fields: 'fields_example' # String | Comma-separated Graph field override (supports nested {} projections).
}

begin
  # Creative details
  result = api_instance.get_ad_creative(creative_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->get_ad_creative: #{e}"
end
```

#### Using the get_ad_creative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdCreative200Response>, Integer, Hash)> get_ad_creative_with_http_info(creative_id, account_id, opts)

```ruby
begin
  # Creative details
  data, status_code, headers = api_instance.get_ad_creative_with_http_info(creative_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdCreative200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->get_ad_creative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creative_id** | **String** | Platform creative id |  |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **fields** | **String** | Comma-separated Graph field override (supports nested {} projections). | [optional] |

### Return type

[**GetAdCreative200Response**](GetAdCreative200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ad_previews

> <GetAdPreviews200Response> get_ad_previews(ad_id, opts)

Render previews of an existing ad

Renders an EXISTING ad per placement via Meta's `/{ad_id}/previews`. Each preview is an HTML `<iframe>` snippet embeddable directly. Unknown `formats` values return Meta's 400 verbatim. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
ad_id = 'ad_id_example' # String | Zernio ad id (24-char hex).
opts = {
  formats: 'formats_example' # String | Comma-separated Meta ad_format values (max 10), one preview per format. Defaults to DESKTOP_FEED_STANDARD.
}

begin
  # Render previews of an existing ad
  result = api_instance.get_ad_previews(ad_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->get_ad_previews: #{e}"
end
```

#### Using the get_ad_previews_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAdPreviews200Response>, Integer, Hash)> get_ad_previews_with_http_info(ad_id, opts)

```ruby
begin
  # Render previews of an existing ad
  data, status_code, headers = api_instance.get_ad_previews_with_http_info(ad_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAdPreviews200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->get_ad_previews_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Zernio ad id (24-char hex). |  |
| **formats** | **String** | Comma-separated Meta ad_format values (max 10), one preview per format. Defaults to DESKTOP_FEED_STANDARD. | [optional] |

### Return type

[**GetAdPreviews200Response**](GetAdPreviews200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_catalog_product_sets

> <ListAdCatalogProductSets200Response> list_ad_catalog_product_sets(catalog_id, account_id)

List a catalog's product sets

Lists a Meta product catalog's product sets — the unit a catalog ad promotes. Pass the chosen set as `promotedObject.productSetId` on POST /v1/ads/create with `goal: catalog_sales`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
catalog_id = 'catalog_id_example' # String | Meta product catalog ID (from GET /v1/ads/catalogs)
account_id = 'account_id_example' # String | A facebook, instagram, or metaads social account ID

begin
  # List a catalog's product sets
  result = api_instance.list_ad_catalog_product_sets(catalog_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->list_ad_catalog_product_sets: #{e}"
end
```

#### Using the list_ad_catalog_product_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogProductSets200Response>, Integer, Hash)> list_ad_catalog_product_sets_with_http_info(catalog_id, account_id)

```ruby
begin
  # List a catalog's product sets
  data, status_code, headers = api_instance.list_ad_catalog_product_sets_with_http_info(catalog_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogProductSets200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->list_ad_catalog_product_sets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **catalog_id** | **String** | Meta product catalog ID (from GET /v1/ads/catalogs) |  |
| **account_id** | **String** | A facebook, instagram, or metaads social account ID |  |

### Return type

[**ListAdCatalogProductSets200Response**](ListAdCatalogProductSets200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_catalogs

> <ListAdCatalogs200Response> list_ad_catalogs(account_id, ad_account_id)

List Meta product catalogs

Lists the Meta product catalogs reachable from an ad account (owned + agency-shared catalogs of the ad account's business), for Advantage+ catalog ads (`goal: catalog_sales` on POST /v1/ads/create — e.g. vehicle inventory catalogs). Read-only; uses scopes customers already granted (no reconnect needed). Catalog contents (items, feeds) are managed in Meta Commerce Manager, not through this API.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
account_id = 'account_id_example' # String | A facebook, instagram, or metaads social account ID
ad_account_id = 'ad_account_id_example' # String | Meta ad account ID (act_...)

begin
  # List Meta product catalogs
  result = api_instance.list_ad_catalogs(account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->list_ad_catalogs: #{e}"
end
```

#### Using the list_ad_catalogs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCatalogs200Response>, Integer, Hash)> list_ad_catalogs_with_http_info(account_id, ad_account_id)

```ruby
begin
  # List Meta product catalogs
  data, status_code, headers = api_instance.list_ad_catalogs_with_http_info(account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCatalogs200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->list_ad_catalogs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | A facebook, instagram, or metaads social account ID |  |
| **ad_account_id** | **String** | Meta ad account ID (act_...) |  |

### Return type

[**ListAdCatalogs200Response**](ListAdCatalogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_creatives

> <ListAdCreatives200Response> list_ad_creatives(account_id, ad_account_id, opts)

Creative library

Lists the ad account's creative library (Meta's `/act_X/adcreatives`), rows returned verbatim. The default projection covers id, name, status, object type, thumbnail, object_story_spec / asset_feed_spec and url_tags; `fields` is a raw-passthrough override. Any creative id here is reusable on the create endpoints via `existingCreativeId`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).
opts = {
  fields: 'fields_example', # String | Comma-separated Graph field override (supports nested {} projections).
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page.
}

begin
  # Creative library
  result = api_instance.list_ad_creatives(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->list_ad_creatives: #{e}"
end
```

#### Using the list_ad_creatives_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdCreatives200Response>, Integer, Hash)> list_ad_creatives_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # Creative library
  data, status_code, headers = api_instance.list_ad_creatives_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdCreatives200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->list_ad_creatives_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **fields** | **String** | Comma-separated Graph field override (supports nested {} projections). | [optional] |
| **limit** | **Integer** | Rows per page | [optional][default to 25] |
| **after** | **String** | Cursor from paging.after of the previous page. | [optional] |

### Return type

[**ListAdCreatives200Response**](ListAdCreatives200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ad_images

> <ListAdImages200Response> list_ad_images(account_id, ad_account_id, opts)

Ad image library

Lists the ad account's image library (Meta's `/act_X/adimages`), rows returned verbatim. The default projection covers hash, url, name, dimensions and status; `fields` is a raw-passthrough override. Any `hash` here is reusable wherever Meta accepts `image_hash` (e.g. `imageHash` on POST /v1/ads/creatives).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
account_id = 'account_id_example' # String | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token.
ad_account_id = 'ad_account_id_example' # String | Meta ad account id (act_<n>).
opts = {
  fields: 'fields_example', # String | Comma-separated Graph field override (supports nested {} projections).
  limit: 56, # Integer | Rows per page
  after: 'after_example' # String | Cursor from paging.after of the previous page.
}

begin
  # Ad image library
  result = api_instance.list_ad_images(account_id, ad_account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->list_ad_images: #{e}"
end
```

#### Using the list_ad_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAdImages200Response>, Integer, Hash)> list_ad_images_with_http_info(account_id, ad_account_id, opts)

```ruby
begin
  # Ad image library
  data, status_code, headers = api_instance.list_ad_images_with_http_info(account_id, ad_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAdImages200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->list_ad_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant) used to resolve the Meta token. |  |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **fields** | **String** | Comma-separated Graph field override (supports nested {} projections). | [optional] |
| **limit** | **Integer** | Rows per page | [optional][default to 25] |
| **after** | **String** | Cursor from paging.after of the previous page. | [optional] |

### Return type

[**ListAdImages200Response**](ListAdImages200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ad_creative

> <UpdateAdCreative200Response> update_ad_creative(creative_id, update_ad_creative_request)

Rename a creative

Renames a creative. Creatives are immutable on Meta beyond `name` — for content changes create a new creative (POST /v1/ads/creatives) and swap it onto the ad (PUT /v1/ads/{adId} with `creative`).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
creative_id = 'creative_id_example' # String | Platform creative id
update_ad_creative_request = Zernio::UpdateAdCreativeRequest.new({account_id: 'account_id_example', name: 'name_example'}) # UpdateAdCreativeRequest | 

begin
  # Rename a creative
  result = api_instance.update_ad_creative(creative_id, update_ad_creative_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->update_ad_creative: #{e}"
end
```

#### Using the update_ad_creative_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateAdCreative200Response>, Integer, Hash)> update_ad_creative_with_http_info(creative_id, update_ad_creative_request)

```ruby
begin
  # Rename a creative
  data, status_code, headers = api_instance.update_ad_creative_with_http_info(creative_id, update_ad_creative_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateAdCreative200Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->update_ad_creative_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creative_id** | **String** | Platform creative id |  |
| **update_ad_creative_request** | [**UpdateAdCreativeRequest**](UpdateAdCreativeRequest.md) |  |  |

### Return type

[**UpdateAdCreative200Response**](UpdateAdCreative200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_ad_image

> <UploadAdImage201Response> upload_ad_image(upload_ad_image_request)

Upload an ad image from base64

Uploads raw image bytes to the Meta ad account's image library — for callers whose creatives aren't hosted at a public URL. Returns the image `hash` (Meta's identifier for the asset) and the Meta-hosted `url`, which can be used directly as `imageUrl` on the create endpoints. Max 30 MB decoded.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::AdCreativesApi.new
upload_ad_image_request = Zernio::UploadAdImageRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', image_base64: 'image_base64_example'}) # UploadAdImageRequest | 

begin
  # Upload an ad image from base64
  result = api_instance.upload_ad_image(upload_ad_image_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->upload_ad_image: #{e}"
end
```

#### Using the upload_ad_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadAdImage201Response>, Integer, Hash)> upload_ad_image_with_http_info(upload_ad_image_request)

```ruby
begin
  # Upload an ad image from base64
  data, status_code, headers = api_instance.upload_ad_image_with_http_info(upload_ad_image_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadAdImage201Response>
rescue Zernio::ApiError => e
  puts "Error when calling AdCreativesApi->upload_ad_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **upload_ad_image_request** | [**UploadAdImageRequest**](UploadAdImageRequest.md) |  |  |

### Return type

[**UploadAdImage201Response**](UploadAdImage201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

