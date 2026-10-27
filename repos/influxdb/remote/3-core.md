## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:70c54a795f35b558d028ac42716f3ff92c3ad82c6f65836c40ea22edb6142851
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:ab4ad90d19bb664a5e73e8e1169b1af7b89104008671acfb503328dae35a8617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155744286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b8fcb575bf5a5d4e31eef1ad2602fd724bb334b2bc8e492b65abd5d86669fd`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:23:51 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Mon, 26 Oct 2026 23:23:51 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Mon, 26 Oct 2026 23:23:57 GMT
ENV INFLUXDB_VERSION=3.12.1
# Mon, 26 Oct 2026 23:23:57 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Mon, 26 Oct 2026 23:23:57 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:23:57 GMT
USER influxdb3
# Mon, 26 Oct 2026 23:23:58 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Mon, 26 Oct 2026 23:23:58 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Mon, 26 Oct 2026 23:23:58 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Mon, 26 Oct 2026 23:23:58 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Mon, 26 Oct 2026 23:23:58 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Mon, 26 Oct 2026 23:23:58 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Mon, 26 Oct 2026 23:23:58 GMT
EXPOSE map[8181/tcp:{}]
# Mon, 26 Oct 2026 23:23:58 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Mon, 26 Oct 2026 23:23:58 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82da5e882078fb6ea07fd9ed58aa09a65deeb2ddf0d3dc1eb74364bb174759b9`  
		Last Modified: Mon, 26 Oct 2026 23:24:17 GMT  
		Size: 6.6 MB (6633132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bd703af660efcebb4e4371f0f796dbca5263d5c2052dc2f51a7850370172da`  
		Last Modified: Mon, 26 Oct 2026 23:24:17 GMT  
		Size: 3.6 KB (3647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bc6261c0d38ab9c38e08d8de952d4b41883a3863c39e4cfbb80d298d710e5ae`  
		Last Modified: Mon, 26 Oct 2026 23:24:20 GMT  
		Size: 119.3 MB (119339227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714df861db3bb23b10edc7823653724fc5df7b5a9a2a01f05d0c60b63992d755`  
		Last Modified: Mon, 26 Oct 2026 23:24:17 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8e7642f5a25bc7f7f074a5dbd2c1cf4302225ca53faad553481e74c4a02ad7`  
		Last Modified: Mon, 26 Oct 2026 23:24:18 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:94df15637fe5df5e724c5a1a807a71c53dd68af1ef4d353f8f94e4f0e9660475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3349059dbf2ac6aeadd847421473651782fc593d2bd94aff71a66948bd80ad8d`

```dockerfile
```

-	Layers:
	-	`sha256:8c497925e4cd2d85eefa7291f61a108a2be80c1f9e1473a5a369d93e6fb6fd47`  
		Last Modified: Mon, 26 Oct 2026 23:24:17 GMT  
		Size: 2.3 MB (2308017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e06e3a9637b740badc8b5ad4a9a9d494d2a04300e036054188cf13c4530fc8da`  
		Last Modified: Mon, 26 Oct 2026 23:24:17 GMT  
		Size: 17.6 KB (17640 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:3f31d7c5493150b87f3c712de0e893d5ba2325381cd3319523532b9966ddf717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145597621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2c2857eea1626155dbae87bd9f58334da38efbdf9f19ee4a29c7a68f6a74728`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:28:35 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Mon, 26 Oct 2026 23:28:35 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
ENV INFLUXDB_VERSION=3.12.1
# Mon, 26 Oct 2026 23:28:41 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
USER influxdb3
# Mon, 26 Oct 2026 23:28:41 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Mon, 26 Oct 2026 23:28:41 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Mon, 26 Oct 2026 23:28:41 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Mon, 26 Oct 2026 23:28:41 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Mon, 26 Oct 2026 23:28:41 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Mon, 26 Oct 2026 23:28:41 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Mon, 26 Oct 2026 23:28:41 GMT
EXPOSE map[8181/tcp:{}]
# Mon, 26 Oct 2026 23:28:41 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Mon, 26 Oct 2026 23:28:41 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1ab08f1054a05a17ee4f138ee07e6482e836bb096d8228df99e04873d2fc32`  
		Last Modified: Mon, 26 Oct 2026 23:28:59 GMT  
		Size: 6.6 MB (6646017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb35b4b518297d72d92de0aaa60f6b00355c47cc02a9d0631cfbb28c1456340`  
		Last Modified: Mon, 26 Oct 2026 23:28:59 GMT  
		Size: 3.6 KB (3645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887e3fbdcf1fe9f6787d080e43b7bbe83b2ef058283c1ee249c7982dbc1ddc30`  
		Last Modified: Mon, 26 Oct 2026 23:29:02 GMT  
		Size: 110.0 MB (110007168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405b04aef1c2ae7f0b224ee7cd1b71ffd39c301ce95ce099fad8356ce041c968`  
		Last Modified: Mon, 26 Oct 2026 23:28:59 GMT  
		Size: 516.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d76657219d4289154e1593311fb4cc290b880873366498bc29e1eff53ec7af5`  
		Last Modified: Mon, 26 Oct 2026 23:29:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:cc04a77291349b8e4ecc3032755665f3fb5a4cfa42291e83474f84e1824efeb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19aeebd999f77f32e033d0aff21baa0b5a6a06d849f7cd7363e69875479582fc`

```dockerfile
```

-	Layers:
	-	`sha256:fe48b327c158f990d3393e10e467e5cc6cea11f8e149dfa5accd03a27c6d8de0`  
		Last Modified: Mon, 26 Oct 2026 23:28:59 GMT  
		Size: 2.3 MB (2309099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8361086709c8607ddfd1a774fe8e9b0bdd32c0980d5c20186eb76dbc1dfbbf65`  
		Last Modified: Mon, 26 Oct 2026 23:28:59 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
