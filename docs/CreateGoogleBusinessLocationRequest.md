# Zernio::CreateGoogleBusinessLocationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Business name as shown on Google. |  |
| **language_code** | **String** | BCP-47 language of the listing (e.g. \&quot;es\&quot;). Immutable after creation. |  |
| **primary_category** | **String** | Category name from GET gmb-categories (e.g. \&quot;categories/gcid:cafe\&quot;). A bare \&quot;gcid:cafe\&quot; is also accepted. |  |
| **additional_categories** | **Array&lt;String&gt;** | Further category names, same format as primaryCategory. | [optional] |
| **storefront_address** | [**CreateGoogleBusinessLocationRequestStorefrontAddress**](CreateGoogleBusinessLocationRequestStorefrontAddress.md) |  | [optional] |
| **service_area** | [**CreateGoogleBusinessLocationRequestServiceArea**](CreateGoogleBusinessLocationRequestServiceArea.md) |  | [optional] |
| **phone** | **String** | Primary phone number. Required when storefrontAddress is absent and websiteUri is not set. | [optional] |
| **website_uri** | **String** | Website URL. Required when storefrontAddress is absent and phone is not set. | [optional] |
| **description** | **String** | Business description (Google profile.description). | [optional] |
| **regular_hours** | **Hash&lt;String, Object&gt;** | Google &#x60;regularHours&#x60; object (periods with openDay, openTime, closeDay, closeTime). | [optional] |
| **validate_only** | **Boolean** | Validate with Google without creating the listing or attaching anything. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateGoogleBusinessLocationRequest.new(
  title: null,
  language_code: null,
  primary_category: null,
  additional_categories: null,
  storefront_address: null,
  service_area: null,
  phone: null,
  website_uri: null,
  description: null,
  regular_hours: null,
  validate_only: null
)
```

