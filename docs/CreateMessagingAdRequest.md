# Zernio::CreateMessagingAdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Facebook or Instagram SocialAccount ID. |  |
| **ad_account_id** | **String** | Meta ad account ID, e.g. &#x60;act_123456789&#x60;. |  |
| **name** | **String** | Ad display name. Used to derive campaign / ad set names. On the multi-creative shape, each ad&#39;s Meta name gets a \&quot; #N\&quot; suffix (1-indexed) so Ads Manager shows them as a numbered batch.  |  |
| **headline** | **String** | Single-creative shape only. Mutually exclusive with &#x60;creatives[]&#x60;.  | [optional] |
| **body** | **String** | Primary text shown above the image / video. Single-creative shape only. Mutually exclusive with &#x60;creatives[]&#x60;.  | [optional] |
| **image_url** | **String** | Image asset for single-creative shape. Mutually exclusive with &#x60;video&#x60; and with &#x60;creatives[]&#x60;. Required on the single-creative shape if &#x60;video&#x60; is not supplied.  | [optional] |
| **video** | [**CtwaAdRequestBodyVideo**](CtwaAdRequestBodyVideo.md) |  | [optional] |
| **creatives** | [**Array&lt;CtwaAdRequestBodyCreativesInner&gt;**](CtwaAdRequestBodyCreativesInner.md) | Multi-creative shape: N CTWA ads under one campaign + one ad set, sharing budget and targeting. Mutually exclusive with the top-level single-creative fields (&#x60;headline&#x60; / &#x60;body&#x60; / &#x60;imageUrl&#x60; / &#x60;video&#x60;). Each entry must supply its own headline, body, and exactly one of &#x60;imageUrl&#x60; / &#x60;video&#x60;.  | [optional] |
| **budget_amount** | **Float** | Budget amount in the ad account&#39;s currency major units (e.g. dollars for USD, not cents). Must be &gt; 0.  |  |
| **budget_type** | **String** |  |  |
| **currency** | **String** | ISO 4217 currency code matching the ad account&#39;s currency (e.g. &#x60;USD&#x60;). Optional; Meta infers from the ad account when omitted.  | [optional] |
| **end_date** | **Time** | ISO 8601 datetime. Required when &#x60;budgetType&#x60; is &#x60;lifetime&#x60;.  | [optional] |
| **countries** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 country codes. Defaults to &#x60;[\&quot;US\&quot;]&#x60; only when no other geo (&#x60;cities&#x60;, &#x60;regions&#x60;, &#x60;zips&#x60;, &#x60;metros&#x60;, &#x60;customLocations&#x60;) is supplied.  | [optional] |
| **cities** | [**Array&lt;CtwaAdRequestBodyCitiesInner&gt;**](CtwaAdRequestBodyCitiesInner.md) | City-level geo targeting for local CTWA campaigns. Each entry maps to Meta&#39;s TargetingGeoLocationCity. &#x60;key&#x60; is Meta&#39;s city ID. &#x60;radius&#x60; and &#x60;distance_unit&#x60; are coupled: set both or neither. Meta enforces a minimum city radius (~17 km / 10 mi); smaller values resolve to a 0-size audience and the ad fails at launch. For a tighter catchment use customLocations (lat/lng).  | [optional] |
| **regions** | [**Array&lt;CtwaAdRequestBodyRegionsInner&gt;**](CtwaAdRequestBodyRegionsInner.md) | Region / state-level geo targeting. &#x60;key&#x60; is Meta&#39;s region ID (lookupable via GET /v1/ads/targeting/search?type&#x3D;region).  | [optional] |
| **zips** | [**Array&lt;CtwaAdRequestBodyZipsInner&gt;**](CtwaAdRequestBodyZipsInner.md) | ZIP / postal-code geo targeting. &#x60;key&#x60; is the platform&#39;s postal id resolved via /v1/ads/targeting/search.  | [optional] |
| **metros** | [**Array&lt;CtwaAdRequestBodyZipsInner&gt;**](CtwaAdRequestBodyZipsInner.md) | DMA / metro-area geo targeting. &#x60;key&#x60; is Meta&#39;s metro id (e.g. &#x60;DMA:807&#x60;).  | [optional] |
| **custom_locations** | [**Array&lt;CreateStandaloneAdRequestCustomLocationsInner&gt;**](CreateStandaloneAdRequestCustomLocationsInner.md) | Point-radius geo (Meta &#x60;geo_locations.custom_locations&#x60;). Use for targeting a radius around a specific lat/long when no Meta city/region key fits. &#x60;distanceUnit&#x60; is required.  | [optional] |
| **age_min** | **Integer** |  | [optional] |
| **age_max** | **Integer** |  | [optional] |
| **interests** | [**Array&lt;CreateStandaloneAdRequestBehaviorsInner&gt;**](CreateStandaloneAdRequestBehaviorsInner.md) |  | [optional] |
| **audience_id** | **String** | Custom audience ID to target. | [optional] |
| **placements** | [**CtwaAdRequestBodyPlacements**](CtwaAdRequestBodyPlacements.md) |  | [optional] |
| **advantage_audience** | **Integer** | Meta&#39;s Advantage+ audience expansion. &#x60;0&#x60; (default) keeps targeting strict; &#x60;1&#x60; lets Meta expand beyond the supplied targeting when its delivery system finds better matches. Always sent on CREATE (Meta requires it).  | [optional] |
| **objective** | **String** | Defaults to &#x60;OUTCOME_ENGAGEMENT&#x60;. &#x60;OUTCOME_SALES&#x60; and &#x60;OUTCOME_LEADS&#x60; require additional account configuration (Dataset linked to the WABA for sales) and may be rejected by Meta if missing.  | [optional] |
| **bid_strategy** | **String** | Meta bid strategy applied to the shared ad set. Defaults to &#x60;LOWEST_COST_WITHOUT_CAP&#x60; (auto-bid) when omitted. &#x60;LOWEST_COST_WITH_BID_CAP&#x60; and &#x60;COST_CAP&#x60; require &#x60;bidAmount&#x60;. &#x60;LOWEST_COST_WITH_MIN_ROAS&#x60; requires &#x60;roasAverageFloor&#x60;. CTWA&#39;s &#x60;optimization_goal&#x60; is fixed to &#x60;CONVERSATIONS&#x60;, but the bid strategy is independent.  | [optional] |
| **bid_amount** | **Float** | Whole currency units (e.g. &#x60;5&#x60; &#x3D; $5.00 on a USD account). Required when &#x60;bidStrategy&#x60; is &#x60;LOWEST_COST_WITH_BID_CAP&#x60; or &#x60;COST_CAP&#x60;; rejected otherwise.  | [optional] |
| **roas_average_floor** | **Float** | Decimal ROAS multiplier (e.g. &#x60;2.0&#x60; &#x3D; 2.0× ROAS floor). Required when &#x60;bidStrategy&#x60; is &#x60;LOWEST_COST_WITH_MIN_ROAS&#x60;; rejected otherwise. Meta enforces its own upper bound server-side.  | [optional] |
| **dsa_beneficiary** | **String** | Legal entity that benefits from the ad. Required when targeting EU users (EU DSA, Article 26). Optional if the ad account has a default beneficiary: set it once via &#x60;PATCH /v1/ads/accounts&#x60; or in Meta Ads Manager, and Meta fills it in whenever the field is omitted.  | [optional] |
| **dsa_payor** | **String** | Legal entity that pays for the ad. Can differ from &#x60;dsaBeneficiary&#x60; (for example, an agency paying for a client&#39;s ads). Same rules as &#x60;dsaBeneficiary&#x60;: required for EU targeting unless the ad account has a default payor.  | [optional] |
| **destination** | **String** | Where the conversation opens when the ad is tapped. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateMessagingAdRequest.new(
  account_id: null,
  ad_account_id: null,
  name: null,
  headline: null,
  body: null,
  image_url: null,
  video: null,
  creatives: null,
  budget_amount: null,
  budget_type: null,
  currency: null,
  end_date: null,
  countries: null,
  cities: null,
  regions: null,
  zips: null,
  metros: null,
  custom_locations: null,
  age_min: null,
  age_max: null,
  interests: null,
  audience_id: null,
  placements: null,
  advantage_audience: null,
  objective: null,
  bid_strategy: null,
  bid_amount: null,
  roas_average_floor: null,
  dsa_beneficiary: null,
  dsa_payor: null,
  destination: null
)
```

