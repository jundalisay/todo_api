# Todo API Guardian Repo

Legend:
- [not done] Not working
- [almost done] Working, not tested
- [done] Working, tested
- [done done] Working, tested, deployed

Time: around 12.5 hours


## 🚪 Login

- [x] **[done done]** Should return an access token that can be used for the other endpoints
  - [6 hours] Switched to Guardian from Pow by forking https://github.com/ElixirMentor/real_deal_api/tree/main.  
  - [2 hours] Wrote tests of users
  - [0.5 hour] Deployed to Gigalixir at https://farm.gigalixirapp.com/api
- [x] **[done done]** Usernames must be unique across all users
  - [2 hours] Wrote tests for uniqueness and session errors


## 📓 Todo List

- [x] **[almost done]** Return proper errors with corresponding HTTP codes
  - [1 hour] Check responses in controller
  - `mix phx.gen.context Tasks Task tasks user_id:references:users position:integer content`

- [x] **[almost done]** All endpoints should return JSON responses.
  - [1 hour] Edit responses