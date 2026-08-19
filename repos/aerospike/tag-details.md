<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:ce-8.1.2.4`](#aerospikece-8124)
-	[`aerospike:ce-8.1.2.4_1`](#aerospikece-8124_1)
-	[`aerospike:ee-8.1.2.4`](#aerospikeee-8124)
-	[`aerospike:ee-8.1.2.4_1`](#aerospikeee-8124_1)

## `aerospike:ce-8.1.2.4`

```console
$ docker pull aerospike@sha256:fb172169a3b0c217563a4c7eb88ef117c4d24ac64a3a66ad99a18c0dca36bd8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.4` - linux; amd64

```console
$ docker pull aerospike@sha256:08473d8e5c617b4cda97711ed2a2fd2f22bdb2210f4133316271ac4bcce818fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134302338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7745bb3ad0b7cb88a6beefb3e1367a0af85c05e6ae487dbf7491e38a5f6850`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:49 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 18 Aug 2026 19:10:49 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 18 Aug 2026 19:10:49 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 18 Aug 2026 19:10:49 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 18 Aug 2026 19:10:49 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:10:59 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='8c2c7159c22099cd09a7339c27ba2acb6425bca4d1ba181e7d0114556189524b';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='277af2df1db054a41f0cf18ed384b6a336b38d02fd5ffe7d48215f19ab21cddb';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 18 Aug 2026 19:10:59 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 18 Aug 2026 19:10:59 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 18 Aug 2026 19:10:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:10:59 GMT
STOPSIGNAL SIGTERM
# Tue, 18 Aug 2026 19:10:59 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 18 Aug 2026 19:10:59 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dbd452dcb6587dedcd641f61c5ece5e64f7d2f34ca4247b42f5999cf4c8bdf`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 1.0 MB (1008382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a71d0562c4366ef7f223a08e4db8e125abaea1164bcf8240e67fda8ec0f3d2d`  
		Last Modified: Tue, 18 Aug 2026 19:11:17 GMT  
		Size: 103.5 MB (103538845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c2894dc516b46ddb7c2af53a2328882b96506c9a0b338489d5cfb98bd1e01e`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5d6e762c7b85a7e42d78f1b98e5d396130fb26424e6f631e2a8081b4e9c6a5`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.4` - unknown; unknown

```console
$ docker pull aerospike@sha256:5fab5d39ef7a85a4f463ce4f532f223e6f9c3ac17cc449169898c2b88f995652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2216077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5cc599347749043ad45993d8b2522c25968ba842b08774f71badf5a0508c0a`

```dockerfile
```

-	Layers:
	-	`sha256:40fae5e895ee48cea5a3ebe4a7888ac93e89eb1b965c4eb2eb68217fae779bab`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 2.2 MB (2194281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3513065a63399a2aaa5d0fbfaf5167934af1a22b8e39ec00e9baf604fd7b095a`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 21.8 KB (21796 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.4` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:37e833cc315e9ac5b0eb37c695f2ea4826d8a4b82b9988887eeb887d4681b50a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130497513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fe654028cb558c4bf0116980ada7430c276e61e68363a39a25c95dc054d23c`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:48 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 18 Aug 2026 19:10:48 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 18 Aug 2026 19:10:48 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 18 Aug 2026 19:10:48 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 18 Aug 2026 19:10:48 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:02 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='8c2c7159c22099cd09a7339c27ba2acb6425bca4d1ba181e7d0114556189524b';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='277af2df1db054a41f0cf18ed384b6a336b38d02fd5ffe7d48215f19ab21cddb';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 18 Aug 2026 19:11:02 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 18 Aug 2026 19:11:02 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 18 Aug 2026 19:11:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:11:02 GMT
STOPSIGNAL SIGTERM
# Tue, 18 Aug 2026 19:11:02 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 18 Aug 2026 19:11:02 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f911ffa82a3023eefc5c1adec385e8beffa42432e30e494f0d38cf763a640601`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 990.2 KB (990159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5f8f4b82f7097c4420aaf4d78fe02a111c231d182e0636e50c2c778bc81042`  
		Last Modified: Tue, 18 Aug 2026 19:11:20 GMT  
		Size: 100.6 MB (100617815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492a09f2b207f0b089c8e0dfb7be50e7cb9045d4b4890b6a0911fd29f3f4705b`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60241fa4cedd45e1ec0857c1f0639abe4466b5b503a9d3015815e9cae6e5f922`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.4` - unknown; unknown

```console
$ docker pull aerospike@sha256:abf41ef6fd554948c1ab6f961dc400aaeb83730c975cb203b40e41f62d856eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2217261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fbc91679cf4e411be0da4cd796c16abc017baf8e03fc89b14bee1de405e26d`

```dockerfile
```

-	Layers:
	-	`sha256:ff16becafba8e92d6ee4b12d3a7b1a711d63863959316926fbc92daebfa8a530`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 2.2 MB (2195373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac41fb7f953042f04b4728628e95bbbbaa85998a8bc6ff4dd49787ca1a7a75a0`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 21.9 KB (21888 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ce-8.1.2.4_1`

```console
$ docker pull aerospike@sha256:fb172169a3b0c217563a4c7eb88ef117c4d24ac64a3a66ad99a18c0dca36bd8c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.4_1` - linux; amd64

```console
$ docker pull aerospike@sha256:08473d8e5c617b4cda97711ed2a2fd2f22bdb2210f4133316271ac4bcce818fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.3 MB (134302338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c7745bb3ad0b7cb88a6beefb3e1367a0af85c05e6ae487dbf7491e38a5f6850`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:49 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 18 Aug 2026 19:10:49 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 18 Aug 2026 19:10:49 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 18 Aug 2026 19:10:49 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 18 Aug 2026 19:10:49 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:10:59 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='8c2c7159c22099cd09a7339c27ba2acb6425bca4d1ba181e7d0114556189524b';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='277af2df1db054a41f0cf18ed384b6a336b38d02fd5ffe7d48215f19ab21cddb';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 18 Aug 2026 19:10:59 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 18 Aug 2026 19:10:59 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 18 Aug 2026 19:10:59 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:10:59 GMT
STOPSIGNAL SIGTERM
# Tue, 18 Aug 2026 19:10:59 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 18 Aug 2026 19:10:59 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31dbd452dcb6587dedcd641f61c5ece5e64f7d2f34ca4247b42f5999cf4c8bdf`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 1.0 MB (1008382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a71d0562c4366ef7f223a08e4db8e125abaea1164bcf8240e67fda8ec0f3d2d`  
		Last Modified: Tue, 18 Aug 2026 19:11:17 GMT  
		Size: 103.5 MB (103538845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c2894dc516b46ddb7c2af53a2328882b96506c9a0b338489d5cfb98bd1e01e`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5d6e762c7b85a7e42d78f1b98e5d396130fb26424e6f631e2a8081b4e9c6a5`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:5fab5d39ef7a85a4f463ce4f532f223e6f9c3ac17cc449169898c2b88f995652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2216077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5cc599347749043ad45993d8b2522c25968ba842b08774f71badf5a0508c0a`

```dockerfile
```

-	Layers:
	-	`sha256:40fae5e895ee48cea5a3ebe4a7888ac93e89eb1b965c4eb2eb68217fae779bab`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 2.2 MB (2194281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3513065a63399a2aaa5d0fbfaf5167934af1a22b8e39ec00e9baf604fd7b095a`  
		Last Modified: Tue, 18 Aug 2026 19:11:14 GMT  
		Size: 21.8 KB (21796 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.4_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:37e833cc315e9ac5b0eb37c695f2ea4826d8a4b82b9988887eeb887d4681b50a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130497513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fe654028cb558c4bf0116980ada7430c276e61e68363a39a25c95dc054d23c`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:48 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 18 Aug 2026 19:10:48 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 18 Aug 2026 19:10:48 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 18 Aug 2026 19:10:48 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 18 Aug 2026 19:10:48 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:11:02 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='8c2c7159c22099cd09a7339c27ba2acb6425bca4d1ba181e7d0114556189524b';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.4/aerospike-server-community_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='277af2df1db054a41f0cf18ed384b6a336b38d02fd5ffe7d48215f19ab21cddb';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 18 Aug 2026 19:11:02 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 18 Aug 2026 19:11:02 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 18 Aug 2026 19:11:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:11:02 GMT
STOPSIGNAL SIGTERM
# Tue, 18 Aug 2026 19:11:02 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 18 Aug 2026 19:11:02 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f911ffa82a3023eefc5c1adec385e8beffa42432e30e494f0d38cf763a640601`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 990.2 KB (990159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5f8f4b82f7097c4420aaf4d78fe02a111c231d182e0636e50c2c778bc81042`  
		Last Modified: Tue, 18 Aug 2026 19:11:20 GMT  
		Size: 100.6 MB (100617815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:492a09f2b207f0b089c8e0dfb7be50e7cb9045d4b4890b6a0911fd29f3f4705b`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60241fa4cedd45e1ec0857c1f0639abe4466b5b503a9d3015815e9cae6e5f922`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:abf41ef6fd554948c1ab6f961dc400aaeb83730c975cb203b40e41f62d856eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2217261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1fbc91679cf4e411be0da4cd796c16abc017baf8e03fc89b14bee1de405e26d`

```dockerfile
```

-	Layers:
	-	`sha256:ff16becafba8e92d6ee4b12d3a7b1a711d63863959316926fbc92daebfa8a530`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 2.2 MB (2195373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac41fb7f953042f04b4728628e95bbbbaa85998a8bc6ff4dd49787ca1a7a75a0`  
		Last Modified: Tue, 18 Aug 2026 19:11:18 GMT  
		Size: 21.9 KB (21888 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.1.2.4`

```console
$ docker pull aerospike@sha256:1f1e7701f4be0e52a19965172d28a0af11fee05252ff129d5e4a6b1b960c6962
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.4` - linux; amd64

```console
$ docker pull aerospike@sha256:e404871985231217200c9128884c3cfe7ae677c019fee3774c9253aa9da7ad5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138676909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa242b15ce59d18a6c8a5fa29da0fc5a16b1dbef119c8483d0ef385a7712a7b1`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:35 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 18 Aug 2026 19:10:35 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 18 Aug 2026 19:10:35 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 18 Aug 2026 19:10:35 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 18 Aug 2026 19:10:35 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:10:47 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 18 Aug 2026 19:10:47 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 18 Aug 2026 19:10:47 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 18 Aug 2026 19:10:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:10:47 GMT
STOPSIGNAL SIGTERM
# Tue, 18 Aug 2026 19:10:47 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 18 Aug 2026 19:10:47 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c24ac913eb68f20c19a9e4f558123f82904390e97cf235495ff41380229dd8`  
		Last Modified: Tue, 18 Aug 2026 19:11:04 GMT  
		Size: 1.0 MB (1008371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f127a313a3fd053eb53719d3b1bbf643d8a5266e833d957390f9785561a9a76b`  
		Last Modified: Tue, 18 Aug 2026 19:11:07 GMT  
		Size: 107.9 MB (107913428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b5aee594d104bbe3469b911bea699203ccd3a01874bef226304aa017307a97`  
		Last Modified: Tue, 18 Aug 2026 19:11:03 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed13a22150ef5a486655042ba1b490d71bd50eb9f51ef1ecafb458fafe072a3`  
		Last Modified: Tue, 18 Aug 2026 19:11:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4` - unknown; unknown

```console
$ docker pull aerospike@sha256:ae9f3c4fc0c424323e9b37efefdaa4500881d82447d5545dce96192aef1902b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2317163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660a6ad53586164168f626f38e8211b755d1972d0679601fb8a4372a7fb29f1d`

```dockerfile
```

-	Layers:
	-	`sha256:315aad278708ca360e2f842a6836fe5ddb8e012ace7e48cb8b741766f53b2bd4`  
		Last Modified: Tue, 18 Aug 2026 19:11:04 GMT  
		Size: 2.3 MB (2295349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d898fbafe47a9ef355fea6413fd77b578e8aefcbbb92ff578c24db894f433e6`  
		Last Modified: Tue, 18 Aug 2026 19:11:03 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.4` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:2c31197bfcd57eeefd4783eadcefac9778340040d9586d84ae800088ec78f168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134900992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce3ed3573831a7d03194a60562cc3155dca4471cbf6f46a507fc9aaec848093`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:38 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 18 Aug 2026 19:10:38 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 18 Aug 2026 19:10:38 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 18 Aug 2026 19:10:38 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 18 Aug 2026 19:10:38 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:10:52 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 18 Aug 2026 19:10:52 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 18 Aug 2026 19:10:52 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 18 Aug 2026 19:10:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:10:52 GMT
STOPSIGNAL SIGTERM
# Tue, 18 Aug 2026 19:10:52 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 18 Aug 2026 19:10:52 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf2aadc4a50800d64907955d91f4a849708f911b049876a01bd690efb358a22`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 990.2 KB (990162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb7ff1ca58736c86b665e0a5379e4d89fe60564ad54bc408c805a29c883367a`  
		Last Modified: Tue, 18 Aug 2026 19:11:11 GMT  
		Size: 105.0 MB (105021292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835fde42ab5a18206f6f04aef4c946d417c724f9f9c4507075d151fbb2d1832d`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ac5a42a61f0529f9240137e6c12d46ad4f8dd336b95a08ab8687bee613f9a`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4` - unknown; unknown

```console
$ docker pull aerospike@sha256:6f173ef3250ae0c3a3f653badb2330b1d672e1e2a0fc020c06ea2dfbf02ccbab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c3143b290d990f9e240edd73a4f9cfae628fdc8beb04fb103eeecbb237a44d`

```dockerfile
```

-	Layers:
	-	`sha256:1b599e4e8c22d17d182520979d48a9755457656e9fdf3d31048f7fa1663ecec0`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 2.3 MB (2296459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afdfdbff8549c028c82fd9f98e48a6536e721fd48764646769099c7a6d6c1831`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 21.9 KB (21904 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.1.2.4_1`

```console
$ docker pull aerospike@sha256:1f1e7701f4be0e52a19965172d28a0af11fee05252ff129d5e4a6b1b960c6962
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.4_1` - linux; amd64

```console
$ docker pull aerospike@sha256:e404871985231217200c9128884c3cfe7ae677c019fee3774c9253aa9da7ad5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138676909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa242b15ce59d18a6c8a5fa29da0fc5a16b1dbef119c8483d0ef385a7712a7b1`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:35 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 18 Aug 2026 19:10:35 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 18 Aug 2026 19:10:35 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 18 Aug 2026 19:10:35 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 18 Aug 2026 19:10:35 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:10:47 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 18 Aug 2026 19:10:47 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 18 Aug 2026 19:10:47 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 18 Aug 2026 19:10:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:10:47 GMT
STOPSIGNAL SIGTERM
# Tue, 18 Aug 2026 19:10:47 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 18 Aug 2026 19:10:47 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c24ac913eb68f20c19a9e4f558123f82904390e97cf235495ff41380229dd8`  
		Last Modified: Tue, 18 Aug 2026 19:11:04 GMT  
		Size: 1.0 MB (1008371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f127a313a3fd053eb53719d3b1bbf643d8a5266e833d957390f9785561a9a76b`  
		Last Modified: Tue, 18 Aug 2026 19:11:07 GMT  
		Size: 107.9 MB (107913428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b5aee594d104bbe3469b911bea699203ccd3a01874bef226304aa017307a97`  
		Last Modified: Tue, 18 Aug 2026 19:11:03 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed13a22150ef5a486655042ba1b490d71bd50eb9f51ef1ecafb458fafe072a3`  
		Last Modified: Tue, 18 Aug 2026 19:11:04 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:ae9f3c4fc0c424323e9b37efefdaa4500881d82447d5545dce96192aef1902b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2317163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:660a6ad53586164168f626f38e8211b755d1972d0679601fb8a4372a7fb29f1d`

```dockerfile
```

-	Layers:
	-	`sha256:315aad278708ca360e2f842a6836fe5ddb8e012ace7e48cb8b741766f53b2bd4`  
		Last Modified: Tue, 18 Aug 2026 19:11:04 GMT  
		Size: 2.3 MB (2295349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d898fbafe47a9ef355fea6413fd77b578e8aefcbbb92ff578c24db894f433e6`  
		Last Modified: Tue, 18 Aug 2026 19:11:03 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.4_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:2c31197bfcd57eeefd4783eadcefac9778340040d9586d84ae800088ec78f168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134900992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce3ed3573831a7d03194a60562cc3155dca4471cbf6f46a507fc9aaec848093`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:10:38 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 18 Aug 2026 19:10:38 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 18 Aug 2026 19:10:38 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 18 Aug 2026 19:10:38 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 18 Aug 2026 19:10:38 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:10:52 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 18 Aug 2026 19:10:52 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 18 Aug 2026 19:10:52 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 18 Aug 2026 19:10:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 18 Aug 2026 19:10:52 GMT
STOPSIGNAL SIGTERM
# Tue, 18 Aug 2026 19:10:52 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 18 Aug 2026 19:10:52 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf2aadc4a50800d64907955d91f4a849708f911b049876a01bd690efb358a22`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 990.2 KB (990162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb7ff1ca58736c86b665e0a5379e4d89fe60564ad54bc408c805a29c883367a`  
		Last Modified: Tue, 18 Aug 2026 19:11:11 GMT  
		Size: 105.0 MB (105021292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835fde42ab5a18206f6f04aef4c946d417c724f9f9c4507075d151fbb2d1832d`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40ac5a42a61f0529f9240137e6c12d46ad4f8dd336b95a08ab8687bee613f9a`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:6f173ef3250ae0c3a3f653badb2330b1d672e1e2a0fc020c06ea2dfbf02ccbab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c3143b290d990f9e240edd73a4f9cfae628fdc8beb04fb103eeecbb237a44d`

```dockerfile
```

-	Layers:
	-	`sha256:1b599e4e8c22d17d182520979d48a9755457656e9fdf3d31048f7fa1663ecec0`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 2.3 MB (2296459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afdfdbff8549c028c82fd9f98e48a6536e721fd48764646769099c7a6d6c1831`  
		Last Modified: Tue, 18 Aug 2026 19:11:08 GMT  
		Size: 21.9 KB (21904 bytes)  
		MIME: application/vnd.in-toto+json
