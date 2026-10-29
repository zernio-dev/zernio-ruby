# Zernio::TreasuryApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_payout_batch**](TreasuryApi.md#cancel_payout_batch) | **POST** /v1/payout-batches/{batchId}/cancel | Cancel an unpaid payout batch |
| [**cancel_topup**](TreasuryApi.md#cancel_topup) | **POST** /v1/balance/top-ups/{topupId}/cancel | Cancel a top-up |
| [**confirm_payout_batch**](TreasuryApi.md#confirm_payout_batch) | **POST** /v1/payout-batches/{batchId}/confirm | Confirm a payout batch payment |
| [**confirm_topup**](TreasuryApi.md#confirm_topup) | **POST** /v1/balance/top-ups/{topupId}/confirm | Confirm a top-up |
| [**create_payee_onboarding_link**](TreasuryApi.md#create_payee_onboarding_link) | **POST** /v1/payees/{payeeId}/onboarding-link | Create a payee onboarding link |
| [**create_topup**](TreasuryApi.md#create_topup) | **POST** /v1/balance/top-ups | Create a top-up |
| [**create_transfer**](TreasuryApi.md#create_transfer) | **POST** /v1/transfers | Create a transfer |
| [**get_balance**](TreasuryApi.md#get_balance) | **GET** /v1/balance | Get balance |
| [**get_payout_batch**](TreasuryApi.md#get_payout_batch) | **GET** /v1/payout-batches/{batchId} | Get a payout batch |
| [**get_topup_receipt**](TreasuryApi.md#get_topup_receipt) | **GET** /v1/balance/top-ups/{topupId}/receipt | Get a top-up receipt |
| [**get_transfer**](TreasuryApi.md#get_transfer) | **GET** /v1/transfers/{transferId} | Get a transfer |
| [**list_payees**](TreasuryApi.md#list_payees) | **GET** /v1/payees | List payees |
| [**list_topups**](TreasuryApi.md#list_topups) | **GET** /v1/balance/top-ups | List top-ups |
| [**list_transfers**](TreasuryApi.md#list_transfers) | **GET** /v1/transfers | List transfers |


## cancel_payout_batch

> <GetPayoutBatch200Response> cancel_payout_batch(batch_id)

Cancel an unpaid payout batch

Ends the payment of a batch that is still `awaiting_payment` (3D Secure left unfinished) and makes every amount payable again right away.  - When Stripe reports the charge already made, the batch is paid out instead. - A batch that was already paid is returned unchanged.  Needs an owner, admin or billing admin, signed in or through a full-access key they created. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
batch_id = 'batch_id_example' # String | Payout batch ID.

begin
  # Cancel an unpaid payout batch
  result = api_instance.cancel_payout_batch(batch_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->cancel_payout_batch: #{e}"
end
```

#### Using the cancel_payout_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutBatch200Response>, Integer, Hash)> cancel_payout_batch_with_http_info(batch_id)

```ruby
begin
  # Cancel an unpaid payout batch
  data, status_code, headers = api_instance.cancel_payout_batch_with_http_info(batch_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutBatch200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->cancel_payout_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** | Payout batch ID. |  |

### Return type

[**GetPayoutBatch200Response**](GetPayoutBatch200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## cancel_topup

> <TreasuryTopup> cancel_topup(topup_id)

Cancel a top-up

Ends the payment of a pending top-up (3D Secure left unfinished), so it stops counting toward `pendingTopupCents`, and returns it as `expired`.  - When Stripe reports it already paid, the top-up is credited and comes back `succeeded`. - A top-up that is no longer pending comes back unchanged. - A creator payout payment (`purpose: payout_batch`) answers 409; cancel it from its campaign.  Needs an owner, admin or billing admin, signed in or through a full-access key they created. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
topup_id = 'topup_id_example' # String | 

begin
  # Cancel a top-up
  result = api_instance.cancel_topup(topup_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->cancel_topup: #{e}"
end
```

#### Using the cancel_topup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TreasuryTopup>, Integer, Hash)> cancel_topup_with_http_info(topup_id)

```ruby
begin
  # Cancel a top-up
  data, status_code, headers = api_instance.cancel_topup_with_http_info(topup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TreasuryTopup>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->cancel_topup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |

### Return type

[**TreasuryTopup**](TreasuryTopup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## confirm_payout_batch

> <GetPayoutBatch200Response> confirm_payout_batch(batch_id)

Confirm a payout batch payment

Call after 3D Secure. Reads the batch's payment from Stripe, then:  - charge succeeded: pays the creators (`paying`, then `paid`). - bank refused: ends the batch (`failed`) and makes every amount payable again. - still settling: leaves it `awaiting_payment`.  Safe to repeat. Needs an owner, admin or billing admin, signed in or through a full-access key they created. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
batch_id = 'batch_id_example' # String | Payout batch ID.

begin
  # Confirm a payout batch payment
  result = api_instance.confirm_payout_batch(batch_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->confirm_payout_batch: #{e}"
end
```

#### Using the confirm_payout_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutBatch200Response>, Integer, Hash)> confirm_payout_batch_with_http_info(batch_id)

```ruby
begin
  # Confirm a payout batch payment
  data, status_code, headers = api_instance.confirm_payout_batch_with_http_info(batch_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutBatch200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->confirm_payout_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** | Payout batch ID. |  |

### Return type

[**GetPayoutBatch200Response**](GetPayoutBatch200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## confirm_topup

> <TreasuryTopup> confirm_topup(topup_id)

Confirm a top-up

Call after 3D Secure. Reads the payment from Stripe, then:  - `succeeded`: paid, the top-up is credited. - `failed`: the bank refused it. - `pending`: Stripe is still settling the charge.  Safe to repeat. Needs an owner, admin or billing admin, signed in or through a full-access key they created. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
topup_id = 'topup_id_example' # String | 

begin
  # Confirm a top-up
  result = api_instance.confirm_topup(topup_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->confirm_topup: #{e}"
end
```

#### Using the confirm_topup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TreasuryTopup>, Integer, Hash)> confirm_topup_with_http_info(topup_id)

```ruby
begin
  # Confirm a top-up
  data, status_code, headers = api_instance.confirm_topup_with_http_info(topup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TreasuryTopup>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->confirm_topup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |

### Return type

[**TreasuryTopup**](TreasuryTopup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_payee_onboarding_link

> <CreatePayeeOnboardingLink200Response> create_payee_onboarding_link(payee_id)

Create a payee onboarding link

Returns a Stripe-hosted link where the payee completes identity and bank details so they can receive payouts.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
payee_id = 'payee_id_example' # String | 

begin
  # Create a payee onboarding link
  result = api_instance.create_payee_onboarding_link(payee_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->create_payee_onboarding_link: #{e}"
end
```

#### Using the create_payee_onboarding_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePayeeOnboardingLink200Response>, Integer, Hash)> create_payee_onboarding_link_with_http_info(payee_id)

```ruby
begin
  # Create a payee onboarding link
  data, status_code, headers = api_instance.create_payee_onboarding_link_with_http_info(payee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePayeeOnboardingLink200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->create_payee_onboarding_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee_id** | **String** |  |  |

### Return type

[**CreatePayeeOnboardingLink200Response**](CreatePayeeOnboardingLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_topup

> <CreateTopup201Response> create_topup(create_topup_request, opts)

Create a top-up

Charges the billing owner's saved card (the default one, or `paymentMethodId`) for `amountCents` while the payer is present.  - `status: succeeded`: the card was charged. The top-up is credited to `availableCents` within seconds, net of Stripe's processing fee. Transfers to payees can use it from 7 days after the charge. - `status: requires_action`: the bank asked for 3D Secure. Complete it with Stripe.js `handleNextAction({ clientSecret })`, then call `POST /v1/balance/top-ups/{topupId}/confirm`. One left unconfirmed is cancelled after 30 minutes.  ### Errors  - 402 `payment_required`: no saved card. - 402 `card_declined`: the bank's reason. - 400: `method: bank_transfer` (bank transfers are not available yet).  Needs an owner, admin or billing admin, signed in or through a full-access key they created. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
create_topup_request = Zernio::CreateTopupRequest.new({amount_cents: 37, method: 'card'}) # CreateTopupRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Create a top-up
  result = api_instance.create_topup(create_topup_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->create_topup: #{e}"
end
```

#### Using the create_topup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTopup201Response>, Integer, Hash)> create_topup_with_http_info(create_topup_request, opts)

```ruby
begin
  # Create a top-up
  data, status_code, headers = api_instance.create_topup_with_http_info(create_topup_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTopup201Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->create_topup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_topup_request** | [**CreateTopupRequest**](CreateTopupRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**CreateTopup201Response**](CreateTopup201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_transfer

> <TreasuryTransfer> create_transfer(create_transfer_request, opts)

Create a transfer

Moves money from your balance to a payee.  ### Fee  The payee receives the full `amountCents`. Zernio's fee (4%, 50 cent minimum) is added on top, so your balance is debited `totalCents` = `amountCents` + `feeCents`.  ### Who can call it  Needs an owner, admin or billing admin, signed in or through a full-access key they created. A profile-scoped key answers 403.  ### Errors  - 402: the balance does not cover the amount plus the fee. - 402: the balance is negative after a dispute or refund of a card top-up (\"Your balance is negative after a dispute or refund of a card top-up. Add funds to cover it before sending transfers.\"). - 409: the payee has not finished onboarding, or the Idempotency-Key is still processing. - 409 `payout_funds_locked`: money from a card top-up can be transferred from 7 days after the charge. The message names the amount and the day (\"$100.00 from your card top-up on Oct 29 can be paid out from Nov 5.\").  ### Retries  A same-key retry never makes the transfer twice within Stripe's 24-hour idempotency window. It answers 409 while another request is still waiting on Stripe for it.  A transfer Stripe has not confirmed after 24 hours answers 409 until the daily reconciliation marks it paid (Stripe made it) or failed (it did not). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
create_transfer_request = Zernio::CreateTransferRequest.new({payee_id: 'payee_id_example', amount_cents: 37}) # CreateTransferRequest | 
opts = {
  idempotency_key: 'idempotency_key_example' # String | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours. 
}

begin
  # Create a transfer
  result = api_instance.create_transfer(create_transfer_request, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->create_transfer: #{e}"
end
```

#### Using the create_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TreasuryTransfer>, Integer, Hash)> create_transfer_with_http_info(create_transfer_request, opts)

```ruby
begin
  # Create a transfer
  data, status_code, headers = api_instance.create_transfer_with_http_info(create_transfer_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TreasuryTransfer>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->create_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_transfer_request** | [**CreateTransferRequest**](CreateTransferRequest.md) |  |  |
| **idempotency_key** | **String** | Optional client-generated unique key (e.g. a UUID) that makes retries safe.  - Same key + same body: replays the original response. - Same key + different body: 422. - Key still processing: 409.  A request cut off mid-handler (e.g. by a function timeout) can leave its key in progress, answering 409 until the key expires after 24 hours.  | [optional] |

### Return type

[**TreasuryTransfer**](TreasuryTransfer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_balance

> <GetBalance200Response> get_balance

Get balance

Returns your team's balance:  - the balance you can transfer - the part of it that cannot be paid out to creators yet (`payoutLockedCents`, `payoutLocks`) - top-ups still waiting for payment - your latest top-ups  A card top-up is in `availableCents` as soon as it is paid. Transfers to payees can use it from 7 days after the charge, so a stolen card cannot be turned straight into payouts.  A transfer debits its amount plus the fee added on top; the payee receives the full amount.  A card dispute or refund on a top-up is debited from the available balance and can make it negative. Transfers are refused until it is positive again.  A profile-scoped key answers 403, since the balance belongs to the whole team. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new

begin
  # Get balance
  result = api_instance.get_balance
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->get_balance: #{e}"
end
```

#### Using the get_balance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetBalance200Response>, Integer, Hash)> get_balance_with_http_info

```ruby
begin
  # Get balance
  data, status_code, headers = api_instance.get_balance_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetBalance200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->get_balance_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBalance200Response**](GetBalance200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payout_batch

> <GetPayoutBatch200Response> get_payout_batch(batch_id)

Get a payout batch

One payout batch with its status and each creator's item. Poll it after the card payment to see when every creator is paid.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
batch_id = 'batch_id_example' # String | Payout batch ID.

begin
  # Get a payout batch
  result = api_instance.get_payout_batch(batch_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->get_payout_batch: #{e}"
end
```

#### Using the get_payout_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPayoutBatch200Response>, Integer, Hash)> get_payout_batch_with_http_info(batch_id)

```ruby
begin
  # Get a payout batch
  data, status_code, headers = api_instance.get_payout_batch_with_http_info(batch_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPayoutBatch200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->get_payout_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** | Payout batch ID. |  |

### Return type

[**GetPayoutBatch200Response**](GetPayoutBatch200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_topup_receipt

> <GetTopupReceipt200Response> get_topup_receipt(topup_id)

Get a top-up receipt

The receipt for a paid top-up or creator payout payment (`purpose: payout_batch`). `format: pdf` is the Stripe invoice PDF; `format: page` is Stripe's receipt page, for payments that have no invoice. The link is short-lived, so fetch it when you need it. A profile-scoped key answers 403.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
topup_id = 'topup_id_example' # String | 

begin
  # Get a top-up receipt
  result = api_instance.get_topup_receipt(topup_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->get_topup_receipt: #{e}"
end
```

#### Using the get_topup_receipt_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTopupReceipt200Response>, Integer, Hash)> get_topup_receipt_with_http_info(topup_id)

```ruby
begin
  # Get a top-up receipt
  data, status_code, headers = api_instance.get_topup_receipt_with_http_info(topup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTopupReceipt200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->get_topup_receipt_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **topup_id** | **String** |  |  |

### Return type

[**GetTopupReceipt200Response**](GetTopupReceipt200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transfer

> <TreasuryTransfer> get_transfer(transfer_id)

Get a transfer

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
transfer_id = 'transfer_id_example' # String | 

begin
  # Get a transfer
  result = api_instance.get_transfer(transfer_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->get_transfer: #{e}"
end
```

#### Using the get_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TreasuryTransfer>, Integer, Hash)> get_transfer_with_http_info(transfer_id)

```ruby
begin
  # Get a transfer
  data, status_code, headers = api_instance.get_transfer_with_http_info(transfer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TreasuryTransfer>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->get_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transfer_id** | **String** |  |  |

### Return type

[**TreasuryTransfer**](TreasuryTransfer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_payees

> <ListPayees200Response> list_payees

List payees

Payees you can transfer to. A payee can receive transfers once `payoutsEnabled` is true. A profile-scoped key answers 403.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new

begin
  # List payees
  result = api_instance.list_payees
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->list_payees: #{e}"
end
```

#### Using the list_payees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPayees200Response>, Integer, Hash)> list_payees_with_http_info

```ruby
begin
  # List payees
  data, status_code, headers = api_instance.list_payees_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPayees200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->list_payees_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPayees200Response**](ListPayees200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_topups

> <ListTopups200Response> list_topups(opts)

List top-ups

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
opts = {
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List top-ups
  result = api_instance.list_topups(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->list_topups: #{e}"
end
```

#### Using the list_topups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTopups200Response>, Integer, Hash)> list_topups_with_http_info(opts)

```ruby
begin
  # List top-ups
  data, status_code, headers = api_instance.list_topups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTopups200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->list_topups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListTopups200Response**](ListTopups200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transfers

> <ListTransfers200Response> list_transfers(opts)

List transfers

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::TreasuryApi.new
opts = {
  limit: 56, # Integer | 
  skip: 56 # Integer | 
}

begin
  # List transfers
  result = api_instance.list_transfers(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->list_transfers: #{e}"
end
```

#### Using the list_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTransfers200Response>, Integer, Hash)> list_transfers_with_http_info(opts)

```ruby
begin
  # List transfers
  data, status_code, headers = api_instance.list_transfers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTransfers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling TreasuryApi->list_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** |  | [optional][default to 50] |
| **skip** | **Integer** |  | [optional][default to 0] |

### Return type

[**ListTransfers200Response**](ListTransfers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

