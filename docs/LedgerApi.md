# Zernio::LedgerApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_ledger_balances**](LedgerApi.md#get_ledger_balances) | **GET** /v1/ledger/balances | Get ledger balances |
| [**list_ledger_entries**](LedgerApi.md#list_ledger_entries) | **GET** /v1/ledger/entries | List ledger entries |


## get_ledger_balances

> <GetLedgerBalances200Response> get_ledger_balances(scope_type, scope_id, opts)

Get ledger balances

Returns the balance of each bucket (for example accruing, owed, payable) for one ledger scope.  These return an empty balances object:  - A scope owned by another team. - For a profile-scoped key (or a member limited to some profiles), any scope other than `campaign` and `participant` scopes of campaigns under its profiles. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LedgerApi.new
scope_type = 'scope_type_example' # String | Scope type, for example participant or campaign.
scope_id = 'scope_id_example' # String | Scope identifier.
opts = {
  currency: 'currency_example' # String | Lowercase ISO 4217 currency code.
}

begin
  # Get ledger balances
  result = api_instance.get_ledger_balances(scope_type, scope_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LedgerApi->get_ledger_balances: #{e}"
end
```

#### Using the get_ledger_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLedgerBalances200Response>, Integer, Hash)> get_ledger_balances_with_http_info(scope_type, scope_id, opts)

```ruby
begin
  # Get ledger balances
  data, status_code, headers = api_instance.get_ledger_balances_with_http_info(scope_type, scope_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLedgerBalances200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LedgerApi->get_ledger_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope_type** | **String** | Scope type, for example participant or campaign. |  |
| **scope_id** | **String** | Scope identifier. |  |
| **currency** | **String** | Lowercase ISO 4217 currency code. | [optional][default to &#39;usd&#39;] |

### Return type

[**GetLedgerBalances200Response**](GetLedgerBalances200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_ledger_entries

> <ListLedgerEntries200Response> list_ledger_entries(opts)

List ledger entries

Lists ledger entries for your team, newest first.  ### Filters  - scope (matches either side of the entry) - kind - the reference that caused the entry  ### Profile-scoped access  A profile-scoped key (or a member limited to some profiles) only sees entries of campaigns under its profiles and of their participants. Operator and platform scopes stay hidden from it. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LedgerApi.new
opts = {
  scope_type: 'scope_type_example', # String | 
  scope_id: 'scope_id_example', # String | 
  kind: 'accrual', # String | 
  reference_type: 'reference_type_example', # String | 
  reference_id: 'reference_id_example', # String | 
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List ledger entries
  result = api_instance.list_ledger_entries(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LedgerApi->list_ledger_entries: #{e}"
end
```

#### Using the list_ledger_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLedgerEntries200Response>, Integer, Hash)> list_ledger_entries_with_http_info(opts)

```ruby
begin
  # List ledger entries
  data, status_code, headers = api_instance.list_ledger_entries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLedgerEntries200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LedgerApi->list_ledger_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **scope_type** | **String** |  | [optional] |
| **scope_id** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **reference_type** | **String** |  | [optional] |
| **reference_id** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListLedgerEntries200Response**](ListLedgerEntries200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

