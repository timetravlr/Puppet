This puppet module creates new users and modifies their account information, including encrypted password hash.
To add a new user, add a new paragraph for the user account in virt_users.pp, confirm the group exists in virt_groups.pp, and add the user account to the User section in realize.pp.
