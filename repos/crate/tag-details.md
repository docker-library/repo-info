<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.3`](#crate63)
-	[`crate:6.3.7`](#crate637)
-	[`crate:6.4`](#crate64)
-	[`crate:6.4.4`](#crate644)
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
$ docker pull crate@sha256:18398dbe5c0697003e043a944427d38e935936dd32307d24f93bdc2512e5acbe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

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

### `crate:6.4` - unknown; unknown

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

### `crate:6.4` - linux; arm64 variant v8

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

### `crate:6.4` - unknown; unknown

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

## `crate:6.4.4`

```console
$ docker pull crate@sha256:18398dbe5c0697003e043a944427d38e935936dd32307d24f93bdc2512e5acbe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4.4` - linux; amd64

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

### `crate:6.4.4` - unknown; unknown

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

### `crate:6.4.4` - linux; arm64 variant v8

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

### `crate:6.4.4` - unknown; unknown

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
