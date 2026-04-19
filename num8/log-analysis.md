# Log Analysis Report

## Commands used to analyze logs:
docker logs <container_id>
docker ps -a

## Potential root causes of failure:
1. Port conflict - another process using same port
2. Missing environment variables - app crashes on start
3. Database connection refused - DB not ready yet
4. Out of memory - container killed by system
5. Wrong file permissions - app cant read/write files

## Fix:
- Check logs with: docker logs <container_id>
- Check running containers: docker ps -a
- Check port conflicts: netstat -tulpn