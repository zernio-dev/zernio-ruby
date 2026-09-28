# Zernio::UpdateTrackingTagRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | Scopes the lookup on platforms whose tag ids live inside an ad account. Ignored elsewhere. | [optional] |
| **name** | **String** |  | [optional] |
| **enable_automatic_matching** | **Boolean** | Meta Advanced Matching toggle (&#x60;enable_automatic_matching&#x60;). | [optional] |
| **automatic_matching_fields** | **Array&lt;String&gt;** | Which user fields Advanced Matching may collect. Meta&#39;s terse codes: em&#x3D;email, ph&#x3D;phone, fn&#x3D;first name, ln&#x3D;last name, ge&#x3D;gender, db&#x3D;date of birth, ct&#x3D;city, st&#x3D;state, zp&#x3D;zip.  | [optional] |
| **first_party_cookie_status** | **String** |  | [optional] |
| **data_use_setting** | **String** |  | [optional] |
| **auto_tagging** | **Boolean** | Google Ads: turn gclid auto-tagging on or off for the ad account. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateTrackingTagRequest.new(
  ad_account_id: null,
  name: null,
  enable_automatic_matching: null,
  automatic_matching_fields: null,
  first_party_cookie_status: null,
  data_use_setting: null,
  auto_tagging: null
)
```

