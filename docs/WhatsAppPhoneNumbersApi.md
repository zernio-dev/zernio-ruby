# Zernio::WhatsAppPhoneNumbersApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**check_whats_app_number_availability**](WhatsAppPhoneNumbersApi.md#check_whats_app_number_availability) | **GET** /v1/whatsapp/phone-numbers/availability | Check country availability |
| [**create_whats_app_number_kyc_link**](WhatsAppPhoneNumbersApi.md#create_whats_app_number_kyc_link) | **POST** /v1/whatsapp/phone-numbers/kyc/share | Create a hosted KYC link |
| [**get_whats_app_number_info**](WhatsAppPhoneNumbersApi.md#get_whats_app_number_info) | **GET** /v1/whatsapp/number-info | Get number status |
| [**get_whats_app_number_kyc_form**](WhatsAppPhoneNumbersApi.md#get_whats_app_number_kyc_form) | **GET** /v1/whatsapp/phone-numbers/kyc | Get KYC form spec |
| [**get_whats_app_number_remediation**](WhatsAppPhoneNumbersApi.md#get_whats_app_number_remediation) | **GET** /v1/whatsapp/phone-numbers/{id}/remediate | Get declined requirements |
| [**get_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#get_whats_app_phone_number) | **GET** /v1/whatsapp/phone-numbers/{phoneNumberId} | Get phone number |
| [**get_whats_app_phone_numbers**](WhatsAppPhoneNumbersApi.md#get_whats_app_phone_numbers) | **GET** /v1/whatsapp/phone-numbers | List phone numbers |
| [**list_whats_app_number_countries**](WhatsAppPhoneNumbersApi.md#list_whats_app_number_countries) | **GET** /v1/whatsapp/phone-numbers/countries | List offerable number countries |
| [**purchase_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#purchase_whats_app_phone_number) | **POST** /v1/whatsapp/phone-numbers/purchase | Purchase phone number |
| [**release_whats_app_phone_number**](WhatsAppPhoneNumbersApi.md#release_whats_app_phone_number) | **DELETE** /v1/whatsapp/phone-numbers/{phoneNumberId} | Release phone number |
| [**remediate_whats_app_number**](WhatsAppPhoneNumbersApi.md#remediate_whats_app_number) | **POST** /v1/whatsapp/phone-numbers/{id}/remediate | Resubmit a declined number |
| [**search_available_whats_app_numbers**](WhatsAppPhoneNumbersApi.md#search_available_whats_app_numbers) | **GET** /v1/whatsapp/phone-numbers/available | Search available numbers |
| [**submit_whats_app_number_kyc**](WhatsAppPhoneNumbersApi.md#submit_whats_app_number_kyc) | **POST** /v1/whatsapp/phone-numbers/kyc | Submit KYC |
| [**upload_whats_app_number_kyc_document**](WhatsAppPhoneNumbersApi.md#upload_whats_app_number_kyc_document) | **POST** /v1/whatsapp/phone-numbers/kyc/upload-document | Upload a KYC document |
| [**validate_whats_app_number_kyc_address**](WhatsAppPhoneNumbersApi.md#validate_whats_app_number_kyc_address) | **POST** /v1/whatsapp/phone-numbers/kyc/validate-address | Pre-validate KYC address |


## check_whats_app_number_availability

> <CheckPhoneNumberAvailability200Response> check_whats_app_number_availability(country, opts)

Check country availability

Deprecated alias of `/v1/phone-numbers/availability`; same contract. New integrations should use that path.  Pre-purchase check, so you can warn BEFORE a customer invests in KYC (regulated review is async, 1-3 days). Tells you whether we have deliverable inventory, and what address the customer needs:   - `addressConstraint: geo`  → the registered address MUST be in one of     the returned `areas` (the only place we have stock). A different-area     address passes pre-approval but the number can never be assigned.   - `addressConstraint: country` → any in-country address works.   - `addressConstraint: none` → field-only / instant country, no address. Call this before starting the KYC form for regulated countries. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
country = 'country_example' # String | ISO-2 country code.
opts = {
  number_type: 'local' # String | Check a specific offered type (stock and address constraints are per type). Omitted = the country's default type.
}

begin
  # Check country availability
  result = api_instance.check_whats_app_number_availability(country, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->check_whats_app_number_availability: #{e}"
end
```

#### Using the check_whats_app_number_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckPhoneNumberAvailability200Response>, Integer, Hash)> check_whats_app_number_availability_with_http_info(country, opts)

```ruby
begin
  # Check country availability
  data, status_code, headers = api_instance.check_whats_app_number_availability_with_http_info(country, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckPhoneNumberAvailability200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->check_whats_app_number_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO-2 country code. |  |
| **number_type** | **String** | Check a specific offered type (stock and address constraints are per type). Omitted &#x3D; the country&#39;s default type. | [optional] |

### Return type

[**CheckPhoneNumberAvailability200Response**](CheckPhoneNumberAvailability200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_whats_app_number_kyc_link

> <CreatePhoneNumberKycLink200Response> create_whats_app_number_kyc_link(create_phone_number_kyc_link_request)

Create a hosted KYC link

Deprecated alias of `/v1/phone-numbers/kyc/share`; same contract. New integrations should use that path.  Create a single-use, 7-day hosted KYC link that your end customer completes WITHOUT a Zernio login — useful when the person who holds the ID and address is not your team. They fill the regulated verification on a Zernio-hosted page; the number provisions under YOUR account once they submit. Only regulated (KYC) countries are valid: a country that does not require KYC returns 400.  White-label the page with `branding` (your company name, logo, brand color). Supply `redirect_url` to send the end customer back to your own site after a successful submit (completion params are appended — see below). Listen for the `whatsapp.number.kyc_submitted` webhook to react when the form is completed. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
create_phone_number_kyc_link_request = Zernio::CreatePhoneNumberKycLinkRequest.new({profile_id: 'profile_id_example', country: 'country_example'}) # CreatePhoneNumberKycLinkRequest | 

begin
  # Create a hosted KYC link
  result = api_instance.create_whats_app_number_kyc_link(create_phone_number_kyc_link_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->create_whats_app_number_kyc_link: #{e}"
end
```

#### Using the create_whats_app_number_kyc_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePhoneNumberKycLink200Response>, Integer, Hash)> create_whats_app_number_kyc_link_with_http_info(create_phone_number_kyc_link_request)

```ruby
begin
  # Create a hosted KYC link
  data, status_code, headers = api_instance.create_whats_app_number_kyc_link_with_http_info(create_phone_number_kyc_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePhoneNumberKycLink200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->create_whats_app_number_kyc_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_phone_number_kyc_link_request** | [**CreatePhoneNumberKycLinkRequest**](CreatePhoneNumberKycLinkRequest.md) |  |  |

### Return type

[**CreatePhoneNumberKycLink200Response**](CreatePhoneNumberKycLink200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_whats_app_number_info

> <GetWhatsAppNumberInfo200Response> get_whats_app_number_info(account_id)

Get number status

Live snapshot of a connected number straight from Meta: the phone-number node (display number, display name + approval, quality rating, messaging-limit tier, throughput, official-business badge, connection status, health_status) and its owning WhatsApp Business Account (name, business verification, timezone, health_status). Fetched live because Meta updates quality/tier/name/health over time; the call also refreshes the cached values shown on the connection card. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
account_id = 'account_id_example' # String | WhatsApp social account ID

begin
  # Get number status
  result = api_instance.get_whats_app_number_info(account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_info: #{e}"
end
```

#### Using the get_whats_app_number_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppNumberInfo200Response>, Integer, Hash)> get_whats_app_number_info_with_http_info(account_id)

```ruby
begin
  # Get number status
  data, status_code, headers = api_instance.get_whats_app_number_info_with_http_info(account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppNumberInfo200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_info_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | WhatsApp social account ID |  |

### Return type

[**GetWhatsAppNumberInfo200Response**](GetWhatsAppNumberInfo200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_number_kyc_form

> <GetWhatsAppNumberKycForm200Response> get_whats_app_number_kyc_form(country, profile_id)

Get KYC form spec

Deprecated alias of `/v1/phone-numbers/kyc`; same contract. New integrations should use that path.  For a Tier 3/4 country, the fields the end customer must provide (Telnyx regulatory requirements) before a number can be ordered: text, date, address, or file (document) per requirement. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
country = 'country_example' # String | 
profile_id = 'profile_id_example' # String | 

begin
  # Get KYC form spec
  result = api_instance.get_whats_app_number_kyc_form(country, profile_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_kyc_form: #{e}"
end
```

#### Using the get_whats_app_number_kyc_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppNumberKycForm200Response>, Integer, Hash)> get_whats_app_number_kyc_form_with_http_info(country, profile_id)

```ruby
begin
  # Get KYC form spec
  data, status_code, headers = api_instance.get_whats_app_number_kyc_form_with_http_info(country, profile_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppNumberKycForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_kyc_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  |  |
| **profile_id** | **String** |  |  |

### Return type

[**GetWhatsAppNumberKycForm200Response**](GetWhatsAppNumberKycForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_number_remediation

> <GetWhatsAppNumberRemediation200Response> get_whats_app_number_remediation(id)

Get declined requirements

Deprecated alias of `/v1/phone-numbers/{id}/remediate`; same contract. New integrations should use that path.  For a number in `regulatory_declined`, returns ONLY the requirements the reviewer flagged declined, as a form spec (same shape as the KYC form GET). The customer fixes just those — Telnyx supports correcting a declined requirement group and re-submitting it (no new number/group). Falls back to the full spec if the provider exposes no per-requirement flags. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
id = 'id_example' # String | WhatsAppPhoneNumber id.

begin
  # Get declined requirements
  result = api_instance.get_whats_app_number_remediation(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_remediation: #{e}"
end
```

#### Using the get_whats_app_number_remediation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWhatsAppNumberRemediation200Response>, Integer, Hash)> get_whats_app_number_remediation_with_http_info(id)

```ruby
begin
  # Get declined requirements
  data, status_code, headers = api_instance.get_whats_app_number_remediation_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWhatsAppNumberRemediation200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_number_remediation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | WhatsAppPhoneNumber id. |  |

### Return type

[**GetWhatsAppNumberRemediation200Response**](GetWhatsAppNumberRemediation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_phone_number

> <GetPhoneNumber200Response> get_whats_app_phone_number(phone_number_id)

Get phone number

Deprecated alias of `/v1/phone-numbers/{id}`; same contract. New integrations should use that path.  Retrieve the current status of a purchased phone number. Poll this to track Meta pre-verification (US sync path) and, for regulated (Tier 3/4) numbers, the async lifecycle: pending_regulatory → active (or regulatory_declined). When a regulated number has an Onfido ID step, `onfidoVerificationUrl` appears here once the order is placed — forward it to the end user. (Or subscribe to the whatsapp.number.* webhooks instead of polling.) 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | Phone number record ID

begin
  # Get phone number
  result = api_instance.get_whats_app_phone_number(phone_number_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_phone_number: #{e}"
end
```

#### Using the get_whats_app_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneNumber200Response>, Integer, Hash)> get_whats_app_phone_number_with_http_info(phone_number_id)

```ruby
begin
  # Get phone number
  data, status_code, headers = api_instance.get_whats_app_phone_number_with_http_info(phone_number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | Phone number record ID |  |

### Return type

[**GetPhoneNumber200Response**](GetPhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_whats_app_phone_numbers

> <ListPhoneNumbers200Response> get_whats_app_phone_numbers(opts)

List phone numbers

Deprecated alias of `/v1/phone-numbers`; same contract. New integrations should use that path.  List all WhatsApp phone numbers purchased by the authenticated user. By default, released numbers are excluded. Connected (bring-your-own) numbers are returned in the separate `connected` array — they are not billed and have no provisioning lifecycle. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
opts = {
  status: 'provisioning', # String | Filter by status (by default excludes released numbers). NOTE: `status=pending_regulatory` returns the \"provisioning\" view — numbers still in review PLUS recently-declined (last 30 days) ones, so a failed registration surfaces (with `regulatoryDeclineReason`) instead of silently disappearing. Declined numbers can be re-submitted via POST /v1/whatsapp/phone-numbers/{id}/remediate. `verifying` is the short-lived state after the number is provisioned on our side while WhatsApp confirms the activation code; the number is not billed until it reaches `active`. 
  profile_id: 'profile_id_example' # String | Filter by profile
}

begin
  # List phone numbers
  result = api_instance.get_whats_app_phone_numbers(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_phone_numbers: #{e}"
end
```

#### Using the get_whats_app_phone_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPhoneNumbers200Response>, Integer, Hash)> get_whats_app_phone_numbers_with_http_info(opts)

```ruby
begin
  # List phone numbers
  data, status_code, headers = api_instance.get_whats_app_phone_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPhoneNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->get_whats_app_phone_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter by status (by default excludes released numbers). NOTE: &#x60;status&#x3D;pending_regulatory&#x60; returns the \&quot;provisioning\&quot; view — numbers still in review PLUS recently-declined (last 30 days) ones, so a failed registration surfaces (with &#x60;regulatoryDeclineReason&#x60;) instead of silently disappearing. Declined numbers can be re-submitted via POST /v1/whatsapp/phone-numbers/{id}/remediate. &#x60;verifying&#x60; is the short-lived state after the number is provisioned on our side while WhatsApp confirms the activation code; the number is not billed until it reaches &#x60;active&#x60;.  | [optional] |
| **profile_id** | **String** | Filter by profile | [optional] |

### Return type

[**ListPhoneNumbers200Response**](ListPhoneNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_whats_app_number_countries

> <ListWhatsAppNumberCountries200Response> list_whats_app_number_countries

List offerable number countries

Deprecated alias of `/v1/phone-numbers/countries`; same contract. New integrations should use that path.  The WhatsApp number countries available to purchase, each with its flat monthly price (cents), regulatory tier, whether it needs end-user KYC (Tier 3/4), and whether outbound calling is available (not BIC-blocked). Drives the country picker. Tier-4 countries appear only when enabled. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new

begin
  # List offerable number countries
  result = api_instance.list_whats_app_number_countries
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->list_whats_app_number_countries: #{e}"
end
```

#### Using the list_whats_app_number_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWhatsAppNumberCountries200Response>, Integer, Hash)> list_whats_app_number_countries_with_http_info

```ruby
begin
  # List offerable number countries
  data, status_code, headers = api_instance.list_whats_app_number_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWhatsAppNumberCountries200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->list_whats_app_number_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListWhatsAppNumberCountries200Response**](ListWhatsAppNumberCountries200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purchase_whats_app_phone_number

> <PurchasePhoneNumber200Response> purchase_whats_app_phone_number(purchase_whats_app_phone_number_request)

Purchase phone number

Deprecated alias of `/v1/phone-numbers/purchase`; same contract. New integrations should use that path.  Payment-first: you do not pick a specific number, the system provisions one and auto-assigns it. With usage-based billing active and a payment method on file, the number provisions inline and bills per month on your usage-based invoice (there is no checkout redirect). No payment method on file returns `402 PAYMENT_REQUIRED`; a regulated country returns `202` with `status: \"kyc_required\"` and a `kycUrl`.  Requires usage-based billing (the Usage plan). The maximum number of phone numbers is determined by the user's plan. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
purchase_whats_app_phone_number_request = Zernio::PurchaseWhatsAppPhoneNumberRequest.new({profile_id: 'profile_id_example'}) # PurchaseWhatsAppPhoneNumberRequest | 

begin
  # Purchase phone number
  result = api_instance.purchase_whats_app_phone_number(purchase_whats_app_phone_number_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->purchase_whats_app_phone_number: #{e}"
end
```

#### Using the purchase_whats_app_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurchasePhoneNumber200Response>, Integer, Hash)> purchase_whats_app_phone_number_with_http_info(purchase_whats_app_phone_number_request)

```ruby
begin
  # Purchase phone number
  data, status_code, headers = api_instance.purchase_whats_app_phone_number_with_http_info(purchase_whats_app_phone_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurchasePhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->purchase_whats_app_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_whats_app_phone_number_request** | [**PurchaseWhatsAppPhoneNumberRequest**](PurchaseWhatsAppPhoneNumberRequest.md) |  |  |

### Return type

[**PurchasePhoneNumber200Response**](PurchasePhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## release_whats_app_phone_number

> <ReleasePhoneNumber200Response> release_whats_app_phone_number(phone_number_id)

Release phone number

Deprecated alias of `/v1/phone-numbers/{id}`; same contract. New integrations should use that path.  Release a purchased phone number. This will: 1. Disconnect any linked WhatsApp social account 2. Decrement the Stripe subscription quantity (or cancel if last number) 3. Release the number from Telnyx 4. Mark the number as released 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
phone_number_id = 'phone_number_id_example' # String | Phone number record ID

begin
  # Release phone number
  result = api_instance.release_whats_app_phone_number(phone_number_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->release_whats_app_phone_number: #{e}"
end
```

#### Using the release_whats_app_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePhoneNumber200Response>, Integer, Hash)> release_whats_app_phone_number_with_http_info(phone_number_id)

```ruby
begin
  # Release phone number
  data, status_code, headers = api_instance.release_whats_app_phone_number_with_http_info(phone_number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->release_whats_app_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number_id** | **String** | Phone number record ID |  |

### Return type

[**ReleasePhoneNumber200Response**](ReleasePhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remediate_whats_app_number

> <RemediatePhoneNumber200Response> remediate_whats_app_number(id, remediate_phone_number_request)

Resubmit a declined number

Deprecated alias of `/v1/phone-numbers/{id}/remediate`; same contract. New integrations should use that path.  Submit corrected values/documents for the declined requirement(s). We PATCH them onto the SAME requirement group and re-submit it for approval; the number goes `regulatory_declined` → `pending_regulatory`. No new number and no new billing. Body shape matches the KYC submit (values / documents / address) — send only the corrected fields. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
id = 'id_example' # String | 
remediate_phone_number_request = Zernio::RemediatePhoneNumberRequest.new # RemediatePhoneNumberRequest | 

begin
  # Resubmit a declined number
  result = api_instance.remediate_whats_app_number(id, remediate_phone_number_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->remediate_whats_app_number: #{e}"
end
```

#### Using the remediate_whats_app_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemediatePhoneNumber200Response>, Integer, Hash)> remediate_whats_app_number_with_http_info(id, remediate_phone_number_request)

```ruby
begin
  # Resubmit a declined number
  data, status_code, headers = api_instance.remediate_whats_app_number_with_http_info(id, remediate_phone_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemediatePhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->remediate_whats_app_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **remediate_phone_number_request** | [**RemediatePhoneNumberRequest**](RemediatePhoneNumberRequest.md) |  |  |

### Return type

[**RemediatePhoneNumber200Response**](RemediatePhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_available_whats_app_numbers

> <SearchAvailableWhatsAppNumbers200Response> search_available_whats_app_numbers(opts)

Search available numbers

Deprecated alias of `/v1/phone-numbers/available`; same contract. New integrations should use that path.  Search the provider's inventory for numbers available to purchase in a country (default US). Optional filters narrow the results. The country must be offerable (see GET /v1/whatsapp/phone-numbers/countries). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
opts = {
  country: 'country_example', # String | 
  type: 'type_example', # String | Number type; defaults to the country's WhatsApp-safe type
  prefix: 'prefix_example', # String | Area code
  locality: 'locality_example', # String | City
  contains: 'contains_example', # String | Pattern to match within the number
  limit: 56 # Integer | 
}

begin
  # Search available numbers
  result = api_instance.search_available_whats_app_numbers(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->search_available_whats_app_numbers: #{e}"
end
```

#### Using the search_available_whats_app_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAvailableWhatsAppNumbers200Response>, Integer, Hash)> search_available_whats_app_numbers_with_http_info(opts)

```ruby
begin
  # Search available numbers
  data, status_code, headers = api_instance.search_available_whats_app_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAvailableWhatsAppNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->search_available_whats_app_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  | [optional][default to &#39;US&#39;] |
| **type** | **String** | Number type; defaults to the country&#39;s WhatsApp-safe type | [optional] |
| **prefix** | **String** | Area code | [optional] |
| **locality** | **String** | City | [optional] |
| **contains** | **String** | Pattern to match within the number | [optional] |
| **limit** | **Integer** |  | [optional][default to 20] |

### Return type

[**SearchAvailableWhatsAppNumbers200Response**](SearchAvailableWhatsAppNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_whats_app_number_kyc

> <SubmitPhoneNumberKyc200Response> submit_whats_app_number_kyc(submit_whats_app_number_kyc_request)

Submit KYC

Deprecated alias of `/v1/phone-numbers/kyc`; same contract. New integrations should use that path.  Submit the end customer's KYC (textual values, uploaded documents, address) for a Tier 3/4 country. Documents are streamed straight to the number provider and are not stored by Zernio. Builds + submits a regulatory requirement group and claims a pending_regulatory slot; the number is ordered + activated once the provider approves (asynchronous). A customer may hold several same-country numbers in review at once; a double-submit of the SAME attempt is deduped via `submissionId`.  For an ID-card document requirement, carriers commonly require BOTH sides: combine the front and back into a single file before uploading (the dashboard does this automatically). A one-sided ID is a common decline reason; fix it via POST /v1/whatsapp/phone-numbers/{id}/remediate.  Before submitting, call GET /v1/whatsapp/phone-numbers/availability to check the country has deliverable inventory and, for geographic-match countries, which area the address must be in — otherwise the submission can pass review yet never be assignable a number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
submit_whats_app_number_kyc_request = Zernio::SubmitWhatsAppNumberKycRequest.new({profile_id: 'profile_id_example', country: 'country_example'}) # SubmitWhatsAppNumberKycRequest | 

begin
  # Submit KYC
  result = api_instance.submit_whats_app_number_kyc(submit_whats_app_number_kyc_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->submit_whats_app_number_kyc: #{e}"
end
```

#### Using the submit_whats_app_number_kyc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitPhoneNumberKyc200Response>, Integer, Hash)> submit_whats_app_number_kyc_with_http_info(submit_whats_app_number_kyc_request)

```ruby
begin
  # Submit KYC
  data, status_code, headers = api_instance.submit_whats_app_number_kyc_with_http_info(submit_whats_app_number_kyc_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitPhoneNumberKyc200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->submit_whats_app_number_kyc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submit_whats_app_number_kyc_request** | [**SubmitWhatsAppNumberKycRequest**](SubmitWhatsAppNumberKycRequest.md) |  |  |

### Return type

[**SubmitPhoneNumberKyc200Response**](SubmitPhoneNumberKyc200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_whats_app_number_kyc_document

> <UploadPhoneNumberKycDocument200Response> upload_whats_app_number_kyc_document(x_filename, body)

Upload a KYC document

Deprecated alias of `/v1/phone-numbers/kyc/upload-document`; same contract. New integrations should use that path.  Upload ONE document and get back its provider document id, to reference from POST /v1/whatsapp/phone-numbers/kyc via `documents[].documentId`. Send the RAW file bytes as the request body (not base64); put the filename in the `X-Filename` header. Uploading documents one-per-request keeps each request under the ~4.5MB body limit. The document streams straight to the number provider and is not stored by Zernio. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
x_filename = 'x_filename_example' # String | URL-encoded original filename.
body = File.new('/path/to/some/file') # File | 

begin
  # Upload a KYC document
  result = api_instance.upload_whats_app_number_kyc_document(x_filename, body)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->upload_whats_app_number_kyc_document: #{e}"
end
```

#### Using the upload_whats_app_number_kyc_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadPhoneNumberKycDocument200Response>, Integer, Hash)> upload_whats_app_number_kyc_document_with_http_info(x_filename, body)

```ruby
begin
  # Upload a KYC document
  data, status_code, headers = api_instance.upload_whats_app_number_kyc_document_with_http_info(x_filename, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadPhoneNumberKycDocument200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->upload_whats_app_number_kyc_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_filename** | **String** | URL-encoded original filename. |  |
| **body** | **File** |  |  |

### Return type

[**UploadPhoneNumberKycDocument200Response**](UploadPhoneNumberKycDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/octet-stream
- **Accept**: application/json


## validate_whats_app_number_kyc_address

> <ValidatePhoneNumberKycAddress200Response> validate_whats_app_number_kyc_address(validate_phone_number_kyc_address_request)

Pre-validate KYC address

Deprecated alias of `/v1/phone-numbers/kyc/validate-address`; same contract. New integrations should use that path.  Optional early check for the address step of a Tier 4 (end-user identity) registration: validates a postal address for deliverability BEFORE the full KYC submit, so it can be corrected before any documents are uploaded. The full submit (POST /v1/whatsapp/phone-numbers/kyc) re-validates the address, so this call is purely a fast feedback path and skipping it is safe. Only the postal address is sent (no documents, no gov-ID fields). A region (`administrative_area`) is required by the validator; when it is omitted the pre-check is skipped and `{ ok: true, skipped: true }` is returned (the final submit still validates). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::WhatsAppPhoneNumbersApi.new
validate_phone_number_kyc_address_request = Zernio::ValidatePhoneNumberKycAddressRequest.new({country: 'country_example', street_address: 'street_address_example', locality: 'locality_example', postal_code: 'postal_code_example'}) # ValidatePhoneNumberKycAddressRequest | 

begin
  # Pre-validate KYC address
  result = api_instance.validate_whats_app_number_kyc_address(validate_phone_number_kyc_address_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->validate_whats_app_number_kyc_address: #{e}"
end
```

#### Using the validate_whats_app_number_kyc_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidatePhoneNumberKycAddress200Response>, Integer, Hash)> validate_whats_app_number_kyc_address_with_http_info(validate_phone_number_kyc_address_request)

```ruby
begin
  # Pre-validate KYC address
  data, status_code, headers = api_instance.validate_whats_app_number_kyc_address_with_http_info(validate_phone_number_kyc_address_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidatePhoneNumberKycAddress200Response>
rescue Zernio::ApiError => e
  puts "Error when calling WhatsAppPhoneNumbersApi->validate_whats_app_number_kyc_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **validate_phone_number_kyc_address_request** | [**ValidatePhoneNumberKycAddressRequest**](ValidatePhoneNumberKycAddressRequest.md) |  |  |

### Return type

[**ValidatePhoneNumberKycAddress200Response**](ValidatePhoneNumberKycAddress200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

