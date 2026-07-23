# Zernio::ReachAndFrequencyApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_rf_reservation**](ReachAndFrequencyApi.md#cancel_rf_reservation) | **DELETE** /v1/ads/rf-predictions/{predictionId} | Cancel a Reach &amp; Frequency reservation |
| [**create_rf_prediction**](ReachAndFrequencyApi.md#create_rf_prediction) | **POST** /v1/ads/rf-predictions | Create a Reach &amp; Frequency prediction |
| [**get_rf_prediction**](ReachAndFrequencyApi.md#get_rf_prediction) | **GET** /v1/ads/rf-predictions/{predictionId} | Read a Reach &amp; Frequency prediction |
| [**reserve_rf_prediction**](ReachAndFrequencyApi.md#reserve_rf_prediction) | **POST** /v1/ads/rf-predictions/{predictionId}/reserve | Reserve a Reach &amp; Frequency prediction |


## cancel_rf_reservation

> cancel_rf_reservation(prediction_id, account_id, ad_account_id)

Cancel a Reach & Frequency reservation

Releases a RESERVATION's locked price and inventory. Unreserved predictions expire on their own.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ReachAndFrequencyApi.new
prediction_id = 'prediction_id_example' # String | 
account_id = 'account_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 

begin
  # Cancel a Reach & Frequency reservation
  api_instance.cancel_rf_reservation(prediction_id, account_id, ad_account_id)
rescue Zernio::ApiError => e
  puts "Error when calling ReachAndFrequencyApi->cancel_rf_reservation: #{e}"
end
```

#### Using the cancel_rf_reservation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> cancel_rf_reservation_with_http_info(prediction_id, account_id, ad_account_id)

```ruby
begin
  # Cancel a Reach & Frequency reservation
  data, status_code, headers = api_instance.cancel_rf_reservation_with_http_info(prediction_id, account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Zernio::ApiError => e
  puts "Error when calling ReachAndFrequencyApi->cancel_rf_reservation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prediction_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_rf_prediction

> <CreateRfPrediction201Response> create_rf_prediction(create_rf_prediction_request)

Create a Reach & Frequency prediction

Creates an R&F prediction — a QUOTE, nothing is bought and no ad entities are created. Provide a date range plus exactly one of `budgetAmount` (Meta predicts reach) or `reach` (Meta predicts the budget). The response carries the estimate and its allowed bounds (min/max budget and reach). Predictions expire on their own; to buy, reserve one via POST /v1/ads/rf-predictions/{predictionId}/reserve and pass the RESERVED id to POST /v1/ads/create with `buyingType: \"RESERVED\"`.  Reservation campaigns reject automatic placements, so omitted `placements` default to Facebook feed (+ Instagram stream when a linked IG professional account resolves); Instagram placements require that IG account.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ReachAndFrequencyApi.new
create_rf_prediction_request = Zernio::CreateRfPredictionRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example', start_date: Time.now, end_date: Time.now}) # CreateRfPredictionRequest | 

begin
  # Create a Reach & Frequency prediction
  result = api_instance.create_rf_prediction(create_rf_prediction_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ReachAndFrequencyApi->create_rf_prediction: #{e}"
end
```

#### Using the create_rf_prediction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRfPrediction201Response>, Integer, Hash)> create_rf_prediction_with_http_info(create_rf_prediction_request)

```ruby
begin
  # Create a Reach & Frequency prediction
  data, status_code, headers = api_instance.create_rf_prediction_with_http_info(create_rf_prediction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRfPrediction201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ReachAndFrequencyApi->create_rf_prediction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_rf_prediction_request** | [**CreateRfPredictionRequest**](CreateRfPredictionRequest.md) |  |  |

### Return type

[**CreateRfPrediction201Response**](CreateRfPrediction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_rf_prediction

> <CreateRfPrediction201Response> get_rf_prediction(prediction_id, account_id, ad_account_id)

Read a Reach & Frequency prediction

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ReachAndFrequencyApi.new
prediction_id = 'prediction_id_example' # String | 
account_id = 'account_id_example' # String | 
ad_account_id = 'ad_account_id_example' # String | 

begin
  # Read a Reach & Frequency prediction
  result = api_instance.get_rf_prediction(prediction_id, account_id, ad_account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ReachAndFrequencyApi->get_rf_prediction: #{e}"
end
```

#### Using the get_rf_prediction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateRfPrediction201Response>, Integer, Hash)> get_rf_prediction_with_http_info(prediction_id, account_id, ad_account_id)

```ruby
begin
  # Read a Reach & Frequency prediction
  data, status_code, headers = api_instance.get_rf_prediction_with_http_info(prediction_id, account_id, ad_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateRfPrediction201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ReachAndFrequencyApi->get_rf_prediction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prediction_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** |  |  |

### Return type

[**CreateRfPrediction201Response**](CreateRfPrediction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reserve_rf_prediction

> <ReserveRfPrediction201Response> reserve_rf_prediction(prediction_id, reserve_rf_prediction_request)

Reserve a Reach & Frequency prediction

Locks the quoted price + inventory until the returned `expiresAt` and mints a NEW prediction id — pass that RESERVED id (not the original) as `rfPredictionId` on POST /v1/ads/create. Release an unused reservation via DELETE.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ReachAndFrequencyApi.new
prediction_id = 'prediction_id_example' # String | 
reserve_rf_prediction_request = Zernio::ReserveRfPredictionRequest.new({account_id: 'account_id_example', ad_account_id: 'ad_account_id_example'}) # ReserveRfPredictionRequest | 

begin
  # Reserve a Reach & Frequency prediction
  result = api_instance.reserve_rf_prediction(prediction_id, reserve_rf_prediction_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ReachAndFrequencyApi->reserve_rf_prediction: #{e}"
end
```

#### Using the reserve_rf_prediction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReserveRfPrediction201Response>, Integer, Hash)> reserve_rf_prediction_with_http_info(prediction_id, reserve_rf_prediction_request)

```ruby
begin
  # Reserve a Reach & Frequency prediction
  data, status_code, headers = api_instance.reserve_rf_prediction_with_http_info(prediction_id, reserve_rf_prediction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReserveRfPrediction201Response>
rescue Zernio::ApiError => e
  puts "Error when calling ReachAndFrequencyApi->reserve_rf_prediction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prediction_id** | **String** |  |  |
| **reserve_rf_prediction_request** | [**ReserveRfPredictionRequest**](ReserveRfPredictionRequest.md) |  |  |

### Return type

[**ReserveRfPrediction201Response**](ReserveRfPrediction201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

