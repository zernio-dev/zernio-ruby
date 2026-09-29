# Zernio::CommerceCatalogSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **account_id** | **String** | The store SocialAccount id. | [optional] |
| **catalog_platform** | **String** |  | [optional] |
| **catalog_account_id** | **String** | The Meta login account whose token writes to the catalog. | [optional] |
| **catalog_id** | **String** |  | [optional] |
| **run_status** | **String** |  | [optional] |
| **last_run_started_at** | **Time** |  | [optional] |
| **last_run_finished_at** | **Time** |  | [optional] |
| **last_error** | **String** | Why the last run failed, or how many items Meta rejected in a run that otherwise succeeded. Null after a clean run. | [optional] |
| **items_sent** | **Integer** | Catalog items (one per variant) Meta accepted in the last full run. | [optional] |
| **items_skipped** | **Integer** | Products the last full run could not list: not published to the online store or without an image. | [optional] |
| **items_deleted** | **Integer** | Items the last full run removed because the store no longer has them. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceCatalogSync.new(
  id: null,
  account_id: null,
  catalog_platform: null,
  catalog_account_id: null,
  catalog_id: null,
  run_status: null,
  last_run_started_at: null,
  last_run_finished_at: null,
  last_error: null,
  items_sent: null,
  items_skipped: null,
  items_deleted: null,
  created_at: null
)
```

