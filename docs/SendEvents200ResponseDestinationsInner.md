# Zernio::SendEvents200ResponseDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **destination_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **events_sent** | **Integer** | Events the platform accepted. | [optional] |
| **events_failed** | **Integer** |  | [optional] |
| **events_dropped** | **Integer** | Events this destination did not get because the visitor did not consent (see Consent above). | [optional] |
| **drops** | [**Array&lt;ConsentDrop&gt;**](ConsentDrop.md) |  | [optional] |
| **events_skipped** | **Integer** | Events not sent again because this destination already accepted them (same eventId and eventName within 48 hours), another request is sending them right now, or an earlier event in this request has the same eventId and eventName. | [optional] |
| **skipped** | [**Array&lt;SendEvents200ResponseDestinationsInnerSkippedInner&gt;**](SendEvents200ResponseDestinationsInnerSkippedInner.md) |  | [optional] |
| **failures** | [**Array&lt;SendEvents200ResponseDestinationsInnerFailuresInner&gt;**](SendEvents200ResponseDestinationsInnerFailuresInner.md) |  | [optional] |
| **error** | **String** | Set when the destination could not be reached at all (account disconnected, unsupported platform, platform error). | [optional] |
| **retrying** | **Boolean** | The destination failed for now (platform error, timeout, rate limit) and the send is queued for retries; its outcome shows on GET /v1/events/{eventId}. | [optional] |
| **trace_id** | **String** | The platform trace ID of the send (Meta &#x60;fbtrace_id&#x60;, Google &#x60;requestId&#x60;, TikTok &#x60;request_id&#x60;), to quote to the platform support. Absent when the platform returns none. | [optional] |
| **platform_messages** | **Array&lt;String&gt;** | Meta&#39;s &#x60;messages&#x60; (warnings about the events it accepted), each distinct one once, at most 20. Absent when the platform sent none. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEvents200ResponseDestinationsInner.new(
  account_id: null,
  destination_id: null,
  platform: null,
  events_sent: null,
  events_failed: null,
  events_dropped: null,
  drops: null,
  events_skipped: null,
  skipped: null,
  failures: null,
  error: null,
  retrying: null,
  trace_id: null,
  platform_messages: null
)
```

