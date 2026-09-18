## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:c14a7f1bfbc40485f5f1bc3dca48ad1367cc0b4b097f218923cd5ef624813301
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-enterprise` - linux; amd64

```console
$ docker pull influxdb@sha256:0f5c647d1508f80a0436972bbeba8507e106e7a14eac6af4bc17ba000c022950
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.2 MB (183161245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2385b5f84a3886fc5e511e0819e814d275c9e9c974e7ce0ae3bde70593921cc9`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 17:50:31 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 18 Sep 2026 17:50:31 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 18 Sep 2026 17:50:38 GMT
ENV INFLUXDB_VERSION=3.11.5
# Fri, 18 Sep 2026 17:50:38 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 18 Sep 2026 17:50:38 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 18 Sep 2026 17:50:38 GMT
USER influxdb3
# Fri, 18 Sep 2026 17:50:38 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 18 Sep 2026 17:50:38 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 18 Sep 2026 17:50:38 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 18 Sep 2026 17:50:38 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 18 Sep 2026 17:50:38 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 18 Sep 2026 17:50:38 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 18 Sep 2026 17:50:38 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 18 Sep 2026 17:50:38 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 18 Sep 2026 17:50:38 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb71926668cc83232942f6d577433ddcb64fbfff809c3138b83e87e69e6ab0e`  
		Last Modified: Fri, 18 Sep 2026 17:51:00 GMT  
		Size: 6.6 MB (6632303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb5ef423dd59455f16c89a5ea2f31340b9703e27e6a6ec4d93de12b59f43d9e`  
		Last Modified: Fri, 18 Sep 2026 17:50:57 GMT  
		Size: 3.7 KB (3653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab21e5db1992ea4f2f999357067c1defb3dec4ddcd5e7408676a38111014e1c1`  
		Last Modified: Fri, 18 Sep 2026 17:51:03 GMT  
		Size: 146.8 MB (146760504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf29e557d81399b24ac2f05371a6c3f01c062241f83755b8dfb3a183fda24c76`  
		Last Modified: Fri, 18 Sep 2026 17:51:00 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7355cbd4b4ef8b344f987279d0786918e0cdf661f48da51062b0fd48c028394`  
		Last Modified: Fri, 18 Sep 2026 17:51:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:9f2436f0991fd8b3b614fab825ccb354f2370956cdfd804ec835ab44eb2806f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e070316c8c1bd0d794cfb2015288e95586956ee65535d617a5fa8fa502664222`

```dockerfile
```

-	Layers:
	-	`sha256:765abfaabcadb21b095e63c2d7d7b1a42977f59a6a997e29fc6e9dbc8cada32e`  
		Last Modified: Fri, 18 Sep 2026 17:51:00 GMT  
		Size: 2.3 MB (2308691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b85d53a6d14c0309ef3e24393d4738cff482d82c4359788c50bcbca30a4c40c9`  
		Last Modified: Fri, 18 Sep 2026 17:50:59 GMT  
		Size: 17.8 KB (17821 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-enterprise` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:e54ca14001463ebafd5658fb56c99f2a2e56ad6ef6f55f43e6bd7c1ba52dffd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.8 MB (173817507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a080352989f578d08781dc386df2be64374ee4d7c06d6e1b03a09f0c9cc204`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 17:51:01 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 18 Sep 2026 17:51:01 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 18 Sep 2026 17:51:38 GMT
ENV INFLUXDB_VERSION=3.11.5
# Fri, 18 Sep 2026 17:51:38 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 18 Sep 2026 17:51:38 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 18 Sep 2026 17:51:38 GMT
USER influxdb3
# Fri, 18 Sep 2026 17:51:39 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 18 Sep 2026 17:51:39 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 18 Sep 2026 17:51:39 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 18 Sep 2026 17:51:39 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 18 Sep 2026 17:51:39 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 18 Sep 2026 17:51:39 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 18 Sep 2026 17:51:39 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 18 Sep 2026 17:51:39 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 18 Sep 2026 17:51:39 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4661b9b44702493575c1a1004c22f4b597501c89ecfaaaf30b8de3625541d6e6`  
		Last Modified: Fri, 18 Sep 2026 17:51:24 GMT  
		Size: 6.6 MB (6645355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be77a2e97f3c961303d3d245db7c22d5b3e8201b0025b6c2793b120483aebf6`  
		Last Modified: Fri, 18 Sep 2026 17:51:23 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da4ebe57eb1f7ce35b4764595db50fdd09959611b060d4dff63a928bfe89ca2`  
		Last Modified: Fri, 18 Sep 2026 17:52:00 GMT  
		Size: 138.2 MB (138226252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea79f13f17eced9d63c75bd5eacb869a0add87d68a2e7380e72d45a1eb5f6f6f`  
		Last Modified: Fri, 18 Sep 2026 17:51:57 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b54939a0bf6210e25956f8dbe913eb61325cc6d72aa710508e14e48ddd576b7`  
		Last Modified: Fri, 18 Sep 2026 17:51:57 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:ea3ce4c66eaa6ec299c3ec5640671765f7a68cc078e98bd87bf7a618baba2c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a4e432e3ef8978ad12cace139683c3cae3a72da8173d6bfb65ad7ace9b6f3c8`

```dockerfile
```

-	Layers:
	-	`sha256:cf0d8fe4aec9fc0ee1e8fb6a92f6e8abd8df01d4e9913aaca95f80537d7d0f9e`  
		Last Modified: Fri, 18 Sep 2026 17:51:57 GMT  
		Size: 2.3 MB (2309773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6649a365832b15ce69a28baad04e4fa35f0c327861d3866139414c0c35adc7be`  
		Last Modified: Fri, 18 Sep 2026 17:51:57 GMT  
		Size: 18.0 KB (17969 bytes)  
		MIME: application/vnd.in-toto+json
