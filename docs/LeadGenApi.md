# Zernio::LeadGenApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**archive_lead_form**](LeadGenApi.md#archive_lead_form) | **DELETE** /v1/ads/lead-forms/{formId} | Archive a lead form |
| [**count_leads**](LeadGenApi.md#count_leads) | **GET** /v1/ads/leads/counts | Count leads by status |
| [**create_lead**](LeadGenApi.md#create_lead) | **POST** /v1/leads | Create a lead from your own form |
| [**create_lead_form**](LeadGenApi.md#create_lead_form) | **POST** /v1/ads/lead-forms | Create a lead form |
| [**create_test_lead**](LeadGenApi.md#create_test_lead) | **POST** /v1/ads/lead-forms/{formId}/test-leads | Create a test lead |
| [**delete_test_lead**](LeadGenApi.md#delete_test_lead) | **DELETE** /v1/ads/lead-forms/{formId}/test-leads | Delete a test lead |
| [**get_lead_form**](LeadGenApi.md#get_lead_form) | **GET** /v1/ads/lead-forms/{formId} | Get a lead form |
| [**list_form_leads**](LeadGenApi.md#list_form_leads) | **GET** /v1/ads/lead-forms/{formId}/leads | List leads for a single form |
| [**list_lead_forms**](LeadGenApi.md#list_lead_forms) | **GET** /v1/ads/lead-forms | List lead forms |
| [**list_leads**](LeadGenApi.md#list_leads) | **GET** /v1/ads/leads | List submitted leads |
| [**update_lead**](LeadGenApi.md#update_lead) | **PATCH** /v1/ads/leads/{id} | Update a lead&#39;s status |


## archive_lead_form

> <ArchiveLeadForm200Response> archive_lead_form(form_id, account_id)

Archive a lead form

Archives a lead form so it can no longer be used (neither Meta nor LinkedIn allows deleting one).  Neither platform hard-deletes a form; this archives it (Meta status=ARCHIVED; LinkedIn state=ARCHIVED via PARTIAL_UPDATE). Meta forms must belong to the Page the accountId manages. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
form_id = 'form_id_example' # String | Numeric form id (Meta leadgen_form id or LinkedIn leadForm id).
account_id = 'account_id_example' # String | Connected Meta ads, facebook, instagram or linkedin ads account id (selects the platform).  - A Meta ads connection resolves its Page through the Facebook account linked to the same profile. - An Instagram account uses the Page its ads run under: its own linked Page, else the Facebook or business-login Meta ads account on the same profile.

begin
  # Archive a lead form
  result = api_instance.archive_lead_form(form_id, account_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->archive_lead_form: #{e}"
end
```

#### Using the archive_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArchiveLeadForm200Response>, Integer, Hash)> archive_lead_form_with_http_info(form_id, account_id)

```ruby
begin
  # Archive a lead form
  data, status_code, headers = api_instance.archive_lead_form_with_http_info(form_id, account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArchiveLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->archive_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** | Numeric form id (Meta leadgen_form id or LinkedIn leadForm id). |  |
| **account_id** | **String** | Connected Meta ads, facebook, instagram or linkedin ads account id (selects the platform).  - A Meta ads connection resolves its Page through the Facebook account linked to the same profile. - An Instagram account uses the Page its ads run under: its own linked Page, else the Facebook or business-login Meta ads account on the same profile. |  |

### Return type

[**ArchiveLeadForm200Response**](ArchiveLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## count_leads

> <CountLeads200Response> count_leads(opts)

Count leads by status

Counts your team's stored Meta leads per status, for a status filter or a \"new leads\" badge.  Every status is present, with 0 when no lead has it. Requires the Ads add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
opts = {
  account_id: 'account_id_example', # String | Count one connected account only.
  campaign_id: 'campaign_id_example' # String | The platform campaign id the leads came from.
}

begin
  # Count leads by status
  result = api_instance.count_leads(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->count_leads: #{e}"
end
```

#### Using the count_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CountLeads200Response>, Integer, Hash)> count_leads_with_http_info(opts)

```ruby
begin
  # Count leads by status
  data, status_code, headers = api_instance.count_leads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CountLeads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->count_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Count one connected account only. | [optional] |
| **campaign_id** | **String** | The platform campaign id the leads came from. | [optional] |

### Return type

[**CountLeads200Response**](CountLeads200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_lead

> <CreateLead200Response> create_lead(create_lead_request)

Create a lead from your own form

Stores a lead from a form on your own site or app, posted by your backend. It joins the leads from ad networks: it is listed on `GET /v1/ads/leads` (`platform: web`), fires `lead.received`, starts lead workflows, and moves through statuses with `PATCH /v1/ads/leads/{id}`.  - **Lead event.** A `Lead` event is stored and sent through the profile's forwarding rules that take the `form_leads` source, like an event sent to `POST /v1/events`. - **Attribution.** Pass the ad click ids from the landing URL in `clickIds` (a raw `fbclid` becomes Meta's `fbc`) and the Zernio tag's visitor id (`_zid` cookie) in `visitorId`. - **Earlier visits.** Zernio adds the click ids it saw on that visitor's, email's or phone's earlier website visits. Qualifying or converting the lead later sends those ids with the stage event. - **Idempotent by `leadId`.** Posting the same `leadId` again returns the stored lead with `created: false` and sends nothing twice. Without `leadId`, every call creates a lead.  A tracked website can capture form leads without any code: turn on lead capture for the site. Requires the Ads add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
create_lead_request = Zernio::CreateLeadRequest.new({profile_id: 'profile_id_example'}) # CreateLeadRequest | 

begin
  # Create a lead from your own form
  result = api_instance.create_lead(create_lead_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_lead: #{e}"
end
```

#### Using the create_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLead200Response>, Integer, Hash)> create_lead_with_http_info(create_lead_request)

```ruby
begin
  # Create a lead from your own form
  data, status_code, headers = api_instance.create_lead_with_http_info(create_lead_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLead200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_lead_request** | [**CreateLeadRequest**](CreateLeadRequest.md) |  |  |

### Return type

[**CreateLead200Response**](CreateLead200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lead_form

> <CreateLeadForm200Response> create_lead_form(create_lead_form_request)

Create a lead form

Creates a lead form on a Facebook Page or LinkedIn Company Page to collect contact details from ads.  The form content goes inside `platformSpecificData` for both platforms (the shape is selected by the accountId's platform). Requires the Ads add-on.  NOT idempotent: a retry creates a second form.  ### Meta  Created on the connected Facebook Page (POST /{page-id}/leadgen_forms). `accountId` may be:  - the `metaads` ads connection (its Page comes from the Facebook account linked to the same profile) - an Instagram account (the Page its ads run under: its own linked Page, else the Facebook or business-login Meta ads account on the same profile) - the Facebook account itself  The old top-level Meta fields (questions, thankYou*, contextCard, …) are DEPRECATED but still accepted while platformSpecificData is absent. Mixing both shapes is a 400.  thankYouEnableMessenger, isPhoneSmsVerifyEnabled and customDisclaimer are accepted only inside platformSpecificData (top-level is a 400).  Meta prefilled question types (EMAIL, PHONE, FULL_NAME, …) must omit label/key; CUSTOM questions require both.  ### LinkedIn  Created on the ad account's Company Page. LinkedIn exposes only free-text and multiple-choice questions via API (prefilled-from-profile fields are Campaign Manager UI-only). 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
create_lead_form_request = Zernio::CreateLeadFormRequest.new({account_id: 'account_id_example', name: 'name_example', privacy_policy_url: 'privacy_policy_url_example'}) # CreateLeadFormRequest | 

begin
  # Create a lead form
  result = api_instance.create_lead_form(create_lead_form_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_lead_form: #{e}"
end
```

#### Using the create_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateLeadForm200Response>, Integer, Hash)> create_lead_form_with_http_info(create_lead_form_request)

```ruby
begin
  # Create a lead form
  data, status_code, headers = api_instance.create_lead_form_with_http_info(create_lead_form_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_lead_form_request** | [**CreateLeadFormRequest**](CreateLeadFormRequest.md) |  |  |

### Return type

[**CreateLeadForm200Response**](CreateLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_test_lead

> <CreateTestLead200Response> create_test_lead(form_id, create_test_lead_request)

Create a test lead

Submits a test lead to a Meta lead form so you can check your lead retrieval without running ads.  Submits a test lead against the form (POST /{form-id}/test_leads) to exercise retrieval without waiting for real ad impressions. Meta allows one test lead per form at a time. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
form_id = 'form_id_example' # String | 
create_test_lead_request = Zernio::CreateTestLeadRequest.new({account_id: 'account_id_example', field_data: [Zernio::CreateTestLeadRequestFieldDataInner.new({name: 'name_example', values: ['values_example']})]}) # CreateTestLeadRequest | 

begin
  # Create a test lead
  result = api_instance.create_test_lead(form_id, create_test_lead_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_test_lead: #{e}"
end
```

#### Using the create_test_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateTestLead200Response>, Integer, Hash)> create_test_lead_with_http_info(form_id, create_test_lead_request)

```ruby
begin
  # Create a test lead
  data, status_code, headers = api_instance.create_test_lead_with_http_info(form_id, create_test_lead_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateTestLead200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->create_test_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **create_test_lead_request** | [**CreateTestLeadRequest**](CreateTestLeadRequest.md) |  |  |

### Return type

[**CreateTestLead200Response**](CreateTestLead200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_test_lead

> <DeleteTestLead200Response> delete_test_lead(form_id, account_id, opts)

Delete a test lead

Deletes the test lead on a Meta lead form so you can submit a new one (Meta allows only one at a time).  Removes a test lead created for the form (DELETE /{leadgen_id}). Meta keeps one test lead per form and refuses a second until the first is gone.  - The same test lead appears in Meta's Lead Ads Testing Tool. - Meta only deletes test leads; a real lead is refused. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | The facebook or metaads account whose Page owns the form.
opts = {
  lead_id: 'lead_id_example' # String | The test lead id returned by createTestLead (or shown in the Testing Tool). Omitted = the test lead currently on the form.
}

begin
  # Delete a test lead
  result = api_instance.delete_test_lead(form_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->delete_test_lead: #{e}"
end
```

#### Using the delete_test_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteTestLead200Response>, Integer, Hash)> delete_test_lead_with_http_info(form_id, account_id, opts)

```ruby
begin
  # Delete a test lead
  data, status_code, headers = api_instance.delete_test_lead_with_http_info(form_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteTestLead200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->delete_test_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **account_id** | **String** | The facebook or metaads account whose Page owns the form. |  |
| **lead_id** | **String** | The test lead id returned by createTestLead (or shown in the Testing Tool). Omitted &#x3D; the test lead currently on the form. | [optional] |

### Return type

[**DeleteTestLead200Response**](DeleteTestLead200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lead_form

> <GetLeadForm200Response> get_lead_form(form_id, account_id, opts)

Get a lead form

Shows a lead form in full, including its questions and thank-you page.  Returns the full form, including the thank-you page, so a form can be diffed against what was created. Meta forms are scoped to the Page the accountId manages: a form on any other Page is a 404, never a read. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
form_id = 'form_id_example' # String | Numeric form id (Meta leadgen_form id or LinkedIn leadForm id).
account_id = 'account_id_example' # String | Connected Meta ads, facebook, instagram or linkedin ads account id (selects the platform).  - Meta ads connection: resolves its Page through the Facebook account linked to the same profile. - Instagram account: uses the Page its ads run under (its own linked Page, else the Facebook or business-login Meta ads account on the same profile).
opts = {
  fields: 'name,thank_you_page{title,body,button_type,website_url}' # String | Meta only. A Graph field selection passed through verbatim to GET /{form-id}, replacing the default projection, so fields Meta adds later are reachable without an API change.  - Field names, commas and {} expansion only. Anything else (Graph field modifiers such as .limit(), or characters that could open another query parameter) is a 400. - Unknown field names are rejected by Meta as a 400. - Ownership of the form is verified before the selection runs, so this cannot reach any Page but the one accountId manages. 
}

begin
  # Get a lead form
  result = api_instance.get_lead_form(form_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->get_lead_form: #{e}"
end
```

#### Using the get_lead_form_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLeadForm200Response>, Integer, Hash)> get_lead_form_with_http_info(form_id, account_id, opts)

```ruby
begin
  # Get a lead form
  data, status_code, headers = api_instance.get_lead_form_with_http_info(form_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLeadForm200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->get_lead_form_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** | Numeric form id (Meta leadgen_form id or LinkedIn leadForm id). |  |
| **account_id** | **String** | Connected Meta ads, facebook, instagram or linkedin ads account id (selects the platform).  - Meta ads connection: resolves its Page through the Facebook account linked to the same profile. - Instagram account: uses the Page its ads run under (its own linked Page, else the Facebook or business-login Meta ads account on the same profile). |  |
| **fields** | **String** | Meta only. A Graph field selection passed through verbatim to GET /{form-id}, replacing the default projection, so fields Meta adds later are reachable without an API change.  - Field names, commas and {} expansion only. Anything else (Graph field modifiers such as .limit(), or characters that could open another query parameter) is a 400. - Unknown field names are rejected by Meta as a 400. - Ownership of the form is verified before the selection runs, so this cannot reach any Page but the one accountId manages.  | [optional] |

### Return type

[**GetLeadForm200Response**](GetLeadForm200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_form_leads

> <ListFormLeads200Response> list_form_leads(form_id, account_id, opts)

List leads for a single form

Lists the leads submitted through one Meta lead form.  It serves the leads Zernio stored when the form has at least one stored lead matching `since`, newest stored first. Otherwise it reads them live from Meta. No parameter forces a live read, but a `since` later than every stored lead reads the first page live.  Stored reads are all or nothing per form: once a stored lead matches, a lead the webhook missed appears only after recovery stores it.  ### Accounts  Accepts either of these with leads_retrieval access to the form:  - a Facebook account - a metaads business-login account, which uses its system-user token without a posting parent  ### Freshness  Leads are stored within seconds through Meta's webhook. A recovery pass stores the leads the webhook missed and sends them as `lead.received` too.  Recovered leads usually arrive within 15 minutes for Pages with a lead in the last 7 days, up to 4 hours for Pages with forms but no recent lead, and up to 3 days for a Page's first lead form. Failing Meta reads add up to 24 hours.  Reading this endpoint does not trigger that pass. A live read that finds leads only moves the Page's next pass forward.  No mode guarantees that every lead submitted in the last few minutes is on a page. To close a recovery window, read again from the start after the Page's next pass and deduplicate on `id`.  ### What recovery skips  For a form with no stored lead, recovery reaches back 7 days. It reads only the first 200 forms Meta lists for a Page and skips archived or deleted forms. It stores at most 50 new leads per form per pass, leaving the rest for the next pass.  A form whose missed backlog is too deep to page through is skipped and logged, so recovery is not proof that every lead is stored.  ### meta.lastCheckedAt  For stored leads, it is when the recovery pass last ran for the Page. That includes a pass that failed, and one parked because the account or the Page token is missing, which reads no forms. A pass cut short by the recovery job's time budget is not recorded.  Passes can also skip forms, so the value can be recent while leads are missing, including on an empty page. It is `null` when the account has had no pass.  For live reads, it is when Meta was read. With content retained, that read is cached for 5 minutes. With zero content retention, every read is live and uncached.  ### Paging  Pass `pagination.cursor` back as `cursor` while `hasMore` is true. Pages are not a snapshot: leads stored after the first page, recovered ones included, sort first and appear only when you read from the start again. Deduplicate on `id`.  Stored pages walk Zernio's own ids, so a resumed cursor neither skips nor repeats leads that were stored when the walk started. `since` filters on Meta's created time.  Live pages follow Meta's cursor and each page is cached separately for up to 5 minutes, so one walk can mix moments.  A live cursor stays live even once leads are stored. A stored cursor does not survive a switch to zero content retention mid-walk: start again from the first page.  ### Zero content retention  Every page is read live from Meta, uncached, and nothing is stored. Completeness is what Meta returns. As on every live page, leads come without `leadId` and `status`, `createdTime` is Meta's and `lastCheckedAt` is the time of that read.  The 48-hour sweep in the leads docs is about `lead.received` webhook delivery, not this endpoint.  ### Limits  `limit` is 1 to 100 (default 25). The plan's per-minute API rate limit applies, and live reads also count against Meta's own limits.  The route needs the Ads add-on and has no per-request charge. Zernio does not expire stored leads on a schedule; live reads return what Meta still holds. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
form_id = 'form_id_example' # String | 
account_id = 'account_id_example' # String | 
opts = {
  limit: 56, # Integer | 
  cursor: 'cursor_example', # String | The pagination.cursor of the previous page.
  since: 56 # Integer | Unix seconds.
}

begin
  # List leads for a single form
  result = api_instance.list_form_leads(form_id, account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_form_leads: #{e}"
end
```

#### Using the list_form_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListFormLeads200Response>, Integer, Hash)> list_form_leads_with_http_info(form_id, account_id, opts)

```ruby
begin
  # List leads for a single form
  data, status_code, headers = api_instance.list_form_leads_with_http_info(form_id, account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListFormLeads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_form_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** |  |  |
| **account_id** | **String** |  |  |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** | The pagination.cursor of the previous page. | [optional] |
| **since** | **Integer** | Unix seconds. | [optional] |

### Return type

[**ListFormLeads200Response**](ListFormLeads200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_lead_forms

> <ListLeadForms200Response> list_lead_forms(account_id, opts)

List lead forms

Lists the lead forms on a Facebook Page or LinkedIn Company Page.  Meta: forms on the connected Facebook Page. Pass either the `metaads` ads connection (the Page is taken from the Facebook account linked to it) or the Facebook account itself. LinkedIn: forms owned by the ad account's Company Page. Pass `adAccountId` (LinkedIn forms are org-owned). Requires the Ads add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
account_id = 'account_id_example' # String | Connected Meta ads, Facebook, Instagram or LinkedIn ads account ID.  - Meta ads connection: resolves its Page through the Facebook account linked to the same profile. - Instagram account: uses the Page its ads run under (its own linked Page, else the Facebook or business-login Meta ads account on the same profile).
opts = {
  ad_account_id: 'ad_account_id_example', # String | LinkedIn only: the LinkedIn ad account id (used to resolve the owning organization). Required for LinkedIn.
  limit: 56, # Integer | 
  cursor: 'cursor_example' # String | 
}

begin
  # List lead forms
  result = api_instance.list_lead_forms(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_lead_forms: #{e}"
end
```

#### Using the list_lead_forms_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLeadForms200Response>, Integer, Hash)> list_lead_forms_with_http_info(account_id, opts)

```ruby
begin
  # List lead forms
  data, status_code, headers = api_instance.list_lead_forms_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLeadForms200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_lead_forms_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Connected Meta ads, Facebook, Instagram or LinkedIn ads account ID.  - Meta ads connection: resolves its Page through the Facebook account linked to the same profile. - Instagram account: uses the Page its ads run under (its own linked Page, else the Facebook or business-login Meta ads account on the same profile). |  |
| **ad_account_id** | **String** | LinkedIn only: the LinkedIn ad account id (used to resolve the owning organization). Required for LinkedIn. | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **cursor** | **String** |  | [optional] |

### Return type

[**ListLeadForms200Response**](ListLeadForms200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_leads

> <ListLeads200Response> list_leads(opts)

List submitted leads

Lists the leads submitted through your Meta, Google or LinkedIn lead forms, newest first.  Returns submitted Lead Gen leads for your team, newest-first, with keyset pagination on `cursor`. Requires the Ads add-on.  ### Meta (default)  Leads are served from the persisted cache, ingested in real time from the `leadgen` webhook.  ### Google  Google lead form submissions are stored like Meta leads and listed with them, usually within 15 minutes of the submission.  - Each lead says its network in `platform` (`meta`, `google`, `linkedin`), and `platform=google` lists only Google leads. - `leadgenId` is the submission id and `formId` the lead form asset id. - Answers are keyed like Meta's (`email`, `phone_number`, `full_name`), custom questions by their text. - Statuses work as for Meta leads.  ### LinkedIn  LinkedIn lead form responses are also stored and listed with the other networks (`platform: linkedin`), usually within 15 minutes, once they reach Zernio. So are TikTok Instant Form leads (`platform: tiktok`), as TikTok sends them.  When `accountId` is a LinkedIn ads account, `adAccountId` is required. Leads are fetched live from LinkedIn's `leadFormResponses`: LinkedIn has no webhook and enforces 90-day retention, so nothing is persisted.  Reading LinkedIn responses needs the `r_marketing_leadgen_automation` permission. Accounts connected before it was added must reconnect. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
opts = {
  form_id: 'form_id_example', # String | Filter to a single lead form.
  account_id: 'account_id_example', # String | Filter to a single connected account. LinkedIn ads accounts switch to the live fetch.
  account_ids: 'account_ids_example', # String | Meta only. Comma-separated connected account ids, to list several accounts at once. Without accountId or accountIds every account of the team is listed.
  status: 'new,contacted', # String | Meta only. Comma-separated lead statuses: new, contacted, unreachable, qualified, converted, disqualified.
  campaign_id: 'campaign_id_example', # String | Meta only. The platform campaign id the lead came from.
  platform: 'meta', # String | Only leads of this network.  - `web`: your own website and API forms. - `meta` and `google` list stored leads of that network (no LinkedIn live fetch). - `linkedin` requires accountId to be a LinkedIn ads connection (400 otherwise).  Without it, every stored network is listed, and an accountId that is a LinkedIn ads connection switches to the live fetch.
  q: 'q_example', # String | Meta only. Case-insensitive text search over the lead's answers and the form name.
  ad_account_id: 'ad_account_id_example', # String | LinkedIn only: the LinkedIn ad account id whose responses to read (owner-scoped finder).
  limit: 56, # Integer | 
  since: 1757404800, # Integer | Unix seconds; only leads created at/after this timestamp. Millisecond timestamps return 400 with instructions to divide by 1000.
  cursor: 'cursor_example' # String | Keyset cursor from a previous response's pagination.cursor (Meta: AdLead id; LinkedIn: numeric start offset).
}

begin
  # List submitted leads
  result = api_instance.list_leads(opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_leads: #{e}"
end
```

#### Using the list_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListLeads200Response>, Integer, Hash)> list_leads_with_http_info(opts)

```ruby
begin
  # List submitted leads
  data, status_code, headers = api_instance.list_leads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListLeads200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->list_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **form_id** | **String** | Filter to a single lead form. | [optional] |
| **account_id** | **String** | Filter to a single connected account. LinkedIn ads accounts switch to the live fetch. | [optional] |
| **account_ids** | **String** | Meta only. Comma-separated connected account ids, to list several accounts at once. Without accountId or accountIds every account of the team is listed. | [optional] |
| **status** | **String** | Meta only. Comma-separated lead statuses: new, contacted, unreachable, qualified, converted, disqualified. | [optional] |
| **campaign_id** | **String** | Meta only. The platform campaign id the lead came from. | [optional] |
| **platform** | **String** | Only leads of this network.  - &#x60;web&#x60;: your own website and API forms. - &#x60;meta&#x60; and &#x60;google&#x60; list stored leads of that network (no LinkedIn live fetch). - &#x60;linkedin&#x60; requires accountId to be a LinkedIn ads connection (400 otherwise).  Without it, every stored network is listed, and an accountId that is a LinkedIn ads connection switches to the live fetch. | [optional] |
| **q** | **String** | Meta only. Case-insensitive text search over the lead&#39;s answers and the form name. | [optional] |
| **ad_account_id** | **String** | LinkedIn only: the LinkedIn ad account id whose responses to read (owner-scoped finder). | [optional] |
| **limit** | **Integer** |  | [optional][default to 25] |
| **since** | **Integer** | Unix seconds; only leads created at/after this timestamp. Millisecond timestamps return 400 with instructions to divide by 1000. | [optional] |
| **cursor** | **String** | Keyset cursor from a previous response&#39;s pagination.cursor (Meta: AdLead id; LinkedIn: numeric start offset). | [optional] |

### Return type

[**ListLeads200Response**](ListLeads200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lead

> <UpdateLead200Response> update_lead(id, update_lead_request)

Update a lead's status

Sets the status of a lead (and optionally its value) so you can track it from lead to sale.  Moving a lead to `qualified` stores a `QualifiedLead` event, and to `converted` a `Purchase` with the lead's value. Moving away from a stage retracts its event.  Each stage event is also sent to the ad platforms, but only through the forwarding rules that list that event name in `eventNames`. A rule taking every event name never gets them, so a won lead is never counted as a second sale next to your store's or Stripe's own.  Meta leads are matched by their lead id. Website and API form leads (`platform: web`) are matched by the email, phone and ad click ids they arrived with, and are sent under the `form_leads` source.  `{id}` is the Zernio lead id (`id` on `GET /v1/ads/leads`, `leadId` on `GET /v1/ads/lead-forms/{formId}/leads`) or the Meta `leadgenId` together with `accountId` in the body. Requires the Ads add-on. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::LeadGenApi.new
id = 'id_example' # String | Zernio lead id, or the Meta leadgenId (then accountId is required).
update_lead_request = Zernio::UpdateLeadRequest.new({status: 'new'}) # UpdateLeadRequest | 

begin
  # Update a lead's status
  result = api_instance.update_lead(id, update_lead_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->update_lead: #{e}"
end
```

#### Using the update_lead_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateLead200Response>, Integer, Hash)> update_lead_with_http_info(id, update_lead_request)

```ruby
begin
  # Update a lead's status
  data, status_code, headers = api_instance.update_lead_with_http_info(id, update_lead_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateLead200Response>
rescue Zernio::ApiError => e
  puts "Error when calling LeadGenApi->update_lead_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Zernio lead id, or the Meta leadgenId (then accountId is required). |  |
| **update_lead_request** | [**UpdateLeadRequest**](UpdateLeadRequest.md) |  |  |

### Return type

[**UpdateLead200Response**](UpdateLead200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

