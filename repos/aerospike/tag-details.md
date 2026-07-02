<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:ce-8.1.2.3`](#aerospikece-8123)
-	[`aerospike:ce-8.1.2.3_1`](#aerospikece-8123_1)
-	[`aerospike:ee-8.1.2.3`](#aerospikeee-8123)
-	[`aerospike:ee-8.1.2.3_1`](#aerospikeee-8123_1)

## `aerospike:ce-8.1.2.3`

```console
$ docker pull aerospike@sha256:b362ab10b52857b0168d09355b80af357d4fa0c950645b8c91795510abe9c42d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.3` - linux; amd64

```console
$ docker pull aerospike@sha256:c9ee5fcb8a0466abf0858b636b92c3f557bec297d5f9ea357c74408350ff5d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134275830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50adde346c7357a9e3aa55e98cbbaca55fd20cee8cde9ee94e65bd0389b24e4`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:08 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.3 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Thu, 02 Jul 2026 02:12:08 GMT
ARG AEROSPIKE_EDITION=community
# Thu, 02 Jul 2026 02:12:08 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Thu, 02 Jul 2026 02:12:08 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Thu, 02 Jul 2026 02:12:08 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:12:20 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.3/aerospike-server-community_8.1.2.3_tools-13.0.1_ubuntu24.04_x86_64.tgz';         pkgSha='676cbf17e11f6f3919a27a693fc7d8129734ab4878c0b91990bd6d437eafa8dd';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.3/aerospike-server-community_8.1.2.3_tools-13.0.1_ubuntu24.04_aarch64.tgz';         pkgSha='19b380d17586f23b736e346a3855796a155a3e9f3bb242c5e8ec6622f6dc6744';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Thu, 02 Jul 2026 02:12:20 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Thu, 02 Jul 2026 02:12:20 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Thu, 02 Jul 2026 02:12:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:20 GMT
STOPSIGNAL SIGTERM
# Thu, 02 Jul 2026 02:12:20 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Thu, 02 Jul 2026 02:12:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047e9b4c4ebf995c88ac29e11bc02c0d094583c7ca066410cc8dc64ab03d4b8c`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 1.0 MB (1008095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c71552de588b9e805e3ba3d05b6176803dc42e1371680ed5443013a65b62c9`  
		Last Modified: Thu, 02 Jul 2026 02:12:38 GMT  
		Size: 103.5 MB (103529828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a11f57f19e222135ba4654f65474dd50e36150a8df2640636364ba074c72bd`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dfbe13fc4c9fbb54db03ed768b62812e9447d7722d1471857e76d6a032f6d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.3` - unknown; unknown

```console
$ docker pull aerospike@sha256:8065ea768390a3cd4b8b0812950693317d7ec99dea954cc8133884df2bac5cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064fb2ad5ad69e142fe5442517c31b0705c57708e4abb0bd4ae5be573da7cc2f`

```dockerfile
```

-	Layers:
	-	`sha256:f111d136581416ddbd67620ba8c3ab2628a640b46544f16d7227b8ebfe637eaf`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 2.2 MB (2200249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7882b7745028289f430763df3ee99160716a4d203c4a2a5719b2dadcdfbd8cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 21.8 KB (21797 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.3` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:6a39d794568f742ec6a0b8af17e6f3834f741d423f4c14bd40b82d62e4b9b9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130499923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca891c046bfc46e0dd18e33ab4b3cce7b3dce7f53db119c6cde07d42f13752d1`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:35 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.3 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Thu, 02 Jul 2026 02:11:35 GMT
ARG AEROSPIKE_EDITION=community
# Thu, 02 Jul 2026 02:11:35 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Thu, 02 Jul 2026 02:11:35 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Thu, 02 Jul 2026 02:11:35 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.3/aerospike-server-community_8.1.2.3_tools-13.0.1_ubuntu24.04_x86_64.tgz';         pkgSha='676cbf17e11f6f3919a27a693fc7d8129734ab4878c0b91990bd6d437eafa8dd';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.3/aerospike-server-community_8.1.2.3_tools-13.0.1_ubuntu24.04_aarch64.tgz';         pkgSha='19b380d17586f23b736e346a3855796a155a3e9f3bb242c5e8ec6622f6dc6744';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Thu, 02 Jul 2026 02:11:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
STOPSIGNAL SIGTERM
# Thu, 02 Jul 2026 02:11:49 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Thu, 02 Jul 2026 02:11:49 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc71a064ea0ec446df972b4a3571b87b880fb69fccd6b674992912766d7d7c3`  
		Last Modified: Thu, 02 Jul 2026 02:12:06 GMT  
		Size: 989.9 KB (989937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e7f11f743b6736b7eefa488d4725817b77ddeee956fe652300bb3123661171`  
		Last Modified: Thu, 02 Jul 2026 02:12:08 GMT  
		Size: 100.6 MB (100623501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f18c7e118fe39fedbda36ec3bad482ed5ac3d871b136d7794856c867e63de8`  
		Last Modified: Thu, 02 Jul 2026 02:12:06 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84803fdad1b245f20fb1efebb4471877a546ffc59ffe6e034536008e9d71656`  
		Last Modified: Thu, 02 Jul 2026 02:12:06 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.3` - unknown; unknown

```console
$ docker pull aerospike@sha256:86991fbb01c74218476e081da17f00fc7b0c749cfc540163eeba664de07ecbfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2223229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b959cdaf7be12e5f4613d43b030c27a520585a33e294d47f38ef243b5061e50e`

```dockerfile
```

-	Layers:
	-	`sha256:362b166799b1d7963a37e44ec794fae89dfb172ed5e0820778f82af05342997b`  
		Last Modified: Thu, 02 Jul 2026 02:12:06 GMT  
		Size: 2.2 MB (2201341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6df3e5f8c952e35ac6c8dc3ce0a8311ea698d297527413cab801e7387844f469`  
		Last Modified: Thu, 02 Jul 2026 02:12:05 GMT  
		Size: 21.9 KB (21888 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ce-8.1.2.3_1`

```console
$ docker pull aerospike@sha256:b362ab10b52857b0168d09355b80af357d4fa0c950645b8c91795510abe9c42d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.3_1` - linux; amd64

```console
$ docker pull aerospike@sha256:c9ee5fcb8a0466abf0858b636b92c3f557bec297d5f9ea357c74408350ff5d69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134275830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b50adde346c7357a9e3aa55e98cbbaca55fd20cee8cde9ee94e65bd0389b24e4`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:08 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.3 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Thu, 02 Jul 2026 02:12:08 GMT
ARG AEROSPIKE_EDITION=community
# Thu, 02 Jul 2026 02:12:08 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Thu, 02 Jul 2026 02:12:08 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Thu, 02 Jul 2026 02:12:08 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:12:20 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.3/aerospike-server-community_8.1.2.3_tools-13.0.1_ubuntu24.04_x86_64.tgz';         pkgSha='676cbf17e11f6f3919a27a693fc7d8129734ab4878c0b91990bd6d437eafa8dd';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.3/aerospike-server-community_8.1.2.3_tools-13.0.1_ubuntu24.04_aarch64.tgz';         pkgSha='19b380d17586f23b736e346a3855796a155a3e9f3bb242c5e8ec6622f6dc6744';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Thu, 02 Jul 2026 02:12:20 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Thu, 02 Jul 2026 02:12:20 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Thu, 02 Jul 2026 02:12:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:20 GMT
STOPSIGNAL SIGTERM
# Thu, 02 Jul 2026 02:12:20 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Thu, 02 Jul 2026 02:12:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047e9b4c4ebf995c88ac29e11bc02c0d094583c7ca066410cc8dc64ab03d4b8c`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 1.0 MB (1008095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c71552de588b9e805e3ba3d05b6176803dc42e1371680ed5443013a65b62c9`  
		Last Modified: Thu, 02 Jul 2026 02:12:38 GMT  
		Size: 103.5 MB (103529828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a11f57f19e222135ba4654f65474dd50e36150a8df2640636364ba074c72bd`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72dfbe13fc4c9fbb54db03ed768b62812e9447d7722d1471857e76d6a032f6d9`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.3_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:8065ea768390a3cd4b8b0812950693317d7ec99dea954cc8133884df2bac5cb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2222046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:064fb2ad5ad69e142fe5442517c31b0705c57708e4abb0bd4ae5be573da7cc2f`

```dockerfile
```

-	Layers:
	-	`sha256:f111d136581416ddbd67620ba8c3ab2628a640b46544f16d7227b8ebfe637eaf`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 2.2 MB (2200249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7882b7745028289f430763df3ee99160716a4d203c4a2a5719b2dadcdfbd8cb`  
		Last Modified: Thu, 02 Jul 2026 02:12:35 GMT  
		Size: 21.8 KB (21797 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.3_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:6a39d794568f742ec6a0b8af17e6f3834f741d423f4c14bd40b82d62e4b9b9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130499923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca891c046bfc46e0dd18e33ab4b3cce7b3dce7f53db119c6cde07d42f13752d1`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:35 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.3 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Thu, 02 Jul 2026 02:11:35 GMT
ARG AEROSPIKE_EDITION=community
# Thu, 02 Jul 2026 02:11:35 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Thu, 02 Jul 2026 02:11:35 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Thu, 02 Jul 2026 02:11:35 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.3/aerospike-server-community_8.1.2.3_tools-13.0.1_ubuntu24.04_x86_64.tgz';         pkgSha='676cbf17e11f6f3919a27a693fc7d8129734ab4878c0b91990bd6d437eafa8dd';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.3/aerospike-server-community_8.1.2.3_tools-13.0.1_ubuntu24.04_aarch64.tgz';         pkgSha='19b380d17586f23b736e346a3855796a155a3e9f3bb242c5e8ec6622f6dc6744';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Thu, 02 Jul 2026 02:11:49 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:49 GMT
STOPSIGNAL SIGTERM
# Thu, 02 Jul 2026 02:11:49 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Thu, 02 Jul 2026 02:11:49 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc71a064ea0ec446df972b4a3571b87b880fb69fccd6b674992912766d7d7c3`  
		Last Modified: Thu, 02 Jul 2026 02:12:06 GMT  
		Size: 989.9 KB (989937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e7f11f743b6736b7eefa488d4725817b77ddeee956fe652300bb3123661171`  
		Last Modified: Thu, 02 Jul 2026 02:12:08 GMT  
		Size: 100.6 MB (100623501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f18c7e118fe39fedbda36ec3bad482ed5ac3d871b136d7794856c867e63de8`  
		Last Modified: Thu, 02 Jul 2026 02:12:06 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f84803fdad1b245f20fb1efebb4471877a546ffc59ffe6e034536008e9d71656`  
		Last Modified: Thu, 02 Jul 2026 02:12:06 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.3_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:86991fbb01c74218476e081da17f00fc7b0c749cfc540163eeba664de07ecbfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2223229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b959cdaf7be12e5f4613d43b030c27a520585a33e294d47f38ef243b5061e50e`

```dockerfile
```

-	Layers:
	-	`sha256:362b166799b1d7963a37e44ec794fae89dfb172ed5e0820778f82af05342997b`  
		Last Modified: Thu, 02 Jul 2026 02:12:06 GMT  
		Size: 2.2 MB (2201341 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6df3e5f8c952e35ac6c8dc3ce0a8311ea698d297527413cab801e7387844f469`  
		Last Modified: Thu, 02 Jul 2026 02:12:05 GMT  
		Size: 21.9 KB (21888 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.1.2.3`

```console
$ docker pull aerospike@sha256:271506eedc99ae45abbaff17018339b223047905f584424713a7b31bd91267c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.3` - linux; amd64

```console
$ docker pull aerospike@sha256:c78af9d111668a4f7663572fe4d12d539719d6a0a688ebe502d82a69427b837a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138651012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228bd1e7c3939d6954e13835402c9667acd8303353f966d7b789eb000271f0ca`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:25 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.3 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Thu, 02 Jul 2026 02:11:25 GMT
ARG AEROSPIKE_EDITION=enterprise
# Thu, 02 Jul 2026 02:11:25 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Thu, 02 Jul 2026 02:11:25 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Thu, 02 Jul 2026 02:11:25 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:36 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.3/aerospike-server-enterprise_8.1.2.3_tools-13.0.1_ubuntu24.04_x86_64.tgz';         pkgSha='e065f91d1d1acdc807f347b888b85ee9c6695f64b772b8455374fa492c8f59cd';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.3/aerospike-server-enterprise_8.1.2.3_tools-13.0.1_ubuntu24.04_aarch64.tgz';         pkgSha='80d193462128a70d43a37d716ca57f896ce3b6cf6dc95daec9a079f8338c3869';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Thu, 02 Jul 2026 02:11:36 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Thu, 02 Jul 2026 02:11:36 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Thu, 02 Jul 2026 02:11:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:36 GMT
STOPSIGNAL SIGTERM
# Thu, 02 Jul 2026 02:11:36 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Thu, 02 Jul 2026 02:11:36 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e049498d810db386dbe862c41856991e0f5cfd2f7defe206cb24bce7d264b9`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 1.0 MB (1008107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e827d72ba7288699a93ff8cb88d5c4c7af7eb1214fa65bc9d17304d6b8fda27b`  
		Last Modified: Thu, 02 Jul 2026 02:11:55 GMT  
		Size: 107.9 MB (107904995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca913038e62aadaeb4dfd5f2a7c789599e24c31ab4205788c7403d10b04e0a8`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4f93ef9f654ff8ef98fdf048efa0656c41b50e3c9121b8bf4c000f27591754`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.3` - unknown; unknown

```console
$ docker pull aerospike@sha256:18a67b2712b860fb6a10f9a4f6ad0862d7eaf83dc9b0fc13808b467068a9073e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2323131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a061994bb53a7578a4955abd76fe43c29b1ea1ca173892f64ad4570ad4d6b405`

```dockerfile
```

-	Layers:
	-	`sha256:0dbe58d8b50a23270376798f84121c5cd7c189a11081ae120d16c486b7eca53d`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 2.3 MB (2301317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67b47197096503a1a18d5e6224ce050ee2a54abfe233bc945c213c7ebb08570d`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.3` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:3e7f2fcfd07c70b37c6450e8fd6754731fa5a41001bf1b02ffa982d8bf8e447f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134907475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9346de302cd89f426c9a474fd43830bdc1429b91e1b4918a89c92b3d34a2022`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:12 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.3 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Thu, 02 Jul 2026 02:11:12 GMT
ARG AEROSPIKE_EDITION=enterprise
# Thu, 02 Jul 2026 02:11:12 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Thu, 02 Jul 2026 02:11:12 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Thu, 02 Jul 2026 02:11:12 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:26 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.3/aerospike-server-enterprise_8.1.2.3_tools-13.0.1_ubuntu24.04_x86_64.tgz';         pkgSha='e065f91d1d1acdc807f347b888b85ee9c6695f64b772b8455374fa492c8f59cd';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.3/aerospike-server-enterprise_8.1.2.3_tools-13.0.1_ubuntu24.04_aarch64.tgz';         pkgSha='80d193462128a70d43a37d716ca57f896ce3b6cf6dc95daec9a079f8338c3869';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Thu, 02 Jul 2026 02:11:26 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Thu, 02 Jul 2026 02:11:26 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Thu, 02 Jul 2026 02:11:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:26 GMT
STOPSIGNAL SIGTERM
# Thu, 02 Jul 2026 02:11:26 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Thu, 02 Jul 2026 02:11:26 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eff06c1cb366b5834423d8755c30f814329623a348a800f9a5a7781912c91c6`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 990.0 KB (989965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6d08d2332a6bd4a828fb7a28cadbc98f379d0396a2aede3cbf5941ba355dc1`  
		Last Modified: Thu, 02 Jul 2026 02:11:46 GMT  
		Size: 105.0 MB (105031024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12528f4eaa9580be7193aad859ed6d57213d645b29af99b85bd599464c1fdc2`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f13b569c7719c86efa66295a95c0afb2e4898d8438026c036c37f9c56400820`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.3` - unknown; unknown

```console
$ docker pull aerospike@sha256:2c8586b2f3a51b9bd8fb2fd82890f021dfe0bfde950c6fa826af0e20c1b6e6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a51d7cd2d5a834b5977c559258fdb1780981a968eae20c7bab6d9967466f1b`

```dockerfile
```

-	Layers:
	-	`sha256:dcc0fd3dad698d0c34b1ad25d194fb955d71db02ba2cfd4bf552ece4d158e7c0`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 2.3 MB (2302427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa7206419cc0a80cd0e869d38184638bc3fb13fde34606a32855e52807ccc45`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 21.9 KB (21905 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.1.2.3_1`

```console
$ docker pull aerospike@sha256:271506eedc99ae45abbaff17018339b223047905f584424713a7b31bd91267c9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.3_1` - linux; amd64

```console
$ docker pull aerospike@sha256:c78af9d111668a4f7663572fe4d12d539719d6a0a688ebe502d82a69427b837a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138651012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:228bd1e7c3939d6954e13835402c9667acd8303353f966d7b789eb000271f0ca`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:25 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.3 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Thu, 02 Jul 2026 02:11:25 GMT
ARG AEROSPIKE_EDITION=enterprise
# Thu, 02 Jul 2026 02:11:25 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Thu, 02 Jul 2026 02:11:25 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Thu, 02 Jul 2026 02:11:25 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:36 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.3/aerospike-server-enterprise_8.1.2.3_tools-13.0.1_ubuntu24.04_x86_64.tgz';         pkgSha='e065f91d1d1acdc807f347b888b85ee9c6695f64b772b8455374fa492c8f59cd';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.3/aerospike-server-enterprise_8.1.2.3_tools-13.0.1_ubuntu24.04_aarch64.tgz';         pkgSha='80d193462128a70d43a37d716ca57f896ce3b6cf6dc95daec9a079f8338c3869';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Thu, 02 Jul 2026 02:11:36 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Thu, 02 Jul 2026 02:11:36 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Thu, 02 Jul 2026 02:11:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:36 GMT
STOPSIGNAL SIGTERM
# Thu, 02 Jul 2026 02:11:36 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Thu, 02 Jul 2026 02:11:36 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e049498d810db386dbe862c41856991e0f5cfd2f7defe206cb24bce7d264b9`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 1.0 MB (1008107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e827d72ba7288699a93ff8cb88d5c4c7af7eb1214fa65bc9d17304d6b8fda27b`  
		Last Modified: Thu, 02 Jul 2026 02:11:55 GMT  
		Size: 107.9 MB (107904995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca913038e62aadaeb4dfd5f2a7c789599e24c31ab4205788c7403d10b04e0a8`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c4f93ef9f654ff8ef98fdf048efa0656c41b50e3c9121b8bf4c000f27591754`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.3_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:18a67b2712b860fb6a10f9a4f6ad0862d7eaf83dc9b0fc13808b467068a9073e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2323131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a061994bb53a7578a4955abd76fe43c29b1ea1ca173892f64ad4570ad4d6b405`

```dockerfile
```

-	Layers:
	-	`sha256:0dbe58d8b50a23270376798f84121c5cd7c189a11081ae120d16c486b7eca53d`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 2.3 MB (2301317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67b47197096503a1a18d5e6224ce050ee2a54abfe233bc945c213c7ebb08570d`  
		Last Modified: Thu, 02 Jul 2026 02:11:52 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.3_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:3e7f2fcfd07c70b37c6450e8fd6754731fa5a41001bf1b02ffa982d8bf8e447f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134907475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9346de302cd89f426c9a474fd43830bdc1429b91e1b4918a89c92b3d34a2022`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:11:12 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.3 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Thu, 02 Jul 2026 02:11:12 GMT
ARG AEROSPIKE_EDITION=enterprise
# Thu, 02 Jul 2026 02:11:12 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Thu, 02 Jul 2026 02:11:12 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Thu, 02 Jul 2026 02:11:12 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:11:26 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.3/aerospike-server-enterprise_8.1.2.3_tools-13.0.1_ubuntu24.04_x86_64.tgz';         pkgSha='e065f91d1d1acdc807f347b888b85ee9c6695f64b772b8455374fa492c8f59cd';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.3/aerospike-server-enterprise_8.1.2.3_tools-13.0.1_ubuntu24.04_aarch64.tgz';         pkgSha='80d193462128a70d43a37d716ca57f896ce3b6cf6dc95daec9a079f8338c3869';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Thu, 02 Jul 2026 02:11:26 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Thu, 02 Jul 2026 02:11:26 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Thu, 02 Jul 2026 02:11:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:11:26 GMT
STOPSIGNAL SIGTERM
# Thu, 02 Jul 2026 02:11:26 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Thu, 02 Jul 2026 02:11:26 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eff06c1cb366b5834423d8755c30f814329623a348a800f9a5a7781912c91c6`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 990.0 KB (989965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6d08d2332a6bd4a828fb7a28cadbc98f379d0396a2aede3cbf5941ba355dc1`  
		Last Modified: Thu, 02 Jul 2026 02:11:46 GMT  
		Size: 105.0 MB (105031024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12528f4eaa9580be7193aad859ed6d57213d645b29af99b85bd599464c1fdc2`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f13b569c7719c86efa66295a95c0afb2e4898d8438026c036c37f9c56400820`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.3_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:2c8586b2f3a51b9bd8fb2fd82890f021dfe0bfde950c6fa826af0e20c1b6e6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99a51d7cd2d5a834b5977c559258fdb1780981a968eae20c7bab6d9967466f1b`

```dockerfile
```

-	Layers:
	-	`sha256:dcc0fd3dad698d0c34b1ad25d194fb955d71db02ba2cfd4bf552ece4d158e7c0`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 2.3 MB (2302427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfa7206419cc0a80cd0e869d38184638bc3fb13fde34606a32855e52807ccc45`  
		Last Modified: Thu, 02 Jul 2026 02:11:43 GMT  
		Size: 21.9 KB (21905 bytes)  
		MIME: application/vnd.in-toto+json
