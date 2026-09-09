## `crate:latest`

```console
$ docker pull crate@sha256:18398dbe5c0697003e043a944427d38e935936dd32307d24f93bdc2512e5acbe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:a560f0a4abb78907979d4fefeb4ec12557f23b3c891b9ddd28ed76b5bed9e2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261120136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2986efd61e6f20a6d4a0f91cbe789f7e69413a5d19fa68af7213fe27d9dc30`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:47:41 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Tue, 08 Sep 2026 19:47:46 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.4.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.4.tar.gz.asc crate-6.4.4.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.4.tar.gz.asc     && tar -xf crate-6.4.4.tar.gz -C /crate --strip-components=1     && rm crate-6.4.4.tar.gz # buildkit
# Tue, 08 Sep 2026 19:47:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Tue, 08 Sep 2026 19:47:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:47:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 08 Sep 2026 19:47:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Tue, 08 Sep 2026 19:47:49 GMT
VOLUME [/data]
# Tue, 08 Sep 2026 19:47:49 GMT
WORKDIR /data
# Tue, 08 Sep 2026 19:47:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Tue, 08 Sep 2026 19:47:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Tue, 08 Sep 2026 19:47:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Tue, 08 Sep 2026 19:47:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-03T14:09:00.285457+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.4
# Tue, 08 Sep 2026 19:47:50 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 19:47:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:47:50 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c49339c6a468be8a9c1884a2f688bd4601dd9d9215cb87626ea63074b0d34a`  
		Last Modified: Tue, 08 Sep 2026 19:48:11 GMT  
		Size: 33.8 MB (33792859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df22cf4d0e6f5baac59164fab3834616a03b048e7dc552093a59d65b18658e4`  
		Last Modified: Tue, 08 Sep 2026 19:48:13 GMT  
		Size: 149.2 MB (149221030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d59c139ecc8de1c1c6720fa41a7f2bf6b04b316debc51862006cd908efbe17b`  
		Last Modified: Tue, 08 Sep 2026 19:48:10 GMT  
		Size: 8.9 MB (8868074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee00723550c484b3884c145409cbe01eabb25af5b889ad19df42b0ddcc6f14a9`  
		Last Modified: Tue, 08 Sep 2026 19:48:09 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751962110473829901ccc7b41782788e3c38246663433b9694b309a0346ccf49`  
		Last Modified: Tue, 08 Sep 2026 19:48:11 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a3d87a158bed72018732a905eabc61d21bb7cb06f471cd307d947b7d6a0589`  
		Last Modified: Tue, 08 Sep 2026 19:48:11 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa07fb077c88193aade85cc6fab871f0f10ee96454a3dab3da0c950724164b84`  
		Last Modified: Tue, 08 Sep 2026 19:48:12 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:869116455c6dfbdab402c0b974fc8c52d2f265447962ae6306019d7f7b831c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0911bc7f25ddcdba0b46b2fb5a7c17d27ff1b08406b428ff6972cd247b712b`

```dockerfile
```

-	Layers:
	-	`sha256:d04a5a16be36bb29be7709bfc1f69883d761b0a447a420796a1906c4a43e7066`  
		Last Modified: Tue, 08 Sep 2026 19:48:10 GMT  
		Size: 6.6 MB (6593717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:216d2d779d6a62b0444176352cb35e199fd74ad66f6910800ca06be814116153`  
		Last Modified: Tue, 08 Sep 2026 19:48:09 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:1dd87a444505d8a59e4b17e38efde8b31277c81eebc35b22e38cc71d78a1682e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257211049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3cf959244aa2cd79f37e009931b31ed4aaf59261613980e1c3bbd5994341ffa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Tue, 08 Sep 2026 19:48:35 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Tue, 08 Sep 2026 19:48:48 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.4.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.4.tar.gz.asc crate-6.4.4.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.4.tar.gz.asc     && tar -xf crate-6.4.4.tar.gz -C /crate --strip-components=1     && rm crate-6.4.4.tar.gz # buildkit
# Tue, 08 Sep 2026 19:48:51 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Tue, 08 Sep 2026 19:48:51 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Sep 2026 19:48:51 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 08 Sep 2026 19:48:51 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Tue, 08 Sep 2026 19:48:51 GMT
VOLUME [/data]
# Tue, 08 Sep 2026 19:48:51 GMT
WORKDIR /data
# Tue, 08 Sep 2026 19:48:51 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Tue, 08 Sep 2026 19:48:51 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Tue, 08 Sep 2026 19:48:51 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Tue, 08 Sep 2026 19:48:51 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-03T14:09:00.285457+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.4
# Tue, 08 Sep 2026 19:48:51 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 08 Sep 2026 19:48:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 08 Sep 2026 19:48:51 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b06b2a6276c61a38e787ed727880c0ec903d431b23e4efb977d09e730cf4382`  
		Last Modified: Tue, 08 Sep 2026 19:49:12 GMT  
		Size: 33.7 MB (33699677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938f23478ce23035912e2fe18695b3772ebbc81f8324dc42ff9e6c9c7bb3e2b8`  
		Last Modified: Tue, 08 Sep 2026 19:49:16 GMT  
		Size: 146.8 MB (146834230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69dcbb69a60639ce9c3195e583219cfc10b71a947229ec48c0847c3b8973e920`  
		Last Modified: Tue, 08 Sep 2026 19:49:10 GMT  
		Size: 8.9 MB (8866567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d19849b027ba3e05662ffd81080106b634fb38f51fc56fefecffd502d829cb`  
		Last Modified: Tue, 08 Sep 2026 19:49:10 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c253e2d465e1fd63a41cb772f16d063fe941fc42faaaa34c00521e5610fbea`  
		Last Modified: Tue, 08 Sep 2026 19:49:11 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26746400cac24bdbe8379d4752def216703aaa6a4367725c74f1977cf3e84713`  
		Last Modified: Tue, 08 Sep 2026 19:49:11 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce755367e4c4cad2ce3100593d611166e784efb2c237bc95fe742d7b9c436ccd`  
		Last Modified: Tue, 08 Sep 2026 19:49:12 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:5c4d1ab8f735206356a38dc4e95a3232e0c038e4c0fa73a087bb5a2791105f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177ef57dde639960cc5693caf0b27ddd808179e95d0950d9ba84ca1d6c29103b`

```dockerfile
```

-	Layers:
	-	`sha256:8bc2172e8b617b3d622b9d32ca78eda7f622a30d98bc73e3b314135e8ec5aa11`  
		Last Modified: Tue, 08 Sep 2026 19:49:10 GMT  
		Size: 6.6 MB (6591641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44c1eeabd4f2de11ee23cea445763f03cc9b3a193b54d6169e86e4b10c83852b`  
		Last Modified: Tue, 08 Sep 2026 19:49:10 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
