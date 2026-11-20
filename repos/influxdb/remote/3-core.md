## `influxdb:3-core`

```console
$ docker pull influxdb@sha256:9a4e9f2e69f3bfadc1d7fae592b0187abf1856e2a2dde1b749e7901ceb9c9bbc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `influxdb:3-core` - linux; amd64

```console
$ docker pull influxdb@sha256:61add66e005b5f9f9a6f04521190f524479821afd6353ec50927e3e63f3a38b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.3 MB (156284410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3382a6f5191088f658456bedbf6aeb374c8a5918b52d53c115d0a06aaa699dd`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:56 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:22:56 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:02 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:02 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:02 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:02 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:02 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d322fb1fa9cb0b5e742ee63e1e8f87bf086bce26079c94429e9f8148ad474ab`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 6.6 MB (6633850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03c5e4deeca7151c45be7052c4a752688265e08a3814a6ed0e96568583e5a49`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76879e19085ed4f58b2e78a0778c10c32bbd0553d8bfa1f333eec0ea992b3ef6`  
		Last Modified: Fri, 20 Nov 2026 03:23:23 GMT  
		Size: 119.9 MB (119852939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337cf5c0a5447088a948c4d083465c15dc44b5f50f4c35cf4dce2f3690fb1c21`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 519.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2864a41164831a8725307d7aa2bbaeb3747e12a924d1f29ebccffd31ab64c4a`  
		Last Modified: Fri, 20 Nov 2026 03:23:22 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:64d28ec65dde4a49f37ef1bfabed0737c0141e3aaa7f34e1f3806121c873c6e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376314d243efa05f2af13b61a14cd6d8e0bf57359807c6c2e86cd7d98e4b6c94`

```dockerfile
```

-	Layers:
	-	`sha256:ae1d8e00097dbb912b749be8d2c4f300a6feb3ec812839ecbcc24de433df6a26`  
		Last Modified: Fri, 20 Nov 2026 03:23:20 GMT  
		Size: 2.3 MB (2308623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:81796cc7d6d56dd48dae324bfe7742ee8e406be5902428423e78b4e5a8768e3e`  
		Last Modified: Fri, 20 Nov 2026 03:23:21 GMT  
		Size: 17.6 KB (17641 bytes)  
		MIME: application/vnd.in-toto+json

### `influxdb:3-core` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c7b501f1737092528e08aaa081677911ae675d9c482e5420c4312c57c5ef7b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.9 MB (145888266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cdd7e9565e1fdd77e71187fdd8bee538a9a9954ae3d9739aa9dd30567788273`
-	Entrypoint: `["\/usr\/bin\/entrypoint.sh"]`
-	Default Command: `["influxdb3","serve"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:23:49 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&     apt-get update &&     apt-get install --no-install-recommends -y         ca-certificates         curl         gettext-base         gnupg         libssl3 &&     rm -rf /var/lib/apt/lists* # buildkit
# Fri, 20 Nov 2026 03:23:49 GMT
RUN groupadd --gid 1500 influxdb3 &&     useradd  --uid 1500 --gid influxdb3 --shell /bin/bash --create-home influxdb3 &&     mkdir -p /var/lib/influxdb3              /usr/lib/influxdb3              /plugins # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_VERSION=3.12.2
# Fri, 20 Nov 2026 03:23:55 GMT
RUN case "$(dpkg --print-architecture)" in         amd64) ARCH=amd64 ;;         arm64) ARCH=arm64 ;;         *) echo 'Unsupported Architecture' ; exit 1 ;;     esac &&     curl -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"          -fsSLO "https://dl.influxdata.com/influxdb/releases/influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys         24C975CBA61A024EE1B631787C3D57159FC2F927 &&     gpg --batch --verify         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     tar --strip-components 1 -C /usr/lib/influxdb3 -xvf "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" &&     mv /usr/lib/influxdb3/influxdb3 /usr/bin/influxdb3 &&     chown -R influxdb3:influxdb3 /var/lib/influxdb3 /plugins &&     chown -R root:root /usr/lib/influxdb3 &&     rm  "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz.asc"         "influxdb3-core-${INFLUXDB_VERSION}_linux_${ARCH}.tar.gz" # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
COPY entrypoint.sh /usr/bin/entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
USER influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
RUN mkdir ~/.influxdb3 # buildkit
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_PLUGIN_DIR=/plugins
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_DATA_DIR=/home/influxdb3/.influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_SERVE_INVOCATION_METHOD=docker-hub
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB_IOX_DB_DIR=/var/lib/influxdb3
# Fri, 20 Nov 2026 03:23:55 GMT
ENV INFLUXDB3_LOG_FILTER=info
# Fri, 20 Nov 2026 03:23:55 GMT
EXPOSE map[8181/tcp:{}]
# Fri, 20 Nov 2026 03:23:55 GMT
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
# Fri, 20 Nov 2026 03:23:55 GMT
CMD ["influxdb3" "serve"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ec1715d3c8474e5cdcd9b313a051dcfa349130ec131717d911602e0abbeb9e`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 6.6 MB (6648126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731901846655b1f4e4f7cf8e2404f6383a915d6f6f574f66e311e12f7dc69303`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 3.6 KB (3646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c720a6db9e7b19f851ff38c4e2a366d38d36bbf386eb0458c7c8077f3848782f`  
		Last Modified: Fri, 20 Nov 2026 03:24:16 GMT  
		Size: 110.3 MB (110270506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86245409f17115625be73380d82d9fcd57a01436c22b2ad9b1cc8cd9917c9f53`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 521.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764a5819567a2d667dbfc00d8eb297d1aa2a89b96d9e0a0bc75da752c8f3bb52`  
		Last Modified: Fri, 20 Nov 2026 03:24:14 GMT  
		Size: 149.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `influxdb:3-core` - unknown; unknown

```console
$ docker pull influxdb@sha256:c6f1e37fef90a80bd8d0103fd7b9486c60ad1a3d5f2af1721cddf1d0f7792235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b5c4b2a039794a65d7f44c29f794e25de0f49badcdee1f751a7d8ecfd03d2a`

```dockerfile
```

-	Layers:
	-	`sha256:c7ba9552a6d841f052c63e7385e8dd549717fd6962a510e9e046ab65d2aa6050`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 2.3 MB (2309705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d0155164f6300372c2156f922c5bceb840faa186f3e25f8c6c72cd11db58390`  
		Last Modified: Fri, 20 Nov 2026 03:24:13 GMT  
		Size: 17.8 KB (17790 bytes)  
		MIME: application/vnd.in-toto+json
