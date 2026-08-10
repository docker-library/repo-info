<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.3`](#crate63)
-	[`crate:6.3.7`](#crate637)
-	[`crate:6.4`](#crate64)
-	[`crate:6.4.2`](#crate642)
-	[`crate:latest`](#cratelatest)

## `crate:6.3`

```console
$ docker pull crate@sha256:73ea263d48442ef849db41a25ff1ec02a5efdd26553804e1478ff6b80cc7c6c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3` - linux; amd64

```console
$ docker pull crate@sha256:aa692f9f787dbc348d9a70b0b28f1c91f0c367ff537d06412cabf62c6bd13039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235590691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc6cf825dcaa8473a20b5641711937dc33b223a8984faa5e3b6b1d189411fea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 19:14:16 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 23 Jul 2026 19:14:29 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.6.tar.gz.asc crate-6.3.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.6.tar.gz.asc     && tar -xf crate-6.3.6.tar.gz -C /crate --strip-components=1     && rm crate-6.3.6.tar.gz # buildkit
# Thu, 23 Jul 2026 19:14:33 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 23 Jul 2026 19:14:33 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 19:14:33 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 23 Jul 2026 19:14:33 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 23 Jul 2026 19:14:33 GMT
VOLUME [/data]
# Thu, 23 Jul 2026 19:14:33 GMT
WORKDIR /data
# Thu, 23 Jul 2026 19:14:33 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 23 Jul 2026 19:14:33 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 23 Jul 2026 19:14:34 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 23 Jul 2026 19:14:34 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-20T07:41:19.447511+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.6
# Thu, 23 Jul 2026 19:14:34 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 19:14:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Jul 2026 19:14:34 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf34df07a021e3172b7c74fa984834e7a23d34b11cd66da4110625e00003543`  
		Last Modified: Thu, 23 Jul 2026 19:14:54 GMT  
		Size: 18.9 MB (18880990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee432256aedbaebcef9c3762b0573cd64c93e5724dca6439ebf2a43ef183f2d`  
		Last Modified: Thu, 23 Jul 2026 19:14:57 GMT  
		Size: 139.4 MB (139359337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43a8dec87d1645a3e12aaedb38331f52dfeee2fd0a48b39012d50c5390db917`  
		Last Modified: Thu, 23 Jul 2026 19:14:54 GMT  
		Size: 8.8 MB (8795480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e41fa2a7b1326ec6e7a94fc0a9195ca3e49865882068c6b450c79b2059790c`  
		Last Modified: Thu, 23 Jul 2026 19:14:53 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50904ceb7d13311a062cf978cbcdc2cb4f159554bda9509ec5695eb1f1e55d48`  
		Last Modified: Thu, 23 Jul 2026 19:14:54 GMT  
		Size: 265.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4564c833e3f8093bdba5feed504d79a9ce37a34e20fa0f096cec2bb91a3d8701`  
		Last Modified: Thu, 23 Jul 2026 19:14:55 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279dbb4298ec776d0b82f0ace6bb2e4e7cd896071bb68b80513b09a76900ea58`  
		Last Modified: Thu, 23 Jul 2026 19:14:56 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:66d842705f64ff6707804fae3e974bab7eb625e7cf852b3b7804d538bac7c828
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8024108c7ae255af45c5e985ab861bfc9958d255f57c088fb1c00627b6b6c8b`

```dockerfile
```

-	Layers:
	-	`sha256:59f8706ca7feca943cdb01fffe06d26bc140cfd807521541323a4445d61b050c`  
		Last Modified: Thu, 23 Jul 2026 19:14:53 GMT  
		Size: 6.6 MB (6606714 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95063598a0d9f86d01280622a61de153e0a30bb1bbc82ba20ee258db10f6ecd7`  
		Last Modified: Thu, 23 Jul 2026 19:14:53 GMT  
		Size: 21.3 KB (21344 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:6d6ec90b2848cc1a6c35083ef37b69f9241c386071a6b395109c41d0bba0a469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232138772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8756b63e94b83cc9cdf996759104f1d786e624348d9e6bcf0757595dc15e4ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 19:14:26 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 23 Jul 2026 19:14:39 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.6.tar.gz.asc crate-6.3.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.6.tar.gz.asc     && tar -xf crate-6.3.6.tar.gz -C /crate --strip-components=1     && rm crate-6.3.6.tar.gz # buildkit
# Thu, 23 Jul 2026 19:14:42 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 23 Jul 2026 19:14:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 19:14:42 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 23 Jul 2026 19:14:42 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 23 Jul 2026 19:14:42 GMT
VOLUME [/data]
# Thu, 23 Jul 2026 19:14:42 GMT
WORKDIR /data
# Thu, 23 Jul 2026 19:14:42 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 23 Jul 2026 19:14:42 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 23 Jul 2026 19:14:42 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 23 Jul 2026 19:14:42 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-20T07:41:19.447511+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.6
# Thu, 23 Jul 2026 19:14:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 19:14:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Jul 2026 19:14:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6321377783c9f557fb10a80fd030d558c2f706f12e211be4041bbc65d7cec5b`  
		Last Modified: Thu, 23 Jul 2026 19:15:02 GMT  
		Size: 18.9 MB (18921212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a11641b0209bf9e1c4e2a3a221ce0457441d9522db91144a288d068fb147c8`  
		Last Modified: Thu, 23 Jul 2026 19:15:05 GMT  
		Size: 137.3 MB (137294068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a941ea052378febefa8e075aaec0ed66eb7a4bb4cda923c6448a588d81f421`  
		Last Modified: Thu, 23 Jul 2026 19:15:01 GMT  
		Size: 8.8 MB (8788429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08601af281658a6aa7b77e367b83049baf90e445943d2085ccc2b14aef40e5de`  
		Last Modified: Thu, 23 Jul 2026 19:15:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a41f057622018410a8587c63675129b1aaca1b176fae64515704029a40b97b8`  
		Last Modified: Thu, 23 Jul 2026 19:15:03 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530b70ce2e393104352ef7130284d62f9642698c65e80fbd4a7a48ff3cb4c524`  
		Last Modified: Thu, 23 Jul 2026 19:15:03 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8c0d48e159627f67f49674fb491db9cbfc0d94466483b8d7e72f020a93a68e`  
		Last Modified: Thu, 23 Jul 2026 19:15:03 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:450204f35379f765d9ccee4016c54216272d4a837453677275a67e317bcfe8b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d148795c628e4c2e9c235f8027dd790cbeee822b12a260831c59098b1a8b80`

```dockerfile
```

-	Layers:
	-	`sha256:aa3f4b7a232ecad0adae68960cf240934755e9c4626bbd0ce04888e5368499a3`  
		Last Modified: Thu, 23 Jul 2026 19:15:01 GMT  
		Size: 6.6 MB (6604626 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59592b05a12eb31eea3d6a7c299e1824da4b5bc0ca8891cf656ba26d0b305d1a`  
		Last Modified: Thu, 23 Jul 2026 19:15:01 GMT  
		Size: 21.5 KB (21468 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.3.7`

**does not exist** (yet?)

## `crate:6.4`

```console
$ docker pull crate@sha256:0040973ab196891b6a2e30f53c8beecd45c00179f03203c747f409e6c5ee38b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

```console
$ docker pull crate@sha256:3a2a0a55199001cc8630620bc8544842718881bb96f9dc0b622dda00a759a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235535418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498a27514b03e0d9643d6c0519ad6ccad34cedfd87c056272ad0d74a234619fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 19:13:41 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 23 Jul 2026 19:13:53 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.1.tar.gz.asc crate-6.4.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.1.tar.gz.asc     && tar -xf crate-6.4.1.tar.gz -C /crate --strip-components=1     && rm crate-6.4.1.tar.gz # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 19:13:56 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 23 Jul 2026 19:13:56 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
VOLUME [/data]
# Thu, 23 Jul 2026 19:13:56 GMT
WORKDIR /data
# Thu, 23 Jul 2026 19:13:56 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 23 Jul 2026 19:13:56 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-20T08:28:26.440733+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.1
# Thu, 23 Jul 2026 19:13:56 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Jul 2026 19:13:56 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88278c635cb918289544401ce145ade3d6eb65f2565fa93bc10417071df7cd6`  
		Last Modified: Thu, 23 Jul 2026 19:14:16 GMT  
		Size: 18.9 MB (18881048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb2c710baeb467812750aa1604a36991c43feac20db20b1099c0d388fad7174`  
		Last Modified: Thu, 23 Jul 2026 19:14:19 GMT  
		Size: 139.3 MB (139304261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1031b92e575c442219af623b5aac1ca6b52a29bf6d51a6da7e498eef5226fe2d`  
		Last Modified: Thu, 23 Jul 2026 19:14:15 GMT  
		Size: 8.8 MB (8795227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d15b17c82dd3c9c230061a8da326d74c9b605e2c1ec0232b3013c7485493b4b`  
		Last Modified: Thu, 23 Jul 2026 19:14:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41585674d4b41f2ae4ff73fd20e50fd479cd5a1f123486aaeb30de8871248e68`  
		Last Modified: Thu, 23 Jul 2026 19:14:16 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30c1aafca4312f1a191f61d0ff651608acc7b542adb40e031ce6882ac571895`  
		Last Modified: Thu, 23 Jul 2026 19:14:17 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae828b9f310e9326b9f8b6f348e5796fd7dd79fb28e1c71f998b71345430120`  
		Last Modified: Thu, 23 Jul 2026 19:14:17 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:a8e68529b5c240ca4cd826907bebafcc9a212bb86203586a4fd750a1f768c0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6627377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea1d80dc3809042003139aca4ec62e1ec90e005fbcd81099433c082eca06148`

```dockerfile
```

-	Layers:
	-	`sha256:ecbfeb0d4c3471c248a08cad252bff3520bc4177edd59d4443b3c70ddd9c3b94`  
		Last Modified: Thu, 23 Jul 2026 19:14:15 GMT  
		Size: 6.6 MB (6605737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11bf072516e4b6f4775b19bb7ee0b657f0287131a76330f0738171a8fd6f05dd`  
		Last Modified: Thu, 23 Jul 2026 19:14:14 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:fa717572c9a16d0430adedbe5f86829b1f6673065c1eb666998b9681d9f6436e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232088776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735b194d83c60928d3f2f743e29b98f180f637fe36c551ca4d5ece9d77c4b1cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 19:13:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 23 Jul 2026 19:13:46 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.1.tar.gz.asc crate-6.4.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.1.tar.gz.asc     && tar -xf crate-6.4.1.tar.gz -C /crate --strip-components=1     && rm crate-6.4.1.tar.gz # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 19:13:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 23 Jul 2026 19:13:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
VOLUME [/data]
# Thu, 23 Jul 2026 19:13:49 GMT
WORKDIR /data
# Thu, 23 Jul 2026 19:13:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 23 Jul 2026 19:13:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-20T08:28:26.440733+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.1
# Thu, 23 Jul 2026 19:13:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Jul 2026 19:13:49 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2db9d2fe5d63a2a25b94baf72a6bb6506338ceff1e863ea1cd91cdfa15aba1`  
		Last Modified: Thu, 23 Jul 2026 19:14:09 GMT  
		Size: 18.9 MB (18921904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ea07d35a112a02335e4dccdbf4a463ae2587b72bc20bca98e2f496e7e941bc`  
		Last Modified: Thu, 23 Jul 2026 19:14:12 GMT  
		Size: 137.2 MB (137243204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9bfee6fa5614f85832717a12549396fb79f9dda9d503e112d08603d8fc7a7b`  
		Last Modified: Thu, 23 Jul 2026 19:14:08 GMT  
		Size: 8.8 MB (8788612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce3b4c54539786c51b5ed9c188efbff5fb2d99758975b866fdd4a1518b041f0`  
		Last Modified: Thu, 23 Jul 2026 19:14:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f334b9908623cd8dc085e899331cf1ca98268d4c639b3952acb1955d24a06c`  
		Last Modified: Thu, 23 Jul 2026 19:14:09 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056c3299ee236b0ada45b87b060e714ede189907d69baa3af416cd9f219b2784`  
		Last Modified: Thu, 23 Jul 2026 19:14:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a6c7d71c784c6ba3fa3f133ce22764246733f9d17e264d353a1eeef106f2ac`  
		Last Modified: Thu, 23 Jul 2026 19:14:11 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:8c639121dab4cc5003aa9cb78d895973c27541e00a2669469cadaea3a77718a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6625436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bfa67e9b281943b90d5416e8795c15fe4854c1484878bd9b4f553e1ef6a3d8`

```dockerfile
```

-	Layers:
	-	`sha256:246234417349581cd19934445ce9f716e24dd58ce39ede7b0727d9a1fe34c836`  
		Last Modified: Thu, 23 Jul 2026 19:14:08 GMT  
		Size: 6.6 MB (6603661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20282f6e37f544f321d074c442eba2e2999c9a5db4ec43458bcab2f2c5839114`  
		Last Modified: Thu, 23 Jul 2026 19:14:07 GMT  
		Size: 21.8 KB (21775 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4.2`

**does not exist** (yet?)

## `crate:latest`

```console
$ docker pull crate@sha256:0040973ab196891b6a2e30f53c8beecd45c00179f03203c747f409e6c5ee38b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:3a2a0a55199001cc8630620bc8544842718881bb96f9dc0b622dda00a759a945
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235535418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:498a27514b03e0d9643d6c0519ad6ccad34cedfd87c056272ad0d74a234619fd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 19:13:41 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 23 Jul 2026 19:13:53 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.1.tar.gz.asc crate-6.4.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.1.tar.gz.asc     && tar -xf crate-6.4.1.tar.gz -C /crate --strip-components=1     && rm crate-6.4.1.tar.gz # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 19:13:56 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 23 Jul 2026 19:13:56 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
VOLUME [/data]
# Thu, 23 Jul 2026 19:13:56 GMT
WORKDIR /data
# Thu, 23 Jul 2026 19:13:56 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 23 Jul 2026 19:13:56 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-20T08:28:26.440733+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.1
# Thu, 23 Jul 2026 19:13:56 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 19:13:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Jul 2026 19:13:56 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88278c635cb918289544401ce145ade3d6eb65f2565fa93bc10417071df7cd6`  
		Last Modified: Thu, 23 Jul 2026 19:14:16 GMT  
		Size: 18.9 MB (18881048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb2c710baeb467812750aa1604a36991c43feac20db20b1099c0d388fad7174`  
		Last Modified: Thu, 23 Jul 2026 19:14:19 GMT  
		Size: 139.3 MB (139304261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1031b92e575c442219af623b5aac1ca6b52a29bf6d51a6da7e498eef5226fe2d`  
		Last Modified: Thu, 23 Jul 2026 19:14:15 GMT  
		Size: 8.8 MB (8795227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d15b17c82dd3c9c230061a8da326d74c9b605e2c1ec0232b3013c7485493b4b`  
		Last Modified: Thu, 23 Jul 2026 19:14:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41585674d4b41f2ae4ff73fd20e50fd479cd5a1f123486aaeb30de8871248e68`  
		Last Modified: Thu, 23 Jul 2026 19:14:16 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30c1aafca4312f1a191f61d0ff651608acc7b542adb40e031ce6882ac571895`  
		Last Modified: Thu, 23 Jul 2026 19:14:17 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae828b9f310e9326b9f8b6f348e5796fd7dd79fb28e1c71f998b71345430120`  
		Last Modified: Thu, 23 Jul 2026 19:14:17 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:a8e68529b5c240ca4cd826907bebafcc9a212bb86203586a4fd750a1f768c0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6627377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea1d80dc3809042003139aca4ec62e1ec90e005fbcd81099433c082eca06148`

```dockerfile
```

-	Layers:
	-	`sha256:ecbfeb0d4c3471c248a08cad252bff3520bc4177edd59d4443b3c70ddd9c3b94`  
		Last Modified: Thu, 23 Jul 2026 19:14:15 GMT  
		Size: 6.6 MB (6605737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11bf072516e4b6f4775b19bb7ee0b657f0287131a76330f0738171a8fd6f05dd`  
		Last Modified: Thu, 23 Jul 2026 19:14:14 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:fa717572c9a16d0430adedbe5f86829b1f6673065c1eb666998b9681d9f6436e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232088776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735b194d83c60928d3f2f743e29b98f180f637fe36c551ca4d5ece9d77c4b1cc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 19:13:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 23 Jul 2026 19:13:46 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.1.tar.gz.asc crate-6.4.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.1.tar.gz.asc     && tar -xf crate-6.4.1.tar.gz -C /crate --strip-components=1     && rm crate-6.4.1.tar.gz # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 19:13:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 23 Jul 2026 19:13:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
VOLUME [/data]
# Thu, 23 Jul 2026 19:13:49 GMT
WORKDIR /data
# Thu, 23 Jul 2026 19:13:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 23 Jul 2026 19:13:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-20T08:28:26.440733+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.1
# Thu, 23 Jul 2026 19:13:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 23 Jul 2026 19:13:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 23 Jul 2026 19:13:49 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2db9d2fe5d63a2a25b94baf72a6bb6506338ceff1e863ea1cd91cdfa15aba1`  
		Last Modified: Thu, 23 Jul 2026 19:14:09 GMT  
		Size: 18.9 MB (18921904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22ea07d35a112a02335e4dccdbf4a463ae2587b72bc20bca98e2f496e7e941bc`  
		Last Modified: Thu, 23 Jul 2026 19:14:12 GMT  
		Size: 137.2 MB (137243204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9bfee6fa5614f85832717a12549396fb79f9dda9d503e112d08603d8fc7a7b`  
		Last Modified: Thu, 23 Jul 2026 19:14:08 GMT  
		Size: 8.8 MB (8788612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce3b4c54539786c51b5ed9c188efbff5fb2d99758975b866fdd4a1518b041f0`  
		Last Modified: Thu, 23 Jul 2026 19:14:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f334b9908623cd8dc085e899331cf1ca98268d4c639b3952acb1955d24a06c`  
		Last Modified: Thu, 23 Jul 2026 19:14:09 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056c3299ee236b0ada45b87b060e714ede189907d69baa3af416cd9f219b2784`  
		Last Modified: Thu, 23 Jul 2026 19:14:10 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a6c7d71c784c6ba3fa3f133ce22764246733f9d17e264d353a1eeef106f2ac`  
		Last Modified: Thu, 23 Jul 2026 19:14:11 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:8c639121dab4cc5003aa9cb78d895973c27541e00a2669469cadaea3a77718a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6625436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1bfa67e9b281943b90d5416e8795c15fe4854c1484878bd9b4f553e1ef6a3d8`

```dockerfile
```

-	Layers:
	-	`sha256:246234417349581cd19934445ce9f716e24dd58ce39ede7b0727d9a1fe34c836`  
		Last Modified: Thu, 23 Jul 2026 19:14:08 GMT  
		Size: 6.6 MB (6603661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20282f6e37f544f321d074c442eba2e2999c9a5db4ec43458bcab2f2c5839114`  
		Last Modified: Thu, 23 Jul 2026 19:14:07 GMT  
		Size: 21.8 KB (21775 bytes)  
		MIME: application/vnd.in-toto+json
