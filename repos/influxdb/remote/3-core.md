## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:12d4537ff34a7906641be428010550d584a8660f5ab1017aad87a34b499981c2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:4cfd56b5565112cc386c5316889f0730cb5311a06092bac880c2d6c59f74c916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.7 MB (148686668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62b641bb8b0a7b20c7aea008e29888851bb9179e9e17e005ae0b1f772306d35`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:22:46 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:22:46 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:28 GMT
ENV INFLUXDB_VERSION=3.11.1
# Tue, 18 Aug 2026 19:23:28 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:28 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:28 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:28 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:28 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:28 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:28 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:28 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:28 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:28 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:28 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:28 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb55e32f6bed739bd73adf3ace53514f865061056039a31e6626adf6279096b6`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 6.6 MB (6628208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f8480397789db4a90f24e964205abacad086de31d43bf8824ef42167da1cce`  
		Last Modified: Tue, 18 Aug 2026 19:23:12 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28b9e666f4b43dbd3787c537b8c52c8daea33a0dfdda9ed9af1dc811995acce`  
		Last Modified: Tue, 18 Aug 2026 19:23:48 GMT  
		Size: 112.3 MB (112301329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2bf65411f9816208a75356f8a22209abf34d8ec32570f548c16605ff553faf`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1cadeb76ee63af0ac2e1dc9561431a50a4a0de033300c7ea986523b73649bcb`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:d7e37f62bec490eb2687300f081fdfcd6d2e9f22a7233c496ee77555248dd6fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2312040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6727caadff04d3f1c4fae02d9a74e571f1aa2e7f7ece0b7b41062e27fbf8d4b2`

```dockerfile
```

-	Layers:
	-	`sha256:bdb1ca86fba8774d29734af8bd531d47f524ce0996bb4276897ecf38d7ac6485`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 2.3 MB (2294399 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d7341bc46d3bcc39309090e868ca53dd071ee894f6f600030eb250ac8d8dd0f`  
		Last Modified: Tue, 18 Aug 2026 19:23:46 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:27a5192ade9b4ae0d4c9aab910d02e975046785257ae4b49f4c8fb248762813e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.0 MB (139971266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40575d61197079b0881fa5d90dd1edc4428506baa2758a5f7f3b5d0c93c3c791`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:23:28 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Tue, 18 Aug 2026 19:23:28 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Tue, 18 Aug 2026 19:23:35 GMT
ENV INFLUXDB_VERSION=3.11.1
# Tue, 18 Aug 2026 19:23:35 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Tue, 18 Aug 2026 19:23:35 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:23:35 GMT
USER influxdb3
# Tue, 18 Aug 2026 19:23:35 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Tue, 18 Aug 2026 19:23:35 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Tue, 18 Aug 2026 19:23:35 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Tue, 18 Aug 2026 19:23:35 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Tue, 18 Aug 2026 19:23:35 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Tue, 18 Aug 2026 19:23:35 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Tue, 18 Aug 2026 19:23:35 GMT
EXPOSE map[8181/tcp:{}]
# Tue, 18 Aug 2026 19:23:35 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Tue, 18 Aug 2026 19:23:35 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31aee4e80ea1601e17febfd256370ecf55c5fbe32079fe7c762ce1485851d387`  
		Last Modified: Tue, 18 Aug 2026 19:23:52 GMT  
		Size: 6.6 MB (6642215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb018553a2f02e6f4fc36a3e795b5d757d0c2789c8c1d54736236f0d34c565c`  
		Last Modified: Tue, 18 Aug 2026 19:23:51 GMT  
		Size: 3.7 KB (3658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284644be88fe54a37307913c9269de1b776f64dbf72c727ba3860e55bb161389`  
		Last Modified: Tue, 18 Aug 2026 19:23:54 GMT  
		Size: 104.4 MB (104437490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef21365590d668c0efdc4b624804eccc7efc6eb6368ee549a4f3410da44a76c`  
		Last Modified: Tue, 18 Aug 2026 19:23:51 GMT  
		Size: 520.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f3ef38e80d49296445033e03267805e9da3881bf25976f6855e2ed8c69c705`  
		Last Modified: Tue, 18 Aug 2026 19:23:53 GMT  
		Size: 148.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:054fb25c2afa43282902e5c7f8db9468ffa7f1b56de3fca4b0a575707ec6f4d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2313271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6b86256aa773b5f07e2eccb8df3c43dc03b8c21a074b8285c7d01d4471d6be5`

```dockerfile
```

-	Layers:
	-	`sha256:3795c1ba539ad1c35dfbd82dbc852485e121a0996db6cf57605ae7af07ab843e`  
		Last Modified: Tue, 18 Aug 2026 19:23:52 GMT  
		Size: 2.3 MB (2295481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fe7c301f4fe7f767cb2030343efbbb538d0d215ffc3fa992bbd1dc75aa0046d`  
		Last Modified: Tue, 18 Aug 2026 19:23:51 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
