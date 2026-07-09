## `crate:latest`

```console
$ docker pull crate@sha256:6dd1817b1386a482dc70ac049a1ad1c745d4cb7075f363a4a252c2c3734c11d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

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

### `crate:latest` - unknown; unknown

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

### `crate:latest` - linux; arm64 variant v8

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

### `crate:latest` - unknown; unknown

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
