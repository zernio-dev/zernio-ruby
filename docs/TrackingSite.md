# Zernio::TrackingSite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **status** | **String** | &#x60;paused&#x60; while the workspace is over its free website events for the month with no payment method: the site records nothing until one is added. | [optional] |
| **install** | [**TrackingSiteInstall**](TrackingSiteInstall.md) |  | [optional] |
| **store_orders** | **Boolean** | True when the store&#39;s orders reach Zernio from the store itself, so website purchases are forwarded but not counted twice. | [optional] |
| **site_key** | **String** | Public key that names the site in the snippet, such as &#x60;zs_...&#x60;. | [optional] |
| **domains** | **Array&lt;String&gt;** |  | [optional] |
| **custom_hostname** | [**TrackingSiteCustomHostname**](TrackingSiteCustomHostname.md) |  | [optional] |
| **proxy** | [**TrackingSiteProxy**](TrackingSiteProxy.md) |  | [optional] |
| **google_tag_ids** | **Array&lt;String&gt;** | The site&#39;s own Google tags (Tag Manager, GA4, Google Ads) its own-domain path relays to Google, so they load and measure from the site&#39;s domain. | [optional] |
| **consent_mode** | [**TrackingSiteConsentMode**](TrackingSiteConsentMode.md) |  | [optional] |
| **pixels** | [**Array&lt;TrackingSitePixel&gt;**](TrackingSitePixel.md) | The ad pixels the tag loads itself. In the EEA, UK and Switzerland none loads before the visitor accepts on the site&#39;s consent banner; elsewhere &#x60;consentMode&#x60; decides. | [optional] |
| **consent_mode_bridge** | **Boolean** | The tag writes the answer on the site&#39;s consent banner into Google Consent Mode v2: denied by default in the EEA, UK and Switzerland, then updated. On for sites created from November 2026. | [optional] |
| **checks** | [**Array&lt;TrackingSiteChecksInner&gt;**](TrackingSiteChecksInner.md) | One per setup step: &#x60;script&#x60; for the install, then one per ad account the site sends to, keyed by its platform and ids. | [optional] |
| **setup** | [**TrackingSiteSetup**](TrackingSiteSetup.md) |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingSite.new(
  id: null,
  profile_id: null,
  name: null,
  status: null,
  install: null,
  store_orders: null,
  site_key: null,
  domains: null,
  custom_hostname: null,
  proxy: null,
  google_tag_ids: null,
  consent_mode: null,
  pixels: null,
  consent_mode_bridge: null,
  checks: null,
  setup: null,
  created_at: null,
  updated_at: null
)
```

