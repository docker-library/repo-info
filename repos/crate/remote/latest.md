## `crate:latest`

```console
$ docker pull crate@sha256:6d05c1bbfe413f438b276703a37954ccb2a24abed1edbfbb7ce0defbef6d3a4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:f32c1fe906afb6fd5c33de7ff47629dc74724cf2345587dfc5ae3a97efbc8175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245373191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bceb1a3677d74520e210e7970d6fc7a454adc69a81696cf3c78fa5bcd455bcc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:56:38 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 10 Aug 2026 18:56:51 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.2.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.2.tar.gz.asc crate-6.4.2.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.2.tar.gz.asc     && tar -xf crate-6.4.2.tar.gz -C /crate --strip-components=1     && rm crate-6.4.2.tar.gz # buildkit
# Mon, 10 Aug 2026 18:56:53 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 10 Aug 2026 18:56:53 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 18:56:53 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Aug 2026 18:56:53 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 10 Aug 2026 18:56:53 GMT
VOLUME [/data]
# Mon, 10 Aug 2026 18:56:53 GMT
WORKDIR /data
# Mon, 10 Aug 2026 18:56:53 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 10 Aug 2026 18:56:53 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 10 Aug 2026 18:56:53 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 10 Aug 2026 18:56:53 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T11:04:40.772955+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.2
# Mon, 10 Aug 2026 18:56:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 18:56:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 18:56:53 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad57836c4287076851a6ed4960b43ab21803a45bb7e7a8d813bfad41e886e2a8`  
		Last Modified: Mon, 10 Aug 2026 18:57:12 GMT  
		Size: 18.9 MB (18883056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a7ca1a51efc1c400103f093bfcf406042e2d93947b33f9f57a144fbe67320f`  
		Last Modified: Mon, 10 Aug 2026 18:57:15 GMT  
		Size: 149.1 MB (149133890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8886db48149a1ba126ab5dfaf1b2321d60b0b6cb1e53f22008c616ba382f330c`  
		Last Modified: Mon, 10 Aug 2026 18:57:11 GMT  
		Size: 8.8 MB (8801364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de57bc95e6fe1122617db530fe9f078969ae5e24233acf934f5c5de8c2ec71c`  
		Last Modified: Mon, 10 Aug 2026 18:57:11 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c470406b95eb0bcf3d216435ed1196770d6467c808daa9131d96b5d65a4555b4`  
		Last Modified: Mon, 10 Aug 2026 18:57:13 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22fa40e8ef70f7483886d01785c37d70601a3ec016acfa1d96670e80fa2f82a`  
		Last Modified: Mon, 10 Aug 2026 18:57:13 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b652d51f8906f114c528978b4efb662e23a8557ab5e70ae8178b1b717c04162e`  
		Last Modified: Mon, 10 Aug 2026 18:57:13 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:a2b32e4bebd60faafe56ab6bb99c2a3135e75c2314016961b2e050df7ca1095c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecab134fa6a6e8dbd4b6eef7bacdb7a67a8ff308c0427c40f8bf08653c99fd3c`

```dockerfile
```

-	Layers:
	-	`sha256:0d754d47cd00c4ca0459e3bb964f9fdade8b1e5bd65c6a4c97714295b70bd4a2`  
		Last Modified: Mon, 10 Aug 2026 18:57:11 GMT  
		Size: 6.6 MB (6607010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77558ba51ab159d224b8a8a2bac2b98f3af89fbb42b9f3153042ab0580af3342`  
		Last Modified: Mon, 10 Aug 2026 18:57:11 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:1a64a3db87d20c73e491f2f1b4770cdd7a5fe70ae892d316dd2d43a34290fd13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241612260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179baebbc8c21b839288f566acbc85d806f2706e3b16bc33f1de8e5808052430`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 18:56:23 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 10 Aug 2026 18:56:36 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.2.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.2.tar.gz.asc crate-6.4.2.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.2.tar.gz.asc     && tar -xf crate-6.4.2.tar.gz -C /crate --strip-components=1     && rm crate-6.4.2.tar.gz # buildkit
# Mon, 10 Aug 2026 18:56:39 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 10 Aug 2026 18:56:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 18:56:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Aug 2026 18:56:39 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 10 Aug 2026 18:56:39 GMT
VOLUME [/data]
# Mon, 10 Aug 2026 18:56:39 GMT
WORKDIR /data
# Mon, 10 Aug 2026 18:56:39 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 10 Aug 2026 18:56:39 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 10 Aug 2026 18:56:39 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 10 Aug 2026 18:56:39 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-08-04T11:04:40.772955+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.2
# Mon, 10 Aug 2026 18:56:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 10 Aug 2026 18:56:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Aug 2026 18:56:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210ec1eceaf02dc9ab917a15d556fe93d0e5ca642e94a5f0b835e5c6f2a555eb`  
		Last Modified: Mon, 10 Aug 2026 18:56:59 GMT  
		Size: 18.9 MB (18923305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb542a74cc4180dd4df9200055113d8ae8d9a9a707249cc44d24c93fe92f632`  
		Last Modified: Mon, 10 Aug 2026 18:57:02 GMT  
		Size: 146.8 MB (146757140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169466bde725448854625dcb276aba3470b946c13f33517ea76527dacea5504d`  
		Last Modified: Mon, 10 Aug 2026 18:56:59 GMT  
		Size: 8.8 MB (8796757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8844ab91dcdbaea757e640d86624c2e20ebe901da2d13de6e080dda9435e6a1`  
		Last Modified: Mon, 10 Aug 2026 18:56:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd0762573528918e9e291112f538fca3332af08932f943277f9cc557c39b4fb`  
		Last Modified: Mon, 10 Aug 2026 18:57:00 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0292a02175355a7f2fb7d528711a72c1d0ba7116de60e10b68a41434270b8c9`  
		Last Modified: Mon, 10 Aug 2026 18:57:01 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1ae0a6397c4fffcd19bd6ef65db615140f25626d888695c19f93781cbbf177`  
		Last Modified: Mon, 10 Aug 2026 18:57:01 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:7674cd258af3cdabe64385090f1dbabc2633a57997cc01ba2e0bda2fa323dcf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a6facf2399fa50990732eedbe268a93ac08bf06896609976a46d6fed53ee36`

```dockerfile
```

-	Layers:
	-	`sha256:60acf8ab949409743de78af54118516ca8e8bab60c298558f08d567e957b8e9a`  
		Last Modified: Mon, 10 Aug 2026 18:56:59 GMT  
		Size: 6.6 MB (6604934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b097b61f091f102212b24d84d2068222088b79bbfe3ca49bbdbd3f678239bc8`  
		Last Modified: Mon, 10 Aug 2026 18:56:58 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
