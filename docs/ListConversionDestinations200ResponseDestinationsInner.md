# Zernio::ListConversionDestinations200ResponseDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Destination identifier. Meta: pixel ID. Google: conversion action resource name. LinkedIn: numeric conversion rule ID. OpenAI Ads: pixel wire id.  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** | Present when the platform locks event type to the destination (Google conversion actions, LinkedIn conversion rules).  | [optional] |
| **status** | **String** |  | [optional] |
| **ad_account_id** | **String** | Set by adapters whose destinations are scoped to a specific ad account (LinkedIn). Pass back on subsequent CRUD calls.  | [optional] |
| **conversion_events** | [**Array&lt;ListConversionDestinations200ResponseDestinationsInnerConversionEventsInner&gt;**](ListConversionDestinations200ResponseDestinationsInnerConversionEventsInner.md) | OpenAI Ads only: the conversion event settings wired to this pixel. A &#x60;goal: conversions&#x60; create on POST /v1/ads/create optimizes for the first &#x60;optimizable&#x60; one; when none is, it returns 400.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListConversionDestinations200ResponseDestinationsInner.new(
  id: null,
  name: null,
  type: null,
  status: null,
  ad_account_id: null,
  conversion_events: null
)
```

