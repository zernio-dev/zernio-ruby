# Zernio::UploadedOrDerivedAudience

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **ad_account_id** | **String** | Platform ad account ID. Must start with act_ for Meta; bare platform id for others (Google customer id, X/TikTok/LinkedIn/Pinterest account id). |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **match_rules** | [**Array&lt;UploadedOrDerivedAudienceMatchRulesInner&gt;**](UploadedOrDerivedAudienceMatchRulesInner.md) | Required for website_retargeting audiences (LinkedIn only). Each rule is a URL pattern; a member who visits any matching page enters the segment. Needs the LinkedIn Insight Tag installed on the customer&#39;s site — the segment only starts filling once the tag reports visits.  The response&#39;s &#x60;platformAudienceId&#x60; is the LinkedIn adSegment id, valid for downstream use. These segments appear in GET /v1/ads/audiences with  &#x60;type: website_retargeting&#x60; once LinkedIn has finished building them.  | [optional] |
| **source_type** | **String** | Required for engagement audiences (LinkedIn only): what members engaged with — a video/leadgen/single-image ad campaign, a Company Page or an Event page.  | [optional] |
| **trigger** | **String** | Required for engagement audiences. The action, validated by LinkedIn against &#x60;sourceType&#x60;. Common values: VIDEO_ADS FIRST_QUARTILE / MIDPOINT / THIRD_QUARTILE / FULL_COMPLETE; LEAD_GEN_FORMS VIEW_FORM / LEAD_FORM_SUBMIT; ORGANIZATION_PAGES VIEW / CTA_CLICK; EVENT_PAGES RSVPED / VIDEO_VIEWED / ENGAGEMENT / CLICK.  | [optional] |
| **lookback_days** | **Integer** | Required for engagement audiences. Rolling window. | [optional] |
| **engagement_sources** | **Array&lt;String&gt;** | Required for engagement audiences. Campaign URNs for the ad source types, organization URNs for pages and events. LinkedIn creates one rule per source, all sharing the same trigger and lookbackDays.  | [optional] |
| **companies** | [**Array&lt;UploadedOrDerivedAudienceCompaniesInner&gt;**](UploadedOrDerivedAudienceCompaniesInner.md) | Required for company_list audiences (LinkedIn only): plain-text company rows for account targeting. Each row needs at least one identifier. LinkedIn recommends 1,000+ companies for a usable match rate and takes up to 48h to process the list.  | [optional] |
| **pixel_id** | **String** | Required for website audiences | [optional] |
| **retention_days** | **Integer** | Required for website audiences | [optional] |
| **source_audience_id** | **String** | Required for lookalike audiences | [optional] |
| **country** | **String** | 2-letter code, required for lookalike audiences | [optional] |
| **ratio** | **Float** | Required for lookalike audiences | [optional] |
| **rule** | **Object** | Pixel event rule for website audiences (optional) | [optional] |
| **customer_file_source** | **String** | Data source declaration for GDPR compliance (customer_list only) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UploadedOrDerivedAudience.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  description: null,
  type: null,
  match_rules: null,
  source_type: null,
  trigger: null,
  lookback_days: null,
  engagement_sources: null,
  companies: null,
  pixel_id: null,
  retention_days: null,
  source_audience_id: null,
  country: null,
  ratio: null,
  rule: null,
  customer_file_source: null
)
```

