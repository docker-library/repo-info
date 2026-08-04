## `aerospike:ee-8.1.2.4_1`

```console
$ docker pull aerospike@sha256:69e8b2e07a0ad18340bd42da149e215e5405cd0e7eff84dcd26bb7eaddefed5e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.4_1` - linux; amd64

```console
$ docker pull aerospike@sha256:042128d6cd7230db1b7b5dcaa587cabd8670a3a571c85202e4b64d8796c1c0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.1 MB (141085105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cd8329265173a761509bbc22f625b78452511cd4f7756b491abd337f1a35466`
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
# Tue, 04 Aug 2026 01:12:53 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 04 Aug 2026 01:12:53 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 04 Aug 2026 01:12:53 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 04 Aug 2026 01:12:53 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 04 Aug 2026 01:12:53 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:13:08 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 04 Aug 2026 01:13:08 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 04 Aug 2026 01:13:08 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 04 Aug 2026 01:13:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:13:08 GMT
STOPSIGNAL SIGTERM
# Tue, 04 Aug 2026 01:13:08 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 04 Aug 2026 01:13:08 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaff019b06d89f6caca34e2249525e5930807f44b64a4d42006d761b296f7e13`  
		Last Modified: Tue, 04 Aug 2026 01:13:24 GMT  
		Size: 3.4 MB (3418496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769ae4ddd83e2b817b49624d957355051df8c64ffb525526d1b2f402e7db4e0c`  
		Last Modified: Tue, 04 Aug 2026 01:13:26 GMT  
		Size: 107.9 MB (107913195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a41de32c5ce7d2b99efe9a55457c40b4aef3fadce15c04edc8c162eb73168ac6`  
		Last Modified: Tue, 04 Aug 2026 01:13:23 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cdc2e7e07c89d1c4daff277ecdff241e5c6d10d92bbebfde86469bbce69c42`  
		Last Modified: Tue, 04 Aug 2026 01:13:24 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:64b3423b11740e68e20703967bde1178ffcdbf1f4628349d821a177314967278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2317163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffebdea9883d2c21cadec6f369c1bb233d01520e799ee677dcfdaec5fb7332a8`

```dockerfile
```

-	Layers:
	-	`sha256:365383422f55d1ae84c51604ad01c74504e89ca14fc0b33b2bac116a8f09aab1`  
		Last Modified: Tue, 04 Aug 2026 01:13:24 GMT  
		Size: 2.3 MB (2295349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f64883949888f1a11ec902cf78b040ff15a0ff5530a0701bc4c9c4dbf546b85e`  
		Last Modified: Tue, 04 Aug 2026 01:13:23 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.4_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:480f2347a568391e1c23b8c24b957fdd3cb0a048515e63d1a9a9a62c43a19298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134900443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a602fe8992724a28d933d9d5a3054e5f6020a271e578969096a9e5766dd0ef`
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
# Tue, 04 Aug 2026 01:12:28 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 04 Aug 2026 01:12:28 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 04 Aug 2026 01:12:28 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 04 Aug 2026 01:12:28 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 04 Aug 2026 01:12:28 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:12:44 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 04 Aug 2026 01:12:44 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 04 Aug 2026 01:12:44 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 04 Aug 2026 01:12:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:12:44 GMT
STOPSIGNAL SIGTERM
# Tue, 04 Aug 2026 01:12:44 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 04 Aug 2026 01:12:44 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aafa9659363dcfdf9f976b85771743ec16f21252e6197da48028afb5caf8ab8b`  
		Last Modified: Tue, 04 Aug 2026 01:13:00 GMT  
		Size: 990.2 KB (990229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2220b5b93f0c1f10b523bc504f7046a1f5afdf6108e4c9bc3b7133cf4c3ee85`  
		Last Modified: Tue, 04 Aug 2026 01:13:03 GMT  
		Size: 105.0 MB (105021088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e56254b56c5b1b2db41539bb033c4f40b08c046891b0b1c346e49e09c33c6001`  
		Last Modified: Tue, 04 Aug 2026 01:13:00 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8baf1e07d777446de7133cc27adf118473e48d7393b5cba49a490626ca08a5`  
		Last Modified: Tue, 04 Aug 2026 01:13:00 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:7bfa4b0e307ffc1bf6b97576b0cb08b165df7017077f0071d987f7662f02f665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73180da4a31af0e9f19710d33529178659a794347c60d7a6effd9f451ae1041`

```dockerfile
```

-	Layers:
	-	`sha256:e79fda88c3b4658cedbba862c0159abeec51faa7b1ce327466efd228b1168483`  
		Last Modified: Tue, 04 Aug 2026 01:13:00 GMT  
		Size: 2.3 MB (2296459 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5626a3627a1e8dbcbbb8d620ba331b9f080aad062f71c1251afdabd3017bb8a2`  
		Last Modified: Tue, 04 Aug 2026 01:13:00 GMT  
		Size: 21.9 KB (21905 bytes)  
		MIME: application/vnd.in-toto+json
