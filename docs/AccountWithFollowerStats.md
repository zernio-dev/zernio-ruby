# Late::AccountWithFollowerStats

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **profile_id** | [**SocialAccountProfileId**](SocialAccountProfileId.md) |  | [optional] |
| **username** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **profile_picture** | **String** | URL to the account&#39;s profile picture on the platform. May be null if the platform does not provide one. | [optional] |
| **profile_url** | **String** | Full profile URL for the connected account on its platform. | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **followers_count** | **Float** | Follower count (only included if user has analytics add-on) | [optional] |
| **followers_last_updated** | **Time** | Last time follower count was updated (only included if user has analytics add-on) | [optional] |
| **parent_account_id** | **String** | Reference to the parent posting SocialAccount. Set for ads accounts that share or derive from a posting account&#39;s OAuth token. null for standalone ads (Google Ads) and all posting accounts.  | [optional] |
| **enabled** | **Boolean** | Whether the user explicitly activated this account. false means the account was created as a side effect (e.g., posting account auto-created when user connected ads first). Posting UI and scheduler ignore accounts with enabled: false.  | [optional] |
| **metadata** | **Object** | Platform-specific metadata. Fields vary by platform. For WhatsApp accounts, includes: - qualityRating: Phone number quality rating from Meta (GREEN, YELLOW, RED, or UNKNOWN) - nameStatus: Display name review status (APPROVED, PENDING_REVIEW, DECLINED, or NONE). Messages cannot be sent until the display name is approved by Meta. - messagingLimitTier: Maximum unique business-initiated conversations per 24h rolling window (TIER_250, TIER_1K, TIER_10K, TIER_100K, or TIER_UNLIMITED). Scales automatically as quality rating improves. - verifiedName: Meta-verified business display name - displayPhoneNumber: Formatted phone number (e.g., \&quot;+1 555-123-4567\&quot;) - wabaId: WhatsApp Business Account ID - phoneNumberId: Meta phone number ID  | [optional] |
| **current_followers** | **Float** | Current follower count | [optional] |
| **last_updated** | **Time** |  | [optional] |
| **growth** | **Float** | Follower change over period | [optional] |
| **growth_percentage** | **Float** | Percentage growth | [optional] |
| **data_points** | **Float** | Number of historical snapshots | [optional] |
| **account_stats** | [**AccountWithFollowerStatsAllOfAccountStats**](AccountWithFollowerStatsAllOfAccountStats.md) |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::AccountWithFollowerStats.new(
  _id: null,
  platform: null,
  profile_id: null,
  username: null,
  display_name: null,
  profile_picture: null,
  profile_url: null,
  is_active: null,
  followers_count: null,
  followers_last_updated: null,
  parent_account_id: null,
  enabled: null,
  metadata: null,
  current_followers: null,
  last_updated: null,
  growth: null,
  growth_percentage: null,
  data_points: null,
  account_stats: null
)
```

