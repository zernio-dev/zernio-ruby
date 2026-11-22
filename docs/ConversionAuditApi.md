# Zernio::ConversionAuditApi

All URIs are relative to *https://zernio.com/api*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**audit_conversion_tracking**](ConversionAuditApi.md#audit_conversion_tracking) | **GET** /v1/conversion-audit | Audit a site&#39;s ad conversion tracking |
| [**create_conversion_audit_monitor**](ConversionAuditApi.md#create_conversion_audit_monitor) | **POST** /v1/conversion-audit/monitors | Watch a domain |
| [**delete_conversion_audit_monitor**](ConversionAuditApi.md#delete_conversion_audit_monitor) | **DELETE** /v1/conversion-audit/monitors/{monitorId} | Stop watching a domain |
| [**get_latest_conversion_audit**](ConversionAuditApi.md#get_latest_conversion_audit) | **GET** /v1/conversion-audit/latest | Get a host&#39;s latest stored conversion audit |
| [**get_meta_conversion_audit**](ConversionAuditApi.md#get_meta_conversion_audit) | **GET** /v1/conversion-audit/meta-audit | Audit a connected Meta pixel from inside Events Manager |
| [**list_conversion_audit_monitors**](ConversionAuditApi.md#list_conversion_audit_monitors) | **GET** /v1/conversion-audit/monitors | List watched domains |


## audit_conversion_tracking

> <ConversionAuditAnswer> audit_conversion_tracking(url)

Audit a site's ad conversion tracking

Scan any public URL for ad-platform conversion tracking, score how much conversion signal it leaks before the ad platforms see it, and get a fix prompt to hand to a coding agent.  The API key is optional. Without one, a caller's IP address gets 20 scans a minute. The Zernio MCP server always needs a key, because its sign-in covers the whole connection.  The scan fetches the page (SSRF-guarded) and its Google Tag Manager containers, and can render it in a headless browser. It finds every ad platform's browser pixel, checks for visible server-side (Conversions API) tracking, and estimates the signal lost to ad blockers, browser limits and short cookie windows.  Visitors who decline consent are never counted as lost.  The scan reads the page only and changes nothing on the site. Like the free page, it publishes the result as the host's public report.  Reading the result:  - `report.visibility: \"limited\"` means some pixels load through a tag manager or a store platform, so only part of the setup is visible from outside. It does not mean the tracking failed or is missing. - `status: \"warn\"` (browser-only) is the leak: the platform is tracked in the browser but not server-side. - `status: \"good\"` (server-side) means conversions reach the platform server-side, which recovers most of that signal. - `fixPrompt` is the same fix prompt the Conversion Leak Report page shows: this scan's findings, then the steps to send conversions server-side with `POST /v1/events` and to verify them. - To fix the leak with Zernio, follow https://docs.zernio.com/products/server-side-tracking/fix-with-agent: a tracking site, its tag, a forwarding rule per network to the pixel the page runs, then a rescan. A network turns `good` once the site's events reached that pixel in the last 7 days. - `publicReport` links the host's public page on is-bleeding.com. A homepage scan that could read the site's pixels becomes that page's snapshot, the same as a scan on is-bleeding.com. Any other scan links the stored snapshot, taken at `scannedAt`, or returns null when the host has none.  Without a key, each IP address also shares one hourly ceiling with every other keyless caller. With a key, a user gets 60 scans a minute. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionAuditApi.new
url = 'example.com' # String | The website address to audit. A bare domain is accepted and normalized to https.

begin
  # Audit a site's ad conversion tracking
  result = api_instance.audit_conversion_tracking(url)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->audit_conversion_tracking: #{e}"
end
```

#### Using the audit_conversion_tracking_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversionAuditAnswer>, Integer, Hash)> audit_conversion_tracking_with_http_info(url)

```ruby
begin
  # Audit a site's ad conversion tracking
  data, status_code, headers = api_instance.audit_conversion_tracking_with_http_info(url)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversionAuditAnswer>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->audit_conversion_tracking_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The website address to audit. A bare domain is accepted and normalized to https. |  |

### Return type

[**ConversionAuditAnswer**](ConversionAuditAnswer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_conversion_audit_monitor

> <ConversionAuditMonitorAnswer> create_conversion_audit_monitor(create_conversion_audit_monitor_request)

Watch a domain

Watch a domain's conversion tracking. Zernio rescans its homepage once a day and emails the account's address when tracking breaks, with what changed and the fix prompt for a coding agent. A break is:  - a score drop of 5 points or more - an ad network that stops tracking or stops firing - a pixel that starts firing before the cookie banner is answered - a server-side path that disappears  A break is confirmed by a second scan before any email goes out. The first check compares against the host's stored report when it has one, so run `auditConversionTracking` first to start from today's state.  Watching a domain you already watch returns it with `created: false` and status `200`. An account can watch up to 25 domains. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionAuditApi.new
create_conversion_audit_monitor_request = Zernio::CreateConversionAuditMonitorRequest.new({url: 'example.com'}) # CreateConversionAuditMonitorRequest | 

begin
  # Watch a domain
  result = api_instance.create_conversion_audit_monitor(create_conversion_audit_monitor_request)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->create_conversion_audit_monitor: #{e}"
end
```

#### Using the create_conversion_audit_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConversionAuditMonitorAnswer>, Integer, Hash)> create_conversion_audit_monitor_with_http_info(create_conversion_audit_monitor_request)

```ruby
begin
  # Watch a domain
  data, status_code, headers = api_instance.create_conversion_audit_monitor_with_http_info(create_conversion_audit_monitor_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConversionAuditMonitorAnswer>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->create_conversion_audit_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_conversion_audit_monitor_request** | [**CreateConversionAuditMonitorRequest**](CreateConversionAuditMonitorRequest.md) |  |  |

### Return type

[**ConversionAuditMonitorAnswer**](ConversionAuditMonitorAnswer.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_conversion_audit_monitor

> <DeleteAutomationTemplate200Response> delete_conversion_audit_monitor(monitor_id)

Stop watching a domain

Stops the daily checks and alert emails for this domain. The host's public report stays.

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionAuditApi.new
monitor_id = 'monitor_id_example' # String | The monitor's `id`, from `listConversionAuditMonitors` or `createConversionAuditMonitor`.

begin
  # Stop watching a domain
  result = api_instance.delete_conversion_audit_monitor(monitor_id)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->delete_conversion_audit_monitor: #{e}"
end
```

#### Using the delete_conversion_audit_monitor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteAutomationTemplate200Response>, Integer, Hash)> delete_conversion_audit_monitor_with_http_info(monitor_id)

```ruby
begin
  # Stop watching a domain
  data, status_code, headers = api_instance.delete_conversion_audit_monitor_with_http_info(monitor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteAutomationTemplate200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->delete_conversion_audit_monitor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitor_id** | **String** | The monitor&#39;s &#x60;id&#x60;, from &#x60;listConversionAuditMonitors&#x60; or &#x60;createConversionAuditMonitor&#x60;. |  |

### Return type

[**DeleteAutomationTemplate200Response**](DeleteAutomationTemplate200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_latest_conversion_audit

> <GetLatestConversionAudit200Response> get_latest_conversion_audit(host)

Get a host's latest stored conversion audit

Read the latest stored Conversion Leak Report for a host without running a new scan. Each homepage scan on is-bleeding.com that could read the site's pixels replaces that host's stored report. Scans made with `auditConversionTracking` are stored the same way.  The API key is optional. Without one, a caller's IP address gets 60 requests a minute. The Zernio MCP server always needs a key.  Returns `404` when the host has no stored report. Run `auditConversionTracking` to scan it now. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionAuditApi.new
host = 'example.com' # String | The host to look up. A full URL is reduced to its host; `www.` and letter case are ignored.

begin
  # Get a host's latest stored conversion audit
  result = api_instance.get_latest_conversion_audit(host)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->get_latest_conversion_audit: #{e}"
end
```

#### Using the get_latest_conversion_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLatestConversionAudit200Response>, Integer, Hash)> get_latest_conversion_audit_with_http_info(host)

```ruby
begin
  # Get a host's latest stored conversion audit
  data, status_code, headers = api_instance.get_latest_conversion_audit_with_http_info(host)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLatestConversionAudit200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->get_latest_conversion_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | The host to look up. A full URL is reduced to its host; &#x60;www.&#x60; and letter case are ignored. |  |

### Return type

[**GetLatestConversionAudit200Response**](GetLatestConversionAudit200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meta_conversion_audit

> <MetaDatasetAudit> get_meta_conversion_audit(account_id, opts)

Audit a connected Meta pixel from inside Events Manager

The connected follow-up to the Conversion Leak Report. A page scan only sees the browser; this reads what Meta itself recorded for the ad account's pixel (dataset) with the connection's own token, over the last 7 days.  ### What it reads  - each event's volume per day, its last 24 hours and the last hour Meta counted it in - the share of each event that arrived through the Conversions API (server) rather than the browser pixel - Event Match Quality per event, with the coverage of every customer-information key Meta matched on (email, phone, external id, IP address, user agent, `fbp`, `fbc`, name and address fields) - the event_id, external_id and fbp deduplication coverage of browser and server copies, where an event has both - Meta's diagnostics for the dataset and its failed dataset checks - whether automatic advanced matching and first-party cookies are on  Each `findings` entry is a problem one of those numbers shows, with its fix and who makes it (`fix.by`):  - `zernio`: turning on Zernio server-side events or the Zernio site tag fixes it - `you`: a change in your site or API call - `meta`: a setting only Events Manager has  Meta does not return a business's verified domains or an Aggregated Event Measurement setup to this API, so both are listed under `unavailable`, with any read Meta refused.  `accountId` is a Meta ads connection (or the Facebook account it belongs to). Without `adAccountId`, the first selected ad account that has a pixel is audited; without `pixelId`, its most recently active pixel. The result is cached for 10 minutes per pixel. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionAuditApi.new
account_id = '6a10b66d520992756da032cb' # String | The Meta ads connection to read with.
opts = {
  ad_account_id: 'act_757082720485182', # String | The ad account whose pixel is audited. Must be selected on the connection.
  pixel_id: '1729525464415281' # String | One of the ad account's pixels (`datasets[].id`).
}

begin
  # Audit a connected Meta pixel from inside Events Manager
  result = api_instance.get_meta_conversion_audit(account_id, opts)
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->get_meta_conversion_audit: #{e}"
end
```

#### Using the get_meta_conversion_audit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaDatasetAudit>, Integer, Hash)> get_meta_conversion_audit_with_http_info(account_id, opts)

```ruby
begin
  # Audit a connected Meta pixel from inside Events Manager
  data, status_code, headers = api_instance.get_meta_conversion_audit_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaDatasetAudit>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->get_meta_conversion_audit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Meta ads connection to read with. |  |
| **ad_account_id** | **String** | The ad account whose pixel is audited. Must be selected on the connection. | [optional] |
| **pixel_id** | **String** | One of the ad account&#39;s pixels (&#x60;datasets[].id&#x60;). | [optional] |

### Return type

[**MetaDatasetAudit**](MetaDatasetAudit.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conversion_audit_monitors

> <ListConversionAuditMonitors200Response> list_conversion_audit_monitors

List watched domains

The domains you watch with the Conversion Leak Report, each with its last score and the score of each daily check.  Zernio rescans every watched domain once a day. When tracking breaks, it emails you what changed and the fix prompt. `createConversionAuditMonitor` lists what counts as a break. 

### Examples

```ruby
require 'time'
require 'zernio-sdk'
# setup authorization
Zernio.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Zernio::ConversionAuditApi.new

begin
  # List watched domains
  result = api_instance.list_conversion_audit_monitors
  p result
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->list_conversion_audit_monitors: #{e}"
end
```

#### Using the list_conversion_audit_monitors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConversionAuditMonitors200Response>, Integer, Hash)> list_conversion_audit_monitors_with_http_info

```ruby
begin
  # List watched domains
  data, status_code, headers = api_instance.list_conversion_audit_monitors_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConversionAuditMonitors200Response>
rescue Zernio::ApiError => e
  puts "Error when calling ConversionAuditApi->list_conversion_audit_monitors_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListConversionAuditMonitors200Response**](ListConversionAuditMonitors200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

