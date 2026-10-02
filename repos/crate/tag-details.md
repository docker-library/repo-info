<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.3`](#crate63)
-	[`crate:6.3.7`](#crate637)
-	[`crate:6.4`](#crate64)
-	[`crate:6.4.5`](#crate645)
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
$ docker pull crate@sha256:d7d3a356fb019498ebbb58bb65448238e6ca2412af4471c437b0d54f4fea1605
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

```console
$ docker pull crate@sha256:af868bda2f43fff03d7fdb5be15117b399e5205d8f8322cbf9cf2b61d070e01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247238937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4158ab53d97b6b58d7b0f1f2f05ce93a6e6a925a7d2c731a30c2b77eeafdcc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:59 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:59 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:00 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:22:05 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:07 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:22:07 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:22:07 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:22:07 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:22:07 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Fri, 02 Oct 2026 18:22:07 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:22:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9178f49666897c5cabad57def00cb0ac9abe49836faf0c6002116f5fcb97e521`  
		Last Modified: Fri, 02 Oct 2026 18:16:15 GMT  
		Size: 69.3 MB (69265927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753bb3f1a0e711a0a8cf0314ba92c9f1cc64953d37f7d62664e484efa1275f9b`  
		Last Modified: Fri, 02 Oct 2026 18:22:26 GMT  
		Size: 19.0 MB (18960292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ca23673393bd74ea23023a16ea0ca4d7287b0b528ec26e9a6c6ee89c29590`  
		Last Modified: Fri, 02 Oct 2026 18:22:28 GMT  
		Size: 149.3 MB (149287166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550a48c8141e8ae78eb65207b7d2f04c7672315c3a60679789f00f93d879f90c`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 9.7 MB (9723671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34ddcb096a5f381debbcbb9b22ef59b8849dc2e1fc3b1f504ac5e2f16188378`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9daf3a6967a33da6ff255b6c5b79c323bef383f0268e90d1205c554e950439cc`  
		Last Modified: Fri, 02 Oct 2026 18:22:26 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d921a1c93fada83e659cdbb1e7299bb3eda807a66b2dc4d61210d147f875eec`  
		Last Modified: Fri, 02 Oct 2026 18:22:27 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313876911d19b8b636a84de8d0811c39e8a06dd20e2155c31e5c8069194409db`  
		Last Modified: Fri, 02 Oct 2026 18:22:27 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:6c2ea2e4b39b6c6819d9c3e2d8882f719b16667679f93ec4aba1e0d82a4f5c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebea659b93311ff5ca87aa657f477055596197e26f9d7413b91ab2a5a0676fae`

```dockerfile
```

-	Layers:
	-	`sha256:e1498b2a8bf6493c7880749394acbe64671b208c8481a9675ae46f4a6a0d662c`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 6.6 MB (6595962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a7fefa86a4b594de78d5596c2a7db704d8e059682522fb0691612809ec93cb`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:b81325c166e07739362d504ced730e0cd1a0214bd8c1e807581d83aaae8a0047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243493267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee7db6becc0a5852d478b79b08a21fe4c1ee119ab04aa9055621b90940dbdc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:46 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:46 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:31 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:21:44 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:21:48 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:21:48 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:21:48 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:21:48 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:21:48 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Fri, 02 Oct 2026 18:21:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:21:48 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:58698498ad6cc228cd6c8b153b9ed88d61c121a3eecaf53d91de43b65d7175f0`  
		Last Modified: Fri, 02 Oct 2026 18:16:03 GMT  
		Size: 67.9 MB (67854504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554b887e64cb20ca94bf97b24ccc60d8ed6a6f4099e69c23d2ea96c9fff4385a`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 19.0 MB (18999793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438f8dba4d10c653187a76cacd48848a1e6811ebd58038ac32bc2c5291bd2b4c`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 146.9 MB (146912455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6b1eeaa4572e32ca06fea6d6a87470774f835822c2753feecddc9c5656b096`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 9.7 MB (9724636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec85206be03ae378e14b8c529eaaad974e7c7e269d05daca52a2a8445bc0e8b`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02087a366dc7ac6451655ddf5fae6b7cd4254a762f4b6405ba78317fe88bad0d`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5625f6665f654a98675effe73135c14dc1844093e573ba88e49e1cedd85dacda`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cff8f7b550c78f59c0b0bf2b8f39a3f2521d0cc8a5bbd2a1c0a9acfe4198d51`  
		Last Modified: Fri, 02 Oct 2026 18:22:09 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:2cb7576cc7678ce92c94ff21ab1a3d5119352c04e422976aa0cba6fcb6b98732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7395104bb63cce296be59cdab90987ebe422c6b1235151c09eaae5977eb638`

```dockerfile
```

-	Layers:
	-	`sha256:5e9abb4ee65d4dfca626b00c30616430e070ffc2520ab498b2a8cafc8704dee6`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 6.6 MB (6593886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fda135870f2ed3880221ad1b14bf1df600490dd69655bdcfc0f553d9bfec4976`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4.5`

```console
$ docker pull crate@sha256:d7d3a356fb019498ebbb58bb65448238e6ca2412af4471c437b0d54f4fea1605
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4.5` - linux; amd64

```console
$ docker pull crate@sha256:af868bda2f43fff03d7fdb5be15117b399e5205d8f8322cbf9cf2b61d070e01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247238937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4158ab53d97b6b58d7b0f1f2f05ce93a6e6a925a7d2c731a30c2b77eeafdcc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:59 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:59 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:00 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:22:05 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:07 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:22:07 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:22:07 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:22:07 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:22:07 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Fri, 02 Oct 2026 18:22:07 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:22:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9178f49666897c5cabad57def00cb0ac9abe49836faf0c6002116f5fcb97e521`  
		Last Modified: Fri, 02 Oct 2026 18:16:15 GMT  
		Size: 69.3 MB (69265927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753bb3f1a0e711a0a8cf0314ba92c9f1cc64953d37f7d62664e484efa1275f9b`  
		Last Modified: Fri, 02 Oct 2026 18:22:26 GMT  
		Size: 19.0 MB (18960292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ca23673393bd74ea23023a16ea0ca4d7287b0b528ec26e9a6c6ee89c29590`  
		Last Modified: Fri, 02 Oct 2026 18:22:28 GMT  
		Size: 149.3 MB (149287166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550a48c8141e8ae78eb65207b7d2f04c7672315c3a60679789f00f93d879f90c`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 9.7 MB (9723671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34ddcb096a5f381debbcbb9b22ef59b8849dc2e1fc3b1f504ac5e2f16188378`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9daf3a6967a33da6ff255b6c5b79c323bef383f0268e90d1205c554e950439cc`  
		Last Modified: Fri, 02 Oct 2026 18:22:26 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d921a1c93fada83e659cdbb1e7299bb3eda807a66b2dc4d61210d147f875eec`  
		Last Modified: Fri, 02 Oct 2026 18:22:27 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313876911d19b8b636a84de8d0811c39e8a06dd20e2155c31e5c8069194409db`  
		Last Modified: Fri, 02 Oct 2026 18:22:27 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.5` - unknown; unknown

```console
$ docker pull crate@sha256:6c2ea2e4b39b6c6819d9c3e2d8882f719b16667679f93ec4aba1e0d82a4f5c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebea659b93311ff5ca87aa657f477055596197e26f9d7413b91ab2a5a0676fae`

```dockerfile
```

-	Layers:
	-	`sha256:e1498b2a8bf6493c7880749394acbe64671b208c8481a9675ae46f4a6a0d662c`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 6.6 MB (6595962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a7fefa86a4b594de78d5596c2a7db704d8e059682522fb0691612809ec93cb`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4.5` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:b81325c166e07739362d504ced730e0cd1a0214bd8c1e807581d83aaae8a0047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243493267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee7db6becc0a5852d478b79b08a21fe4c1ee119ab04aa9055621b90940dbdc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:46 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:46 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:31 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:21:44 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:21:48 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:21:48 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:21:48 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:21:48 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:21:48 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Fri, 02 Oct 2026 18:21:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:21:48 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:58698498ad6cc228cd6c8b153b9ed88d61c121a3eecaf53d91de43b65d7175f0`  
		Last Modified: Fri, 02 Oct 2026 18:16:03 GMT  
		Size: 67.9 MB (67854504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554b887e64cb20ca94bf97b24ccc60d8ed6a6f4099e69c23d2ea96c9fff4385a`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 19.0 MB (18999793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438f8dba4d10c653187a76cacd48848a1e6811ebd58038ac32bc2c5291bd2b4c`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 146.9 MB (146912455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6b1eeaa4572e32ca06fea6d6a87470774f835822c2753feecddc9c5656b096`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 9.7 MB (9724636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec85206be03ae378e14b8c529eaaad974e7c7e269d05daca52a2a8445bc0e8b`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02087a366dc7ac6451655ddf5fae6b7cd4254a762f4b6405ba78317fe88bad0d`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5625f6665f654a98675effe73135c14dc1844093e573ba88e49e1cedd85dacda`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cff8f7b550c78f59c0b0bf2b8f39a3f2521d0cc8a5bbd2a1c0a9acfe4198d51`  
		Last Modified: Fri, 02 Oct 2026 18:22:09 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.5` - unknown; unknown

```console
$ docker pull crate@sha256:2cb7576cc7678ce92c94ff21ab1a3d5119352c04e422976aa0cba6fcb6b98732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7395104bb63cce296be59cdab90987ebe422c6b1235151c09eaae5977eb638`

```dockerfile
```

-	Layers:
	-	`sha256:5e9abb4ee65d4dfca626b00c30616430e070ffc2520ab498b2a8cafc8704dee6`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 6.6 MB (6593886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fda135870f2ed3880221ad1b14bf1df600490dd69655bdcfc0f553d9bfec4976`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:latest`

```console
$ docker pull crate@sha256:d7d3a356fb019498ebbb58bb65448238e6ca2412af4471c437b0d54f4fea1605
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:af868bda2f43fff03d7fdb5be15117b399e5205d8f8322cbf9cf2b61d070e01e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.2 MB (247238937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4158ab53d97b6b58d7b0f1f2f05ce93a6e6a925a7d2c731a30c2b77eeafdcc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:59 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:59 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:00 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:22:05 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:07 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:22:07 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:22:07 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:22:07 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:22:07 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Fri, 02 Oct 2026 18:22:07 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:22:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:22:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9178f49666897c5cabad57def00cb0ac9abe49836faf0c6002116f5fcb97e521`  
		Last Modified: Fri, 02 Oct 2026 18:16:15 GMT  
		Size: 69.3 MB (69265927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753bb3f1a0e711a0a8cf0314ba92c9f1cc64953d37f7d62664e484efa1275f9b`  
		Last Modified: Fri, 02 Oct 2026 18:22:26 GMT  
		Size: 19.0 MB (18960292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5ca23673393bd74ea23023a16ea0ca4d7287b0b528ec26e9a6c6ee89c29590`  
		Last Modified: Fri, 02 Oct 2026 18:22:28 GMT  
		Size: 149.3 MB (149287166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550a48c8141e8ae78eb65207b7d2f04c7672315c3a60679789f00f93d879f90c`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 9.7 MB (9723671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34ddcb096a5f381debbcbb9b22ef59b8849dc2e1fc3b1f504ac5e2f16188378`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9daf3a6967a33da6ff255b6c5b79c323bef383f0268e90d1205c554e950439cc`  
		Last Modified: Fri, 02 Oct 2026 18:22:26 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d921a1c93fada83e659cdbb1e7299bb3eda807a66b2dc4d61210d147f875eec`  
		Last Modified: Fri, 02 Oct 2026 18:22:27 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313876911d19b8b636a84de8d0811c39e8a06dd20e2155c31e5c8069194409db`  
		Last Modified: Fri, 02 Oct 2026 18:22:27 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:6c2ea2e4b39b6c6819d9c3e2d8882f719b16667679f93ec4aba1e0d82a4f5c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6617602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebea659b93311ff5ca87aa657f477055596197e26f9d7413b91ab2a5a0676fae`

```dockerfile
```

-	Layers:
	-	`sha256:e1498b2a8bf6493c7880749394acbe64671b208c8481a9675ae46f4a6a0d662c`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 6.6 MB (6595962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39a7fefa86a4b594de78d5596c2a7db704d8e059682522fb0691612809ec93cb`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:b81325c166e07739362d504ced730e0cd1a0214bd8c1e807581d83aaae8a0047
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.5 MB (243493267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee7db6becc0a5852d478b79b08a21fe4c1ee119ab04aa9055621b90940dbdc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 02 Oct 2026 18:15:46 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:15:46 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:31 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Fri, 02 Oct 2026 18:21:44 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.5.tar.gz.asc crate-6.4.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.5.tar.gz.asc     && tar -xf crate-6.4.5.tar.gz -C /crate --strip-components=1     && rm crate-6.4.5.tar.gz # buildkit
# Fri, 02 Oct 2026 18:21:47 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:21:48 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 02 Oct 2026 18:21:48 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
VOLUME [/data]
# Fri, 02 Oct 2026 18:21:48 GMT
WORKDIR /data
# Fri, 02 Oct 2026 18:21:48 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Fri, 02 Oct 2026 18:21:48 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-09-16T15:24:38.059431+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.5
# Fri, 02 Oct 2026 18:21:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 02 Oct 2026 18:21:48 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:58698498ad6cc228cd6c8b153b9ed88d61c121a3eecaf53d91de43b65d7175f0`  
		Last Modified: Fri, 02 Oct 2026 18:16:03 GMT  
		Size: 67.9 MB (67854504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554b887e64cb20ca94bf97b24ccc60d8ed6a6f4099e69c23d2ea96c9fff4385a`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 19.0 MB (18999793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438f8dba4d10c653187a76cacd48848a1e6811ebd58038ac32bc2c5291bd2b4c`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 146.9 MB (146912455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6b1eeaa4572e32ca06fea6d6a87470774f835822c2753feecddc9c5656b096`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 9.7 MB (9724636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec85206be03ae378e14b8c529eaaad974e7c7e269d05daca52a2a8445bc0e8b`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02087a366dc7ac6451655ddf5fae6b7cd4254a762f4b6405ba78317fe88bad0d`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5625f6665f654a98675effe73135c14dc1844093e573ba88e49e1cedd85dacda`  
		Last Modified: Fri, 02 Oct 2026 18:22:08 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cff8f7b550c78f59c0b0bf2b8f39a3f2521d0cc8a5bbd2a1c0a9acfe4198d51`  
		Last Modified: Fri, 02 Oct 2026 18:22:09 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:2cb7576cc7678ce92c94ff21ab1a3d5119352c04e422976aa0cba6fcb6b98732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7395104bb63cce296be59cdab90987ebe422c6b1235151c09eaae5977eb638`

```dockerfile
```

-	Layers:
	-	`sha256:5e9abb4ee65d4dfca626b00c30616430e070ffc2520ab498b2a8cafc8704dee6`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 6.6 MB (6593886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fda135870f2ed3880221ad1b14bf1df600490dd69655bdcfc0f553d9bfec4976`  
		Last Modified: Fri, 02 Oct 2026 18:22:06 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
