# Zernio::CRMApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_crm_activity**](CRMApi.md#create_crm_activity) | **POST** /v1/crm/{accountId}/contacts/{contactId}/activities | Log a CRM activity |
| [**create_crm_contact**](CRMApi.md#create_crm_contact) | **POST** /v1/crm/{accountId}/contacts | Create a CRM contact |
| [**get_crm_contact**](CRMApi.md#get_crm_contact) | **GET** /v1/crm/{accountId}/contacts/{contactId} | Get a CRM contact |
| [**get_crm_deal**](CRMApi.md#get_crm_deal) | **GET** /v1/crm/{accountId}/deals/{dealId} | Get a CRM deal |
| [**list_crm_deals**](CRMApi.md#list_crm_deals) | **GET** /v1/crm/{accountId}/deals | List CRM deals |
| [**list_crm_owners**](CRMApi.md#list_crm_owners) | **GET** /v1/crm/{accountId}/owners | List CRM owners |
| [**search_crm_contacts**](CRMApi.md#search_crm_contacts) | **GET** /v1/crm/{accountId}/contacts/search | Search CRM contacts |
| [**update_crm_contact**](CRMApi.md#update_crm_contact) | **PATCH** /v1/crm/{accountId}/contacts/{contactId} | Update a CRM contact |
| [**update_crm_deal**](CRMApi.md#update_crm_deal) | **PATCH** /v1/crm/{accountId}/deals/{dealId} | Update a CRM deal |


## create_crm_activity

> <CreateCrmActivity201Response> create_crm_activity(account_id, contact_id, create_crm_activity_request)

Log a CRM activity

Log something that happened with a person on their CRM record.  - HubSpot: a Communication on the contact's timeline for `channel` `whatsapp` or `sms`, otherwise a Note. The subject and direction lead the text. - Salesforce: a completed Task on the Contact or Lead (`WhoId`), dated `occurredAt`, with `body` as its comments. `channel: call` logs a call. - HighLevel: a plain-text note on the contact. HighLevel dates a note when it is logged, so the subject (or channel), direction and `occurredAt` lead its text.  To log inbox conversations automatically instead, turn on `logMessages` in the CRM settings.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
contact_id = 'contact_id_example' # String | The CRM's own id. HubSpot contact id, Salesforce Contact (`003...`) or Lead (`00Q...`) id, or HighLevel contact id.
create_crm_activity_request = Zernio::CreateCrmActivityRequest.new({body: 'body_example'}) # CreateCrmActivityRequest | 

begin
  # Log a CRM activity
  result = api_instance.create_crm_activity(account_id, contact_id, create_crm_activity_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->create_crm_activity: #{e}"
end
```

#### Using the create_crm_activity_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCrmActivity201Response>, Integer, Hash)> create_crm_activity_with_http_info(account_id, contact_id, create_crm_activity_request)

```ruby
begin
  # Log a CRM activity
  data, status_code, headers = api_instance.create_crm_activity_with_http_info(account_id, contact_id, create_crm_activity_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCrmActivity201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->create_crm_activity_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **contact_id** | **String** | The CRM&#39;s own id. HubSpot contact id, Salesforce Contact (&#x60;003...&#x60;) or Lead (&#x60;00Q...&#x60;) id, or HighLevel contact id. |  |
| **create_crm_activity_request** | [**CreateCrmActivityRequest**](CreateCrmActivityRequest.md) |  |  |

### Return type

[**CreateCrmActivity201Response**](CreateCrmActivity201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_crm_contact

> <CreateCrmContact201Response> create_crm_contact(account_id, create_crm_contact_request)

Create a CRM contact

Create a person in the connected CRM. HubSpot creates a contact. Salesforce creates a Lead or a Contact: `createAs`, else the connection's `createAs` setting (default `lead`).  Salesforce requires `lastName` on both, and `company` on a Lead (`[not provided]` when you send none). A Contact takes its company from its Account: set `properties.AccountId` instead.  HighLevel creates a contact in the connected location. A location that does not allow duplicates answers 409 with the existing contact.  Anything the CRM refuses (a required field, a validation rule, a duplicate rule) comes back as 422 or 409 with the CRM's own errors in `details.errors`.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
create_crm_contact_request = Zernio::CreateCrmContactRequest.new # CreateCrmContactRequest | 

begin
  # Create a CRM contact
  result = api_instance.create_crm_contact(account_id, create_crm_contact_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->create_crm_contact: #{e}"
end
```

#### Using the create_crm_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCrmContact201Response>, Integer, Hash)> create_crm_contact_with_http_info(account_id, create_crm_contact_request)

```ruby
begin
  # Create a CRM contact
  data, status_code, headers = api_instance.create_crm_contact_with_http_info(account_id, create_crm_contact_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCrmContact201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->create_crm_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **create_crm_contact_request** | [**CreateCrmContactRequest**](CreateCrmContactRequest.md) |  |  |

### Return type

[**CreateCrmContact201Response**](CreateCrmContact201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_crm_contact

> <CreateCrmContact201Response> get_crm_contact(account_id, contact_id, opts)

Get a CRM contact

Read one person from the connected CRM. On Salesforce the id can be a Contact (`003...`) or a Lead (`00Q...`).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
contact_id = 'contact_id_example' # String | The CRM's own id. HubSpot contact id, Salesforce Contact (`003...`) or Lead (`00Q...`) id, or HighLevel contact id.
opts = {
  properties: 'properties_example', # String | Comma-separated native field names to return in `properties` (at most 50), for example `lifecyclestage,hs_lead_status` or `LeadSource,Industry__c`. On HighLevel, a field of the record (`source`, `status`), or a custom field by id or key.
  include_raw: true # Boolean | Also return the CRM's own record as `raw`.
}

begin
  # Get a CRM contact
  result = api_instance.get_crm_contact(account_id, contact_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->get_crm_contact: #{e}"
end
```

#### Using the get_crm_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCrmContact201Response>, Integer, Hash)> get_crm_contact_with_http_info(account_id, contact_id, opts)

```ruby
begin
  # Get a CRM contact
  data, status_code, headers = api_instance.get_crm_contact_with_http_info(account_id, contact_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCrmContact201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->get_crm_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **contact_id** | **String** | The CRM&#39;s own id. HubSpot contact id, Salesforce Contact (&#x60;003...&#x60;) or Lead (&#x60;00Q...&#x60;) id, or HighLevel contact id. |  |
| **properties** | **String** | Comma-separated native field names to return in &#x60;properties&#x60; (at most 50), for example &#x60;lifecyclestage,hs_lead_status&#x60; or &#x60;LeadSource,Industry__c&#x60;. On HighLevel, a field of the record (&#x60;source&#x60;, &#x60;status&#x60;), or a custom field by id or key. | [optional] |
| **include_raw** | **Boolean** | Also return the CRM&#39;s own record as &#x60;raw&#x60;. | [optional][default to false] |

### Return type

[**CreateCrmContact201Response**](CreateCrmContact201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_crm_deal

> <GetCrmDeal200Response> get_crm_deal(account_id, deal_id, opts)

Get a CRM deal

Read one deal (HubSpot), Opportunity (Salesforce) or opportunity (HighLevel) with its contacts.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
deal_id = 'deal_id_example' # String | HubSpot deal id, Salesforce Opportunity id (`006...`) or HighLevel opportunity id.
opts = {
  properties: 'properties_example', # String | Comma-separated native field names to return in `properties` (at most 50), for example `lifecyclestage,hs_lead_status` or `LeadSource,Industry__c`. On HighLevel, a field of the record (`source`, `status`), or a custom field by id or key.
  include_raw: true # Boolean | Also return the CRM's own record as `raw`.
}

begin
  # Get a CRM deal
  result = api_instance.get_crm_deal(account_id, deal_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->get_crm_deal: #{e}"
end
```

#### Using the get_crm_deal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCrmDeal200Response>, Integer, Hash)> get_crm_deal_with_http_info(account_id, deal_id, opts)

```ruby
begin
  # Get a CRM deal
  data, status_code, headers = api_instance.get_crm_deal_with_http_info(account_id, deal_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCrmDeal200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->get_crm_deal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **deal_id** | **String** | HubSpot deal id, Salesforce Opportunity id (&#x60;006...&#x60;) or HighLevel opportunity id. |  |
| **properties** | **String** | Comma-separated native field names to return in &#x60;properties&#x60; (at most 50), for example &#x60;lifecyclestage,hs_lead_status&#x60; or &#x60;LeadSource,Industry__c&#x60;. On HighLevel, a field of the record (&#x60;source&#x60;, &#x60;status&#x60;), or a custom field by id or key. | [optional] |
| **include_raw** | **Boolean** | Also return the CRM&#39;s own record as &#x60;raw&#x60;. | [optional][default to false] |

### Return type

[**GetCrmDeal200Response**](GetCrmDeal200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_crm_deals

> <ListCrmDeals200Response> list_crm_deals(account_id, opts)

List CRM deals

List deals (HubSpot) or Opportunities (Salesforce), most recently changed first, or a HighLevel location's opportunities in HighLevel's own order.  HubSpot needs the portal to have granted `crm.objects.deals.read`; otherwise 403 `crm_scope_missing`. HighLevel cannot filter by update time: `updatedSince` answers 400 there.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
opts = {
  stage: 'stage_example', # String | Only deals in this stage. HubSpot takes the stage's internal id (`closedwon`, `appointmentscheduled`); Salesforce the `StageName` (`Closed Won`); HighLevel the pipeline stage id.
  updated_since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Only deals changed at or after this time. HubSpot and Salesforce only.
  properties: 'properties_example', # String | Comma-separated native field names to return in `properties` (at most 50), for example `lifecyclestage,hs_lead_status` or `LeadSource,Industry__c`. On HighLevel, a field of the record (`source`, `status`), or a custom field by id or key.
  include_raw: true, # Boolean | Also return the CRM's own record as `raw`.
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | The `nextCursor` of the previous page, unchanged.
}

begin
  # List CRM deals
  result = api_instance.list_crm_deals(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->list_crm_deals: #{e}"
end
```

#### Using the list_crm_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCrmDeals200Response>, Integer, Hash)> list_crm_deals_with_http_info(account_id, opts)

```ruby
begin
  # List CRM deals
  data, status_code, headers = api_instance.list_crm_deals_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCrmDeals200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->list_crm_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **stage** | **String** | Only deals in this stage. HubSpot takes the stage&#39;s internal id (&#x60;closedwon&#x60;, &#x60;appointmentscheduled&#x60;); Salesforce the &#x60;StageName&#x60; (&#x60;Closed Won&#x60;); HighLevel the pipeline stage id. | [optional] |
| **updated_since** | **Time** | Only deals changed at or after this time. HubSpot and Salesforce only. | [optional] |
| **properties** | **String** | Comma-separated native field names to return in &#x60;properties&#x60; (at most 50), for example &#x60;lifecyclestage,hs_lead_status&#x60; or &#x60;LeadSource,Industry__c&#x60;. On HighLevel, a field of the record (&#x60;source&#x60;, &#x60;status&#x60;), or a custom field by id or key. | [optional] |
| **include_raw** | **Boolean** | Also return the CRM&#39;s own record as &#x60;raw&#x60;. | [optional][default to false] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** | The &#x60;nextCursor&#x60; of the previous page, unchanged. | [optional] |

### Return type

[**ListCrmDeals200Response**](ListCrmDeals200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_crm_owners

> <ListCrmOwners200Response> list_crm_owners(account_id, opts)

List CRM owners

List the users records can be assigned to: HubSpot owners, active standard Salesforce users, or the HighLevel location's users. Use an `id` as `ownerId` on contacts and deals.  HubSpot needs `crm.objects.owners.read`, an optional scope portals approve when they connect; without it, 403 `crm_scope_missing` asks to reconnect HubSpot. HighLevel needs `users.readonly`: a location installed before Zernio asked for it answers 403 `crm_scope_missing` until it reconnects.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
opts = {
  include_raw: true, # Boolean | Also return the CRM's own record as `raw`.
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | The `nextCursor` of the previous page, unchanged.
}

begin
  # List CRM owners
  result = api_instance.list_crm_owners(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->list_crm_owners: #{e}"
end
```

#### Using the list_crm_owners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCrmOwners200Response>, Integer, Hash)> list_crm_owners_with_http_info(account_id, opts)

```ruby
begin
  # List CRM owners
  data, status_code, headers = api_instance.list_crm_owners_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCrmOwners200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->list_crm_owners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **include_raw** | **Boolean** | Also return the CRM&#39;s own record as &#x60;raw&#x60;. | [optional][default to false] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** | The &#x60;nextCursor&#x60; of the previous page, unchanged. | [optional] |

### Return type

[**ListCrmOwners200Response**](ListCrmOwners200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_crm_contacts

> <SearchCrmContacts200Response> search_crm_contacts(account_id, opts)

Search CRM contacts

Find people in the connected CRM by free text, email or phone. Send exactly one of `q`, `email` or `phone`.  HubSpot searches contacts. Salesforce searches Contacts and Leads that are not converted (`objectType` tells which), newest change first. HighLevel searches the location's contacts.  - `email` is an exact match. - `phone` takes an international number and matches it however the CRM stored it (\"+44 7911 123456\", \"07911 123456\"). - `q` searches names, emails, phones and company. On Salesforce, `q` and `phone` use the search index, so a record saved in the last few minutes may not show yet; `email` never lags. - On HighLevel, `email` and `phone` use the location's duplicate check: at most one contact, with no next page.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
opts = {
  q: 'q_example', # String | Free text, at least 2 characters.
  email: 'email_example', # String | 
  phone: 'phone_example', # String | International number with its country code, for example `+14155550100`.
  properties: 'properties_example', # String | Comma-separated native field names to return in `properties` (at most 50), for example `lifecyclestage,hs_lead_status` or `LeadSource,Industry__c`. On HighLevel, a field of the record (`source`, `status`), or a custom field by id or key.
  include_raw: true, # Boolean | Also return the CRM's own record as `raw`.
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | The `nextCursor` of the previous page, unchanged.
}

begin
  # Search CRM contacts
  result = api_instance.search_crm_contacts(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->search_crm_contacts: #{e}"
end
```

#### Using the search_crm_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchCrmContacts200Response>, Integer, Hash)> search_crm_contacts_with_http_info(account_id, opts)

```ruby
begin
  # Search CRM contacts
  data, status_code, headers = api_instance.search_crm_contacts_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchCrmContacts200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->search_crm_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **q** | **String** | Free text, at least 2 characters. | [optional] |
| **email** | **String** |  | [optional] |
| **phone** | **String** | International number with its country code, for example &#x60;+14155550100&#x60;. | [optional] |
| **properties** | **String** | Comma-separated native field names to return in &#x60;properties&#x60; (at most 50), for example &#x60;lifecyclestage,hs_lead_status&#x60; or &#x60;LeadSource,Industry__c&#x60;. On HighLevel, a field of the record (&#x60;source&#x60;, &#x60;status&#x60;), or a custom field by id or key. | [optional] |
| **include_raw** | **Boolean** | Also return the CRM&#39;s own record as &#x60;raw&#x60;. | [optional][default to false] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** | The &#x60;nextCursor&#x60; of the previous page, unchanged. | [optional] |

### Return type

[**SearchCrmContacts200Response**](SearchCrmContacts200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_crm_contact

> <CreateCrmContact201Response> update_crm_contact(account_id, contact_id, crm_contact_input)

Update a CRM contact

Change fields on a person in the connected CRM. Send only what changes; `null` clears a field. Native fields go in `properties`.  On Salesforce, `company` applies to Leads only (400 on a Contact).

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
contact_id = 'contact_id_example' # String | The CRM's own id. HubSpot contact id, Salesforce Contact (`003...`) or Lead (`00Q...`) id, or HighLevel contact id.
crm_contact_input = Zernio::CrmContactInput.new # CrmContactInput | 

begin
  # Update a CRM contact
  result = api_instance.update_crm_contact(account_id, contact_id, crm_contact_input)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->update_crm_contact: #{e}"
end
```

#### Using the update_crm_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCrmContact201Response>, Integer, Hash)> update_crm_contact_with_http_info(account_id, contact_id, crm_contact_input)

```ruby
begin
  # Update a CRM contact
  data, status_code, headers = api_instance.update_crm_contact_with_http_info(account_id, contact_id, crm_contact_input)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCrmContact201Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->update_crm_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **contact_id** | **String** | The CRM&#39;s own id. HubSpot contact id, Salesforce Contact (&#x60;003...&#x60;) or Lead (&#x60;00Q...&#x60;) id, or HighLevel contact id. |  |
| **crm_contact_input** | [**CrmContactInput**](CrmContactInput.md) |  |  |

### Return type

[**CreateCrmContact201Response**](CreateCrmContact201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_crm_deal

> <GetCrmDeal200Response> update_crm_deal(account_id, deal_id, update_crm_deal_request)

Update a CRM deal

Move a deal to another stage, or change its amount, close date, owner or native fields. Send only what changes.  HubSpot needs `crm.objects.deals.write`, an optional scope portals approve when they connect; without it, 403 `crm_scope_missing` asks to reconnect HubSpot. `currency` only works on multi-currency HubSpot portals and Salesforce orgs.  HighLevel: `stage` is the pipeline stage id, `amount` the opportunity value, and `properties.status` (`open`, `won`, `lost`, `abandoned`) marks it won or lost. Its opportunities have no close date or currency of their own: `closeDate` and `currency` answer 400.  Updating needs `opportunities.write`, which the Zernio HighLevel app does not request yet, so this call answers 403 `crm_scope_missing` on HighLevel for now.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::CRMApi.new
account_id = 'account_id_example' # String | The connected HubSpot, Salesforce or HighLevel account (`GET /v1/accounts?platform=hubspot`, `salesforce` or `gohighlevel`).
deal_id = 'deal_id_example' # String | HubSpot deal id, Salesforce Opportunity id (`006...`) or HighLevel opportunity id.
update_crm_deal_request = Zernio::UpdateCrmDealRequest.new # UpdateCrmDealRequest | 

begin
  # Update a CRM deal
  result = api_instance.update_crm_deal(account_id, deal_id, update_crm_deal_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->update_crm_deal: #{e}"
end
```

#### Using the update_crm_deal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCrmDeal200Response>, Integer, Hash)> update_crm_deal_with_http_info(account_id, deal_id, update_crm_deal_request)

```ruby
begin
  # Update a CRM deal
  data, status_code, headers = api_instance.update_crm_deal_with_http_info(account_id, deal_id, update_crm_deal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCrmDeal200Response>
rescue Zernio::ApiError => e
  puts "Error when calling CRMApi->update_crm_deal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The connected HubSpot, Salesforce or HighLevel account (&#x60;GET /v1/accounts?platform&#x3D;hubspot&#x60;, &#x60;salesforce&#x60; or &#x60;gohighlevel&#x60;). |  |
| **deal_id** | **String** | HubSpot deal id, Salesforce Opportunity id (&#x60;006...&#x60;) or HighLevel opportunity id. |  |
| **update_crm_deal_request** | [**UpdateCrmDealRequest**](UpdateCrmDealRequest.md) |  |  |

### Return type

[**GetCrmDeal200Response**](GetCrmDeal200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

