## `aerospike:ee-8.2.0.2`

```console
$ docker pull aerospike@sha256:57de9613c9edbf496c25d25cab53820c27a5fa23d33279f7efc1c629e1922c38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.2.0.2` - linux; amd64

```console
$ docker pull aerospike@sha256:ed77f6f2b75e2c5d72b59a468dfbf1f11c7186ca86ca2855fd13d01ae73b653e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.2 MB (102243185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be3058719c8489a273c5becb35e48b149674f4bb4baa24e765fe4677ecde9942`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 18:40:23 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.2 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 24 Nov 2026 18:40:23 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 24 Nov 2026 18:40:23 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 24 Nov 2026 18:40:23 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 24 Nov 2026 18:40:23 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 18:40:38 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.2-21ubuntu24.04_amd64.deb';         serverSha='a2c2843c9f4b027572293eb695c5a5b834e7bef2c6e585c2d2c5daa260477e85';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.2.0-1ubuntu24.04_amd64.deb';         asadmSha='f44a807bdfbae57cce99a9bbb597813ef8afb0d476ca6ec01c866d39d9d836ef';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.2-21ubuntu24.04_arm64.deb';         serverSha='99c7856a0cc4641d88b6598f7ccedb03697fc83b328754aba2b5683a5cde0256';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.2.0-1ubuntu24.04_arm64.deb';         asadmSha='38681f608748007f78470bd82962da2d50f1d373d680b4f3731cc6b3cbdd2821';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 24 Nov 2026 18:40:38 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 24 Nov 2026 18:40:38 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 24 Nov 2026 18:40:38 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 18:40:38 GMT
STOPSIGNAL SIGTERM
# Tue, 24 Nov 2026 18:40:38 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 18:40:38 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086241a667d204b10184215453de525af93beb3c7821c30221dacf54009a6014`  
		Last Modified: Tue, 24 Nov 2026 18:40:52 GMT  
		Size: 1.0 MB (1006141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c372eb16c6c54a70b28e466d46f0f64a34f9a990472f6e8c81582d0bc9554e8`  
		Last Modified: Tue, 24 Nov 2026 18:40:54 GMT  
		Size: 71.4 MB (71441321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c59233df032e5d74a622fe2ade954046e1f02f4307dab1b142580b805c0175`  
		Last Modified: Tue, 24 Nov 2026 18:40:52 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417890b2d4c7431925ae67e34dd6d33213b9e8926148f24118d048ab398ba02c`  
		Last Modified: Tue, 24 Nov 2026 18:40:52 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.2` - unknown; unknown

```console
$ docker pull aerospike@sha256:3c79e26874dc8e90259034c864b394b9ae95fdf50aaca957383c81ef803f475f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2282021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4af264dfa7a8bffc66051a8dcf24642bf86a6483e15048fc879d1f07578e36`

```dockerfile
```

-	Layers:
	-	`sha256:7e47f4d7f70d67a65ff45894d7c62184077bb8c757d6a531237a90621778b358`  
		Last Modified: Tue, 24 Nov 2026 18:40:52 GMT  
		Size: 2.3 MB (2257627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d251a69f660178eadca88849c13d981fe0bbf30a03e77492043bfd2d49f3bf5`  
		Last Modified: Tue, 24 Nov 2026 18:40:51 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.2.0.2` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:0f0652f097cf819ebc00324d1ea388c06e74e391bc2f106cf5e6389a4055068b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100453965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0762792148fa88ffccb9bfd68d5816e53e4531bc0e77e442c294427126811b64`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Tue, 24 Nov 2026 18:40:29 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.2 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 24 Nov 2026 18:40:29 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 24 Nov 2026 18:40:29 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 24 Nov 2026 18:40:29 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 24 Nov 2026 18:40:29 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 18:40:47 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.2-21ubuntu24.04_amd64.deb';         serverSha='a2c2843c9f4b027572293eb695c5a5b834e7bef2c6e585c2d2c5daa260477e85';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.2.0-1ubuntu24.04_amd64.deb';         asadmSha='f44a807bdfbae57cce99a9bbb597813ef8afb0d476ca6ec01c866d39d9d836ef';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.2-21ubuntu24.04_arm64.deb';         serverSha='99c7856a0cc4641d88b6598f7ccedb03697fc83b328754aba2b5683a5cde0256';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.2.0-1ubuntu24.04_arm64.deb';         asadmSha='38681f608748007f78470bd82962da2d50f1d373d680b4f3731cc6b3cbdd2821';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 24 Nov 2026 18:40:47 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 24 Nov 2026 18:40:47 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 24 Nov 2026 18:40:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 18:40:47 GMT
STOPSIGNAL SIGTERM
# Tue, 24 Nov 2026 18:40:47 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 18:40:47 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a18f0adc4ad19248de0ee8e51e11be5d9e8f7a72057ba9936356c990ef3a72b`  
		Last Modified: Tue, 24 Nov 2026 18:41:00 GMT  
		Size: 989.3 KB (989292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af66e2301c078fe6d22a1e7d0e5edc93743a50de41fc0a52f99d5d3e8affb047`  
		Last Modified: Tue, 24 Nov 2026 18:41:02 GMT  
		Size: 70.5 MB (70496932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ea6ed70449e272ba3b0c63d130c0b2d4f872786d1ba2fdcef26977dfd73058`  
		Last Modified: Tue, 24 Nov 2026 18:41:00 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71281fe1e598569ced9a071572d5739d744a4757e15d705896ba7bfdbedc195`  
		Last Modified: Tue, 24 Nov 2026 18:41:00 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.2` - unknown; unknown

```console
$ docker pull aerospike@sha256:b0cd468245d30f9f4fccf2cfe41d47dbeb1be7b9b9facbe12a01d9ac765964c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2283220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18613b226c58676b8462bcf5e498d24cd1b9f591d70b71baeb6a7d56f81d4dc0`

```dockerfile
```

-	Layers:
	-	`sha256:1b9ebed385eb8948aa17a7a53b9e650ac2b893bf9a9c118d1989c4f5f7de3ba8`  
		Last Modified: Tue, 24 Nov 2026 18:41:01 GMT  
		Size: 2.3 MB (2258735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:672e49919d863142e8b3b27f7428a70d3f33f82df257b2e5923198119098bf65`  
		Last Modified: Tue, 24 Nov 2026 18:41:00 GMT  
		Size: 24.5 KB (24485 bytes)  
		MIME: application/vnd.in-toto+json
