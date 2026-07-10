# Zernio::PhoneNumbersApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cancel_phone_number_port_in**](PhoneNumbersApi.md#cancel_phone_number_port_in) | **DELETE** /v1/phone-numbers/port-in/{id} | Cancel a port-in |
| [**check_phone_number_availability**](PhoneNumbersApi.md#check_phone_number_availability) | **GET** /v1/phone-numbers/availability | Check country availability |
| [**check_phone_number_portability**](PhoneNumbersApi.md#check_phone_number_portability) | **POST** /v1/phone-numbers/port-in/check | Check portability |
| [**create_phone_number_kyc_link**](PhoneNumbersApi.md#create_phone_number_kyc_link) | **POST** /v1/phone-numbers/kyc/share | Create a hosted KYC link |
| [**create_phone_number_port_in**](PhoneNumbersApi.md#create_phone_number_port_in) | **POST** /v1/phone-numbers/port-in | Port numbers in |
| [**get_phone_number**](PhoneNumbersApi.md#get_phone_number) | **GET** /v1/phone-numbers/{id} | Get phone number |
| [**get_phone_number_kyc_form**](PhoneNumbersApi.md#get_phone_number_kyc_form) | **GET** /v1/phone-numbers/kyc | Get KYC form spec |
| [**get_phone_number_remediation**](PhoneNumbersApi.md#get_phone_number_remediation) | **GET** /v1/phone-numbers/{id}/remediate | Get declined requirements |
| [**list_phone_number_countries**](PhoneNumbersApi.md#list_phone_number_countries) | **GET** /v1/phone-numbers/countries | List offerable number countries |
| [**list_phone_number_port_ins**](PhoneNumbersApi.md#list_phone_number_port_ins) | **GET** /v1/phone-numbers/port-in | List port-in orders |
| [**list_phone_numbers**](PhoneNumbersApi.md#list_phone_numbers) | **GET** /v1/phone-numbers | List phone numbers |
| [**purchase_phone_number**](PhoneNumbersApi.md#purchase_phone_number) | **POST** /v1/phone-numbers/purchase | Purchase phone number |
| [**release_phone_number**](PhoneNumbersApi.md#release_phone_number) | **DELETE** /v1/phone-numbers/{id} | Release phone number |
| [**remediate_phone_number**](PhoneNumbersApi.md#remediate_phone_number) | **POST** /v1/phone-numbers/{id}/remediate | Resubmit a declined number |
| [**review_phone_number_kyc_packet**](PhoneNumbersApi.md#review_phone_number_kyc_packet) | **POST** /v1/phone-numbers/kyc/review-packet | Pre-review a KYC packet |
| [**search_available_phone_numbers**](PhoneNumbersApi.md#search_available_phone_numbers) | **GET** /v1/phone-numbers/available | Search available numbers |
| [**submit_phone_number_kyc**](PhoneNumbersApi.md#submit_phone_number_kyc) | **POST** /v1/phone-numbers/kyc | Submit KYC |
| [**upload_phone_number_kyc_document**](PhoneNumbersApi.md#upload_phone_number_kyc_document) | **POST** /v1/phone-numbers/kyc/upload-document | Upload a KYC document |
| [**upload_phone_number_port_in_document**](PhoneNumbersApi.md#upload_phone_number_port_in_document) | **POST** /v1/phone-numbers/port-in/documents | Upload a porting document |
| [**validate_phone_number_kyc_address**](PhoneNumbersApi.md#validate_phone_number_kyc_address) | **POST** /v1/phone-numbers/kyc/validate-address | Pre-validate KYC address |


## cancel_phone_number_port_in

> <CancelPhoneNumberPortIn200Response> cancel_phone_number_port_in(id)

Cancel a port-in

Cancel an in-flight port (wrong number, staying with the old carrier). Only orders that haven't ported can be cancelled; a completed port is a normal number release instead. The carrier may report `cancel-pending` briefly while the losing carrier acknowledges; it settles to `cancelled`. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
id = 'id_example' # String | Porting order ID (from the port-in list).

begin
  # Cancel a port-in
  result = api_instance.cancel_phone_number_port_in(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->cancel_phone_number_port_in: #{e}"
end
```

#### Using the cancel_phone_number_port_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CancelPhoneNumberPortIn200Response>, Integer, Hash)> cancel_phone_number_port_in_with_http_info(id)

```ruby
begin
  # Cancel a port-in
  data, status_code, headers = api_instance.cancel_phone_number_port_in_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CancelPhoneNumberPortIn200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->cancel_phone_number_port_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Porting order ID (from the port-in list). |  |

### Return type

[**CancelPhoneNumberPortIn200Response**](CancelPhoneNumberPortIn200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_phone_number_availability

> <CheckPhoneNumberAvailability200Response> check_phone_number_availability(country)

Check country availability

Pre-purchase check, so you can warn BEFORE a customer invests in KYC (regulated review is async, 1-3 days). Tells you whether we have deliverable inventory, and what address the customer needs:   - `addressConstraint: geo`  → the registered address MUST be in one of     the returned `areas` (the only place we have stock). A different-area     address passes pre-approval but the number can never be assigned.   - `addressConstraint: country` → any in-country address works.   - `addressConstraint: none` → field-only / instant country, no address. Call this before starting the KYC form for regulated countries. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
country = 'country_example' # String | ISO-2 country code.

begin
  # Check country availability
  result = api_instance.check_phone_number_availability(country)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->check_phone_number_availability: #{e}"
end
```

#### Using the check_phone_number_availability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckPhoneNumberAvailability200Response>, Integer, Hash)> check_phone_number_availability_with_http_info(country)

```ruby
begin
  # Check country availability
  data, status_code, headers = api_instance.check_phone_number_availability_with_http_info(country)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckPhoneNumberAvailability200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->check_phone_number_availability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO-2 country code. |  |

### Return type

[**CheckPhoneNumberAvailability200Response**](CheckPhoneNumberAvailability200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## check_phone_number_portability

> <CheckPhoneNumberPortability200Response> check_phone_number_portability(check_phone_number_portability_request)

Check portability

Pre-flight portability check: whether each number can be ported in and whether it qualifies for FastPort, BEFORE the user commits to a port order (LOA, invoice, service address). Read-only; creates no order and bills nothing. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
check_phone_number_portability_request = Zernio::CheckPhoneNumberPortabilityRequest.new({phone_numbers: ['phone_numbers_example']}) # CheckPhoneNumberPortabilityRequest | 

begin
  # Check portability
  result = api_instance.check_phone_number_portability(check_phone_number_portability_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->check_phone_number_portability: #{e}"
end
```

#### Using the check_phone_number_portability_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CheckPhoneNumberPortability200Response>, Integer, Hash)> check_phone_number_portability_with_http_info(check_phone_number_portability_request)

```ruby
begin
  # Check portability
  data, status_code, headers = api_instance.check_phone_number_portability_with_http_info(check_phone_number_portability_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CheckPhoneNumberPortability200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->check_phone_number_portability_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_phone_number_portability_request** | [**CheckPhoneNumberPortabilityRequest**](CheckPhoneNumberPortabilityRequest.md) |  |  |

### Return type

[**CheckPhoneNumberPortability200Response**](CheckPhoneNumberPortability200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_phone_number_kyc_link

> <CreatePhoneNumberKycLink200Response> create_phone_number_kyc_link(create_phone_number_kyc_link_request)

Create a hosted KYC link

Create a single-use, 7-day hosted KYC link that your end customer completes WITHOUT a Zernio login — useful when the person who holds the ID and address is not your team. They fill the regulated verification on a Zernio-hosted page; the number provisions under YOUR account once they submit. Only regulated (KYC) countries are valid: a country that does not require KYC returns 400.  White-label the page with `branding` (your company name, logo, brand color). Supply `redirect_url` to send the end customer back to your own site after a successful submit (completion params are appended — see below). Listen for the `whatsapp.number.kyc_submitted` webhook to react when the form is completed. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
create_phone_number_kyc_link_request = Zernio::CreatePhoneNumberKycLinkRequest.new({profile_id: 'profile_id_example', country: 'country_example'}) # CreatePhoneNumberKycLinkRequest | 

begin
  # Create a hosted KYC link
  result = api_instance.create_phone_number_kyc_link(create_phone_number_kyc_link_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->create_phone_number_kyc_link: #{e}"
end
```

#### Using the create_phone_number_kyc_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePhoneNumberKycLink200Response>, Integer, Hash)> create_phone_number_kyc_link_with_http_info(create_phone_number_kyc_link_request)

```ruby
begin
  # Create a hosted KYC link
  data, status_code, headers = api_instance.create_phone_number_kyc_link_with_http_info(create_phone_number_kyc_link_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePhoneNumberKycLink200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->create_phone_number_kyc_link_with_http_info: #{e}"
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


## create_phone_number_port_in

> <CreatePhoneNumberPortIn201Response> create_phone_number_port_in(create_phone_number_port_in_request)

Port numbers in

Submit a port-in for one or more existing numbers from another carrier. Creates the carrier order(s), attaches the end-user (current account) info plus the LOA and invoice documents, and submits to the losing carrier. The transfer PIN is forwarded to the carrier and never stored. Ported numbers arrive voice-ready (and SMS-ready where the order supports messaging).  Run the portability check (POST /v1/phone-numbers/port-in/check) and upload the two documents (POST /v1/phone-numbers/port-in/documents) first. The carrier may split the numbers into several orders (by country, number type, losing carrier); `orders` carries per-order results, and a partial failure still returns 201 with the failed orders' `error` set (they stay as cancellable drafts). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
create_phone_number_port_in_request = Zernio::CreatePhoneNumberPortInRequest.new({phone_numbers: ['phone_numbers_example'], end_user: Zernio::CreatePhoneNumberPortInRequestEndUser.new({entity_name: 'entity_name_example', auth_person_name: 'auth_person_name_example', street_address: 'street_address_example', locality: 'locality_example', administrative_area: 'administrative_area_example', postal_code: 'postal_code_example', country_code: 'country_code_example'}), loa_document_id: 'loa_document_id_example', invoice_document_id: 'invoice_document_id_example'}) # CreatePhoneNumberPortInRequest | 

begin
  # Port numbers in
  result = api_instance.create_phone_number_port_in(create_phone_number_port_in_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->create_phone_number_port_in: #{e}"
end
```

#### Using the create_phone_number_port_in_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreatePhoneNumberPortIn201Response>, Integer, Hash)> create_phone_number_port_in_with_http_info(create_phone_number_port_in_request)

```ruby
begin
  # Port numbers in
  data, status_code, headers = api_instance.create_phone_number_port_in_with_http_info(create_phone_number_port_in_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreatePhoneNumberPortIn201Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->create_phone_number_port_in_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_phone_number_port_in_request** | [**CreatePhoneNumberPortInRequest**](CreatePhoneNumberPortInRequest.md) |  |  |

### Return type

[**CreatePhoneNumberPortIn201Response**](CreatePhoneNumberPortIn201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_phone_number

> <GetPhoneNumber200Response> get_phone_number(id)

Get phone number

Retrieve the current status of a purchased phone number. Poll this to track Meta pre-verification (US sync path) and, for regulated (Tier 3/4) numbers, the async lifecycle: pending_regulatory → active (or regulatory_declined). When a regulated number has an Onfido ID step, `onfidoVerificationUrl` appears here once the order is placed — forward it to the end user. (Or subscribe to the whatsapp.number.* webhooks instead of polling.) 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
id = 'id_example' # String | Phone number record ID

begin
  # Get phone number
  result = api_instance.get_phone_number(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->get_phone_number: #{e}"
end
```

#### Using the get_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneNumber200Response>, Integer, Hash)> get_phone_number_with_http_info(id)

```ruby
begin
  # Get phone number
  data, status_code, headers = api_instance.get_phone_number_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->get_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Phone number record ID |  |

### Return type

[**GetPhoneNumber200Response**](GetPhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_phone_number_kyc_form

> <GetPhoneNumberKycForm200Response> get_phone_number_kyc_form(country)

Get KYC form spec

For a Tier 3/4 country, the fields the end customer must provide (Telnyx regulatory requirements) before a number can be ordered: text, date, address, or file (document) per requirement. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
country = 'country_example' # String | 

begin
  # Get KYC form spec
  result = api_instance.get_phone_number_kyc_form(country)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->get_phone_number_kyc_form: #{e}"
end
```

#### Using the get_phone_number_kyc_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneNumberKycForm200Response>, Integer, Hash)> get_phone_number_kyc_form_with_http_info(country)

```ruby
begin
  # Get KYC form spec
  data, status_code, headers = api_instance.get_phone_number_kyc_form_with_http_info(country)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneNumberKycForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->get_phone_number_kyc_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** |  |  |

### Return type

[**GetPhoneNumberKycForm200Response**](GetPhoneNumberKycForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_phone_number_remediation

> <GetPhoneNumberRemediation200Response> get_phone_number_remediation(id)

Get declined requirements

For a number in `regulatory_declined`, returns ONLY the requirements the reviewer flagged declined, as a form spec (same shape as the KYC form GET). The customer fixes just those — Telnyx supports correcting a declined requirement group and re-submitting it (no new number/group). Falls back to the full spec if the provider exposes no per-requirement flags. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
id = 'id_example' # String | Phone number record ID.

begin
  # Get declined requirements
  result = api_instance.get_phone_number_remediation(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->get_phone_number_remediation: #{e}"
end
```

#### Using the get_phone_number_remediation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPhoneNumberRemediation200Response>, Integer, Hash)> get_phone_number_remediation_with_http_info(id)

```ruby
begin
  # Get declined requirements
  data, status_code, headers = api_instance.get_phone_number_remediation_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPhoneNumberRemediation200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->get_phone_number_remediation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Phone number record ID. |  |

### Return type

[**GetPhoneNumberRemediation200Response**](GetPhoneNumberRemediation200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_phone_number_countries

> <ListPhoneNumberCountries200Response> list_phone_number_countries

List offerable number countries

The phone number countries available to purchase, each with its flat monthly price (cents), regulatory tier, whether it needs end-user KYC (Tier 3/4), and per-feature availability (PSTN calls, WhatsApp, SMS, and WhatsApp Business Calling outbound). Drives the country picker. Tier-4 countries appear only when enabled. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new

begin
  # List offerable number countries
  result = api_instance.list_phone_number_countries
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->list_phone_number_countries: #{e}"
end
```

#### Using the list_phone_number_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPhoneNumberCountries200Response>, Integer, Hash)> list_phone_number_countries_with_http_info

```ruby
begin
  # List offerable number countries
  data, status_code, headers = api_instance.list_phone_number_countries_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPhoneNumberCountries200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->list_phone_number_countries_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPhoneNumberCountries200Response**](ListPhoneNumberCountries200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_phone_number_port_ins

> <ListPhoneNumberPortIns200Response> list_phone_number_port_ins

List port-in orders

Your porting orders, newest first (max 50). Poll this for port progress: pending, confirmed FOC date, exception reason, or ported. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new

begin
  # List port-in orders
  result = api_instance.list_phone_number_port_ins
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->list_phone_number_port_ins: #{e}"
end
```

#### Using the list_phone_number_port_ins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPhoneNumberPortIns200Response>, Integer, Hash)> list_phone_number_port_ins_with_http_info

```ruby
begin
  # List port-in orders
  data, status_code, headers = api_instance.list_phone_number_port_ins_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPhoneNumberPortIns200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->list_phone_number_port_ins_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListPhoneNumberPortIns200Response**](ListPhoneNumberPortIns200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_phone_numbers

> <ListPhoneNumbers200Response> list_phone_numbers(opts)

List phone numbers

List all phone numbers purchased by the authenticated user. By default, released numbers are excluded. Connected (bring-your-own) WhatsApp numbers are returned in the separate `connected` array; they are not billed and have no provisioning lifecycle. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
opts = {
  status: 'provisioning', # String | Filter by status (by default excludes released numbers). NOTE: `status=pending_regulatory` returns the \"provisioning\" view — numbers still in review PLUS recently-declined (last 30 days) ones, so a failed registration surfaces (with `regulatoryDeclineReason`) instead of silently disappearing. Declined numbers can be re-submitted via POST /v1/phone-numbers/{id}/remediate. `verifying` is the short-lived state after the number is provisioned on our side while WhatsApp confirms the activation code; the number is not billed until it reaches `active`. 
  profile_id: 'profile_id_example' # String | Filter by profile
}

begin
  # List phone numbers
  result = api_instance.list_phone_numbers(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->list_phone_numbers: #{e}"
end
```

#### Using the list_phone_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListPhoneNumbers200Response>, Integer, Hash)> list_phone_numbers_with_http_info(opts)

```ruby
begin
  # List phone numbers
  data, status_code, headers = api_instance.list_phone_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListPhoneNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->list_phone_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filter by status (by default excludes released numbers). NOTE: &#x60;status&#x3D;pending_regulatory&#x60; returns the \&quot;provisioning\&quot; view — numbers still in review PLUS recently-declined (last 30 days) ones, so a failed registration surfaces (with &#x60;regulatoryDeclineReason&#x60;) instead of silently disappearing. Declined numbers can be re-submitted via POST /v1/phone-numbers/{id}/remediate. &#x60;verifying&#x60; is the short-lived state after the number is provisioned on our side while WhatsApp confirms the activation code; the number is not billed until it reaches &#x60;active&#x60;.  | [optional] |
| **profile_id** | **String** | Filter by profile | [optional] |

### Return type

[**ListPhoneNumbers200Response**](ListPhoneNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## purchase_phone_number

> <PurchasePhoneNumber200Response> purchase_phone_number(purchase_phone_number_request)

Purchase phone number

Payment-first: you do not pick a specific number, the system provisions one and auto-assigns it. With usage-based billing active and a payment method on file, the number provisions inline and bills per month on your usage-based invoice (there is no checkout redirect). No payment method on file returns `402 PAYMENT_REQUIRED`; a regulated country returns `202` with `status: \"kyc_required\"` and a `kycUrl`.  Requires usage-based billing (the Usage plan). The maximum number of phone numbers is determined by the user's plan. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
purchase_phone_number_request = Zernio::PurchasePhoneNumberRequest.new({profile_id: 'profile_id_example'}) # PurchasePhoneNumberRequest | 

begin
  # Purchase phone number
  result = api_instance.purchase_phone_number(purchase_phone_number_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->purchase_phone_number: #{e}"
end
```

#### Using the purchase_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PurchasePhoneNumber200Response>, Integer, Hash)> purchase_phone_number_with_http_info(purchase_phone_number_request)

```ruby
begin
  # Purchase phone number
  data, status_code, headers = api_instance.purchase_phone_number_with_http_info(purchase_phone_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PurchasePhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->purchase_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **purchase_phone_number_request** | [**PurchasePhoneNumberRequest**](PurchasePhoneNumberRequest.md) |  |  |

### Return type

[**PurchasePhoneNumber200Response**](PurchasePhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## release_phone_number

> <ReleasePhoneNumber200Response> release_phone_number(id)

Release phone number

Release a purchased phone number. This will: 1. Disconnect any linked WhatsApp social account 2. Decrement the Stripe subscription quantity (or cancel if last number) 3. Release the number from Telnyx 4. Mark the number as released 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
id = 'id_example' # String | Phone number record ID

begin
  # Release phone number
  result = api_instance.release_phone_number(id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->release_phone_number: #{e}"
end
```

#### Using the release_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReleasePhoneNumber200Response>, Integer, Hash)> release_phone_number_with_http_info(id)

```ruby
begin
  # Release phone number
  data, status_code, headers = api_instance.release_phone_number_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReleasePhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->release_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Phone number record ID |  |

### Return type

[**ReleasePhoneNumber200Response**](ReleasePhoneNumber200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remediate_phone_number

> <RemediatePhoneNumber200Response> remediate_phone_number(id, remediate_phone_number_request)

Resubmit a declined number

Submit corrected values/documents for the declined requirement(s). We PATCH them onto the SAME requirement group and re-submit it for approval; the number goes `regulatory_declined` → `pending_regulatory`. No new number and no new billing. Body shape matches the KYC submit (values / documents / address) — send only the corrected fields. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
id = 'id_example' # String | 
remediate_phone_number_request = Zernio::RemediatePhoneNumberRequest.new # RemediatePhoneNumberRequest | 

begin
  # Resubmit a declined number
  result = api_instance.remediate_phone_number(id, remediate_phone_number_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->remediate_phone_number: #{e}"
end
```

#### Using the remediate_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemediatePhoneNumber200Response>, Integer, Hash)> remediate_phone_number_with_http_info(id, remediate_phone_number_request)

```ruby
begin
  # Resubmit a declined number
  data, status_code, headers = api_instance.remediate_phone_number_with_http_info(id, remediate_phone_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemediatePhoneNumber200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->remediate_phone_number_with_http_info: #{e}"
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


## review_phone_number_kyc_packet

> <ReviewPhoneNumberKycPacket200Response> review_phone_number_kyc_packet(review_phone_number_kyc_packet_request)

Pre-review a KYC packet

Advisory dry-run of a regulated-KYC packet before submitting: reviews the exact documents the regulator will see (referenced by the ids from POST /v1/phone-numbers/kyc/upload-document) against the declared values and address, and returns plain-language advisories for likely decline reasons (wrong document type, mismatched address, one-sided ID scans). Non-blocking: advisories are warnings, submitting anyway is always allowed, and any review failure degrades to an empty list. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
review_phone_number_kyc_packet_request = Zernio::ReviewPhoneNumberKycPacketRequest.new({country: 'country_example', number_type: 'number_type_example', docs: [Zernio::SubmitPhoneNumberKycRequestDocumentsInnerOneOf1.new({requirement_id: 'requirement_id_example', document_id: 'document_id_example'})]}) # ReviewPhoneNumberKycPacketRequest | 

begin
  # Pre-review a KYC packet
  result = api_instance.review_phone_number_kyc_packet(review_phone_number_kyc_packet_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->review_phone_number_kyc_packet: #{e}"
end
```

#### Using the review_phone_number_kyc_packet_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReviewPhoneNumberKycPacket200Response>, Integer, Hash)> review_phone_number_kyc_packet_with_http_info(review_phone_number_kyc_packet_request)

```ruby
begin
  # Pre-review a KYC packet
  data, status_code, headers = api_instance.review_phone_number_kyc_packet_with_http_info(review_phone_number_kyc_packet_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReviewPhoneNumberKycPacket200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->review_phone_number_kyc_packet_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **review_phone_number_kyc_packet_request** | [**ReviewPhoneNumberKycPacketRequest**](ReviewPhoneNumberKycPacketRequest.md) |  |  |

### Return type

[**ReviewPhoneNumberKycPacket200Response**](ReviewPhoneNumberKycPacket200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## search_available_phone_numbers

> <SearchAvailablePhoneNumbers200Response> search_available_phone_numbers(opts)

Search available numbers

Search the provider's inventory for numbers available to purchase in a country (default US). Optional filters narrow the results. The country must be offerable (see GET /v1/phone-numbers/countries). Voice capability is always required; pass `sms=true` to only see numbers that can also text (SMS support is per-number, not per-country). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
opts = {
  country: 'country_example', # String | 
  type: 'type_example', # String | Number type; defaults to the country's WhatsApp-safe type
  prefix: 'prefix_example', # String | Area code
  locality: 'locality_example', # String | City
  contains: 'contains_example', # String | Pattern to match within the number
  sms: true, # Boolean | true narrows the pool to SMS-capable numbers. Each result still carries its full `features` list for per-number capability badging.
  limit: 56 # Integer | 
}

begin
  # Search available numbers
  result = api_instance.search_available_phone_numbers(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->search_available_phone_numbers: #{e}"
end
```

#### Using the search_available_phone_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchAvailablePhoneNumbers200Response>, Integer, Hash)> search_available_phone_numbers_with_http_info(opts)

```ruby
begin
  # Search available numbers
  data, status_code, headers = api_instance.search_available_phone_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchAvailablePhoneNumbers200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->search_available_phone_numbers_with_http_info: #{e}"
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
| **sms** | **Boolean** | true narrows the pool to SMS-capable numbers. Each result still carries its full &#x60;features&#x60; list for per-number capability badging. | [optional] |
| **limit** | **Integer** |  | [optional][default to 20] |

### Return type

[**SearchAvailablePhoneNumbers200Response**](SearchAvailablePhoneNumbers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## submit_phone_number_kyc

> <SubmitPhoneNumberKyc200Response> submit_phone_number_kyc(submit_phone_number_kyc_request)

Submit KYC

Submit the end customer's KYC (textual values, uploaded documents, address) for a Tier 3/4 country. Documents are streamed straight to the number provider and are not stored by Zernio. Builds + submits a regulatory requirement group and claims a pending_regulatory slot; the number is ordered + activated once the provider approves (asynchronous). A customer may hold several same-country numbers in review at once; a double-submit of the SAME attempt is deduped via `submissionId`.  For an ID-card document requirement, carriers commonly require BOTH sides: combine the front and back into a single file before uploading (the dashboard does this automatically). A one-sided ID is a common decline reason; fix it via POST /v1/phone-numbers/{id}/remediate.  Before submitting, call GET /v1/phone-numbers/availability to check the country has deliverable inventory and, for geographic-match countries, which area the address must be in — otherwise the submission can pass review yet never be assignable a number. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
submit_phone_number_kyc_request = Zernio::SubmitPhoneNumberKycRequest.new({profile_id: 'profile_id_example', country: 'country_example'}) # SubmitPhoneNumberKycRequest | 

begin
  # Submit KYC
  result = api_instance.submit_phone_number_kyc(submit_phone_number_kyc_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->submit_phone_number_kyc: #{e}"
end
```

#### Using the submit_phone_number_kyc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubmitPhoneNumberKyc200Response>, Integer, Hash)> submit_phone_number_kyc_with_http_info(submit_phone_number_kyc_request)

```ruby
begin
  # Submit KYC
  data, status_code, headers = api_instance.submit_phone_number_kyc_with_http_info(submit_phone_number_kyc_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubmitPhoneNumberKyc200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->submit_phone_number_kyc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **submit_phone_number_kyc_request** | [**SubmitPhoneNumberKycRequest**](SubmitPhoneNumberKycRequest.md) |  |  |

### Return type

[**SubmitPhoneNumberKyc200Response**](SubmitPhoneNumberKyc200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_phone_number_kyc_document

> <UploadPhoneNumberKycDocument200Response> upload_phone_number_kyc_document(x_filename, body)

Upload a KYC document

Upload ONE document and get back its provider document id, to reference from POST /v1/phone-numbers/kyc via `documents[].documentId`. Send the RAW file bytes as the request body (not base64); put the filename in the `X-Filename` header. Uploading documents one-per-request keeps each request under the ~4.5MB body limit. The document streams straight to the number provider and is not stored by Zernio. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
x_filename = 'x_filename_example' # String | URL-encoded original filename.
body = File.new('/path/to/some/file') # File | 

begin
  # Upload a KYC document
  result = api_instance.upload_phone_number_kyc_document(x_filename, body)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->upload_phone_number_kyc_document: #{e}"
end
```

#### Using the upload_phone_number_kyc_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadPhoneNumberKycDocument200Response>, Integer, Hash)> upload_phone_number_kyc_document_with_http_info(x_filename, body)

```ruby
begin
  # Upload a KYC document
  data, status_code, headers = api_instance.upload_phone_number_kyc_document_with_http_info(x_filename, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadPhoneNumberKycDocument200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->upload_phone_number_kyc_document_with_http_info: #{e}"
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


## upload_phone_number_port_in_document

> <UploadPhoneNumberPortInDocument200Response> upload_phone_number_port_in_document(file, opts)

Upload a porting document

Upload ONE porting document (the signed LOA or a recent carrier invoice) and get back its `documentId`, which the port-in create request takes as `loaDocumentId` / `invoiceDocumentId`. PDF, JPEG, or PNG, 10MB max. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
file = File.new('/path/to/some/file') # File | The document (PDF/JPEG/PNG, 10MB max).
opts = {
  kind: 'loa' # String | Informational; used for the stored filename.
}

begin
  # Upload a porting document
  result = api_instance.upload_phone_number_port_in_document(file, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->upload_phone_number_port_in_document: #{e}"
end
```

#### Using the upload_phone_number_port_in_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UploadPhoneNumberPortInDocument200Response>, Integer, Hash)> upload_phone_number_port_in_document_with_http_info(file, opts)

```ruby
begin
  # Upload a porting document
  data, status_code, headers = api_instance.upload_phone_number_port_in_document_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UploadPhoneNumberPortInDocument200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->upload_phone_number_port_in_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | The document (PDF/JPEG/PNG, 10MB max). |  |
| **kind** | **String** | Informational; used for the stored filename. | [optional] |

### Return type

[**UploadPhoneNumberPortInDocument200Response**](UploadPhoneNumberPortInDocument200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## validate_phone_number_kyc_address

> <ValidatePhoneNumberKycAddress200Response> validate_phone_number_kyc_address(validate_phone_number_kyc_address_request)

Pre-validate KYC address

Optional early check for the address step of a Tier 4 (end-user identity) registration: validates a postal address for deliverability BEFORE the full KYC submit, so it can be corrected before any documents are uploaded. The full submit (POST /v1/phone-numbers/kyc) re-validates the address, so this call is purely a fast feedback path and skipping it is safe. Only the postal address is sent (no documents, no gov-ID fields). A region (`administrative_area`) is required by the validator; when it is omitted the pre-check is skipped and `{ ok: true, skipped: true }` is returned (the final submit still validates). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::PhoneNumbersApi.new
validate_phone_number_kyc_address_request = Zernio::ValidatePhoneNumberKycAddressRequest.new({country: 'country_example', street_address: 'street_address_example', locality: 'locality_example', postal_code: 'postal_code_example'}) # ValidatePhoneNumberKycAddressRequest | 

begin
  # Pre-validate KYC address
  result = api_instance.validate_phone_number_kyc_address(validate_phone_number_kyc_address_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->validate_phone_number_kyc_address: #{e}"
end
```

#### Using the validate_phone_number_kyc_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidatePhoneNumberKycAddress200Response>, Integer, Hash)> validate_phone_number_kyc_address_with_http_info(validate_phone_number_kyc_address_request)

```ruby
begin
  # Pre-validate KYC address
  data, status_code, headers = api_instance.validate_phone_number_kyc_address_with_http_info(validate_phone_number_kyc_address_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidatePhoneNumberKycAddress200Response>
rescue Zernio::ApiError => e
  puts "Error when calling PhoneNumbersApi->validate_phone_number_kyc_address_with_http_info: #{e}"
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

