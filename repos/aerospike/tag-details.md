<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:ce-8.1.2.5`](#aerospikece-8125)
-	[`aerospike:ce-8.1.2.5_1`](#aerospikece-8125_1)
-	[`aerospike:ee-8.1.2.5`](#aerospikeee-8125)
-	[`aerospike:ee-8.1.2.5_1`](#aerospikeee-8125_1)

## `aerospike:ce-8.1.2.5`

```console
$ docker pull aerospike@sha256:9d07c09a07b449d3438d20770c913bbed4031b8f86d92b31c30f014883b8db85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.5` - linux; amd64

```console
$ docker pull aerospike@sha256:2b9d510614f22cf45d5c600c352d3b489d2ea9e2e311d4706755af0c4f29f61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129350708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470d8af06c46a5cf693c9d95775268cb75fdf3cde177c50c0aafd5b3c27a248f`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:39 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 12 Sep 2026 00:08:39 GMT
ARG AEROSPIKE_EDITION=community
# Sat, 12 Sep 2026 00:08:39 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 12 Sep 2026 00:08:39 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 12 Sep 2026 00:08:39 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='f9d59d40e37b3a0301f8e3a140d09480d5606454162882e715e5dcf6388ad785';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='c5c0493ec38731b8ab192259ea938c2209d0d8e9d392aadcfd1aa5a7e80c6b19';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 12 Sep 2026 00:08:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
STOPSIGNAL SIGTERM
# Sat, 12 Sep 2026 00:08:54 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 12 Sep 2026 00:08:54 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cec8f64209a60765da0da47758ec7d399fd07f28e05f5939edc75134a30cbe4`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 1.0 MB (1008418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f06fbb7a758bfb037886e42738a67b992dee0b8465244e37e1de958c69d8665`  
		Last Modified: Sat, 12 Sep 2026 00:09:13 GMT  
		Size: 98.6 MB (98576609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d154ab1972b3ac47d86ffa2267db1e992765d8a82816fbce74e803e266ee765`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807e3b6712d8602f3b77e2a7649226d24a38adf2dfcb199af98c8f5474b10ded`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:90fe37e5fc544c82747cd27c24ce164e1b48016661d2f4d2b62cfc1e7aa50e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2217218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af579fff5edcc4e9c934c8ae9f41a52ca7df1ce1bf95d3f9e08f2686ab740f7c`

```dockerfile
```

-	Layers:
	-	`sha256:52ceaf448f84ee0f6d3936da5760db4f6db4003e32442cbd6b70d0c733aff948`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 2.2 MB (2195424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc164cbe536bab984f9937983e40d22251259584554d98412d7083e591772e41`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 21.8 KB (21794 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.5` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:4dbd1da63eb3d8124f65f99d5f16b083e9a7c9ea4ef9e54731667a46450891cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126095144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e538746a7595ba9f296f269aacd2f2e2d01a44897a9714ffd988bf08a6427c`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:13 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 12 Sep 2026 00:08:13 GMT
ARG AEROSPIKE_EDITION=community
# Sat, 12 Sep 2026 00:08:13 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 12 Sep 2026 00:08:13 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 12 Sep 2026 00:08:13 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 12 Sep 2026 00:08:30 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='f9d59d40e37b3a0301f8e3a140d09480d5606454162882e715e5dcf6388ad785';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='c5c0493ec38731b8ab192259ea938c2209d0d8e9d392aadcfd1aa5a7e80c6b19';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 12 Sep 2026 00:08:30 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 12 Sep 2026 00:08:30 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 12 Sep 2026 00:08:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 12 Sep 2026 00:08:30 GMT
STOPSIGNAL SIGTERM
# Sat, 12 Sep 2026 00:08:30 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 12 Sep 2026 00:08:30 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bea3c591f106fde840c32137cc993eaab03cbd3060f4b6e41cc9057dcd7165`  
		Last Modified: Sat, 12 Sep 2026 00:08:46 GMT  
		Size: 990.3 KB (990257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651f54d3f942161f506ad20f0e036e4a084a63a12320e14137cfa9145d5d3a75`  
		Last Modified: Sat, 12 Sep 2026 00:08:48 GMT  
		Size: 96.2 MB (96162444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a868ec099e0d3f0df6c930f85a418aaa467e1c3f841d18c0eecaec72e023ba3b`  
		Last Modified: Sat, 12 Sep 2026 00:08:46 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151cc44857fe9d0a063ce4fb18d52dad290e3069611e761a7451042cc883bf6`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:7d8712c84b5bfba334e6ec732a44e168a01b34ac7722695377011a08ff41e345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2218399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde9204704beae8302b079ddfb89a663343ab79dce2a3fd3a4bca97e7f212a2d`

```dockerfile
```

-	Layers:
	-	`sha256:1835aca7d936c86ef83460f2e75177b151eb74f5cdaf68cd60fd06cb0ca1a110`  
		Last Modified: Sat, 12 Sep 2026 00:08:46 GMT  
		Size: 2.2 MB (2196514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c57aabf09a4e63afc6064568d1b0876c83f08555f8b48135780d1261eb2b8a76`  
		Last Modified: Sat, 12 Sep 2026 00:08:46 GMT  
		Size: 21.9 KB (21885 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ce-8.1.2.5_1`

```console
$ docker pull aerospike@sha256:9d07c09a07b449d3438d20770c913bbed4031b8f86d92b31c30f014883b8db85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.5_1` - linux; amd64

```console
$ docker pull aerospike@sha256:2b9d510614f22cf45d5c600c352d3b489d2ea9e2e311d4706755af0c4f29f61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129350708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:470d8af06c46a5cf693c9d95775268cb75fdf3cde177c50c0aafd5b3c27a248f`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:39 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 12 Sep 2026 00:08:39 GMT
ARG AEROSPIKE_EDITION=community
# Sat, 12 Sep 2026 00:08:39 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 12 Sep 2026 00:08:39 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 12 Sep 2026 00:08:39 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='f9d59d40e37b3a0301f8e3a140d09480d5606454162882e715e5dcf6388ad785';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='c5c0493ec38731b8ab192259ea938c2209d0d8e9d392aadcfd1aa5a7e80c6b19';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 12 Sep 2026 00:08:54 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 12 Sep 2026 00:08:54 GMT
STOPSIGNAL SIGTERM
# Sat, 12 Sep 2026 00:08:54 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 12 Sep 2026 00:08:54 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cec8f64209a60765da0da47758ec7d399fd07f28e05f5939edc75134a30cbe4`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 1.0 MB (1008418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f06fbb7a758bfb037886e42738a67b992dee0b8465244e37e1de958c69d8665`  
		Last Modified: Sat, 12 Sep 2026 00:09:13 GMT  
		Size: 98.6 MB (98576609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d154ab1972b3ac47d86ffa2267db1e992765d8a82816fbce74e803e266ee765`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807e3b6712d8602f3b77e2a7649226d24a38adf2dfcb199af98c8f5474b10ded`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.5_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:90fe37e5fc544c82747cd27c24ce164e1b48016661d2f4d2b62cfc1e7aa50e44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2217218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af579fff5edcc4e9c934c8ae9f41a52ca7df1ce1bf95d3f9e08f2686ab740f7c`

```dockerfile
```

-	Layers:
	-	`sha256:52ceaf448f84ee0f6d3936da5760db4f6db4003e32442cbd6b70d0c733aff948`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 2.2 MB (2195424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc164cbe536bab984f9937983e40d22251259584554d98412d7083e591772e41`  
		Last Modified: Sat, 12 Sep 2026 00:09:10 GMT  
		Size: 21.8 KB (21794 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.5_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:4dbd1da63eb3d8124f65f99d5f16b083e9a7c9ea4ef9e54731667a46450891cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.1 MB (126095144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e538746a7595ba9f296f269aacd2f2e2d01a44897a9714ffd988bf08a6427c`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:13 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 12 Sep 2026 00:08:13 GMT
ARG AEROSPIKE_EDITION=community
# Sat, 12 Sep 2026 00:08:13 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 12 Sep 2026 00:08:13 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 12 Sep 2026 00:08:13 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 12 Sep 2026 00:08:30 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='f9d59d40e37b3a0301f8e3a140d09480d5606454162882e715e5dcf6388ad785';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='c5c0493ec38731b8ab192259ea938c2209d0d8e9d392aadcfd1aa5a7e80c6b19';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 12 Sep 2026 00:08:30 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 12 Sep 2026 00:08:30 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 12 Sep 2026 00:08:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 12 Sep 2026 00:08:30 GMT
STOPSIGNAL SIGTERM
# Sat, 12 Sep 2026 00:08:30 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 12 Sep 2026 00:08:30 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bea3c591f106fde840c32137cc993eaab03cbd3060f4b6e41cc9057dcd7165`  
		Last Modified: Sat, 12 Sep 2026 00:08:46 GMT  
		Size: 990.3 KB (990257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651f54d3f942161f506ad20f0e036e4a084a63a12320e14137cfa9145d5d3a75`  
		Last Modified: Sat, 12 Sep 2026 00:08:48 GMT  
		Size: 96.2 MB (96162444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a868ec099e0d3f0df6c930f85a418aaa467e1c3f841d18c0eecaec72e023ba3b`  
		Last Modified: Sat, 12 Sep 2026 00:08:46 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151cc44857fe9d0a063ce4fb18d52dad290e3069611e761a7451042cc883bf6`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.5_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:7d8712c84b5bfba334e6ec732a44e168a01b34ac7722695377011a08ff41e345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2218399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde9204704beae8302b079ddfb89a663343ab79dce2a3fd3a4bca97e7f212a2d`

```dockerfile
```

-	Layers:
	-	`sha256:1835aca7d936c86ef83460f2e75177b151eb74f5cdaf68cd60fd06cb0ca1a110`  
		Last Modified: Sat, 12 Sep 2026 00:08:46 GMT  
		Size: 2.2 MB (2196514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c57aabf09a4e63afc6064568d1b0876c83f08555f8b48135780d1261eb2b8a76`  
		Last Modified: Sat, 12 Sep 2026 00:08:46 GMT  
		Size: 21.9 KB (21885 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.1.2.5`

```console
$ docker pull aerospike@sha256:278217d0a459b5679d023e85c34962c458be012ba4b0959e9465fc65196f2c7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.5` - linux; amd64

```console
$ docker pull aerospike@sha256:55000bfa12017f17eab716324e07c6c0ed22ba90e59f7c6fbc9497c7107681bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.7 MB (133714813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4c1250a4d0c484bb34f5934a177c9cee98faf81015be9c5481e67c6b6a270a`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:10 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 12 Sep 2026 00:08:10 GMT
ARG AEROSPIKE_EDITION=enterprise
# Sat, 12 Sep 2026 00:08:10 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 12 Sep 2026 00:08:10 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 12 Sep 2026 00:08:10 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 12 Sep 2026 00:08:24 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 12 Sep 2026 00:08:24 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 12 Sep 2026 00:08:24 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 12 Sep 2026 00:08:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 12 Sep 2026 00:08:24 GMT
STOPSIGNAL SIGTERM
# Sat, 12 Sep 2026 00:08:24 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 12 Sep 2026 00:08:24 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4d85829fee36db5db1a20fa92c544cbda4fab1ec4f8c90f412a0872abe8060`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 1.0 MB (1008381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268d9e6413b223b856692aa5ae9de5e9d7bd7176f8e6b06b9ede3d3454e343de`  
		Last Modified: Sat, 12 Sep 2026 00:08:44 GMT  
		Size: 102.9 MB (102940753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c5c7873b5fc29e2a28d8d4f93f13fd0305973c175af73790ae06497f67fddd`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151cc44857fe9d0a063ce4fb18d52dad290e3069611e761a7451042cc883bf6`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:defa642e8111aad0dce973e47361edb20731436e9359a5886fe7f790df69121e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3be63a0e404786f72594f69bc3195988afdeba9de3e01f8e23478928b091c8`

```dockerfile
```

-	Layers:
	-	`sha256:d521529d23820b2653874c2f5075740994d9010cdec38e56853d4abb82c5d3b9`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 2.3 MB (2296492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3d68baa24ec0fb891f90d1bb753d21a52e1b705c7de7e8235fafd9581061735`  
		Last Modified: Sat, 12 Sep 2026 00:08:40 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.5` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:fced832023f90d3e7f255b85b95dc241f9e60d4b2c2eff97fb33662830859deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130499671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3c4e5d5e83b427b1b7133355bbb01c769de142ab44210be043e8d5d36dcd9d`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:07:44 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 12 Sep 2026 00:07:44 GMT
ARG AEROSPIKE_EDITION=enterprise
# Sat, 12 Sep 2026 00:07:44 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 12 Sep 2026 00:07:44 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 12 Sep 2026 00:07:44 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 12 Sep 2026 00:08:02 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 12 Sep 2026 00:08:02 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 12 Sep 2026 00:08:02 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 12 Sep 2026 00:08:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 12 Sep 2026 00:08:02 GMT
STOPSIGNAL SIGTERM
# Sat, 12 Sep 2026 00:08:02 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 12 Sep 2026 00:08:02 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f208b34fd22f61078bd69ad326f3845cff7c1810f150d320546b8ea09567c5d`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 990.3 KB (990251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aaf8ae170e4660b9ccb23d01c93519dff9ef22bf27aca7fd9ed8ae8171299c`  
		Last Modified: Sat, 12 Sep 2026 00:08:21 GMT  
		Size: 100.6 MB (100566975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64273b6188a2d66e6c51c0d984713fd4a93a77447a945659830b0a4b0c1d0f0`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:204d90d31e284e0cb047db7459c6ff1ba709ee14c620a2405cadfb83935f2637`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:085bfdf7277d7b6309c2393e2cb692f46414cb1dbbe1d019bc202e7973c18250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2319505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3592ea659f9cc945382cc9721c8abb21c871ec47a21a9b5862e14c43df8593c1`

```dockerfile
```

-	Layers:
	-	`sha256:9839f38fec0033fc0266209544b6b29952ca3db3395add003a9e7e2df97c1fa6`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 2.3 MB (2297600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13d7cb0fa895f8c79332e9c0c314fd893228593b002c7736cf481e722fb62204`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 21.9 KB (21905 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.1.2.5_1`

```console
$ docker pull aerospike@sha256:278217d0a459b5679d023e85c34962c458be012ba4b0959e9465fc65196f2c7f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.5_1` - linux; amd64

```console
$ docker pull aerospike@sha256:55000bfa12017f17eab716324e07c6c0ed22ba90e59f7c6fbc9497c7107681bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.7 MB (133714813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4c1250a4d0c484bb34f5934a177c9cee98faf81015be9c5481e67c6b6a270a`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:08:10 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 12 Sep 2026 00:08:10 GMT
ARG AEROSPIKE_EDITION=enterprise
# Sat, 12 Sep 2026 00:08:10 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 12 Sep 2026 00:08:10 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 12 Sep 2026 00:08:10 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 12 Sep 2026 00:08:24 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 12 Sep 2026 00:08:24 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 12 Sep 2026 00:08:24 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 12 Sep 2026 00:08:24 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 12 Sep 2026 00:08:24 GMT
STOPSIGNAL SIGTERM
# Sat, 12 Sep 2026 00:08:24 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 12 Sep 2026 00:08:24 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4d85829fee36db5db1a20fa92c544cbda4fab1ec4f8c90f412a0872abe8060`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 1.0 MB (1008381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268d9e6413b223b856692aa5ae9de5e9d7bd7176f8e6b06b9ede3d3454e343de`  
		Last Modified: Sat, 12 Sep 2026 00:08:44 GMT  
		Size: 102.9 MB (102940753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c5c7873b5fc29e2a28d8d4f93f13fd0305973c175af73790ae06497f67fddd`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a151cc44857fe9d0a063ce4fb18d52dad290e3069611e761a7451042cc883bf6`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:defa642e8111aad0dce973e47361edb20731436e9359a5886fe7f790df69121e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3be63a0e404786f72594f69bc3195988afdeba9de3e01f8e23478928b091c8`

```dockerfile
```

-	Layers:
	-	`sha256:d521529d23820b2653874c2f5075740994d9010cdec38e56853d4abb82c5d3b9`  
		Last Modified: Sat, 12 Sep 2026 00:08:41 GMT  
		Size: 2.3 MB (2296492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3d68baa24ec0fb891f90d1bb753d21a52e1b705c7de7e8235fafd9581061735`  
		Last Modified: Sat, 12 Sep 2026 00:08:40 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.5_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:fced832023f90d3e7f255b85b95dc241f9e60d4b2c2eff97fb33662830859deb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130499671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3c4e5d5e83b427b1b7133355bbb01c769de142ab44210be043e8d5d36dcd9d`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Sat, 12 Sep 2026 00:07:44 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 12 Sep 2026 00:07:44 GMT
ARG AEROSPIKE_EDITION=enterprise
# Sat, 12 Sep 2026 00:07:44 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 12 Sep 2026 00:07:44 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 12 Sep 2026 00:07:44 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 12 Sep 2026 00:08:02 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 12 Sep 2026 00:08:02 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 12 Sep 2026 00:08:02 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 12 Sep 2026 00:08:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 12 Sep 2026 00:08:02 GMT
STOPSIGNAL SIGTERM
# Sat, 12 Sep 2026 00:08:02 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 12 Sep 2026 00:08:02 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f208b34fd22f61078bd69ad326f3845cff7c1810f150d320546b8ea09567c5d`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 990.3 KB (990251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aaf8ae170e4660b9ccb23d01c93519dff9ef22bf27aca7fd9ed8ae8171299c`  
		Last Modified: Sat, 12 Sep 2026 00:08:21 GMT  
		Size: 100.6 MB (100566975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64273b6188a2d66e6c51c0d984713fd4a93a77447a945659830b0a4b0c1d0f0`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:204d90d31e284e0cb047db7459c6ff1ba709ee14c620a2405cadfb83935f2637`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:085bfdf7277d7b6309c2393e2cb692f46414cb1dbbe1d019bc202e7973c18250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2319505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3592ea659f9cc945382cc9721c8abb21c871ec47a21a9b5862e14c43df8593c1`

```dockerfile
```

-	Layers:
	-	`sha256:9839f38fec0033fc0266209544b6b29952ca3db3395add003a9e7e2df97c1fa6`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 2.3 MB (2297600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13d7cb0fa895f8c79332e9c0c314fd893228593b002c7736cf481e722fb62204`  
		Last Modified: Sat, 12 Sep 2026 00:08:18 GMT  
		Size: 21.9 KB (21905 bytes)  
		MIME: application/vnd.in-toto+json
