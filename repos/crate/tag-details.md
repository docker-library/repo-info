<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.3`](#crate63)
-	[`crate:6.3.7`](#crate637)
-	[`crate:6.4`](#crate64)
-	[`crate:6.4.5`](#crate645)
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
$ docker pull crate@sha256:05b2862ed5f8397bf6d333a3bdace42c247ce82bfd02c8110f57e573b8cf6c2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

```console
$ docker pull crate@sha256:19022940e72433531f04cff7d2c5c52398553f0d6ae6a0ff1782ac3bcb9513e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261072917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fda971b5f514721965131570a26b66e97272df0c3a9f6d059cffe46159475c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 18:00:29 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 21 Sep 2026 18:00:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 18:00:45 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 21 Sep 2026 18:00:45 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
VOLUME [/data]
# Mon, 21 Sep 2026 18:00:46 GMT
WORKDIR /data
# Mon, 21 Sep 2026 18:00:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 21 Sep 2026 18:00:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Mon, 21 Sep 2026 18:00:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Sep 2026 18:00:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca13ef830dceaaad3916dd7322a86bb9b9650f6397586c7c7014992e65a5793`  
		Last Modified: Mon, 21 Sep 2026 18:01:06 GMT  
		Size: 33.8 MB (33793651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877bbf97dcea567fd6818cca26fd91b11b9d6c937221f6bb58b77030f6c72e2a`  
		Last Modified: Mon, 21 Sep 2026 18:01:08 GMT  
		Size: 149.3 MB (149287028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ebdeb2021b028327d8daa7038ff0288053f6441b0cb2e5caf08d3689232619`  
		Last Modified: Mon, 21 Sep 2026 18:01:05 GMT  
		Size: 8.8 MB (8754064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29b4446760433c73cdbf532b116993eb04fc8059ee662b308603c8c3149d627`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b19e9ae0c5a04e0bd98ce37aa6fbb1bf581950b97e7967f0ecc2d3600eb62a5`  
		Last Modified: Mon, 21 Sep 2026 18:01:05 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc105d3f7e22b0a10a3ad39ae1c7c706fdc437de0b41f34b85a9629bb6cada0`  
		Last Modified: Mon, 21 Sep 2026 18:01:06 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4281f2ad28d251e57abd4ea76e25c0c8e8629dc4cad1b4b48bf4f179760dee03`  
		Last Modified: Mon, 21 Sep 2026 18:01:07 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:6ab1d290253208e96c8930ba75cd419091bdabe4bb985a0bdebfc6b18a09469e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6616880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74f1de0ffa46b99c3018f158f799038f7f3f58b2e4a1f6831199eaf0300d8cd`

```dockerfile
```

-	Layers:
	-	`sha256:4c288b99cf682233a5f3a5cba04504e44bcc5769c89f095ce9adc7e3a63661c3`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 6.6 MB (6595240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fe8c524337c3a517e9ba1fa8f1ce583483c04fa2d39e460463f52ce9bea48e6`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:a22f31bc73021304f5736d44e200ded1e82676152e15a70098704d18d7672692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257176937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab61b9bc9e7bf333d2ba941af21ac50b116fe6ad9f06c730bd99b0d1b47f494`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 18:00:01 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 21 Sep 2026 18:00:14 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 18:00:18 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 21 Sep 2026 18:00:18 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
VOLUME [/data]
# Mon, 21 Sep 2026 18:00:18 GMT
WORKDIR /data
# Mon, 21 Sep 2026 18:00:18 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 21 Sep 2026 18:00:18 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Mon, 21 Sep 2026 18:00:18 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Sep 2026 18:00:18 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7a517a216fff8b7837cda4b0189652e3a8001960233a176b0230df886abe1f`  
		Last Modified: Mon, 21 Sep 2026 18:00:39 GMT  
		Size: 33.7 MB (33701563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a2341060a2e6164966a552bef6d605b543131c4c1a1ec2074e7b1487a6f6d9`  
		Last Modified: Mon, 21 Sep 2026 18:00:42 GMT  
		Size: 146.9 MB (146912491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045f7c96e36194bc751d8b24429cdc711551a564ed6c5dc2baf651438d66ad7d`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 8.8 MB (8752309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d1fd4e59caa4c5a6314c982b5eae0a2b4f3c71027698c74d2e92823ce72e23`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80da0f612d2caa01de38536a8d8d39a80086865a0124be8995fa738a7d0f4015`  
		Last Modified: Mon, 21 Sep 2026 18:00:40 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2344cd03c1f38d9dbd3821f01d0bc8b90990db5ffefb3b3e9fb88e5a0e37d410`  
		Last Modified: Mon, 21 Sep 2026 18:00:41 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6914b93447e0a97280a5a26c21b3e8cbae1c213e22b2960f13917503381c98b9`  
		Last Modified: Mon, 21 Sep 2026 18:00:41 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:f33d49e6cc8fc412f22ab29acca981f9e907e84253499b721bebdecec0a44538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10e35a553d389d90469d9be9212b948fe02f7d264c2b9a83444ef8b1b6b71b18`

```dockerfile
```

-	Layers:
	-	`sha256:95a5fe5b102d2f84aa84f57e44b502640bf6168c8cb37917c70e89f2f119c384`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 6.6 MB (6593164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b936001a5555591ca0f685ce4fc087600e02902b3c4203d943f8136ef8bbdf81`  
		Last Modified: Mon, 21 Sep 2026 18:00:37 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4.5`

```console
$ docker pull crate@sha256:05b2862ed5f8397bf6d333a3bdace42c247ce82bfd02c8110f57e573b8cf6c2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4.5` - linux; amd64

```console
$ docker pull crate@sha256:19022940e72433531f04cff7d2c5c52398553f0d6ae6a0ff1782ac3bcb9513e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261072917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fda971b5f514721965131570a26b66e97272df0c3a9f6d059cffe46159475c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 18:00:29 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 21 Sep 2026 18:00:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 18:00:45 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 21 Sep 2026 18:00:45 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
VOLUME [/data]
# Mon, 21 Sep 2026 18:00:46 GMT
WORKDIR /data
# Mon, 21 Sep 2026 18:00:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 21 Sep 2026 18:00:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Mon, 21 Sep 2026 18:00:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Sep 2026 18:00:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca13ef830dceaaad3916dd7322a86bb9b9650f6397586c7c7014992e65a5793`  
		Last Modified: Mon, 21 Sep 2026 18:01:06 GMT  
		Size: 33.8 MB (33793651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877bbf97dcea567fd6818cca26fd91b11b9d6c937221f6bb58b77030f6c72e2a`  
		Last Modified: Mon, 21 Sep 2026 18:01:08 GMT  
		Size: 149.3 MB (149287028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ebdeb2021b028327d8daa7038ff0288053f6441b0cb2e5caf08d3689232619`  
		Last Modified: Mon, 21 Sep 2026 18:01:05 GMT  
		Size: 8.8 MB (8754064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29b4446760433c73cdbf532b116993eb04fc8059ee662b308603c8c3149d627`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b19e9ae0c5a04e0bd98ce37aa6fbb1bf581950b97e7967f0ecc2d3600eb62a5`  
		Last Modified: Mon, 21 Sep 2026 18:01:05 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc105d3f7e22b0a10a3ad39ae1c7c706fdc437de0b41f34b85a9629bb6cada0`  
		Last Modified: Mon, 21 Sep 2026 18:01:06 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4281f2ad28d251e57abd4ea76e25c0c8e8629dc4cad1b4b48bf4f179760dee03`  
		Last Modified: Mon, 21 Sep 2026 18:01:07 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.5` - unknown; unknown

```console
$ docker pull crate@sha256:6ab1d290253208e96c8930ba75cd419091bdabe4bb985a0bdebfc6b18a09469e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6616880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74f1de0ffa46b99c3018f158f799038f7f3f58b2e4a1f6831199eaf0300d8cd`

```dockerfile
```

-	Layers:
	-	`sha256:4c288b99cf682233a5f3a5cba04504e44bcc5769c89f095ce9adc7e3a63661c3`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 6.6 MB (6595240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fe8c524337c3a517e9ba1fa8f1ce583483c04fa2d39e460463f52ce9bea48e6`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4.5` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:a22f31bc73021304f5736d44e200ded1e82676152e15a70098704d18d7672692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257176937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab61b9bc9e7bf333d2ba941af21ac50b116fe6ad9f06c730bd99b0d1b47f494`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 18:00:01 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 21 Sep 2026 18:00:14 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 18:00:18 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 21 Sep 2026 18:00:18 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
VOLUME [/data]
# Mon, 21 Sep 2026 18:00:18 GMT
WORKDIR /data
# Mon, 21 Sep 2026 18:00:18 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 21 Sep 2026 18:00:18 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Mon, 21 Sep 2026 18:00:18 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Sep 2026 18:00:18 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7a517a216fff8b7837cda4b0189652e3a8001960233a176b0230df886abe1f`  
		Last Modified: Mon, 21 Sep 2026 18:00:39 GMT  
		Size: 33.7 MB (33701563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a2341060a2e6164966a552bef6d605b543131c4c1a1ec2074e7b1487a6f6d9`  
		Last Modified: Mon, 21 Sep 2026 18:00:42 GMT  
		Size: 146.9 MB (146912491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045f7c96e36194bc751d8b24429cdc711551a564ed6c5dc2baf651438d66ad7d`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 8.8 MB (8752309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d1fd4e59caa4c5a6314c982b5eae0a2b4f3c71027698c74d2e92823ce72e23`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80da0f612d2caa01de38536a8d8d39a80086865a0124be8995fa738a7d0f4015`  
		Last Modified: Mon, 21 Sep 2026 18:00:40 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2344cd03c1f38d9dbd3821f01d0bc8b90990db5ffefb3b3e9fb88e5a0e37d410`  
		Last Modified: Mon, 21 Sep 2026 18:00:41 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6914b93447e0a97280a5a26c21b3e8cbae1c213e22b2960f13917503381c98b9`  
		Last Modified: Mon, 21 Sep 2026 18:00:41 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.5` - unknown; unknown

```console
$ docker pull crate@sha256:f33d49e6cc8fc412f22ab29acca981f9e907e84253499b721bebdecec0a44538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10e35a553d389d90469d9be9212b948fe02f7d264c2b9a83444ef8b1b6b71b18`

```dockerfile
```

-	Layers:
	-	`sha256:95a5fe5b102d2f84aa84f57e44b502640bf6168c8cb37917c70e89f2f119c384`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 6.6 MB (6593164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b936001a5555591ca0f685ce4fc087600e02902b3c4203d943f8136ef8bbdf81`  
		Last Modified: Mon, 21 Sep 2026 18:00:37 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:latest`

```console
$ docker pull crate@sha256:05b2862ed5f8397bf6d333a3bdace42c247ce82bfd02c8110f57e573b8cf6c2f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:19022940e72433531f04cff7d2c5c52398553f0d6ae6a0ff1782ac3bcb9513e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.1 MB (261072917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fda971b5f514721965131570a26b66e97272df0c3a9f6d059cffe46159475c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:17 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 18:00:29 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 21 Sep 2026 18:00:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 18:00:45 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 21 Sep 2026 18:00:45 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 21 Sep 2026 18:00:45 GMT
VOLUME [/data]
# Mon, 21 Sep 2026 18:00:46 GMT
WORKDIR /data
# Mon, 21 Sep 2026 18:00:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 21 Sep 2026 18:00:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Mon, 21 Sep 2026 18:00:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 21 Sep 2026 18:00:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Sep 2026 18:00:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:7129cd03b9724af185dcf2cb52631fe5fad4e6b40911de8df488e9cd8c2d9814`  
		Last Modified: Wed, 02 Sep 2026 21:53:34 GMT  
		Size: 69.2 MB (69236295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca13ef830dceaaad3916dd7322a86bb9b9650f6397586c7c7014992e65a5793`  
		Last Modified: Mon, 21 Sep 2026 18:01:06 GMT  
		Size: 33.8 MB (33793651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877bbf97dcea567fd6818cca26fd91b11b9d6c937221f6bb58b77030f6c72e2a`  
		Last Modified: Mon, 21 Sep 2026 18:01:08 GMT  
		Size: 149.3 MB (149287028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ebdeb2021b028327d8daa7038ff0288053f6441b0cb2e5caf08d3689232619`  
		Last Modified: Mon, 21 Sep 2026 18:01:05 GMT  
		Size: 8.8 MB (8754064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29b4446760433c73cdbf532b116993eb04fc8059ee662b308603c8c3149d627`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b19e9ae0c5a04e0bd98ce37aa6fbb1bf581950b97e7967f0ecc2d3600eb62a5`  
		Last Modified: Mon, 21 Sep 2026 18:01:05 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc105d3f7e22b0a10a3ad39ae1c7c706fdc437de0b41f34b85a9629bb6cada0`  
		Last Modified: Mon, 21 Sep 2026 18:01:06 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4281f2ad28d251e57abd4ea76e25c0c8e8629dc4cad1b4b48bf4f179760dee03`  
		Last Modified: Mon, 21 Sep 2026 18:01:07 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:6ab1d290253208e96c8930ba75cd419091bdabe4bb985a0bdebfc6b18a09469e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6616880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74f1de0ffa46b99c3018f158f799038f7f3f58b2e4a1f6831199eaf0300d8cd`

```dockerfile
```

-	Layers:
	-	`sha256:4c288b99cf682233a5f3a5cba04504e44bcc5769c89f095ce9adc7e3a63661c3`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 6.6 MB (6595240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7fe8c524337c3a517e9ba1fa8f1ce583483c04fa2d39e460463f52ce9bea48e6`  
		Last Modified: Mon, 21 Sep 2026 18:01:04 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:a22f31bc73021304f5736d44e200ded1e82676152e15a70098704d18d7672692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.2 MB (257176937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab61b9bc9e7bf333d2ba941af21ac50b116fe6ad9f06c730bd99b0d1b47f494`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:18 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:18 GMT
CMD ["/bin/bash"]
# Mon, 21 Sep 2026 18:00:01 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 21 Sep 2026 18:00:14 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 18:00:18 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 21 Sep 2026 18:00:18 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
VOLUME [/data]
# Mon, 21 Sep 2026 18:00:18 GMT
WORKDIR /data
# Mon, 21 Sep 2026 18:00:18 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 21 Sep 2026 18:00:18 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Mon, 21 Sep 2026 18:00:18 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 21 Sep 2026 18:00:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 21 Sep 2026 18:00:18 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5c1c9e074ac4d1badb151e5e5a82b6884b85b4ce910263dca58c74961a6ee8ce`  
		Last Modified: Wed, 02 Sep 2026 21:53:35 GMT  
		Size: 67.8 MB (67808693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb7a517a216fff8b7837cda4b0189652e3a8001960233a176b0230df886abe1f`  
		Last Modified: Mon, 21 Sep 2026 18:00:39 GMT  
		Size: 33.7 MB (33701563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a2341060a2e6164966a552bef6d605b543131c4c1a1ec2074e7b1487a6f6d9`  
		Last Modified: Mon, 21 Sep 2026 18:00:42 GMT  
		Size: 146.9 MB (146912491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045f7c96e36194bc751d8b24429cdc711551a564ed6c5dc2baf651438d66ad7d`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 8.8 MB (8752309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d1fd4e59caa4c5a6314c982b5eae0a2b4f3c71027698c74d2e92823ce72e23`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80da0f612d2caa01de38536a8d8d39a80086865a0124be8995fa738a7d0f4015`  
		Last Modified: Mon, 21 Sep 2026 18:00:40 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2344cd03c1f38d9dbd3821f01d0bc8b90990db5ffefb3b3e9fb88e5a0e37d410`  
		Last Modified: Mon, 21 Sep 2026 18:00:41 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6914b93447e0a97280a5a26c21b3e8cbae1c213e22b2960f13917503381c98b9`  
		Last Modified: Mon, 21 Sep 2026 18:00:41 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:f33d49e6cc8fc412f22ab29acca981f9e907e84253499b721bebdecec0a44538
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10e35a553d389d90469d9be9212b948fe02f7d264c2b9a83444ef8b1b6b71b18`

```dockerfile
```

-	Layers:
	-	`sha256:95a5fe5b102d2f84aa84f57e44b502640bf6168c8cb37917c70e89f2f119c384`  
		Last Modified: Mon, 21 Sep 2026 18:00:38 GMT  
		Size: 6.6 MB (6593164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b936001a5555591ca0f685ce4fc087600e02902b3c4203d943f8136ef8bbdf81`  
		Last Modified: Mon, 21 Sep 2026 18:00:37 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
