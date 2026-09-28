# Zernio::GrantBusinessPartnerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Meta business portfolio id of the partner (numeric string). |  |
| **permitted_tasks** | **Array&lt;String&gt;** | Tasks granted on the Page, Meta&#39;s permitted_tasks vocabulary. Defaults to ADVERTISE and ANALYZE. The bare names are what Business Settings shows; the PROFILE_PLUS_ names are the New Pages Experience tasks and the only way to grant FACEBOOK_ACCESS or REVENUE. Granting MANAGE also yields MANAGE_LEADS. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GrantBusinessPartnerRequest.new(
  business_id: null,
  permitted_tasks: null
)
```

