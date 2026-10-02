## `influxdb:3-enterprise`

```console
$ docker pull influxdb@sha256:b51155a57c4dbea9abb0c957044f0241db57174451d71e85784596a71424ef63
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
$ docker pull influxdb@sha256:8648f8bd172fb83d37f816b5e3c7d0eaadd98156e1f789b9e868fcdddff056bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191090042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5536c41c259f5f6ddc9106764ee54b87ae3ab0e497a5a11e86a0d8deafa4ba`
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
# Thu, 01 Oct 2026 23:50:23 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Thu, 01 Oct 2026 23:50:23 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Thu, 01 Oct 2026 23:50:30 GMT
ENV INFLUXDB_VERSION=3.12.0
# Thu, 01 Oct 2026 23:50:30 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-enterprise-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Thu, 01 Oct 2026 23:50:30 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Thu, 01 Oct 2026 23:50:30 GMT
USER influxdb3
# Thu, 01 Oct 2026 23:50:31 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Thu, 01 Oct 2026 23:50:31 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Thu, 01 Oct 2026 23:50:31 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Thu, 01 Oct 2026 23:50:31 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Thu, 01 Oct 2026 23:50:31 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Thu, 01 Oct 2026 23:50:31 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Thu, 01 Oct 2026 23:50:31 GMT
EXPOSE map[8181/tcp:{}]
# Thu, 01 Oct 2026 23:50:31 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Thu, 01 Oct 2026 23:50:31 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ea4e9eb09f60ce4fbe6782ac30563a87dddfc6d97ca5c4c76ad13c46dd919f`  
		Last Modified: Thu, 01 Oct 2026 23:50:52 GMT  
		Size: 8.9 MB (8908421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ded75ed0a54851221d4c7bbea34317864ff53184f5c7cd43d7f3b8d1a4d4d3`  
		Last Modified: Thu, 01 Oct 2026 23:50:51 GMT  
		Size: 3.7 KB (3651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abcc6019a1390e3370f431b810ad3698c1ffc95cb25c7f46e8cf22b6f41cc6aa`  
		Last Modified: Thu, 01 Oct 2026 23:50:55 GMT  
		Size: 153.2 MB (153235720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123917b0fb3f563d1b9f4643e84405ad52bfd4a4eb307d0583d6b54a4f55323d`  
		Last Modified: Thu, 01 Oct 2026 23:50:52 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84895c6b4937833c7a735ab2515b4905f3ea359b977158ac2f08d7ad0a8cd76a`  
		Last Modified: Thu, 01 Oct 2026 23:50:53 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-enterprise` - unknown; unknown

```console
$ docker pull influxdb@sha256:2283e7687e3c6b257cbbf1ea5953fe49894245da3ea1f0492fa5d598ef4321a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34522d42a4fd96375a89a86d637c2abb80b13f62a06c013296dc153356505da3`

```dockerfile
```

-	Layers:
	-	`sha256:83fcdb2dd332f35bb032eb27d61f7ab64baa3fe086b06ffbf502687b26ce28c2`  
		Last Modified: Thu, 01 Oct 2026 23:50:52 GMT  
		Size: 2.3 MB (2309773 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b50d22cacc28a5560844dab452bef1831ce3fcc13897e669c4f80325ff81f7f9`  
		Last Modified: Thu, 01 Oct 2026 23:50:52 GMT  
		Size: 18.0 KB (17970 bytes)  
		MIME: application/vnd.in-toto+json
