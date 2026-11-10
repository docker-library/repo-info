## `crate:latest`

```console
$ docker pull crate@sha256:9b54d7f547a6e2e195ab0ef5688f7837e5351233f94d1672844ef95db5d632a8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:93e1d7512e0b5926b424daf4d553dc968c39f2d804c3a200ce4ada4c0e0d98c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266284618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18aa9ba1e63a34fb7584bece6feb881aff8acf1ca7ea0a1d7afaeaf8b28623ab`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:17 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:47:52 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 09 Nov 2026 23:48:08 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.1.tar.gz.asc crate-6.5.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.1.tar.gz.asc     && tar -xf crate-6.5.1.tar.gz -C /crate --strip-components=1     && rm crate-6.5.1.tar.gz # buildkit
# Mon, 09 Nov 2026 23:48:10 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 09 Nov 2026 23:48:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:48:11 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 09 Nov 2026 23:48:11 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 09 Nov 2026 23:48:11 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 23:48:11 GMT
WORKDIR /data
# Mon, 09 Nov 2026 23:48:11 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 09 Nov 2026 23:48:11 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 09 Nov 2026 23:48:11 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 09 Nov 2026 23:48:11 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T13:38:33.403858+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.1
# Mon, 09 Nov 2026 23:48:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 09 Nov 2026 23:48:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 23:48:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:85c6768010474a5ebc1f9c52f98ffba6e06e4aaa8f11b96f6464b7798f9ab3a3`  
		Last Modified: Tue, 27 Oct 2026 17:18:33 GMT  
		Size: 69.3 MB (69279943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb151ee745c867b398c635e44c17569044e0d21f0c49750355a59f7b74698ef`  
		Last Modified: Mon, 09 Nov 2026 23:48:33 GMT  
		Size: 33.9 MB (33908143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1147abd85c93be43846a31640a4f0b3433f51bee739ec37e84e0e3f61b460cb2`  
		Last Modified: Mon, 09 Nov 2026 23:48:36 GMT  
		Size: 153.3 MB (153294378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fb69552fe5e44accee13e18258ca988c47ef9bb7279e1d9be93cc353d13889c`  
		Last Modified: Mon, 09 Nov 2026 23:48:32 GMT  
		Size: 9.8 MB (9800274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71e97a2b3ecf03bdc9655b9286b7c58b32d4253cb683ac799896fc2af4a62eb`  
		Last Modified: Mon, 09 Nov 2026 23:48:31 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7960ee8685f06114e9eb307b1acb83cc18d70d61aa55f1557748b1409ae33956`  
		Last Modified: Mon, 09 Nov 2026 23:48:33 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0774209befa44a05b82e7c32fdaa1820e77fc1f5181d03b5a4a8e5a75140a1f5`  
		Last Modified: Mon, 09 Nov 2026 23:48:33 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de0372856d3c3351595b86d3cf0058b9cd12427ca8404767d116850451dbad5`  
		Last Modified: Mon, 09 Nov 2026 23:48:34 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:fd3cb33f67de91d0b7fb25a64bb9ecbff12e892c69a9eaf856ef2fcebcbd94c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:084ced540eaa5d8c17022728378d845452c992e00492f77fdcd079c03c77dde5`

```dockerfile
```

-	Layers:
	-	`sha256:b31b174996afb29387a84a82c76ba1e525ee1be37e3edd3925246005a4e537db`  
		Last Modified: Mon, 09 Nov 2026 23:48:32 GMT  
		Size: 6.6 MB (6592887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df185f2f9962830024451c73a37e65a7b7da3711934493da6805d749fc01979d`  
		Last Modified: Mon, 09 Nov 2026 23:48:31 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:9769d3672909caf13295319fe14571ec9edd623b35a383dc150d514a3efbb9ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262936983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e807875adf0de3a7726031b507317220587051f644202723c0d50f6ffe4dfa48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:07 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:07 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:46:50 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 09 Nov 2026 23:47:14 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.1.tar.gz.asc crate-6.5.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.1.tar.gz.asc     && tar -xf crate-6.5.1.tar.gz -C /crate --strip-components=1     && rm crate-6.5.1.tar.gz # buildkit
# Mon, 09 Nov 2026 23:47:17 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 09 Nov 2026 23:47:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:47:17 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 09 Nov 2026 23:47:17 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 09 Nov 2026 23:47:17 GMT
VOLUME [/data]
# Mon, 09 Nov 2026 23:47:17 GMT
WORKDIR /data
# Mon, 09 Nov 2026 23:47:17 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 09 Nov 2026 23:47:17 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 09 Nov 2026 23:47:17 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 09 Nov 2026 23:47:17 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T13:38:33.403858+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.1
# Mon, 09 Nov 2026 23:47:17 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 09 Nov 2026 23:47:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 23:47:17 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:22438b94603beee6f70aa1303aa763595d60546fa5bb709b10d0b4e886102ca0`  
		Last Modified: Tue, 27 Oct 2026 17:18:24 GMT  
		Size: 67.9 MB (67867203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38cffbc97a13bf61764346eb80fe10eb54885874deab7fc0b322b601bcfc174`  
		Last Modified: Mon, 09 Nov 2026 23:47:39 GMT  
		Size: 33.8 MB (33816349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed9f0368d978e7c4524c3d1f068b1af41c5e4f2eb6bec5c646c13fb493285d6`  
		Last Modified: Mon, 09 Nov 2026 23:47:41 GMT  
		Size: 151.4 MB (151449023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85c1c25fc7aa9b3b79b20bffdf62d059c61d25f699d495dd0e87bf78151e21e`  
		Last Modified: Mon, 09 Nov 2026 23:47:38 GMT  
		Size: 9.8 MB (9802524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abbe4f4f127efd8af906273cea6fd741d2b9bcb473099a901c7f373f84e65177`  
		Last Modified: Mon, 09 Nov 2026 23:47:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a7dcb9d5fadb24e39635fdce5da872473688fc1ce55c9ade6d9af0f39db675`  
		Last Modified: Mon, 09 Nov 2026 23:47:39 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2ba2f23577fb62a5dcf646fe939db8ea12dac2971fc2bd413d100c8efaeb153`  
		Last Modified: Mon, 09 Nov 2026 23:47:40 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e36f13db7917cc18dd707fe53e866649d89962c74023458ba4352cc2fd3d8192`  
		Last Modified: Mon, 09 Nov 2026 23:47:40 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:79861a9ffeb1d21bda0f91cc91be4cbf51a2d8306dc4849dc4ac5ae0fa825afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ec853da68fb6172a88dccacd6d145d347ffd77692e89a4f8d6d1ad129758668`

```dockerfile
```

-	Layers:
	-	`sha256:2bfcd161b6d7243cc1f524404255bc3740fe8bcecb5b47e0c28c4d067d151dd9`  
		Last Modified: Mon, 09 Nov 2026 23:47:38 GMT  
		Size: 6.6 MB (6590809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03ab47841a042f0fcedd1a4ae7421c14a53354a8d6b5056d8cbc308a4519bc97`  
		Last Modified: Mon, 09 Nov 2026 23:47:37 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
