## `aerospike:ee-8.1.2.4_1`

```console
$ docker pull aerospike@sha256:a76e40b9bca4c6f21c84f6ec48219e3b38befeda462afa7aa1c637a7bd01c9dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.4_1` - linux; amd64

```console
$ docker pull aerospike@sha256:4e2c914524c2a0eaf0152653c8cfe3c23b52518811eb8a52840a7e9734286c69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138658782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433928d9b8ecab763ee532673e92a99b377eaf66b15430cd633863833827d412`
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
# Fri, 24 Jul 2026 17:26:57 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 24 Jul 2026 17:26:57 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 24 Jul 2026 17:26:57 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 24 Jul 2026 17:26:57 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 24 Jul 2026 17:26:57 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 24 Jul 2026 17:27:12 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 24 Jul 2026 17:27:12 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 24 Jul 2026 17:27:12 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 24 Jul 2026 17:27:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 17:27:12 GMT
STOPSIGNAL SIGTERM
# Fri, 24 Jul 2026 17:27:12 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 24 Jul 2026 17:27:12 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b3fde18f06f9dc601ce8cb916820ccb66c0ed1c829b0310b218600161008cb`  
		Last Modified: Fri, 24 Jul 2026 17:27:29 GMT  
		Size: 1.0 MB (1008127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273549ea5ca529c8a877df4bf1b1f42b0d0e04568b65725d83694b2410c26f50`  
		Last Modified: Fri, 24 Jul 2026 17:27:32 GMT  
		Size: 107.9 MB (107912750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4671f8dc4eaa026aacf1d1b11a6ac9327e159009e0a75fd800779d139e2330ad`  
		Last Modified: Fri, 24 Jul 2026 17:27:29 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8f72e9e1448f243ad5eb57cd25c564378cad936f538c0a599be0dd2ae9d098`  
		Last Modified: Fri, 24 Jul 2026 17:27:29 GMT  
		Size: 1.1 KB (1111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:0e1758db710f9068815147da01a3de2d6bce7cc1803fa9cfadf3afe76db24f96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2317137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9c1d59ff06e1fa2265e798e7f311c150c9f25ee54516c4f7d6dcf79cfe805f`

```dockerfile
```

-	Layers:
	-	`sha256:2b9683560c16e595442c632a291c00fc974ec74ffa87fb6400f6274b70eddbd2`  
		Last Modified: Fri, 24 Jul 2026 17:27:29 GMT  
		Size: 2.3 MB (2295323 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05ac4b2c481b1e94aac17731e1aa9080f6175a59bcfcc4031a83ab6360d5fb0b`  
		Last Modified: Fri, 24 Jul 2026 17:27:29 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.4_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:9d64ae3b36f655cf90bf41a498ea01495752bbdf26b12228979e8e42b671da3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.9 MB (134897301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7fd7c0ab8cb4193ff18b51729e61bdd6e1b4b3baddae8df851be4a56b84aec`
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
# Fri, 24 Jul 2026 17:27:00 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 24 Jul 2026 17:27:00 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 24 Jul 2026 17:27:00 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 24 Jul 2026 17:27:00 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 24 Jul 2026 17:27:00 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 24 Jul 2026 17:27:16 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 24 Jul 2026 17:27:16 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 24 Jul 2026 17:27:16 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 24 Jul 2026 17:27:16 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 24 Jul 2026 17:27:16 GMT
STOPSIGNAL SIGTERM
# Fri, 24 Jul 2026 17:27:16 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 24 Jul 2026 17:27:16 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fff6b52b5f4ea1a52c013a5f8f5640cc8fa9840a10c80c76657251969f009a`  
		Last Modified: Fri, 24 Jul 2026 17:27:33 GMT  
		Size: 990.0 KB (989978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f005c4d29fb60fc4591e91a199e1406d18f79188eee1445b4f5535226e57a561`  
		Last Modified: Fri, 24 Jul 2026 17:27:36 GMT  
		Size: 105.0 MB (105020842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf3facf8e7d486004d0b85b9e4888934ad46b0c54ea20ddfb57f6d5412feb45`  
		Last Modified: Fri, 24 Jul 2026 17:27:33 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9385e095141779d7561f6a42177f7be5145df6cce623e68f1b68a333a77102f`  
		Last Modified: Fri, 24 Jul 2026 17:27:33 GMT  
		Size: 1.1 KB (1109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:ec642ce1a3c5ce54a7ea0b09c02094b94dd55e170420fa7848fe1519a4b9e276
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28955205ba1fa7a86fdeb8800fb00c3c87cc7e12d3f980093841be1fdff4ff7`

```dockerfile
```

-	Layers:
	-	`sha256:55e3cb410224628a5588736c17e6e7deda8fc6c89c37347dd8b2e01cb239282f`  
		Last Modified: Fri, 24 Jul 2026 17:27:33 GMT  
		Size: 2.3 MB (2296433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3400b747fe24649c4c600d01dd0313389277795da80517d147ac538ee952824a`  
		Last Modified: Fri, 24 Jul 2026 17:27:33 GMT  
		Size: 21.9 KB (21905 bytes)  
		MIME: application/vnd.in-toto+json
