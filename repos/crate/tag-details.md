<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.3`](#crate63)
-	[`crate:6.3.7`](#crate637)
-	[`crate:6.4`](#crate64)
-	[`crate:6.4.6`](#crate646)
-	[`crate:latest`](#cratelatest)

## `crate:6.3`

```console
$ docker pull crate@sha256:af6b41db307460e8189b6e84dfdc4b673ba36996c5a912cb3d776bcdfafe7f02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3` - linux; amd64

```console
$ docker pull crate@sha256:20fe91f38095491a90539402430db4cf915335ce6bfff7de64b82b1e766d63c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (246981787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dff2eb61fd6fdf934c168f3fc29fa6d36dcf37cf312e9e7267c96a085cc2cc3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:59 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:59 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:31 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:21:44 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.7.tar.gz.asc crate-6.3.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.7.tar.gz.asc     && tar -xf crate-6.3.7.tar.gz -C /crate --strip-components=1     && rm crate-6.3.7.tar.gz # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:21:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:21:47 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:21:47 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:21:47 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:21:47 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T09:34:22.717620+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.7
# Fri, 02 Oct 2026 18:21:47 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:21:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9178f49666897c5cabad57def00cb0ac9abe49836faf0c6002116f5fcb97e521`  
		Last Modified: Fri, 02 Oct 2026 18:16:15 GMT  
		Size: 69.3 MB (69265927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021cf0fd259fa30042f98566b564434b65dd172a96061632b5e742812461e095`  
		Last Modified: Fri, 02 Oct 2026 18:22:05 GMT  
		Size: 19.0 MB (18960153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac5116666914fe2b981177bc1456a6e97969e0b48d9579f486297238eda781d`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 149.0 MB (149030170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003a526c158c68bfa08e0464a3481c75380a915c6cdd276bc891f6539dfc2b9f`  
		Last Modified: Fri, 02 Oct 2026 18:22:04 GMT  
		Size: 9.7 MB (9723659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38aa467fdf7147f6e5238ad3467f4f112488a7e7ae57b34b9531c7bc722e819b`  
		Last Modified: Fri, 02 Oct 2026 18:22:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db47584e2b0857601d6b9ea1827bdb260c6d2795739b98115557c96c6f5dcfe5`  
		Last Modified: Fri, 02 Oct 2026 18:22:05 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f366102468163e91b3585cc61e3eb30b30cd65991d13824e432393794b9742b2`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360715e0e0ffdbef699002eb88cb5f5e2d8f14afba732b725af093e7f13779dc`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:b4e7c4f6995422074c94a6af522ea7d8b4405ef88e038cf8b549d1dd444a2fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063041e3547aab065b0789a1be3d6c3e47fb576d6f67bf2b7041fa0fedd2b1df`

```dockerfile
```

-	Layers:
	-	`sha256:97658da4220db895c0118092b6bd957d0defc4b44f2f16b90ed6d853845e510d`  
		Last Modified: Fri, 02 Oct 2026 18:22:04 GMT  
		Size: 6.6 MB (6594139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e9d3ad73abb0f278b0589517c018079cea595694c2e68c6435f053586397601`  
		Last Modified: Fri, 02 Oct 2026 18:22:04 GMT  
		Size: 21.3 KB (21341 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:aeb5c12a63c2aae75e5896906a169484b369b68bb49cd51998a504b018bcf141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243239624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d1e78557be2f7acc7720733368c208a75dfa7c7d1fa98ad37f88a2ef5bc916`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:46 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:46 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:32 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:21:45 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.7.tar.gz.asc crate-6.3.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.7.tar.gz.asc     && tar -xf crate-6.3.7.tar.gz -C /crate --strip-components=1     && rm crate-6.3.7.tar.gz # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:21:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:21:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:21:49 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:21:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:21:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T09:34:22.717620+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.7
# Fri, 02 Oct 2026 18:21:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:21:49 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:58698498ad6cc228cd6c8b153b9ed88d61c121a3eecaf53d91de43b65d7175f0`  
		Last Modified: Fri, 02 Oct 2026 18:16:03 GMT  
		Size: 67.9 MB (67854504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc77607b2a4138622b7a51cb663afa66f678679171155c04c4cb868ecd1ec608`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 19.0 MB (18999808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc674331b9c5ba6f3318e6c3b4aedf27e5c7c7ea65857b8c031cd209f4a204b`  
		Last Modified: Fri, 02 Oct 2026 18:22:12 GMT  
		Size: 146.7 MB (146658682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed220162d28755a80202dc759cc71cd5f029007378ad985596e33228bde1b8f`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 9.7 MB (9724752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8463cd35384e3d2a2915807d5660206d18212114ad342a009c7d605bf114ee`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5aa8da69117f701255892b27513b29d7faaf14cb320fcbfbeb89ad9f9989d93`  
		Last Modified: Fri, 02 Oct 2026 18:22:09 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1adc0b1ebb202947b3dfe365ed60613d8619c91756c873835ffcc94929ebf5d`  
		Last Modified: Fri, 02 Oct 2026 18:22:09 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c263a6887b822033b24f0b0529d15a4fd5f5e2133b5d2534511a340490865732`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:d42a2fb61420b5ff9a87fea0a60b6e12094ab7b72a59341b28b03211da90ade4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c8ab23df8babc9974e56298f6165c62d106fa5ec6b21900628a277788bba48`

```dockerfile
```

-	Layers:
	-	`sha256:3ccbdc7a121a68d9d2c3942d0c1e16452b5c09605acc378600f291bcc4fdd409`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 6.6 MB (6592051 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4023cb67452fecf19394e8f910a4ea785404f8cf9a8c8a61d96bc60846dd89e9`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 21.5 KB (21469 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.3.7`

```console
$ docker pull crate@sha256:af6b41db307460e8189b6e84dfdc4b673ba36996c5a912cb3d776bcdfafe7f02
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3.7` - linux; amd64

```console
$ docker pull crate@sha256:20fe91f38095491a90539402430db4cf915335ce6bfff7de64b82b1e766d63c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.0 MB (246981787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dff2eb61fd6fdf934c168f3fc29fa6d36dcf37cf312e9e7267c96a085cc2cc3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:59 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:59 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:31 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:21:44 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.7.tar.gz.asc crate-6.3.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.7.tar.gz.asc     && tar -xf crate-6.3.7.tar.gz -C /crate --strip-components=1     && rm crate-6.3.7.tar.gz # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:21:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:21:47 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:21:47 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:21:47 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:21:47 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T09:34:22.717620+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.7
# Fri, 02 Oct 2026 18:21:47 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:21:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9178f49666897c5cabad57def00cb0ac9abe49836faf0c6002116f5fcb97e521`  
		Last Modified: Fri, 02 Oct 2026 18:16:15 GMT  
		Size: 69.3 MB (69265927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021cf0fd259fa30042f98566b564434b65dd172a96061632b5e742812461e095`  
		Last Modified: Fri, 02 Oct 2026 18:22:05 GMT  
		Size: 19.0 MB (18960153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac5116666914fe2b981177bc1456a6e97969e0b48d9579f486297238eda781d`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 149.0 MB (149030170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003a526c158c68bfa08e0464a3481c75380a915c6cdd276bc891f6539dfc2b9f`  
		Last Modified: Fri, 02 Oct 2026 18:22:04 GMT  
		Size: 9.7 MB (9723659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38aa467fdf7147f6e5238ad3467f4f112488a7e7ae57b34b9531c7bc722e819b`  
		Last Modified: Fri, 02 Oct 2026 18:22:04 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db47584e2b0857601d6b9ea1827bdb260c6d2795739b98115557c96c6f5dcfe5`  
		Last Modified: Fri, 02 Oct 2026 18:22:05 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f366102468163e91b3585cc61e3eb30b30cd65991d13824e432393794b9742b2`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360715e0e0ffdbef699002eb88cb5f5e2d8f14afba732b725af093e7f13779dc`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3.7` - unknown; unknown

```console
$ docker pull crate@sha256:b4e7c4f6995422074c94a6af522ea7d8b4405ef88e038cf8b549d1dd444a2fbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063041e3547aab065b0789a1be3d6c3e47fb576d6f67bf2b7041fa0fedd2b1df`

```dockerfile
```

-	Layers:
	-	`sha256:97658da4220db895c0118092b6bd957d0defc4b44f2f16b90ed6d853845e510d`  
		Last Modified: Fri, 02 Oct 2026 18:22:04 GMT  
		Size: 6.6 MB (6594139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e9d3ad73abb0f278b0589517c018079cea595694c2e68c6435f053586397601`  
		Last Modified: Fri, 02 Oct 2026 18:22:04 GMT  
		Size: 21.3 KB (21341 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3.7` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:aeb5c12a63c2aae75e5896906a169484b369b68bb49cd51998a504b018bcf141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.2 MB (243239624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68d1e78557be2f7acc7720733368c208a75dfa7c7d1fa98ad37f88a2ef5bc916`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:46 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:46 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:32 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:21:45 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.7.tar.gz.asc crate-6.3.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.7.tar.gz.asc     && tar -xf crate-6.3.7.tar.gz -C /crate --strip-components=1     && rm crate-6.3.7.tar.gz # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:21:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:21:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:21:49 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:21:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:21:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T09:34:22.717620+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.7
# Fri, 02 Oct 2026 18:21:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:21:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:21:49 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:58698498ad6cc228cd6c8b153b9ed88d61c121a3eecaf53d91de43b65d7175f0`  
		Last Modified: Fri, 02 Oct 2026 18:16:03 GMT  
		Size: 67.9 MB (67854504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc77607b2a4138622b7a51cb663afa66f678679171155c04c4cb868ecd1ec608`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 19.0 MB (18999808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc674331b9c5ba6f3318e6c3b4aedf27e5c7c7ea65857b8c031cd209f4a204b`  
		Last Modified: Fri, 02 Oct 2026 18:22:12 GMT  
		Size: 146.7 MB (146658682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed220162d28755a80202dc759cc71cd5f029007378ad985596e33228bde1b8f`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 9.7 MB (9724752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd8463cd35384e3d2a2915807d5660206d18212114ad342a009c7d605bf114ee`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5aa8da69117f701255892b27513b29d7faaf14cb320fcbfbeb89ad9f9989d93`  
		Last Modified: Fri, 02 Oct 2026 18:22:09 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1adc0b1ebb202947b3dfe365ed60613d8619c91756c873835ffcc94929ebf5d`  
		Last Modified: Fri, 02 Oct 2026 18:22:09 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c263a6887b822033b24f0b0529d15a4fd5f5e2133b5d2534511a340490865732`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3.7` - unknown; unknown

```console
$ docker pull crate@sha256:d42a2fb61420b5ff9a87fea0a60b6e12094ab7b72a59341b28b03211da90ade4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c8ab23df8babc9974e56298f6165c62d106fa5ec6b21900628a277788bba48`

```dockerfile
```

-	Layers:
	-	`sha256:3ccbdc7a121a68d9d2c3942d0c1e16452b5c09605acc378600f291bcc4fdd409`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 6.6 MB (6592051 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4023cb67452fecf19394e8f910a4ea785404f8cf9a8c8a61d96bc60846dd89e9`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 21.5 KB (21469 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4`

```console
$ docker pull crate@sha256:8d3e8778378236192724776877d2ea4546d5b5586362c8d174e6aa46177bb0fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

```console
$ docker pull crate@sha256:e7bded344df487e2595f59d7edaa0cf96979a00ba51f12ee66d7fcf8cd65f5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247266309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7a44e903d820a7789adb71a8200fcdcdd5093d32085d12719bf8f01ddb9cbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:59 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:59 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 18:23:23 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 12 Oct 2026 18:23:36 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:23:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 12 Oct 2026 18:23:39 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
VOLUME [/data]
# Mon, 12 Oct 2026 18:23:39 GMT
WORKDIR /data
# Mon, 12 Oct 2026 18:23:39 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 12 Oct 2026 18:23:39 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Mon, 12 Oct 2026 18:23:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 18:23:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9178f49666897c5cabad57def00cb0ac9abe49836faf0c6002116f5fcb97e521`  
		Last Modified: Fri, 02 Oct 2026 18:16:15 GMT  
		Size: 69.3 MB (69265927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fdf20c6d27ab2d45487ec5a7e9f529f53b362b08105893cf031b79e0775532`  
		Last Modified: Mon, 12 Oct 2026 18:23:58 GMT  
		Size: 19.0 MB (18958373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79b778fea4fbe739fe1b03e2d20c55d82027bc412cc6c6258e78b5357c9ecd9`  
		Last Modified: Mon, 12 Oct 2026 18:24:02 GMT  
		Size: 149.3 MB (149303502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d5e946ec8009ca1776becf84b14361230985aa0fc2b521611df97fde78dd7f`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 9.7 MB (9736626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9243781d5fe7a5f4a3043d50d59a41a77b96260a18b9701092130a807aec54`  
		Last Modified: Mon, 12 Oct 2026 18:23:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae306327972b599a9979329e91c4721000054c20c475e94dc5e65da05fd903a`  
		Last Modified: Mon, 12 Oct 2026 18:23:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e33412704cd9c4dd6c1a4ad53397b3034a1c6c5a3a4fd6664e9f5c2fe98d275`  
		Last Modified: Mon, 12 Oct 2026 18:23:59 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c312389628f5900cfbe60f55025c3b40a75d309681e32c00af0afa1c819ca715`  
		Last Modified: Mon, 12 Oct 2026 18:23:59 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:81b34a8d87d4129a269df20d0c1b34df1453a13077b59b6008938b9ccebbb212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd3b26d5f68269ddafe064ac2623a3b24e72627685656c6b3a7e4825d8d7533`

```dockerfile
```

-	Layers:
	-	`sha256:6fd3e6be13746c15b66e719354d0d9a22a3ae60609c82b4808fc7d31040a88cf`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 6.6 MB (6595962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95a12194fea5de2175821249696ef95457c9958366828495f9f62cacdfa35dd1`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:ba97db1081c0334ffceda81b91a59c76cdde17c245ed9fa0b6c3b36798cedc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243512212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5db890d5dec4eae001f934f4f31c065f2eb13fc692c07e02fd86e8b6e2b3a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:46 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:46 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 18:25:26 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 12 Oct 2026 18:25:39 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:25:42 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 12 Oct 2026 18:25:42 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
VOLUME [/data]
# Mon, 12 Oct 2026 18:25:42 GMT
WORKDIR /data
# Mon, 12 Oct 2026 18:25:42 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 12 Oct 2026 18:25:42 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Mon, 12 Oct 2026 18:25:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 18:25:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:58698498ad6cc228cd6c8b153b9ed88d61c121a3eecaf53d91de43b65d7175f0`  
		Last Modified: Fri, 02 Oct 2026 18:16:03 GMT  
		Size: 67.9 MB (67854504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ee87e6c71077398be798e5cff576546fc315251acd5941238afd318ad30e5`  
		Last Modified: Mon, 12 Oct 2026 18:26:02 GMT  
		Size: 19.0 MB (19000095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f03dacfc3668189165860841d32cc872e2cf0cefb7878d91443e6d9fcef59a4`  
		Last Modified: Mon, 12 Oct 2026 18:26:05 GMT  
		Size: 146.9 MB (146918578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e05e809d3fb8b4880797573a1f460f538c6a80cbe9588440a72265430af38b`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 9.7 MB (9737158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bad3375749836d2454f2c871b13ce1c8c871fc96cec2e254f6cdbad4fc2f97`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3839d31df5c33c9fd93466064ee5e4d96ee105a4351eb506f44e84b544f95b79`  
		Last Modified: Mon, 12 Oct 2026 18:26:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1d9512d00321b696318e1e12ab7c6394e120886f0985b644406a924f45cb4b`  
		Last Modified: Mon, 12 Oct 2026 18:26:03 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a14a40bae06a394072b26b3638fad00c7e05687d72e716da1415aabf1d03b2d`  
		Last Modified: Mon, 12 Oct 2026 18:26:04 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:cc8644232e2906a4b81a3f7651a05909db6ce2dbf42fa6108022fc46f02828f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410449001dd543ca96786edb8eb060ed0f2e701873517842797ea1416538bc21`

```dockerfile
```

-	Layers:
	-	`sha256:2776c76a73a53cabe7b0e4b4fe9ad087945ff391f25636151ce34450c31ce350`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 6.6 MB (6593886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01e94a0caa572784712174e5af3443a2b3fc116d1a4577e828f1de122c5752b0`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4.6`

```console
$ docker pull crate@sha256:8d3e8778378236192724776877d2ea4546d5b5586362c8d174e6aa46177bb0fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4.6` - linux; amd64

```console
$ docker pull crate@sha256:e7bded344df487e2595f59d7edaa0cf96979a00ba51f12ee66d7fcf8cd65f5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247266309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7a44e903d820a7789adb71a8200fcdcdd5093d32085d12719bf8f01ddb9cbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:59 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:59 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 18:23:23 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 12 Oct 2026 18:23:36 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:23:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 12 Oct 2026 18:23:39 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
VOLUME [/data]
# Mon, 12 Oct 2026 18:23:39 GMT
WORKDIR /data
# Mon, 12 Oct 2026 18:23:39 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 12 Oct 2026 18:23:39 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Mon, 12 Oct 2026 18:23:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 18:23:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9178f49666897c5cabad57def00cb0ac9abe49836faf0c6002116f5fcb97e521`  
		Last Modified: Fri, 02 Oct 2026 18:16:15 GMT  
		Size: 69.3 MB (69265927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fdf20c6d27ab2d45487ec5a7e9f529f53b362b08105893cf031b79e0775532`  
		Last Modified: Mon, 12 Oct 2026 18:23:58 GMT  
		Size: 19.0 MB (18958373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79b778fea4fbe739fe1b03e2d20c55d82027bc412cc6c6258e78b5357c9ecd9`  
		Last Modified: Mon, 12 Oct 2026 18:24:02 GMT  
		Size: 149.3 MB (149303502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d5e946ec8009ca1776becf84b14361230985aa0fc2b521611df97fde78dd7f`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 9.7 MB (9736626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9243781d5fe7a5f4a3043d50d59a41a77b96260a18b9701092130a807aec54`  
		Last Modified: Mon, 12 Oct 2026 18:23:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae306327972b599a9979329e91c4721000054c20c475e94dc5e65da05fd903a`  
		Last Modified: Mon, 12 Oct 2026 18:23:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e33412704cd9c4dd6c1a4ad53397b3034a1c6c5a3a4fd6664e9f5c2fe98d275`  
		Last Modified: Mon, 12 Oct 2026 18:23:59 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c312389628f5900cfbe60f55025c3b40a75d309681e32c00af0afa1c819ca715`  
		Last Modified: Mon, 12 Oct 2026 18:23:59 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.6` - unknown; unknown

```console
$ docker pull crate@sha256:81b34a8d87d4129a269df20d0c1b34df1453a13077b59b6008938b9ccebbb212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd3b26d5f68269ddafe064ac2623a3b24e72627685656c6b3a7e4825d8d7533`

```dockerfile
```

-	Layers:
	-	`sha256:6fd3e6be13746c15b66e719354d0d9a22a3ae60609c82b4808fc7d31040a88cf`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 6.6 MB (6595962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95a12194fea5de2175821249696ef95457c9958366828495f9f62cacdfa35dd1`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4.6` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:ba97db1081c0334ffceda81b91a59c76cdde17c245ed9fa0b6c3b36798cedc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243512212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5db890d5dec4eae001f934f4f31c065f2eb13fc692c07e02fd86e8b6e2b3a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:46 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:46 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 18:25:26 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 12 Oct 2026 18:25:39 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:25:42 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 12 Oct 2026 18:25:42 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
VOLUME [/data]
# Mon, 12 Oct 2026 18:25:42 GMT
WORKDIR /data
# Mon, 12 Oct 2026 18:25:42 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 12 Oct 2026 18:25:42 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Mon, 12 Oct 2026 18:25:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 18:25:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:58698498ad6cc228cd6c8b153b9ed88d61c121a3eecaf53d91de43b65d7175f0`  
		Last Modified: Fri, 02 Oct 2026 18:16:03 GMT  
		Size: 67.9 MB (67854504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ee87e6c71077398be798e5cff576546fc315251acd5941238afd318ad30e5`  
		Last Modified: Mon, 12 Oct 2026 18:26:02 GMT  
		Size: 19.0 MB (19000095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f03dacfc3668189165860841d32cc872e2cf0cefb7878d91443e6d9fcef59a4`  
		Last Modified: Mon, 12 Oct 2026 18:26:05 GMT  
		Size: 146.9 MB (146918578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e05e809d3fb8b4880797573a1f460f538c6a80cbe9588440a72265430af38b`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 9.7 MB (9737158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bad3375749836d2454f2c871b13ce1c8c871fc96cec2e254f6cdbad4fc2f97`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3839d31df5c33c9fd93466064ee5e4d96ee105a4351eb506f44e84b544f95b79`  
		Last Modified: Mon, 12 Oct 2026 18:26:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1d9512d00321b696318e1e12ab7c6394e120886f0985b644406a924f45cb4b`  
		Last Modified: Mon, 12 Oct 2026 18:26:03 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a14a40bae06a394072b26b3638fad00c7e05687d72e716da1415aabf1d03b2d`  
		Last Modified: Mon, 12 Oct 2026 18:26:04 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.6` - unknown; unknown

```console
$ docker pull crate@sha256:cc8644232e2906a4b81a3f7651a05909db6ce2dbf42fa6108022fc46f02828f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410449001dd543ca96786edb8eb060ed0f2e701873517842797ea1416538bc21`

```dockerfile
```

-	Layers:
	-	`sha256:2776c76a73a53cabe7b0e4b4fe9ad087945ff391f25636151ce34450c31ce350`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 6.6 MB (6593886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01e94a0caa572784712174e5af3443a2b3fc116d1a4577e828f1de122c5752b0`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:latest`

```console
$ docker pull crate@sha256:8d3e8778378236192724776877d2ea4546d5b5586362c8d174e6aa46177bb0fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:e7bded344df487e2595f59d7edaa0cf96979a00ba51f12ee66d7fcf8cd65f5f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.3 MB (247266309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7a44e903d820a7789adb71a8200fcdcdd5093d32085d12719bf8f01ddb9cbf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:59 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:59 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 18:23:23 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 12 Oct 2026 18:23:36 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:23:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 12 Oct 2026 18:23:39 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
VOLUME [/data]
# Mon, 12 Oct 2026 18:23:39 GMT
WORKDIR /data
# Mon, 12 Oct 2026 18:23:39 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 12 Oct 2026 18:23:39 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Mon, 12 Oct 2026 18:23:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 12 Oct 2026 18:23:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 18:23:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9178f49666897c5cabad57def00cb0ac9abe49836faf0c6002116f5fcb97e521`  
		Last Modified: Fri, 02 Oct 2026 18:16:15 GMT  
		Size: 69.3 MB (69265927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fdf20c6d27ab2d45487ec5a7e9f529f53b362b08105893cf031b79e0775532`  
		Last Modified: Mon, 12 Oct 2026 18:23:58 GMT  
		Size: 19.0 MB (18958373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79b778fea4fbe739fe1b03e2d20c55d82027bc412cc6c6258e78b5357c9ecd9`  
		Last Modified: Mon, 12 Oct 2026 18:24:02 GMT  
		Size: 149.3 MB (149303502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d5e946ec8009ca1776becf84b14361230985aa0fc2b521611df97fde78dd7f`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 9.7 MB (9736626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9243781d5fe7a5f4a3043d50d59a41a77b96260a18b9701092130a807aec54`  
		Last Modified: Mon, 12 Oct 2026 18:23:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae306327972b599a9979329e91c4721000054c20c475e94dc5e65da05fd903a`  
		Last Modified: Mon, 12 Oct 2026 18:23:58 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e33412704cd9c4dd6c1a4ad53397b3034a1c6c5a3a4fd6664e9f5c2fe98d275`  
		Last Modified: Mon, 12 Oct 2026 18:23:59 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c312389628f5900cfbe60f55025c3b40a75d309681e32c00af0afa1c819ca715`  
		Last Modified: Mon, 12 Oct 2026 18:23:59 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:81b34a8d87d4129a269df20d0c1b34df1453a13077b59b6008938b9ccebbb212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dd3b26d5f68269ddafe064ac2623a3b24e72627685656c6b3a7e4825d8d7533`

```dockerfile
```

-	Layers:
	-	`sha256:6fd3e6be13746c15b66e719354d0d9a22a3ae60609c82b4808fc7d31040a88cf`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 6.6 MB (6595962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95a12194fea5de2175821249696ef95457c9958366828495f9f62cacdfa35dd1`  
		Last Modified: Mon, 12 Oct 2026 18:23:57 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:ba97db1081c0334ffceda81b91a59c76cdde17c245ed9fa0b6c3b36798cedc2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243512212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5db890d5dec4eae001f934f4f31c065f2eb13fc692c07e02fd86e8b6e2b3a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:46 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:46 GMT
CMD ["/bin/bash"]
# Mon, 12 Oct 2026 18:25:26 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 12 Oct 2026 18:25:39 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.6.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.6.tar.gz.asc crate-6.4.6.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.6.tar.gz.asc     && tar -xf crate-6.4.6.tar.gz -C /crate --strip-components=1     && rm crate-6.4.6.tar.gz # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 18:25:42 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 12 Oct 2026 18:25:42 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
VOLUME [/data]
# Mon, 12 Oct 2026 18:25:42 GMT
WORKDIR /data
# Mon, 12 Oct 2026 18:25:42 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 12 Oct 2026 18:25:42 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-10-08T11:43:37.751900+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.6
# Mon, 12 Oct 2026 18:25:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 12 Oct 2026 18:25:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 12 Oct 2026 18:25:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:58698498ad6cc228cd6c8b153b9ed88d61c121a3eecaf53d91de43b65d7175f0`  
		Last Modified: Fri, 02 Oct 2026 18:16:03 GMT  
		Size: 67.9 MB (67854504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:173ee87e6c71077398be798e5cff576546fc315251acd5941238afd318ad30e5`  
		Last Modified: Mon, 12 Oct 2026 18:26:02 GMT  
		Size: 19.0 MB (19000095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f03dacfc3668189165860841d32cc872e2cf0cefb7878d91443e6d9fcef59a4`  
		Last Modified: Mon, 12 Oct 2026 18:26:05 GMT  
		Size: 146.9 MB (146918578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e05e809d3fb8b4880797573a1f460f538c6a80cbe9588440a72265430af38b`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 9.7 MB (9737158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7bad3375749836d2454f2c871b13ce1c8c871fc96cec2e254f6cdbad4fc2f97`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3839d31df5c33c9fd93466064ee5e4d96ee105a4351eb506f44e84b544f95b79`  
		Last Modified: Mon, 12 Oct 2026 18:26:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1d9512d00321b696318e1e12ab7c6394e120886f0985b644406a924f45cb4b`  
		Last Modified: Mon, 12 Oct 2026 18:26:03 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a14a40bae06a394072b26b3638fad00c7e05687d72e716da1415aabf1d03b2d`  
		Last Modified: Mon, 12 Oct 2026 18:26:04 GMT  
		Size: 503.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:cc8644232e2906a4b81a3f7651a05909db6ce2dbf42fa6108022fc46f02828f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410449001dd543ca96786edb8eb060ed0f2e701873517842797ea1416538bc21`

```dockerfile
```

-	Layers:
	-	`sha256:2776c76a73a53cabe7b0e4b4fe9ad087945ff391f25636151ce34450c31ce350`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 6.6 MB (6593886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01e94a0caa572784712174e5af3443a2b3fc116d1a4577e828f1de122c5752b0`  
		Last Modified: Mon, 12 Oct 2026 18:26:01 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
