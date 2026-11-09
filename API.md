# NovaPlay Partner API (Sandbox)

Base URL: `http://localhost:3000`

All endpoints below are sandbox/test-only. No cash value, deposits, withdrawals or real-money wagers are supported.

## Authentication
Create a partner in Super Admin. Use the generated key in the `X-API-Key` header.

## Health
`GET /api/health`

## Game catalog
`GET /api/v1/catalog`

Header: `X-API-Key: np_test_...`

Returns active games and `currency: DEMO_CREDITS`.

## Create player session
`POST /api/v1/sessions`

Headers: `Content-Type: application/json`, `X-API-Key: np_test_...`

Body:
```json
{"gameId":"nova-slots","playerId":"partner-player-123"}
```

Supported game IDs: `nova-slots`, `nova-roulette`, `nova-blackjack`, `nova-orbit`.

Response includes `sessionId`, `launchUrl`, `currency: DEMO_CREDITS`, demo balance and expiry.

## Report score (Nova Orbit)
`POST /api/game/score`

Body:
```json
{"sessionToken":"SESSION_TOKEN","score":1200}
```

## Leaderboard
`GET /api/game/leaderboard`
