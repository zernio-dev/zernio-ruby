# Late::ListConversionDestinations200ResponseDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Destination identifier. Meta: pixel ID. Google: conversion action resource name.  | [optional] |
| **name** | **String** |  | [optional] |
| **type** | **String** | Present when the platform locks event type to the destination (Google conversion actions).  | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::ListConversionDestinations200ResponseDestinationsInner.new(
  id: null,
  name: null,
  type: null,
  status: null
)
```

