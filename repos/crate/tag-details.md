<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.3`](#crate63)
-	[`crate:6.3.6`](#crate636)
-	[`crate:6.4`](#crate64)
-	[`crate:6.4.1`](#crate641)
-	[`crate:latest`](#cratelatest)

## `crate:6.3`

```console
$ docker pull crate@sha256:6dd1817b1386a482dc70ac049a1ad1c745d4cb7075f363a4a252c2c3734c11d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3` - linux; amd64

```console
$ docker pull crate@sha256:7bf9c9dc6d38e63366268067c5cd0bd7a99bd243dda8df892210565aa4d7bb27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235579363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e87bd8ec4e4276681fee989116daafbc01181efc1a16523e64d7daa401dfc5f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:16:43 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.5.tar.gz.asc crate-6.3.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.5.tar.gz.asc     && tar -xf crate-6.3.5.tar.gz -C /crate --strip-components=1     && rm crate-6.3.5.tar.gz # buildkit
# Thu, 09 Jul 2026 17:16:45 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:16:46 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:16:46 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:16:46 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:16:46 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T13:41:38.417686+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.5
# Thu, 09 Jul 2026 17:16:46 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:16:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4044c6331d38ab9e95203294c75d0edad5996289766a755b31f5113478962f`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 18.9 MB (18889101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4045b9d4803364b3064d3ec4b7158514abdaf317ca9ccb00615ce62f3500a7ec`  
		Last Modified: Thu, 09 Jul 2026 17:17:07 GMT  
		Size: 139.3 MB (139345393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb64c73438b6a81dc13c7279a1998aad647978a57f6b952571eebf116354e769`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 8.8 MB (8789990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6a6868f1a4b0e51de3dfa51897589546b1ea94135a61c1d2330f5b7c058ffb`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a36513d16bc7cca671299e9951c4e2b1c4290740ed484b860c5a52eae40638`  
		Last Modified: Thu, 09 Jul 2026 17:17:04 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a0162b8948315f359fd4c66de53d1b3434610109505c81a62ac8ff655a9cc7`  
		Last Modified: Thu, 09 Jul 2026 17:17:05 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d765eb819d2900ad3eb02a12c14c7c7b5322f978067e082a4b5df2aaf58f8b56`  
		Last Modified: Thu, 09 Jul 2026 17:17:06 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:fdbb9860c10c35177654ca56b53f08360e78c2606cd18568f3aae2a69f9ac418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a72d129b7f5817a9f1fd55357df6c4756a62557dc0289d12b7dc88d82d922f01`

```dockerfile
```

-	Layers:
	-	`sha256:44e86df328dae7dd31fad151b2ab54fe06f833a8ace3f823119454852b0b75ac`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 6.6 MB (6607010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b990c25eb360fe5243bef6efb0412206b2ccae8837f7bc4f05145ff8c06f98f6`  
		Last Modified: Thu, 09 Jul 2026 17:17:03 GMT  
		Size: 21.6 KB (21638 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:5502ba6efa0d2c57e94ee7e6c5d1c23b8c60ee74b5461cc863b9fbc26b28bf35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232133839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca2731b7683bef28fee7850ec0b51078c65dffd3aa70a0ac2ccb14d2938cc0c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 09 Jul 2026 17:16:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 09 Jul 2026 17:16:46 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.5.tar.gz.asc crate-6.3.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.5.tar.gz.asc     && tar -xf crate-6.3.5.tar.gz -C /crate --strip-components=1     && rm crate-6.3.5.tar.gz # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 Jul 2026 17:16:49 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 09 Jul 2026 17:16:49 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
VOLUME [/data]
# Thu, 09 Jul 2026 17:16:49 GMT
WORKDIR /data
# Thu, 09 Jul 2026 17:16:49 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 09 Jul 2026 17:16:49 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T13:41:38.417686+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.5
# Thu, 09 Jul 2026 17:16:49 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 09 Jul 2026 17:16:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 09 Jul 2026 17:16:49 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76552797de636feef7fb4154fd0eba7cfb8ef67f7811f644cfcdf80995e75211`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 18.9 MB (18929920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf8650dacddf8392aa476311884ee9afb33a3d47bff4914bcdbef978166bcaa4`  
		Last Modified: Thu, 09 Jul 2026 17:17:12 GMT  
		Size: 137.3 MB (137279646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7779fa4b0e7715c16589cc567d99f37cdbf72744fcadb74418e9304510af6e02`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 8.8 MB (8789213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e11f960c7d05574a0b2a4a69969f7b71e24decec68266cb202fc1eb16ecfef7`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1834c2558aaeffeb9d39d97214c58a5dd4195dc047cd7ddaa9ac40ab348420e5`  
		Last Modified: Thu, 09 Jul 2026 17:17:09 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d549161b761d1e5ab509175b7a36754d059b6f7010c30b6e6fbdd61e58df4415`  
		Last Modified: Thu, 09 Jul 2026 17:17:10 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:608c7ae81c775f69a3b067af048ba66505f3dff18a72bb4a6eb51fe117dd8763`  
		Last Modified: Thu, 09 Jul 2026 17:17:10 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:1c9a68769d2932edfe4ad6c3d869f4c1f22241efb141fb75a8810221d8ead352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9d64d91afa342de6ba742bb5ddb507ded71d486d95a0651a1f2946e9d1faf9`

```dockerfile
```

-	Layers:
	-	`sha256:6bb144e8657e106cc76ac30222597240f9a0fc1feff74df62d4ef440ad868d94`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 6.6 MB (6604934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecf58bbc0eb82ce57e20b1e21c3d18c507dbc1169167dafe67d9b1c972514d75`  
		Last Modified: Thu, 09 Jul 2026 17:17:08 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.3.6`

```console
$ docker pull crate@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `crate:6.4`

```console
$ docker pull crate@sha256:6a4c02719477ca9efd95f7bb3dcea827935b8be41d910fc746ccf7ab4db47e3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

```console
$ docker pull crate@sha256:7f5124852c5657d373552746ab50b3c386dffee9c648d4911622a78887cee2d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235515579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147bcd8603f9f7a2b35447446e8642332b0268e4232b8aa708657d1cd43081f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 18:59:56 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 20 Jul 2026 19:00:01 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.0.tar.gz.asc crate-6.4.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.0.tar.gz.asc     && tar -xf crate-6.4.0.tar.gz -C /crate --strip-components=1     && rm crate-6.4.0.tar.gz # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 19:00:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 20 Jul 2026 19:00:04 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
VOLUME [/data]
# Mon, 20 Jul 2026 19:00:04 GMT
WORKDIR /data
# Mon, 20 Jul 2026 19:00:04 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 20 Jul 2026 19:00:04 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T16:49:27.836632+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.0
# Mon, 20 Jul 2026 19:00:04 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Jul 2026 19:00:04 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f79dcb4b07bcacb71ba4286646ec85b63445771978d711b207684bd381c9d68`  
		Last Modified: Mon, 20 Jul 2026 19:00:22 GMT  
		Size: 18.9 MB (18881078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5201c616c889086a4f0df1aed3a3c5e36af22e0b891b47ef2976ae6c2c54b5`  
		Last Modified: Mon, 20 Jul 2026 19:00:25 GMT  
		Size: 139.3 MB (139288728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f245a6fd6471562f5011b6bab658b7aa6bd456815176e27faf1edd1e47f0ed`  
		Last Modified: Mon, 20 Jul 2026 19:00:22 GMT  
		Size: 8.8 MB (8790891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42c29983c608068298b5fa36b3e3716ac14eaad29775577a00909cf20dd9c1b`  
		Last Modified: Mon, 20 Jul 2026 19:00:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d989f469fe0a0a10e4fff204a44284884e46f8562c457fa0bab6b8755915e67`  
		Last Modified: Mon, 20 Jul 2026 19:00:23 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f4d7118752053e53773808ee9993144cc32c5f4f8be15e2deba31c5fb14fd1`  
		Last Modified: Mon, 20 Jul 2026 19:00:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9273797c6dd65729499387f71687ed3e38e6186a5807be0ae7261fe8f485fd47`  
		Last Modified: Mon, 20 Jul 2026 19:00:24 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:0aa802b257b8999b4efd8a495bff894ea8a45ac8089f75a147a56d281b6d2c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6627377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e280ffe6048e5ed60c08d15215ed33ae650c93d8f6856a70d47cbfb78b1598`

```dockerfile
```

-	Layers:
	-	`sha256:143859303bc7e87be2a3f77554843cedc0fc4c6c19ec08f2d1a6629e29bab6d3`  
		Last Modified: Mon, 20 Jul 2026 19:00:21 GMT  
		Size: 6.6 MB (6605737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:feb74e45d329eef4aab99c240bbfc26960b42d95210ef54b7f418c72020f36d3`  
		Last Modified: Mon, 20 Jul 2026 19:00:21 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:803cc4c5f27ef4b42fd6606b8b9123159847f14c49b4284b46ef6c88677b3c7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232079199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0986902c9c2370b4be22182f4f0e4b3046c7e32d6bcb1a4825a62f329417658f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 18:59:48 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 20 Jul 2026 19:00:01 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.0.tar.gz.asc crate-6.4.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.0.tar.gz.asc     && tar -xf crate-6.4.0.tar.gz -C /crate --strip-components=1     && rm crate-6.4.0.tar.gz # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 19:00:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 20 Jul 2026 19:00:04 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
VOLUME [/data]
# Mon, 20 Jul 2026 19:00:04 GMT
WORKDIR /data
# Mon, 20 Jul 2026 19:00:04 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 20 Jul 2026 19:00:04 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T16:49:27.836632+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.0
# Mon, 20 Jul 2026 19:00:04 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Jul 2026 19:00:04 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609b6a8d6f63b9a0044b58c5644ae8fc86038b3df439a0b7bd6031b3bc416b87`  
		Last Modified: Mon, 20 Jul 2026 19:00:25 GMT  
		Size: 18.9 MB (18921963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1db795fd32bf6fe5c7e377d1b0d89541c8f299e7018fa928745208ff2417f2e`  
		Last Modified: Mon, 20 Jul 2026 19:00:32 GMT  
		Size: 137.2 MB (137234917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e9078ffa19eff7feec8e12adf14014db39e42ae985b5417d313daf260e5988`  
		Last Modified: Mon, 20 Jul 2026 19:00:25 GMT  
		Size: 8.8 MB (8787259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42c29983c608068298b5fa36b3e3716ac14eaad29775577a00909cf20dd9c1b`  
		Last Modified: Mon, 20 Jul 2026 19:00:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1cd55004afebdd887d2346c8eb7ee9316d297332897b2d3fcd017c6a9be2df`  
		Last Modified: Mon, 20 Jul 2026 19:00:25 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ecf0576e30c5fddea58b3e345d13fbc9c566001f080aef3f876d91bdb77a87`  
		Last Modified: Mon, 20 Jul 2026 19:00:27 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6500936a4b9bef85db2f3a9e7fcdc7dd2699058f5b6f4b13bf99b1d20e6dd2b9`  
		Last Modified: Mon, 20 Jul 2026 19:00:28 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:e845899a16abc6f48f41e157cda499505d03d5b26961296d2b846cef6777bd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6625437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9405f188c934c02c8252dff438f2fd25a3fd98c2bac69f5ddc642534298b746e`

```dockerfile
```

-	Layers:
	-	`sha256:78bd18f4ad40f969def87858b5c2cab87ff123444b72e2d2b1e971b870cb37a1`  
		Last Modified: Mon, 20 Jul 2026 19:00:24 GMT  
		Size: 6.6 MB (6603661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:104ddea04686f29592c18956c311cf9b77380b25e77056d5a46afedca9192890`  
		Last Modified: Mon, 20 Jul 2026 19:00:23 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4.1`

```console
$ docker pull crate@sha256:eb37f58646a901dc7727cf448cae36daaefaba79de33b5058dab79aa4c04aefb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 0

## `crate:latest`

```console
$ docker pull crate@sha256:6a4c02719477ca9efd95f7bb3dcea827935b8be41d910fc746ccf7ab4db47e3d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:7f5124852c5657d373552746ab50b3c386dffee9c648d4911622a78887cee2d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235515579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147bcd8603f9f7a2b35447446e8642332b0268e4232b8aa708657d1cd43081f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 18:59:56 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 20 Jul 2026 19:00:01 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.0.tar.gz.asc crate-6.4.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.0.tar.gz.asc     && tar -xf crate-6.4.0.tar.gz -C /crate --strip-components=1     && rm crate-6.4.0.tar.gz # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 19:00:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 20 Jul 2026 19:00:04 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
VOLUME [/data]
# Mon, 20 Jul 2026 19:00:04 GMT
WORKDIR /data
# Mon, 20 Jul 2026 19:00:04 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 20 Jul 2026 19:00:04 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T16:49:27.836632+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.0
# Mon, 20 Jul 2026 19:00:04 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Jul 2026 19:00:04 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f79dcb4b07bcacb71ba4286646ec85b63445771978d711b207684bd381c9d68`  
		Last Modified: Mon, 20 Jul 2026 19:00:22 GMT  
		Size: 18.9 MB (18881078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5201c616c889086a4f0df1aed3a3c5e36af22e0b891b47ef2976ae6c2c54b5`  
		Last Modified: Mon, 20 Jul 2026 19:00:25 GMT  
		Size: 139.3 MB (139288728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f245a6fd6471562f5011b6bab658b7aa6bd456815176e27faf1edd1e47f0ed`  
		Last Modified: Mon, 20 Jul 2026 19:00:22 GMT  
		Size: 8.8 MB (8790891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42c29983c608068298b5fa36b3e3716ac14eaad29775577a00909cf20dd9c1b`  
		Last Modified: Mon, 20 Jul 2026 19:00:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d989f469fe0a0a10e4fff204a44284884e46f8562c457fa0bab6b8755915e67`  
		Last Modified: Mon, 20 Jul 2026 19:00:23 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f4d7118752053e53773808ee9993144cc32c5f4f8be15e2deba31c5fb14fd1`  
		Last Modified: Mon, 20 Jul 2026 19:00:24 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9273797c6dd65729499387f71687ed3e38e6186a5807be0ae7261fe8f485fd47`  
		Last Modified: Mon, 20 Jul 2026 19:00:24 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:0aa802b257b8999b4efd8a495bff894ea8a45ac8089f75a147a56d281b6d2c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6627377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43e280ffe6048e5ed60c08d15215ed33ae650c93d8f6856a70d47cbfb78b1598`

```dockerfile
```

-	Layers:
	-	`sha256:143859303bc7e87be2a3f77554843cedc0fc4c6c19ec08f2d1a6629e29bab6d3`  
		Last Modified: Mon, 20 Jul 2026 19:00:21 GMT  
		Size: 6.6 MB (6605737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:feb74e45d329eef4aab99c240bbfc26960b42d95210ef54b7f418c72020f36d3`  
		Last Modified: Mon, 20 Jul 2026 19:00:21 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:803cc4c5f27ef4b42fd6606b8b9123159847f14c49b4284b46ef6c88677b3c7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232079199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0986902c9c2370b4be22182f4f0e4b3046c7e32d6bcb1a4825a62f329417658f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Mon, 20 Jul 2026 18:59:48 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 20 Jul 2026 19:00:01 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.0.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.0.tar.gz.asc crate-6.4.0.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.0.tar.gz.asc     && tar -xf crate-6.4.0.tar.gz -C /crate --strip-components=1     && rm crate-6.4.0.tar.gz # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 19:00:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 20 Jul 2026 19:00:04 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
VOLUME [/data]
# Mon, 20 Jul 2026 19:00:04 GMT
WORKDIR /data
# Mon, 20 Jul 2026 19:00:04 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 20 Jul 2026 19:00:04 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-07-06T16:49:27.836632+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.0
# Mon, 20 Jul 2026 19:00:04 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 20 Jul 2026 19:00:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 20 Jul 2026 19:00:04 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609b6a8d6f63b9a0044b58c5644ae8fc86038b3df439a0b7bd6031b3bc416b87`  
		Last Modified: Mon, 20 Jul 2026 19:00:25 GMT  
		Size: 18.9 MB (18921963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1db795fd32bf6fe5c7e377d1b0d89541c8f299e7018fa928745208ff2417f2e`  
		Last Modified: Mon, 20 Jul 2026 19:00:32 GMT  
		Size: 137.2 MB (137234917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e9078ffa19eff7feec8e12adf14014db39e42ae985b5417d313daf260e5988`  
		Last Modified: Mon, 20 Jul 2026 19:00:25 GMT  
		Size: 8.8 MB (8787259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e42c29983c608068298b5fa36b3e3716ac14eaad29775577a00909cf20dd9c1b`  
		Last Modified: Mon, 20 Jul 2026 19:00:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1cd55004afebdd887d2346c8eb7ee9316d297332897b2d3fcd017c6a9be2df`  
		Last Modified: Mon, 20 Jul 2026 19:00:25 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ecf0576e30c5fddea58b3e345d13fbc9c566001f080aef3f876d91bdb77a87`  
		Last Modified: Mon, 20 Jul 2026 19:00:27 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6500936a4b9bef85db2f3a9e7fcdc7dd2699058f5b6f4b13bf99b1d20e6dd2b9`  
		Last Modified: Mon, 20 Jul 2026 19:00:28 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:e845899a16abc6f48f41e157cda499505d03d5b26961296d2b846cef6777bd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6625437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9405f188c934c02c8252dff438f2fd25a3fd98c2bac69f5ddc642534298b746e`

```dockerfile
```

-	Layers:
	-	`sha256:78bd18f4ad40f969def87858b5c2cab87ff123444b72e2d2b1e971b870cb37a1`  
		Last Modified: Mon, 20 Jul 2026 19:00:24 GMT  
		Size: 6.6 MB (6603661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:104ddea04686f29592c18956c311cf9b77380b25e77056d5a46afedca9192890`  
		Last Modified: Mon, 20 Jul 2026 19:00:23 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json
