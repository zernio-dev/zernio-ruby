# Zernio::ListConversionDestinations200ResponseDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Destination identifier. Meta: pixel ID. Google: conversion action resource name. LinkedIn: numeric conversion rule ID. OpenAI Ads: pixel wire id.  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** | Present when the platform locks event type to the destination (Google conversion actions, LinkedIn conversion rules).  | [optional] |
| **status** | **String** |  | [optional] |
| **ad_account_id** | **String** | Set by adapters whose destinations are scoped to a specific ad account (LinkedIn). Pass back on subsequent CRUD calls.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListConversionDestinations200ResponseDestinationsInner.new(
  id: null,
  name: null,
  type: null,
  status: null,
  ad_account_id: null
)
```

