
# End-to-End Deployment Lifecycle

## Stages:
1. Code written locally
2. Push to GitHub
3. CI runs automated tests
4. Docker image built
5. Image pushed to registry
6. Deployed to server
7. Health check runs
8. App is live

## Possible failure points:
- Tests fail = build stops
- Dockerfile error = image won't build
- Missing env vars = app crashes
- DB not ready = connection refused
- Port conflict = container won't start
- Wrong image tag = old version deployed