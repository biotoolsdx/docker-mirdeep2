# mirdeep2

特异用户及挂载目录，修改[docker-compose.yml](./docker-compose.yml)
如下所示

```yaml
version: "3.3"

networks:
  bioinfo:

services:
  mirdeep2:
    image: btrspg/mirdeep2:latest
    hostname: dk-mirdeep2
    container_name: dk-mirdeep2
    tty: true
    restart: always
    volumes:
      - /spe:/spe #特异挂载目录
    networks:
      - bioinfo
    user: "uid:gid" # 特异用户uid,gid
```