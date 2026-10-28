<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.4`](#crate64)
-	[`crate:6.4.6`](#crate646)
-	[`crate:6.5`](#crate65)
-	[`crate:6.5.0`](#crate650)
-	[`crate:latest`](#cratelatest)

## `crate:6.4`

```console
$ docker pull crate@sha256:3b2c3dd58f216bc924a244593519189e9fd234e0dec142986bf4c43fce2fcd58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

```console
$ docker pull crate@sha256:0697d5cb67d291a9ee74da5c4844a09aa0f19f91e4fb029ef1a5dc3710ecee8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247324941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710b5d685f121faa5007b9a3106c6de4ba007755252c98208310bcaca51a8602`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:17 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:49 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Tue, 27 Oct 2026 17:23:54 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:23:57 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 27 Oct 2026 17:23:57 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
VOLUME [/data]
# Tue, 27 Oct 2026 17:23:57 GMT
WORKDIR /data
# Tue, 27 Oct 2026 17:23:57 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Tue, 27 Oct 2026 17:23:57 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Tue, 27 Oct 2026 17:23:57 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:23:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:85c6768010474a5ebc1f9c52f98ffba6e06e4aaa8f11b96f6464b7798f9ab3a3`  
		Last Modified: Tue, 27 Oct 2026 17:18:33 GMT  
		Size: 69.3 MB (69279943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062f496f978d5742f97c31e9dd189a3921690bd8704b9a33bca99281d6bd84a8`  
		Last Modified: Tue, 27 Oct 2026 17:24:15 GMT  
		Size: 19.0 MB (18961703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c34028dd0fab61292dc0e9f2b2f1c6bd4d815ffd0b83fa0fe18fcb60dbcecc7`  
		Last Modified: Tue, 27 Oct 2026 17:24:18 GMT  
		Size: 149.3 MB (149303521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad150f57829f645a2ed8a614d0290ac7d625cfa774978db4a7d785ee6641201`  
		Last Modified: Tue, 27 Oct 2026 17:24:15 GMT  
		Size: 9.8 MB (9777897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e22c4ce3b52223bc6facd7786edea8a47cc8de4a2f9d967fe1200cff046a5b`  
		Last Modified: Tue, 27 Oct 2026 17:24:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad845480d454fbda0e12da50050e5ed23850140669da8d637572bdab96e151`  
		Last Modified: Tue, 27 Oct 2026 17:24:15 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b82531aa32c16a189e9c4045062b7c5b0788f713d77b26c4d674513f9895ca5`  
		Last Modified: Tue, 27 Oct 2026 17:24:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d31dfb0ca84af159b744213672e62aa0ff4cb50e4969186b08df0e5587e77a`  
		Last Modified: Tue, 27 Oct 2026 17:24:17 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:cc1243c15be945d59c4e7c648bd93dbed8100868073b53b3d9c0ebbe4ebf45ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da4002190d13c256672fad64642248d510197a7ece8939cd2d30b5dd1b0b704`

```dockerfile
```

-	Layers:
	-	`sha256:ac89325a576f1a485e3081f6b3113ab06833c9c0c4c7bc7fc2eaf38dc0a0d719`  
		Last Modified: Tue, 27 Oct 2026 17:24:14 GMT  
		Size: 6.6 MB (6595962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04e8f4c78dc0e9b49cb942123621c66f6f772a6c61a710f022475fc2e5874c7d`  
		Last Modified: Tue, 27 Oct 2026 17:24:14 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:865ed64fd4e7ffc31dccd79ec96d374f7da458e23e65520699e31ad4f21775ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243571292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c930163aeb28062341519a9dd7f568dccd14ae64391442bdd6a14d7d630a5981`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:07 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:07 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:21:45 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Tue, 27 Oct 2026 17:21:58 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:22:01 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 27 Oct 2026 17:22:01 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
VOLUME [/data]
# Tue, 27 Oct 2026 17:22:01 GMT
WORKDIR /data
# Tue, 27 Oct 2026 17:22:01 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Tue, 27 Oct 2026 17:22:01 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Tue, 27 Oct 2026 17:22:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 17:22:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:22:02 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:22438b94603beee6f70aa1303aa763595d60546fa5bb709b10d0b4e886102ca0`  
		Last Modified: Tue, 27 Oct 2026 17:18:24 GMT  
		Size: 67.9 MB (67867203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf2e932ccea183b22a359ce8a1e67af31be31b5a5647bb6b68c9f6465e773da`  
		Last Modified: Tue, 27 Oct 2026 17:22:21 GMT  
		Size: 19.0 MB (19004309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b5113c7935ff602e194fef162f0e712afb1600f592a34062666fa1ddd6906e`  
		Last Modified: Tue, 27 Oct 2026 17:22:23 GMT  
		Size: 146.9 MB (146918602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6937a82baf53c66b43b5139a1e04d975fa00eb0e07f99458df0fe49644b66870`  
		Last Modified: Tue, 27 Oct 2026 17:22:21 GMT  
		Size: 9.8 MB (9779304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964fce8bd6bf779ff4db5b72a7618bf94614af0a103329c4fab6d0d41b7bce96`  
		Last Modified: Tue, 27 Oct 2026 17:22:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b22e1bdefb4fa2fe7a9c0dadef9fe8272d1100eddee23f125a469443040d36b`  
		Last Modified: Tue, 27 Oct 2026 17:22:22 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e320527c7b6e9e8e58dd61f6843884e6a6f19bfb68fc6f492e352a1139bdc74`  
		Last Modified: Tue, 27 Oct 2026 17:22:22 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a6c750175639922a96c0af4e21ad2a85d0de3724b8a643352ed9ee74794ce9`  
		Last Modified: Tue, 27 Oct 2026 17:22:23 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:4feb413d7c22167975c8e2ac4dfc53215082503530b7b5038fae9d2699742282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d352c96b5ad0bdabf831bcc33094de7f51b4019c5e9bdad96a3e4fa95529fde5`

```dockerfile
```

-	Layers:
	-	`sha256:d4a625ccd14b96a58e5e4e722fdb9949213b7a8b284d73bb112188d67b624027`  
		Last Modified: Tue, 27 Oct 2026 17:22:21 GMT  
		Size: 6.6 MB (6593886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b34a66189a01d1faa1b3ce09d7a84286becd5c66313ad442a07ee712f7b8e6a3`  
		Last Modified: Tue, 27 Oct 2026 17:22:20 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4.6`

```console
$ docker pull crate@sha256:3b2c3dd58f216bc924a244593519189e9fd234e0dec142986bf4c43fce2fcd58
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4.6` - linux; amd64

```console
$ docker pull crate@sha256:0697d5cb67d291a9ee74da5c4844a09aa0f19f91e4fb029ef1a5dc3710ecee8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247324941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710b5d685f121faa5007b9a3106c6de4ba007755252c98208310bcaca51a8602`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:17 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:49 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Tue, 27 Oct 2026 17:23:54 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:23:57 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 27 Oct 2026 17:23:57 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
VOLUME [/data]
# Tue, 27 Oct 2026 17:23:57 GMT
WORKDIR /data
# Tue, 27 Oct 2026 17:23:57 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Tue, 27 Oct 2026 17:23:57 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Tue, 27 Oct 2026 17:23:57 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 17:23:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:23:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:85c6768010474a5ebc1f9c52f98ffba6e06e4aaa8f11b96f6464b7798f9ab3a3`  
		Last Modified: Tue, 27 Oct 2026 17:18:33 GMT  
		Size: 69.3 MB (69279943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062f496f978d5742f97c31e9dd189a3921690bd8704b9a33bca99281d6bd84a8`  
		Last Modified: Tue, 27 Oct 2026 17:24:15 GMT  
		Size: 19.0 MB (18961703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c34028dd0fab61292dc0e9f2b2f1c6bd4d815ffd0b83fa0fe18fcb60dbcecc7`  
		Last Modified: Tue, 27 Oct 2026 17:24:18 GMT  
		Size: 149.3 MB (149303521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad150f57829f645a2ed8a614d0290ac7d625cfa774978db4a7d785ee6641201`  
		Last Modified: Tue, 27 Oct 2026 17:24:15 GMT  
		Size: 9.8 MB (9777897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e22c4ce3b52223bc6facd7786edea8a47cc8de4a2f9d967fe1200cff046a5b`  
		Last Modified: Tue, 27 Oct 2026 17:24:14 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfad845480d454fbda0e12da50050e5ed23850140669da8d637572bdab96e151`  
		Last Modified: Tue, 27 Oct 2026 17:24:15 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b82531aa32c16a189e9c4045062b7c5b0788f713d77b26c4d674513f9895ca5`  
		Last Modified: Tue, 27 Oct 2026 17:24:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d31dfb0ca84af159b744213672e62aa0ff4cb50e4969186b08df0e5587e77a`  
		Last Modified: Tue, 27 Oct 2026 17:24:17 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.6` - unknown; unknown

```console
$ docker pull crate@sha256:cc1243c15be945d59c4e7c648bd93dbed8100868073b53b3d9c0ebbe4ebf45ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4da4002190d13c256672fad64642248d510197a7ece8939cd2d30b5dd1b0b704`

```dockerfile
```

-	Layers:
	-	`sha256:ac89325a576f1a485e3081f6b3113ab06833c9c0c4c7bc7fc2eaf38dc0a0d719`  
		Last Modified: Tue, 27 Oct 2026 17:24:14 GMT  
		Size: 6.6 MB (6595962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04e8f4c78dc0e9b49cb942123621c66f6f772a6c61a710f022475fc2e5874c7d`  
		Last Modified: Tue, 27 Oct 2026 17:24:14 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4.6` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:865ed64fd4e7ffc31dccd79ec96d374f7da458e23e65520699e31ad4f21775ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.6 MB (243571292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c930163aeb28062341519a9dd7f568dccd14ae64391442bdd6a14d7d630a5981`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:07 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:07 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:21:45 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Tue, 27 Oct 2026 17:21:58 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:22:01 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 27 Oct 2026 17:22:01 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
VOLUME [/data]
# Tue, 27 Oct 2026 17:22:01 GMT
WORKDIR /data
# Tue, 27 Oct 2026 17:22:01 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Tue, 27 Oct 2026 17:22:01 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Tue, 27 Oct 2026 17:22:01 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Tue, 27 Oct 2026 17:22:02 GMT
COPY docker-entrypoint.sh / # buildkit
# Tue, 27 Oct 2026 17:22:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:22:02 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:22438b94603beee6f70aa1303aa763595d60546fa5bb709b10d0b4e886102ca0`  
		Last Modified: Tue, 27 Oct 2026 17:18:24 GMT  
		Size: 67.9 MB (67867203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccf2e932ccea183b22a359ce8a1e67af31be31b5a5647bb6b68c9f6465e773da`  
		Last Modified: Tue, 27 Oct 2026 17:22:21 GMT  
		Size: 19.0 MB (19004309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b5113c7935ff602e194fef162f0e712afb1600f592a34062666fa1ddd6906e`  
		Last Modified: Tue, 27 Oct 2026 17:22:23 GMT  
		Size: 146.9 MB (146918602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6937a82baf53c66b43b5139a1e04d975fa00eb0e07f99458df0fe49644b66870`  
		Last Modified: Tue, 27 Oct 2026 17:22:21 GMT  
		Size: 9.8 MB (9779304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964fce8bd6bf779ff4db5b72a7618bf94614af0a103329c4fab6d0d41b7bce96`  
		Last Modified: Tue, 27 Oct 2026 17:22:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b22e1bdefb4fa2fe7a9c0dadef9fe8272d1100eddee23f125a469443040d36b`  
		Last Modified: Tue, 27 Oct 2026 17:22:22 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e320527c7b6e9e8e58dd61f6843884e6a6f19bfb68fc6f492e352a1139bdc74`  
		Last Modified: Tue, 27 Oct 2026 17:22:22 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a6c750175639922a96c0af4e21ad2a85d0de3724b8a643352ed9ee74794ce9`  
		Last Modified: Tue, 27 Oct 2026 17:22:23 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.6` - unknown; unknown

```console
$ docker pull crate@sha256:4feb413d7c22167975c8e2ac4dfc53215082503530b7b5038fae9d2699742282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d352c96b5ad0bdabf831bcc33094de7f51b4019c5e9bdad96a3e4fa95529fde5`

```dockerfile
```

-	Layers:
	-	`sha256:d4a625ccd14b96a58e5e4e722fdb9949213b7a8b284d73bb112188d67b624027`  
		Last Modified: Tue, 27 Oct 2026 17:22:21 GMT  
		Size: 6.6 MB (6593886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b34a66189a01d1faa1b3ce09d7a84286becd5c66313ad442a07ee712f7b8e6a3`  
		Last Modified: Tue, 27 Oct 2026 17:22:20 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.5`

```console
$ docker pull crate@sha256:f5a2aebcad96c725079320758e06225cb89456f58c14f501ca5896f3173948cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.5` - linux; amd64

```console
$ docker pull crate@sha256:b185da3e879e2c61ebde72df7b0eccbea9a4717ec1b2680b2c54bced19d1aa1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251294910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f98cc0496b74d698fa61e44c658d0caeb2e698a6296f9e9713940ad077aa19`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:17 GMT
CMD ["/bin/bash"]
# Wed, 28 Oct 2026 19:02:02 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 28 Oct 2026 19:02:16 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.0.tar.gz.asc crate-6.5.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.0.tar.gz.asc     && tar -xf crate-6.5.0.tar.gz -C /crate --strip-components=1     && rm crate-6.5.0.tar.gz # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 19:02:19 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 28 Oct 2026 19:02:19 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 19:02:19 GMT
WORKDIR /data
# Wed, 28 Oct 2026 19:02:19 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 28 Oct 2026 19:02:19 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-13T06:59:14.555658+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.0
# Wed, 28 Oct 2026 19:02:19 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 19:02:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:85c6768010474a5ebc1f9c52f98ffba6e06e4aaa8f11b96f6464b7798f9ab3a3`  
		Last Modified: Tue, 27 Oct 2026 17:18:33 GMT  
		Size: 69.3 MB (69279943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfbe37e4c7841d64bb924543947428c600b03cc04d78cb5dc1d54beff4f65b9`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 19.0 MB (18961801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb3b715a5e84ee3d274a61314d043bb35fd457653c072759c74aa6c73115860`  
		Last Modified: Wed, 28 Oct 2026 19:02:45 GMT  
		Size: 153.3 MB (153263153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42796cb5965b9b12f45452bffa03f423958131f73441cc5ba3d403d4becdc1ae`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 9.8 MB (9788132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c38984b3f9deb58c8ab0b5ceae633545bb6b3ef4a3d3195ac22458330d4704`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c836d1437e58093bc28245ebce0c47d507968cdb69e26bba3a0b34d0e1cf035d`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c113103419d5dd05eb1e0d2f3fbca5e96c34d2c86b7f442a1b9a68372cb0d23e`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fde25b71e34f2ac22568fc25895bbad1768ca275ebb0127bb6ba12ba5c0918`  
		Last Modified: Wed, 28 Oct 2026 19:02:43 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.5` - unknown; unknown

```console
$ docker pull crate@sha256:de097b5c1af966527eb555787d572882142085641c8795f1e15656af2bde21b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa5e49cbd1210d2e5b613c0d9ad307e67a41f4fbd3aab0550d847527211e3c7`

```dockerfile
```

-	Layers:
	-	`sha256:2f6bc039ac727b716d0d1ac435a66d6a8c4b746757c8440921b35ff941ecee3f`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 6.6 MB (6592887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f91df1a6b95a051de3a9d9deaabc90504c7d770bfa659294f9b5cc7c3ba6275`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.5` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:15f815ee9b350ad48edfd43b96a3cb1d45c5f3e94b4c08983ef9405d7cd48875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248089334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4d1d70385d1d0268b7868ad2025f1edddeca63835fb94d1ea92eb1385f8dd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:07 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:07 GMT
CMD ["/bin/bash"]
# Wed, 28 Oct 2026 19:01:35 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 28 Oct 2026 19:01:50 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.0.tar.gz.asc crate-6.5.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.0.tar.gz.asc     && tar -xf crate-6.5.0.tar.gz -C /crate --strip-components=1     && rm crate-6.5.0.tar.gz # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 19:01:53 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 28 Oct 2026 19:01:53 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 19:01:53 GMT
WORKDIR /data
# Wed, 28 Oct 2026 19:01:53 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 28 Oct 2026 19:01:53 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-13T06:59:14.555658+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.0
# Wed, 28 Oct 2026 19:01:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 28 Oct 2026 19:01:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 19:01:54 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:22438b94603beee6f70aa1303aa763595d60546fa5bb709b10d0b4e886102ca0`  
		Last Modified: Tue, 27 Oct 2026 17:18:24 GMT  
		Size: 67.9 MB (67867203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8d88431f2750e90156bb76c6e37ab6c6eb6ea6b32e2ad388d70f3659e2756`  
		Last Modified: Wed, 28 Oct 2026 19:02:16 GMT  
		Size: 19.0 MB (19004400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf46c20f5d9a0c144403ab29197e5a0d3ec503f2573424d3a6d3c446539837b`  
		Last Modified: Wed, 28 Oct 2026 19:02:18 GMT  
		Size: 151.4 MB (151428447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af574b2fbd2b8c1e2e7fe13b7631074bb7594578deae87641f86d69a7929f074`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 9.8 MB (9787405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543230ba3e6355a77e4f2de73b6d1c37588a9c24ad0b9bcb3df51dc3e5b9bea`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7829734808e34013ab117e245f47ca91113cdb8941c593d97e132992ae839a66`  
		Last Modified: Wed, 28 Oct 2026 19:02:16 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ad20c843e3a7b4a8eacf4792dc852b4ed37a1c7e24fe557fec0a56cff425ae`  
		Last Modified: Wed, 28 Oct 2026 19:02:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282e1e92be897c4564193c972d1a4bf6eaebe107d7ff095e2141cb076d71ba62`  
		Last Modified: Wed, 28 Oct 2026 19:02:17 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.5` - unknown; unknown

```console
$ docker pull crate@sha256:b50c43eaff0ffa18c4c41342bd669aa0e8fa400464492730da3b1f8f9f95d776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a065d837e6fc512867309035f870f716bad9015141c08eb71972604fb216a666`

```dockerfile
```

-	Layers:
	-	`sha256:b8609f684c62ed37fdadddad91e84bcc4a895172bc918a77146a35e9db6f060a`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 6.6 MB (6590809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:442884dfa73c8c632002615e2e12932886e4b8deaab758a7dcc7d8e38ce0a6ff`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.5.0`

```console
$ docker pull crate@sha256:f5a2aebcad96c725079320758e06225cb89456f58c14f501ca5896f3173948cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.5.0` - linux; amd64

```console
$ docker pull crate@sha256:b185da3e879e2c61ebde72df7b0eccbea9a4717ec1b2680b2c54bced19d1aa1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251294910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f98cc0496b74d698fa61e44c658d0caeb2e698a6296f9e9713940ad077aa19`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:17 GMT
CMD ["/bin/bash"]
# Wed, 28 Oct 2026 19:02:02 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 28 Oct 2026 19:02:16 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.0.tar.gz.asc crate-6.5.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.0.tar.gz.asc     && tar -xf crate-6.5.0.tar.gz -C /crate --strip-components=1     && rm crate-6.5.0.tar.gz # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 19:02:19 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 28 Oct 2026 19:02:19 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 19:02:19 GMT
WORKDIR /data
# Wed, 28 Oct 2026 19:02:19 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 28 Oct 2026 19:02:19 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-13T06:59:14.555658+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.0
# Wed, 28 Oct 2026 19:02:19 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 19:02:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:85c6768010474a5ebc1f9c52f98ffba6e06e4aaa8f11b96f6464b7798f9ab3a3`  
		Last Modified: Tue, 27 Oct 2026 17:18:33 GMT  
		Size: 69.3 MB (69279943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfbe37e4c7841d64bb924543947428c600b03cc04d78cb5dc1d54beff4f65b9`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 19.0 MB (18961801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb3b715a5e84ee3d274a61314d043bb35fd457653c072759c74aa6c73115860`  
		Last Modified: Wed, 28 Oct 2026 19:02:45 GMT  
		Size: 153.3 MB (153263153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42796cb5965b9b12f45452bffa03f423958131f73441cc5ba3d403d4becdc1ae`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 9.8 MB (9788132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c38984b3f9deb58c8ab0b5ceae633545bb6b3ef4a3d3195ac22458330d4704`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c836d1437e58093bc28245ebce0c47d507968cdb69e26bba3a0b34d0e1cf035d`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c113103419d5dd05eb1e0d2f3fbca5e96c34d2c86b7f442a1b9a68372cb0d23e`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fde25b71e34f2ac22568fc25895bbad1768ca275ebb0127bb6ba12ba5c0918`  
		Last Modified: Wed, 28 Oct 2026 19:02:43 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.5.0` - unknown; unknown

```console
$ docker pull crate@sha256:de097b5c1af966527eb555787d572882142085641c8795f1e15656af2bde21b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa5e49cbd1210d2e5b613c0d9ad307e67a41f4fbd3aab0550d847527211e3c7`

```dockerfile
```

-	Layers:
	-	`sha256:2f6bc039ac727b716d0d1ac435a66d6a8c4b746757c8440921b35ff941ecee3f`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 6.6 MB (6592887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f91df1a6b95a051de3a9d9deaabc90504c7d770bfa659294f9b5cc7c3ba6275`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.5.0` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:15f815ee9b350ad48edfd43b96a3cb1d45c5f3e94b4c08983ef9405d7cd48875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248089334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4d1d70385d1d0268b7868ad2025f1edddeca63835fb94d1ea92eb1385f8dd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:07 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:07 GMT
CMD ["/bin/bash"]
# Wed, 28 Oct 2026 19:01:35 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 28 Oct 2026 19:01:50 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.0.tar.gz.asc crate-6.5.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.0.tar.gz.asc     && tar -xf crate-6.5.0.tar.gz -C /crate --strip-components=1     && rm crate-6.5.0.tar.gz # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 19:01:53 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 28 Oct 2026 19:01:53 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 19:01:53 GMT
WORKDIR /data
# Wed, 28 Oct 2026 19:01:53 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 28 Oct 2026 19:01:53 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-13T06:59:14.555658+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.0
# Wed, 28 Oct 2026 19:01:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 28 Oct 2026 19:01:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 19:01:54 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:22438b94603beee6f70aa1303aa763595d60546fa5bb709b10d0b4e886102ca0`  
		Last Modified: Tue, 27 Oct 2026 17:18:24 GMT  
		Size: 67.9 MB (67867203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8d88431f2750e90156bb76c6e37ab6c6eb6ea6b32e2ad388d70f3659e2756`  
		Last Modified: Wed, 28 Oct 2026 19:02:16 GMT  
		Size: 19.0 MB (19004400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf46c20f5d9a0c144403ab29197e5a0d3ec503f2573424d3a6d3c446539837b`  
		Last Modified: Wed, 28 Oct 2026 19:02:18 GMT  
		Size: 151.4 MB (151428447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af574b2fbd2b8c1e2e7fe13b7631074bb7594578deae87641f86d69a7929f074`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 9.8 MB (9787405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543230ba3e6355a77e4f2de73b6d1c37588a9c24ad0b9bcb3df51dc3e5b9bea`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7829734808e34013ab117e245f47ca91113cdb8941c593d97e132992ae839a66`  
		Last Modified: Wed, 28 Oct 2026 19:02:16 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ad20c843e3a7b4a8eacf4792dc852b4ed37a1c7e24fe557fec0a56cff425ae`  
		Last Modified: Wed, 28 Oct 2026 19:02:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282e1e92be897c4564193c972d1a4bf6eaebe107d7ff095e2141cb076d71ba62`  
		Last Modified: Wed, 28 Oct 2026 19:02:17 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.5.0` - unknown; unknown

```console
$ docker pull crate@sha256:b50c43eaff0ffa18c4c41342bd669aa0e8fa400464492730da3b1f8f9f95d776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a065d837e6fc512867309035f870f716bad9015141c08eb71972604fb216a666`

```dockerfile
```

-	Layers:
	-	`sha256:b8609f684c62ed37fdadddad91e84bcc4a895172bc918a77146a35e9db6f060a`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 6.6 MB (6590809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:442884dfa73c8c632002615e2e12932886e4b8deaab758a7dcc7d8e38ce0a6ff`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:latest`

```console
$ docker pull crate@sha256:f5a2aebcad96c725079320758e06225cb89456f58c14f501ca5896f3173948cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:b185da3e879e2c61ebde72df7b0eccbea9a4717ec1b2680b2c54bced19d1aa1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251294910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f98cc0496b74d698fa61e44c658d0caeb2e698a6296f9e9713940ad077aa19`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:17 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:17 GMT
CMD ["/bin/bash"]
# Wed, 28 Oct 2026 19:02:02 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 28 Oct 2026 19:02:16 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.0.tar.gz.asc crate-6.5.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.0.tar.gz.asc     && tar -xf crate-6.5.0.tar.gz -C /crate --strip-components=1     && rm crate-6.5.0.tar.gz # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 19:02:19 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 28 Oct 2026 19:02:19 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 19:02:19 GMT
WORKDIR /data
# Wed, 28 Oct 2026 19:02:19 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 28 Oct 2026 19:02:19 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-13T06:59:14.555658+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.0
# Wed, 28 Oct 2026 19:02:19 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 28 Oct 2026 19:02:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 19:02:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:85c6768010474a5ebc1f9c52f98ffba6e06e4aaa8f11b96f6464b7798f9ab3a3`  
		Last Modified: Tue, 27 Oct 2026 17:18:33 GMT  
		Size: 69.3 MB (69279943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfbe37e4c7841d64bb924543947428c600b03cc04d78cb5dc1d54beff4f65b9`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 19.0 MB (18961801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fb3b715a5e84ee3d274a61314d043bb35fd457653c072759c74aa6c73115860`  
		Last Modified: Wed, 28 Oct 2026 19:02:45 GMT  
		Size: 153.3 MB (153263153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42796cb5965b9b12f45452bffa03f423958131f73441cc5ba3d403d4becdc1ae`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 9.8 MB (9788132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c38984b3f9deb58c8ab0b5ceae633545bb6b3ef4a3d3195ac22458330d4704`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c836d1437e58093bc28245ebce0c47d507968cdb69e26bba3a0b34d0e1cf035d`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c113103419d5dd05eb1e0d2f3fbca5e96c34d2c86b7f442a1b9a68372cb0d23e`  
		Last Modified: Wed, 28 Oct 2026 19:02:42 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fde25b71e34f2ac22568fc25895bbad1768ca275ebb0127bb6ba12ba5c0918`  
		Last Modified: Wed, 28 Oct 2026 19:02:43 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:de097b5c1af966527eb555787d572882142085641c8795f1e15656af2bde21b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6614527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa5e49cbd1210d2e5b613c0d9ad307e67a41f4fbd3aab0550d847527211e3c7`

```dockerfile
```

-	Layers:
	-	`sha256:2f6bc039ac727b716d0d1ac435a66d6a8c4b746757c8440921b35ff941ecee3f`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 6.6 MB (6592887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f91df1a6b95a051de3a9d9deaabc90504c7d770bfa659294f9b5cc7c3ba6275`  
		Last Modified: Wed, 28 Oct 2026 19:02:41 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:15f815ee9b350ad48edfd43b96a3cb1d45c5f3e94b4c08983ef9405d7cd48875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.1 MB (248089334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4d1d70385d1d0268b7868ad2025f1edddeca63835fb94d1ea92eb1385f8dd6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:07 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:07 GMT
CMD ["/bin/bash"]
# Wed, 28 Oct 2026 19:01:35 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Wed, 28 Oct 2026 19:01:50 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.0.tar.gz.asc crate-6.5.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.0.tar.gz.asc     && tar -xf crate-6.5.0.tar.gz -C /crate --strip-components=1     && rm crate-6.5.0.tar.gz # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 19:01:53 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 28 Oct 2026 19:01:53 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
VOLUME [/data]
# Wed, 28 Oct 2026 19:01:53 GMT
WORKDIR /data
# Wed, 28 Oct 2026 19:01:53 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Wed, 28 Oct 2026 19:01:53 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Wed, 28 Oct 2026 19:01:53 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-13T06:59:14.555658+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.0
# Wed, 28 Oct 2026 19:01:54 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 28 Oct 2026 19:01:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Oct 2026 19:01:54 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:22438b94603beee6f70aa1303aa763595d60546fa5bb709b10d0b4e886102ca0`  
		Last Modified: Tue, 27 Oct 2026 17:18:24 GMT  
		Size: 67.9 MB (67867203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d8d88431f2750e90156bb76c6e37ab6c6eb6ea6b32e2ad388d70f3659e2756`  
		Last Modified: Wed, 28 Oct 2026 19:02:16 GMT  
		Size: 19.0 MB (19004400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf46c20f5d9a0c144403ab29197e5a0d3ec503f2573424d3a6d3c446539837b`  
		Last Modified: Wed, 28 Oct 2026 19:02:18 GMT  
		Size: 151.4 MB (151428447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af574b2fbd2b8c1e2e7fe13b7631074bb7594578deae87641f86d69a7929f074`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 9.8 MB (9787405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d543230ba3e6355a77e4f2de73b6d1c37588a9c24ad0b9bcb3df51dc3e5b9bea`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7829734808e34013ab117e245f47ca91113cdb8941c593d97e132992ae839a66`  
		Last Modified: Wed, 28 Oct 2026 19:02:16 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6ad20c843e3a7b4a8eacf4792dc852b4ed37a1c7e24fe557fec0a56cff425ae`  
		Last Modified: Wed, 28 Oct 2026 19:02:17 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282e1e92be897c4564193c972d1a4bf6eaebe107d7ff095e2141cb076d71ba62`  
		Last Modified: Wed, 28 Oct 2026 19:02:17 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:b50c43eaff0ffa18c4c41342bd669aa0e8fa400464492730da3b1f8f9f95d776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a065d837e6fc512867309035f870f716bad9015141c08eb71972604fb216a666`

```dockerfile
```

-	Layers:
	-	`sha256:b8609f684c62ed37fdadddad91e84bcc4a895172bc918a77146a35e9db6f060a`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 6.6 MB (6590809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:442884dfa73c8c632002615e2e12932886e4b8deaab758a7dcc7d8e38ce0a6ff`  
		Last Modified: Wed, 28 Oct 2026 19:02:15 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json
