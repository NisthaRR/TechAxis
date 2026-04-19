# Debugging a Failing Container

## Steps:
1. docker ps -a (find container id)
2. docker logs <container_id> (read errors)
3. docker inspect <container_id> (check config)
4. docker exec -it <container_id> sh (go inside)

## Common errors and fixes:
- ECONNREFUSED db:5432 = database not ready, add depends_on in compose
- Port already in use = change port mapping
- Module not found = run npm install again
- Permission denied = check file permissions