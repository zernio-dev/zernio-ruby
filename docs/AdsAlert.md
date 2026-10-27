# Zernio::AdsAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Stable for the same problem on the same entity. Pass it to POST /v1/ads/alerts/{alertId}/dismiss. | [optional] |
| **kind** | **String** |  | [optional] |
| **severity** | **String** |  | [optional] |
| **title** | **String** |  | [optional] |
| **message** | **String** | What happened, in plain words. For a rejection or delivery issue, the platform&#39;s own reason when it gave one. | [optional] |
| **platform** | **String** |  | [optional] |
| **platform_ad_account_id** | **String** |  | [optional] |
| **entity** | [**AdsAlertEntity**](AdsAlertEntity.md) |  | [optional] |
| **ad_id** | **String** | The Zernio ad id when the entity is an ad, for GET /v1/ads/{adId}. | [optional] |
| **currency** | **String** |  | [optional] |
| **detected_at** | **Time** |  | [optional] |
| **fix** | [**AdsAlertFix**](AdsAlertFix.md) |  | [optional] |
| **dismissed** | **Boolean** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdsAlert.new(
  id: null,
  kind: null,
  severity: null,
  title: null,
  message: null,
  platform: null,
  platform_ad_account_id: null,
  entity: null,
  ad_id: null,
  currency: null,
  detected_at: null,
  fix: null,
  dismissed: null
)
```

