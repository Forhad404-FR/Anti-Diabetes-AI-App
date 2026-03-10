# API Endpoints (Planned)

The following endpoints are planned for the production backend of the Anti-Diabetes AI App.

## Authentication (`/v1/auth`)

- `POST /login`: authenticate user and return JWT.
- `POST /register`: create a new user account.
- `GET /profile`: retrieve current authenticated user details.

## Health Metrics (`/v1/health`)

- `GET /glucose`: retrieve blood sugar history.
- `POST /glucose`: log a new blood sugar reading.
- `GET /diet`: retrieve dietary logs.
- `POST /diet`: record a new meal.
- `GET /exercise`: retrieve workout history.
- `POST /exercise`: log a new physical activity.

## AI Assistant (`/v1/ai`)

- `POST /chat`: send a message to the health AI and receive a response.
- `GET /insights`: get daily personalized health recommendations.

## Medical Service (`/v1/doctors`)

- `GET /categories`: list doctor specialties.
- `GET /list`: search and filter doctors.
- `POST /appointment`: book a consult.
