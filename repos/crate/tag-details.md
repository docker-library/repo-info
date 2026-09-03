<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.3`](#crate63)
-	[`crate:6.3.7`](#crate637)
-	[`crate:6.4`](#crate64)
-	[`crate:6.4.3`](#crate643)
-	[`crate:latest`](#cratelatest)

## `crate:6.3`

```console
$ docker pull crate@sha256:7fb2ab7b9204c80314a8ab6cac71edaa0080bb77d325975b57a60a7a446f098f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3` - linux; amd64

```console
$ docker pull crate@sha256:7cf38b07f55cac5381d3f54dc529077dda94523569b1b0fdc30c2f3cc70e7856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260928832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbdb74d2bc63f689901dd5baded7947dae5462bf9cde2232f908d39bbbf04caa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:13:55 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:14:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.7.tar.gz.asc crate-6.3.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.7.tar.gz.asc     && tar -xf crate-6.3.7.tar.gz -C /crate --strip-components=1     && rm crate-6.3.7.tar.gz # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:14:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:14:46 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:14:46 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:14:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:14:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T09:34:22.717620+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.7
# Wed, 02 Sep 2026 22:14:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:14:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b06f588f907735ff54d242d317df11c188f12beffd10ff8aeeaafc9a2d200d5`  
		Last Modified: Wed, 02 Sep 2026 22:14:22 GMT  
		Size: 33.8 MB (33792460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92136efa5b4b12756d4eb7a4fa078388568f95120ff98caf3acdf569add421bc`  
		Last Modified: Wed, 02 Sep 2026 22:15:08 GMT  
		Size: 149.0 MB (149030030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788e89321edc4ab5d3557a097f7579a2bc181644ce73a50b11d4be7fa0488fc5`  
		Last Modified: Wed, 02 Sep 2026 22:15:04 GMT  
		Size: 8.9 MB (8868169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f5c605cd9cd2a9218def5fea9514e0284e1664199f2fc168d287cb6fba1fe4`  
		Last Modified: Wed, 02 Sep 2026 22:15:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e7cf2799dca0087a2bcf52b5ce208de19894ad869698223951f62ec90f1fa0`  
		Last Modified: Wed, 02 Sep 2026 22:15:03 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594b806131c05aa599d2ba6869a3f5e1644556ce0ea7a067f303e1c5c063dd1`  
		Last Modified: Wed, 02 Sep 2026 22:15:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15f3502360dfb210a59e914f32621fd51729cc6b4667d45e546cae44aa8313e`  
		Last Modified: Wed, 02 Sep 2026 22:15:05 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:22242cc4a957dac0491ba793a88df161856f23a2cb4d9cfd81830b806086af13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ce9e3fc6d41f780034962e332be72de5c0e479daa6444276daf21a368a25cb`

```dockerfile
```

-	Layers:
	-	`sha256:e8d938d16a62e43ebaa67583f322256b9a041fdc15a65570cf08d6e733129657`  
		Last Modified: Wed, 02 Sep 2026 22:15:04 GMT  
		Size: 6.6 MB (6593413 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6671a361f45daa3467d8c2c28c9e8baade1d3a568dfd92bc2771ddd3384f9056`  
		Last Modified: Wed, 02 Sep 2026 22:15:04 GMT  
		Size: 21.3 KB (21343 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:cf6818c7ba065f3ceb33b318572acaca3c3d3a003f57f8f35eb2bb2cc300af21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (257035603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b339e48db1dc2adce1ad52d8069ce2d535ee1c25780e222f3a979cc20e511b9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:55 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:17:08 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.7.tar.gz.asc crate-6.3.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.7.tar.gz.asc     && tar -xf crate-6.3.7.tar.gz -C /crate --strip-components=1     && rm crate-6.3.7.tar.gz # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:17:11 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:17:11 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:17:11 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:17:11 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:17:11 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T09:34:22.717620+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.7
# Wed, 02 Sep 2026 22:17:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:17:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb11bb4bfc63b1ba41f27c2a44bffe389b14f7f34ff316ca7f64d3c8044bd2bf`  
		Last Modified: Wed, 02 Sep 2026 22:17:32 GMT  
		Size: 33.7 MB (33699650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b16c42e37e96dccc800e4b1aca60f2d7988e81b2fe132ea12c813d311d911d`  
		Last Modified: Wed, 02 Sep 2026 22:17:34 GMT  
		Size: 146.7 MB (146658670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79599d3c1fe11e5106612ccb432439cc7c0a20730295e8dc5afe856304ffce55`  
		Last Modified: Wed, 02 Sep 2026 22:17:31 GMT  
		Size: 8.9 MB (8866721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffdbb7c04cd0d8c5bf191e759b64f262d8e4d7fd3ece52265180461f5780683`  
		Last Modified: Wed, 02 Sep 2026 22:17:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f7401fa7907ffbbb4274f87506e27fb0ea8fe0de60bcfa1ac4951298938f3c`  
		Last Modified: Wed, 02 Sep 2026 22:17:32 GMT  
		Size: 261.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2de3820e776d8c0033c365ab7682def00ec7a81e7db780133160e6283b9f502`  
		Last Modified: Wed, 02 Sep 2026 22:17:32 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdeb3b54de2fc16a2ac4adb8187f6636b77dc7830cd7edcb72f4526f40ee7cf`  
		Last Modified: Wed, 02 Sep 2026 22:17:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:53ef0593b9acd02e4a1b13df0a8962408e53da1e53a3312282a92b549f03e25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ee53bed4a7f6bb3fe571472829bb9a4aecedf3e72aeb709a5e79dd67642283`

```dockerfile
```

-	Layers:
	-	`sha256:9779a054853fec686922a5fff7390b566c48bddcf1ce3f9d6a7426181787f665`  
		Last Modified: Wed, 02 Sep 2026 22:17:31 GMT  
		Size: 6.6 MB (6591325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2125a75e34bf6ae160d6f8f2688095badbeeee75f0e4ff258e57fa9d0b68651c`  
		Last Modified: Wed, 02 Sep 2026 22:17:30 GMT  
		Size: 21.5 KB (21469 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.3.7`

```console
$ docker pull crate@sha256:7fb2ab7b9204c80314a8ab6cac71edaa0080bb77d325975b57a60a7a446f098f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3.7` - linux; amd64

```console
$ docker pull crate@sha256:7cf38b07f55cac5381d3f54dc529077dda94523569b1b0fdc30c2f3cc70e7856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.9 MB (260928832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbdb74d2bc63f689901dd5baded7947dae5462bf9cde2232f908d39bbbf04caa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:13:55 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:14:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.7.tar.gz.asc crate-6.3.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.7.tar.gz.asc     && tar -xf crate-6.3.7.tar.gz -C /crate --strip-components=1     && rm crate-6.3.7.tar.gz # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:14:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:14:46 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:14:46 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:14:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:14:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T09:34:22.717620+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.7
# Wed, 02 Sep 2026 22:14:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:14:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:14:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b06f588f907735ff54d242d317df11c188f12beffd10ff8aeeaafc9a2d200d5`  
		Last Modified: Wed, 02 Sep 2026 22:14:22 GMT  
		Size: 33.8 MB (33792460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92136efa5b4b12756d4eb7a4fa078388568f95120ff98caf3acdf569add421bc`  
		Last Modified: Wed, 02 Sep 2026 22:15:08 GMT  
		Size: 149.0 MB (149030030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788e89321edc4ab5d3557a097f7579a2bc181644ce73a50b11d4be7fa0488fc5`  
		Last Modified: Wed, 02 Sep 2026 22:15:04 GMT  
		Size: 8.9 MB (8868169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f5c605cd9cd2a9218def5fea9514e0284e1664199f2fc168d287cb6fba1fe4`  
		Last Modified: Wed, 02 Sep 2026 22:15:03 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e7cf2799dca0087a2bcf52b5ce208de19894ad869698223951f62ec90f1fa0`  
		Last Modified: Wed, 02 Sep 2026 22:15:03 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0594b806131c05aa599d2ba6869a3f5e1644556ce0ea7a067f303e1c5c063dd1`  
		Last Modified: Wed, 02 Sep 2026 22:15:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15f3502360dfb210a59e914f32621fd51729cc6b4667d45e546cae44aa8313e`  
		Last Modified: Wed, 02 Sep 2026 22:15:05 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3.7` - unknown; unknown

```console
$ docker pull crate@sha256:22242cc4a957dac0491ba793a88df161856f23a2cb4d9cfd81830b806086af13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ce9e3fc6d41f780034962e332be72de5c0e479daa6444276daf21a368a25cb`

```dockerfile
```

-	Layers:
	-	`sha256:e8d938d16a62e43ebaa67583f322256b9a041fdc15a65570cf08d6e733129657`  
		Last Modified: Wed, 02 Sep 2026 22:15:04 GMT  
		Size: 6.6 MB (6593413 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6671a361f45daa3467d8c2c28c9e8baade1d3a568dfd92bc2771ddd3384f9056`  
		Last Modified: Wed, 02 Sep 2026 22:15:04 GMT  
		Size: 21.3 KB (21343 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3.7` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:cf6818c7ba065f3ceb33b318572acaca3c3d3a003f57f8f35eb2bb2cc300af21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (257035603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b339e48db1dc2adce1ad52d8069ce2d535ee1c25780e222f3a979cc20e511b9b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:55 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:17:08 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.7.tar.gz.asc crate-6.3.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.7.tar.gz.asc     && tar -xf crate-6.3.7.tar.gz -C /crate --strip-components=1     && rm crate-6.3.7.tar.gz # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:17:11 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:17:11 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:17:11 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:17:11 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:17:11 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T09:34:22.717620+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.7
# Wed, 02 Sep 2026 22:17:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:17:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:17:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb11bb4bfc63b1ba41f27c2a44bffe389b14f7f34ff316ca7f64d3c8044bd2bf`  
		Last Modified: Wed, 02 Sep 2026 22:17:32 GMT  
		Size: 33.7 MB (33699650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b16c42e37e96dccc800e4b1aca60f2d7988e81b2fe132ea12c813d311d911d`  
		Last Modified: Wed, 02 Sep 2026 22:17:34 GMT  
		Size: 146.7 MB (146658670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79599d3c1fe11e5106612ccb432439cc7c0a20730295e8dc5afe856304ffce55`  
		Last Modified: Wed, 02 Sep 2026 22:17:31 GMT  
		Size: 8.9 MB (8866721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffdbb7c04cd0d8c5bf191e759b64f262d8e4d7fd3ece52265180461f5780683`  
		Last Modified: Wed, 02 Sep 2026 22:17:30 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f7401fa7907ffbbb4274f87506e27fb0ea8fe0de60bcfa1ac4951298938f3c`  
		Last Modified: Wed, 02 Sep 2026 22:17:32 GMT  
		Size: 261.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2de3820e776d8c0033c365ab7682def00ec7a81e7db780133160e6283b9f502`  
		Last Modified: Wed, 02 Sep 2026 22:17:32 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdeb3b54de2fc16a2ac4adb8187f6636b77dc7830cd7edcb72f4526f40ee7cf`  
		Last Modified: Wed, 02 Sep 2026 22:17:33 GMT  
		Size: 502.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3.7` - unknown; unknown

```console
$ docker pull crate@sha256:53ef0593b9acd02e4a1b13df0a8962408e53da1e53a3312282a92b549f03e25a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78ee53bed4a7f6bb3fe571472829bb9a4aecedf3e72aeb709a5e79dd67642283`

```dockerfile
```

-	Layers:
	-	`sha256:9779a054853fec686922a5fff7390b566c48bddcf1ce3f9d6a7426181787f665`  
		Last Modified: Wed, 02 Sep 2026 22:17:31 GMT  
		Size: 6.6 MB (6591325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2125a75e34bf6ae160d6f8f2688095badbeeee75f0e4ff258e57fa9d0b68651c`  
		Last Modified: Wed, 02 Sep 2026 22:17:30 GMT  
		Size: 21.5 KB (21469 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4`

```console
$ docker pull crate@sha256:b427b7c534f0203ea61d829cbd65d58619ad0b9232465e281b39af25ad0bd71a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

```console
$ docker pull crate@sha256:58b0a326e770f32daf9f1c3712174063162ebd9409d3a4d0ada6857af926a515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261109871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48559a5adcd916706974638dbd081dea93d45290e70db2b531b03145ccfb27c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:13:55 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:14:00 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.3.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.3.tar.gz.asc crate-6.4.3.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.3.tar.gz.asc     && tar -xf crate-6.4.3.tar.gz -C /crate --strip-components=1     && rm crate-6.4.3.tar.gz # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:14:03 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:14:03 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:14:03 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:14:03 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:14:03 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-19T11:57:38.146976+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.3
# Wed, 02 Sep 2026 22:14:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:14:03 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b06f588f907735ff54d242d317df11c188f12beffd10ff8aeeaafc9a2d200d5`  
		Last Modified: Wed, 02 Sep 2026 22:14:22 GMT  
		Size: 33.8 MB (33792460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad2f8fc56a9b4b3566e9bf539ebc3ec5e556e008eeadd9a5e22d55607000d99`  
		Last Modified: Wed, 02 Sep 2026 22:14:25 GMT  
		Size: 149.2 MB (149210973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0890d3148ed39f05227953190e7c814937c58d5ef69c0c19e891406b5a5a9fa`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 8.9 MB (8868263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39894ee03524ea545ef5847ad35a1185f9a630fdd6216e893def847734f92c14`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d776c64ee84e2f1194d4d9532bbc814f3a2b41d78278cb3e8eea8e16b20c662`  
		Last Modified: Wed, 02 Sep 2026 22:14:22 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88881e3c092cd1f9e510891153ea606364322dd29061631e8fd8c585c082afb`  
		Last Modified: Wed, 02 Sep 2026 22:14:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55fd9316cd7a1d6e2a52123afd1b1443df0c98cf5a9e1c07508327db6629ec32`  
		Last Modified: Wed, 02 Sep 2026 22:14:23 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:b39a388ec235eb47a8890a457472a9c70b2031ee43e6bc71db95013b58eb25e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d3474b36caee9956177b9470f5bc079d8a977c0337a9a918cb20bf4c2fc41e`

```dockerfile
```

-	Layers:
	-	`sha256:c966ffc7a41f2ccea3815ee240bf0009fa516262e82bfdbe5ae8037ef3d2bfd0`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 6.6 MB (6593709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7be40e8247875e5ab7a4e962292b873ed86814c37b128283bd92a727f9114c7c`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:3aebea64d2a7263f74d1fb90fb4d74d4ff5014aa74b4cdc58b56b7cafd57a272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257207689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2eaa87363a3079171425df323dbaf11ef73ea11a9dbd725c32eab091759da5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:10 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:16:23 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.3.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.3.tar.gz.asc crate-6.4.3.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.3.tar.gz.asc     && tar -xf crate-6.4.3.tar.gz -C /crate --strip-components=1     && rm crate-6.4.3.tar.gz # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:16:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:16:27 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:16:27 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:16:27 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:16:27 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-19T11:57:38.146976+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.3
# Wed, 02 Sep 2026 22:16:27 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:16:27 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5822815a56e5c98836aed442024398e2231a88c9e1387e36985f33cbf43de75b`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 33.7 MB (33699866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc925a150f17591108f9642c8e6fb53ada54a92276998f673a4c279f2ac09b9`  
		Last Modified: Wed, 02 Sep 2026 22:16:49 GMT  
		Size: 146.8 MB (146830738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c01d961b0eed6650ffa83177cdf8d9debebe51d2341c0e6f9d83367713bbd31`  
		Last Modified: Wed, 02 Sep 2026 22:16:46 GMT  
		Size: 8.9 MB (8866513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e4181e50946a4f55130714d8c9493eb390e14680e6f06bc24bfeab253958b5`  
		Last Modified: Wed, 02 Sep 2026 22:16:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5fdf2249805ea31b8534f355a7d486176f9aba21f76b62cb57ba53250da345`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd3ed769c1cea390728a036c1a3f6e86f75f108c8a278214a75e0da889a1a8c`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454d5184d2009511d37c7c341892ad81b95ab92ba20e649b59d123609cc4f175`  
		Last Modified: Wed, 02 Sep 2026 22:16:48 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:673e471a9dc30060edce204608c7963e947c3e904de7c89e9a278e7344d72330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1d525eace4be899039ef0c4c90cebefe53123bdd38cf99e3c7c01d08df153f`

```dockerfile
```

-	Layers:
	-	`sha256:343b42125f56655069bfb292c9dad81bc42ec05eec75ffc4d06cc10dee601f69`  
		Last Modified: Wed, 02 Sep 2026 22:16:46 GMT  
		Size: 6.6 MB (6591633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:495174eb7351f8815d700a80f2d4dcf14d654918a2d6aff2e7e26b26ce9a4fa1`  
		Last Modified: Wed, 02 Sep 2026 22:16:45 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4.3`

```console
$ docker pull crate@sha256:b427b7c534f0203ea61d829cbd65d58619ad0b9232465e281b39af25ad0bd71a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4.3` - linux; amd64

```console
$ docker pull crate@sha256:58b0a326e770f32daf9f1c3712174063162ebd9409d3a4d0ada6857af926a515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261109871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48559a5adcd916706974638dbd081dea93d45290e70db2b531b03145ccfb27c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:13:55 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:14:00 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.3.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.3.tar.gz.asc crate-6.4.3.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.3.tar.gz.asc     && tar -xf crate-6.4.3.tar.gz -C /crate --strip-components=1     && rm crate-6.4.3.tar.gz # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:14:03 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:14:03 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:14:03 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:14:03 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:14:03 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-19T11:57:38.146976+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.3
# Wed, 02 Sep 2026 22:14:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:14:03 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b06f588f907735ff54d242d317df11c188f12beffd10ff8aeeaafc9a2d200d5`  
		Last Modified: Wed, 02 Sep 2026 22:14:22 GMT  
		Size: 33.8 MB (33792460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad2f8fc56a9b4b3566e9bf539ebc3ec5e556e008eeadd9a5e22d55607000d99`  
		Last Modified: Wed, 02 Sep 2026 22:14:25 GMT  
		Size: 149.2 MB (149210973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0890d3148ed39f05227953190e7c814937c58d5ef69c0c19e891406b5a5a9fa`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 8.9 MB (8868263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39894ee03524ea545ef5847ad35a1185f9a630fdd6216e893def847734f92c14`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d776c64ee84e2f1194d4d9532bbc814f3a2b41d78278cb3e8eea8e16b20c662`  
		Last Modified: Wed, 02 Sep 2026 22:14:22 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88881e3c092cd1f9e510891153ea606364322dd29061631e8fd8c585c082afb`  
		Last Modified: Wed, 02 Sep 2026 22:14:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55fd9316cd7a1d6e2a52123afd1b1443df0c98cf5a9e1c07508327db6629ec32`  
		Last Modified: Wed, 02 Sep 2026 22:14:23 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.3` - unknown; unknown

```console
$ docker pull crate@sha256:b39a388ec235eb47a8890a457472a9c70b2031ee43e6bc71db95013b58eb25e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d3474b36caee9956177b9470f5bc079d8a977c0337a9a918cb20bf4c2fc41e`

```dockerfile
```

-	Layers:
	-	`sha256:c966ffc7a41f2ccea3815ee240bf0009fa516262e82bfdbe5ae8037ef3d2bfd0`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 6.6 MB (6593709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7be40e8247875e5ab7a4e962292b873ed86814c37b128283bd92a727f9114c7c`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4.3` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:3aebea64d2a7263f74d1fb90fb4d74d4ff5014aa74b4cdc58b56b7cafd57a272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257207689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2eaa87363a3079171425df323dbaf11ef73ea11a9dbd725c32eab091759da5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:10 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:16:23 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.3.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.3.tar.gz.asc crate-6.4.3.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.3.tar.gz.asc     && tar -xf crate-6.4.3.tar.gz -C /crate --strip-components=1     && rm crate-6.4.3.tar.gz # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:16:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:16:27 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:16:27 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:16:27 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:16:27 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-19T11:57:38.146976+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.3
# Wed, 02 Sep 2026 22:16:27 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:16:27 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5822815a56e5c98836aed442024398e2231a88c9e1387e36985f33cbf43de75b`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 33.7 MB (33699866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc925a150f17591108f9642c8e6fb53ada54a92276998f673a4c279f2ac09b9`  
		Last Modified: Wed, 02 Sep 2026 22:16:49 GMT  
		Size: 146.8 MB (146830738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c01d961b0eed6650ffa83177cdf8d9debebe51d2341c0e6f9d83367713bbd31`  
		Last Modified: Wed, 02 Sep 2026 22:16:46 GMT  
		Size: 8.9 MB (8866513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e4181e50946a4f55130714d8c9493eb390e14680e6f06bc24bfeab253958b5`  
		Last Modified: Wed, 02 Sep 2026 22:16:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5fdf2249805ea31b8534f355a7d486176f9aba21f76b62cb57ba53250da345`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd3ed769c1cea390728a036c1a3f6e86f75f108c8a278214a75e0da889a1a8c`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454d5184d2009511d37c7c341892ad81b95ab92ba20e649b59d123609cc4f175`  
		Last Modified: Wed, 02 Sep 2026 22:16:48 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.3` - unknown; unknown

```console
$ docker pull crate@sha256:673e471a9dc30060edce204608c7963e947c3e904de7c89e9a278e7344d72330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1d525eace4be899039ef0c4c90cebefe53123bdd38cf99e3c7c01d08df153f`

```dockerfile
```

-	Layers:
	-	`sha256:343b42125f56655069bfb292c9dad81bc42ec05eec75ffc4d06cc10dee601f69`  
		Last Modified: Wed, 02 Sep 2026 22:16:46 GMT  
		Size: 6.6 MB (6591633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:495174eb7351f8815d700a80f2d4dcf14d654918a2d6aff2e7e26b26ce9a4fa1`  
		Last Modified: Wed, 02 Sep 2026 22:16:45 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:latest`

```console
$ docker pull crate@sha256:b427b7c534f0203ea61d829cbd65d58619ad0b9232465e281b39af25ad0bd71a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:58b0a326e770f32daf9f1c3712174063162ebd9409d3a4d0ada6857af926a515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261109871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48559a5adcd916706974638dbd081dea93d45290e70db2b531b03145ccfb27c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:13:55 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:14:00 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.3.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.3.tar.gz.asc crate-6.4.3.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.3.tar.gz.asc     && tar -xf crate-6.4.3.tar.gz -C /crate --strip-components=1     && rm crate-6.4.3.tar.gz # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:14:03 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:14:03 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:14:03 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:14:03 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:14:03 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-19T11:57:38.146976+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.3
# Wed, 02 Sep 2026 22:14:03 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:14:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:14:03 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b06f588f907735ff54d242d317df11c188f12beffd10ff8aeeaafc9a2d200d5`  
		Last Modified: Wed, 02 Sep 2026 22:14:22 GMT  
		Size: 33.8 MB (33792460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad2f8fc56a9b4b3566e9bf539ebc3ec5e556e008eeadd9a5e22d55607000d99`  
		Last Modified: Wed, 02 Sep 2026 22:14:25 GMT  
		Size: 149.2 MB (149210973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0890d3148ed39f05227953190e7c814937c58d5ef69c0c19e891406b5a5a9fa`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 8.9 MB (8868263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39894ee03524ea545ef5847ad35a1185f9a630fdd6216e893def847734f92c14`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d776c64ee84e2f1194d4d9532bbc814f3a2b41d78278cb3e8eea8e16b20c662`  
		Last Modified: Wed, 02 Sep 2026 22:14:22 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88881e3c092cd1f9e510891153ea606364322dd29061631e8fd8c585c082afb`  
		Last Modified: Wed, 02 Sep 2026 22:14:23 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55fd9316cd7a1d6e2a52123afd1b1443df0c98cf5a9e1c07508327db6629ec32`  
		Last Modified: Wed, 02 Sep 2026 22:14:23 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:b39a388ec235eb47a8890a457472a9c70b2031ee43e6bc71db95013b58eb25e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d3474b36caee9956177b9470f5bc079d8a977c0337a9a918cb20bf4c2fc41e`

```dockerfile
```

-	Layers:
	-	`sha256:c966ffc7a41f2ccea3815ee240bf0009fa516262e82bfdbe5ae8037ef3d2bfd0`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 6.6 MB (6593709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7be40e8247875e5ab7a4e962292b873ed86814c37b128283bd92a727f9114c7c`  
		Last Modified: Wed, 02 Sep 2026 22:14:21 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:3aebea64d2a7263f74d1fb90fb4d74d4ff5014aa74b4cdc58b56b7cafd57a272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257207689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2eaa87363a3079171425df323dbaf11ef73ea11a9dbd725c32eab091759da5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:10 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 02 Sep 2026 22:16:23 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.3.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.3.tar.gz.asc crate-6.4.3.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.3.tar.gz.asc     && tar -xf crate-6.4.3.tar.gz -C /crate --strip-components=1     && rm crate-6.4.3.tar.gz # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:16:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 02 Sep 2026 22:16:27 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
VOLUME [/data]
# Wed, 02 Sep 2026 22:16:27 GMT
WORKDIR /data
# Wed, 02 Sep 2026 22:16:27 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 02 Sep 2026 22:16:27 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-19T11:57:38.146976+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.3
# Wed, 02 Sep 2026 22:16:27 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 02 Sep 2026 22:16:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 02 Sep 2026 22:16:27 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5822815a56e5c98836aed442024398e2231a88c9e1387e36985f33cbf43de75b`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 33.7 MB (33699866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc925a150f17591108f9642c8e6fb53ada54a92276998f673a4c279f2ac09b9`  
		Last Modified: Wed, 02 Sep 2026 22:16:49 GMT  
		Size: 146.8 MB (146830738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c01d961b0eed6650ffa83177cdf8d9debebe51d2341c0e6f9d83367713bbd31`  
		Last Modified: Wed, 02 Sep 2026 22:16:46 GMT  
		Size: 8.9 MB (8866513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30e4181e50946a4f55130714d8c9493eb390e14680e6f06bc24bfeab253958b5`  
		Last Modified: Wed, 02 Sep 2026 22:16:45 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5fdf2249805ea31b8534f355a7d486176f9aba21f76b62cb57ba53250da345`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd3ed769c1cea390728a036c1a3f6e86f75f108c8a278214a75e0da889a1a8c`  
		Last Modified: Wed, 02 Sep 2026 22:16:47 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454d5184d2009511d37c7c341892ad81b95ab92ba20e649b59d123609cc4f175`  
		Last Modified: Wed, 02 Sep 2026 22:16:48 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:673e471a9dc30060edce204608c7963e947c3e904de7c89e9a278e7344d72330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d1d525eace4be899039ef0c4c90cebefe53123bdd38cf99e3c7c01d08df153f`

```dockerfile
```

-	Layers:
	-	`sha256:343b42125f56655069bfb292c9dad81bc42ec05eec75ffc4d06cc10dee601f69`  
		Last Modified: Wed, 02 Sep 2026 22:16:46 GMT  
		Size: 6.6 MB (6591633 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:495174eb7351f8815d700a80f2d4dcf14d654918a2d6aff2e7e26b26ce9a4fa1`  
		Last Modified: Wed, 02 Sep 2026 22:16:45 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
