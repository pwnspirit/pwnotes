# `OpenSecret`

### Target Host
```
154.57.164.80:31903
```

### Challenge Scenario

A simple help desk portal where users can submit support tickets. The application uses JWT tokens for session management, but something seems off about how they're implemented. Can you find the security flaw?

### Recon

The target webpage is a simple ticket submit system where we can put name, query and submit it.

<img alt="support portal" src="https://github.com/user-attachments/assets/b8bcfa7f-5259-4bdd-96ad-b6f87f1bc701" />

I just make a test randomly, but it says, `No session token provided`.

Let's look over the source code. I found a JWT SECRET_KEY hidden in the client side, source code.

<img alt="jwt leak" src="https://github.com/user-attachments/assets/2850a4b2-52ad-41fb-9a05-52d8972c7be8" />

## Pivot

Now, we got the JWT SECRET_KEY. Let's create a token from `jwt.io` and use it to create a ticket.
```jq
{
  "alg": "HS256",
  "typ": "JWT"
}
---
{
  "username": "admin" //Else we get, Access denied. Admin privileges required.
}
```

<img src="https://github.com/user-attachments/assets/e760b276-8a5a-4fab-8db6-b33d4107b8bf" />

### Flag.

<img alt="flag" src="https://github.com/user-attachments/assets/4c54f336-cc93-40fb-8233-bceee15bc8f0" />

---


