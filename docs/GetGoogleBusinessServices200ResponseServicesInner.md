# Late::GetGoogleBusinessServices200ResponseServicesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **structured_service_item** | [**GetGoogleBusinessLocationDetails200ResponseServiceItemsInnerStructuredServiceItem**](GetGoogleBusinessLocationDetails200ResponseServiceItemsInnerStructuredServiceItem.md) |  | [optional] |
| **free_form_service_item** | [**GetGoogleBusinessServices200ResponseServicesInnerFreeFormServiceItem**](GetGoogleBusinessServices200ResponseServicesInnerFreeFormServiceItem.md) |  | [optional] |
| **price** | [**GetGoogleBusinessServices200ResponseServicesInnerPrice**](GetGoogleBusinessServices200ResponseServicesInnerPrice.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::GetGoogleBusinessServices200ResponseServicesInner.new(
  structured_service_item: null,
  free_form_service_item: null,
  price: null
)
```

