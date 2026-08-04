## `aerospike:ce-8.1.2.4_1`

```console
$ docker pull aerospike@sha256:e3ade4ebc112080907c1b45fb61e6c3393fc6147452fe61f5ffc24762080dbac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.4_1` - linux; amd64

```console
$ docker pull aerospike@sha256:5e26f3f6b5bedbdb474233ac03313d87968b4f43f88c49e9789cb84202851886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.7 MB (136710777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03c7568828672fc797f70586946b3cfcab045bf6db01861f14515788ecffa7fb`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:13:40 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 04 Aug 2026 01:13:40 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 04 Aug 2026 01:13:40 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 04 Aug 2026 01:13:40 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 04 Aug 2026 01:13:40 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:13:56 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='8c2c7159c22099cd09a7339c27ba2acb6425bca4d1ba181e7d0114556189524b';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='277af2df1db054a41f0cf18ed384b6a336b38d02fd5ffe7d48215f19ab21cddb';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 04 Aug 2026 01:13:56 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 04 Aug 2026 01:13:56 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 04 Aug 2026 01:13:56 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:13:56 GMT
STOPSIGNAL SIGTERM
# Tue, 04 Aug 2026 01:13:56 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 04 Aug 2026 01:13:56 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:789276daab9c41becb4c7479aab5f9b12fb32ebbfcff6a24f6f4e160dc174132`  
		Last Modified: Tue, 04 Aug 2026 01:14:11 GMT  
		Size: 3.4 MB (3418515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af855cfc4784c05b9cb185c1c3691ba4e867bfb6e1b41a1c0e63a08fb80cfe15`  
		Last Modified: Tue, 04 Aug 2026 01:14:13 GMT  
		Size: 103.5 MB (103538846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71e1df70458e6568a93bfd20bb2efa93124b38396d623153a344c18017f7dfd`  
		Last Modified: Tue, 04 Aug 2026 01:14:11 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:864baccf892b7106be5f854aacedc975c87d9df6a259dc1644262e41509b2bf4`  
		Last Modified: Tue, 04 Aug 2026 01:14:11 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:f0fe93c125253f85f72fc637f23aa50db00d41c4a56c6201a43770177e6c2ef7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2216078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0155ddf6eaafaf8abefdc84b5aa5497248f8caedd4f6e3fda12c7feacde16307`

```dockerfile
```

-	Layers:
	-	`sha256:55d660ba893a3aad6218c85ada7ac9513004960b7cfc585c43114c8430a61df2`  
		Last Modified: Tue, 04 Aug 2026 01:14:11 GMT  
		Size: 2.2 MB (2194281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6f24ef155b6a688988cf1fe57bb54c94c3a57f43a716501ec294c9b0c88346f`  
		Last Modified: Tue, 04 Aug 2026 01:14:11 GMT  
		Size: 21.8 KB (21797 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.4_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:c97f99b866d3f47af03af4d5e6b8979cbc5ae7817c639de86d013b8acb00f5c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130497023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebb543be809e960e6dda11a4e9de3ddb20191c70a2b7ecc7d7fe979f0e12815a`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:13:17 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 04 Aug 2026 01:13:17 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 04 Aug 2026 01:13:17 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 04 Aug 2026 01:13:17 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 04 Aug 2026 01:13:17 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:13:34 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='8c2c7159c22099cd09a7339c27ba2acb6425bca4d1ba181e7d0114556189524b';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='277af2df1db054a41f0cf18ed384b6a336b38d02fd5ffe7d48215f19ab21cddb';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 04 Aug 2026 01:13:34 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 04 Aug 2026 01:13:34 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 04 Aug 2026 01:13:34 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:13:34 GMT
STOPSIGNAL SIGTERM
# Tue, 04 Aug 2026 01:13:34 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 04 Aug 2026 01:13:34 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fb3b38af1a36c21d58353f5fad52736f2f5a0159d85ad9a162aa3fe4466152`  
		Last Modified: Tue, 04 Aug 2026 01:13:50 GMT  
		Size: 990.2 KB (990235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546cdfaaa2c73f2a362a3ec588bda50709084aa42f364e2dcbdde2acb01595ff`  
		Last Modified: Tue, 04 Aug 2026 01:13:52 GMT  
		Size: 100.6 MB (100617668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d65c9151bc28f2efe15759fea64adabe040d26384207b772aadc14b697a5ade7`  
		Last Modified: Tue, 04 Aug 2026 01:13:50 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc16ab9fb634a0186ea4a884cef48131a21f2db55da688643ec879d464896d4c`  
		Last Modified: Tue, 04 Aug 2026 01:13:50 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:69ccdf7a79c16bb19171d2444a1d8f606d0f2f694ae1e7d23d802a9eb5d60b96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2217261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ca1d4c832163715f1dd858cb414bd6069462d635c455646e4f9fbf4d26fd0a`

```dockerfile
```

-	Layers:
	-	`sha256:8529a739c964a63c0af3f5dfc0f15a64a54f84b6b5b964d838603c4606edd803`  
		Last Modified: Tue, 04 Aug 2026 01:13:50 GMT  
		Size: 2.2 MB (2195373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a533a274e46119083ff5adab0941d1538ea854d5baa43423a5b9276b57589c4c`  
		Last Modified: Tue, 04 Aug 2026 01:13:50 GMT  
		Size: 21.9 KB (21888 bytes)  
		MIME: application/vnd.in-toto+json
