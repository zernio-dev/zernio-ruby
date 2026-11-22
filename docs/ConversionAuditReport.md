# Zernio::ConversionAuditReport

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The normalized URL that was scanned. |  |
| **domain** | **String** | The scanned host without &#x60;www.&#x60;. |  |
| **score** | **Float** | Conversion tracking score, 0-100. Higher means a more complete setup and less signal at risk. |  |
| **grade** | **String** | Letter grade for the score. |  |
| **score_range** | [**ConversionAuditReportScoreRange**](ConversionAuditReportScoreRange.md) |  | [optional] |
| **estimated_signal_loss_pct** | **Float** | Average share of conversions at risk on the networks with no visible server-side path, 0-100. |  |
| **platforms** | [**Array&lt;ConversionAuditReportPlatformsInner&gt;**](ConversionAuditReportPlatformsInner.md) | One finding per ad platform the scan looked for. |  |
| **browser_only** | **Boolean** | True when every active platform is tracked browser-only. |  |
| **consent_manager** | **String** | Consent manager found on the page, or null. |  |
| **active_platform_count** | **Integer** | How many ad platforms the scan found any tracking for. |  |
| **visibility** | **String** | &#x60;full&#x60; &#x3D; pixels were visible, &#x60;limited&#x60; &#x3D; tags load dynamically so not all are visible, &#x60;none&#x60; &#x3D; nothing found. |  |
| **site_signals** | **Array&lt;String&gt;** | Site tech recognized (Shopify, WooCommerce, ...). |  |
| **scan_mode** | **String** | &#x60;rendered&#x60; when a headless browser ran the page and its requests were checked, &#x60;static&#x60; for the page source only. | [optional] |
| **limitations** | **Array&lt;String&gt;** | What this scan could not see. | [optional] |
| **checks** | [**Array&lt;ConversionAuditReportChecksInner&gt;**](ConversionAuditReportChecksInner.md) | The scored checks behind &#x60;score&#x60;. | [optional] |
| **server_side** | [**ConversionAuditReportServerSide**](ConversionAuditReportServerSide.md) |  | [optional] |
| **consent** | [**ConversionAuditReportConsent**](ConversionAuditReportConsent.md) |  | [optional] |
| **consent_scan** | [**ConversionAuditReportConsentScan**](ConversionAuditReportConsentScan.md) |  | [optional] |
| **tag_managers** | **Array&lt;String&gt;** |  | [optional] |
| **other_networks** | [**Array&lt;ConversionAuditReportOtherNetworksInner&gt;**](ConversionAuditReportOtherNetworksInner.md) | Ad networks found that the score does not cover. &#x60;relaySupported&#x60; is true when Zernio can send them conversions. | [optional] |
| **favicon_url** | **String** | The site&#39;s icon. Absent when the site was unreachable. | [optional] |
| **summary** | **String** | One-paragraph summary of the audit. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditReport.new(
  url: null,
  domain: null,
  score: null,
  grade: null,
  score_range: null,
  estimated_signal_loss_pct: null,
  platforms: null,
  browser_only: null,
  consent_manager: null,
  active_platform_count: null,
  visibility: null,
  site_signals: null,
  scan_mode: null,
  limitations: null,
  checks: null,
  server_side: null,
  consent: null,
  consent_scan: null,
  tag_managers: null,
  other_networks: null,
  favicon_url: null,
  summary: null
)
```

