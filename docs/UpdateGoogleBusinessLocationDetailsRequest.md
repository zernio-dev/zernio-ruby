# Zernio::UpdateGoogleBusinessLocationDetailsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **update_mask** | **String** | Required. Comma-separated fields to update (e.g. &#39;regularHours&#39;, &#39;specialHours&#39;, &#39;profile.description&#39;, &#39;categories&#39;, &#39;serviceItems&#39;). Any valid Google Business Information API updateMask field is supported. |  |
| **regular_hours** | [**UpdateGoogleBusinessLocationDetailsRequestRegularHours**](UpdateGoogleBusinessLocationDetailsRequestRegularHours.md) |  | [optional] |
| **special_hours** | [**GetGoogleBusinessLocationDetails200ResponseSpecialHours**](GetGoogleBusinessLocationDetails200ResponseSpecialHours.md) |  | [optional] |
| **profile** | [**UpdateGoogleBusinessLocationDetailsRequestProfile**](UpdateGoogleBusinessLocationDetailsRequestProfile.md) |  | [optional] |
| **website_uri** | **String** |  | [optional] |
| **phone_numbers** | [**GetGoogleBusinessLocationDetails200ResponsePhoneNumbers**](GetGoogleBusinessLocationDetails200ResponsePhoneNumbers.md) |  | [optional] |
| **categories** | [**UpdateGoogleBusinessLocationDetailsRequestCategories**](UpdateGoogleBusinessLocationDetailsRequestCategories.md) |  | [optional] |
| **service_items** | [**Array&lt;UpdateGoogleBusinessLocationDetailsRequestServiceItemsInner&gt;**](UpdateGoogleBusinessLocationDetailsRequestServiceItemsInner.md) | Services offered by the business. Use updateMask&#x3D;&#39;serviceItems&#39; to update. | [optional] |
| **title** | **String** | Business name. Use updateMask&#x3D;&#39;title&#39;. | [optional] |
| **store_code** | **String** | External store identifier, unique within the account. Use updateMask&#x3D;&#39;storeCode&#39;. | [optional] |
| **labels** | **Array&lt;String&gt;** | Free-form, internal-only labels for grouping (1-255 characters each). Use updateMask&#x3D;&#39;labels&#39;. | [optional] |
| **storefront_address** | [**UpdateGoogleBusinessLocationDetailsRequestStorefrontAddress**](UpdateGoogleBusinessLocationDetailsRequestStorefrontAddress.md) |  | [optional] |
| **service_area** | [**UpdateGoogleBusinessLocationDetailsRequestServiceArea**](UpdateGoogleBusinessLocationDetailsRequestServiceArea.md) |  | [optional] |
| **open_info** | [**UpdateGoogleBusinessLocationDetailsRequestOpenInfo**](UpdateGoogleBusinessLocationDetailsRequestOpenInfo.md) |  | [optional] |
| **more_hours** | [**Array&lt;UpdateGoogleBusinessLocationDetailsRequestMoreHoursInner&gt;**](UpdateGoogleBusinessLocationDetailsRequestMoreHoursInner.md) | Additional hours for specific services (delivery, drive-through, etc.). Use updateMask&#x3D;&#39;moreHours&#39;. | [optional] |
| **latlng** | [**UpdateGoogleBusinessLocationDetailsRequestLatlng**](UpdateGoogleBusinessLocationDetailsRequestLatlng.md) |  | [optional] |
| **ad_words_location_extensions** | [**UpdateGoogleBusinessLocationDetailsRequestAdWordsLocationExtensions**](UpdateGoogleBusinessLocationDetailsRequestAdWordsLocationExtensions.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateGoogleBusinessLocationDetailsRequest.new(
  update_mask: null,
  regular_hours: null,
  special_hours: null,
  profile: null,
  website_uri: null,
  phone_numbers: null,
  categories: null,
  service_items: null,
  title: null,
  store_code: null,
  labels: null,
  storefront_address: null,
  service_area: null,
  open_info: null,
  more_hours: null,
  latlng: null,
  ad_words_location_extensions: null
)
```

