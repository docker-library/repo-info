<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:ce-8.2.0.1`](#aerospikece-8201)
-	[`aerospike:ce-8.2.0.1_1`](#aerospikece-8201_1)
-	[`aerospike:ee-8.2.0.1`](#aerospikeee-8201)
-	[`aerospike:ee-8.2.0.1_1`](#aerospikeee-8201_1)

## `aerospike:ce-8.2.0.1`

```console
$ docker pull aerospike@sha256:e2d7f7fd7a06ff1e9fd074ff2fb6ce447c401f2a9ee1d914e2c49fabe9205082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.2.0.1` - linux; amd64

```console
$ docker pull aerospike@sha256:57a0f9d7f562dd818ea0184e9cc018ebc935be5ee77a555b0ed1665f515b4641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97473942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b4e39aa1fd20d25fbd8b997142f3d7469fb14337f27e14bcf801725e24760b`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 16:38:19 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 27 Oct 2026 16:38:19 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 27 Oct 2026 16:38:19 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 27 Oct 2026 16:38:19 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 27 Oct 2026 16:38:19 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:38:36 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='0167aeea1e33b57165dd6354655232ad47dc74c68e2151dacf1c6f57d48b2f11';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='206bc11c0dcef80aa137acfce4a6322f4b1f7ada60c7df5a5516d77bae3e8a6e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 27 Oct 2026 16:38:36 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 27 Oct 2026 16:38:36 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 27 Oct 2026 16:38:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 16:38:36 GMT
STOPSIGNAL SIGTERM
# Tue, 27 Oct 2026 16:38:36 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 27 Oct 2026 16:38:36 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a7dec344dbf44d98f0a313a76182ab87cd82d31cd08e4d42af428062277e0f`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 1.0 MB (1005734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcccbaf5c20ea40c730436b98fe4de05e9d42add9936920cd7b17444f1d6b20f`  
		Last Modified: Tue, 27 Oct 2026 16:38:50 GMT  
		Size: 66.7 MB (66698169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e19f302b5683b2effad4c98bdc3fecc3b0c27cb084e6494b8164628ff6f1594`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ba07aaa11e6d06fd22a020a578bc0c9e0266c951cbe9771d8bdb65c1549d84`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.1` - unknown; unknown

```console
$ docker pull aerospike@sha256:4877cbfcf49b653fa394d452d550a8a74fad5766fed75c7a21e78194e62c8a96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c818b922fb69b7ae5e95996dfe71563530b6510e740f74c7ff3054b202c088`

```dockerfile
```

-	Layers:
	-	`sha256:f4ce7559ac6ef65acf4ec18672f6b13694d5a6a545d345aa63be5eb7ec4f94ec`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 2.2 MB (2155911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94ebd758aad61b0f6c4eb8327a906477d5666abd7d68abcbcdd06aa2fa15bb20`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 24.4 KB (24377 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.2.0.1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:67559583dac5b5254437dbd2e177bdd04223fec655bc75490a5d76f8c628aa0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95626369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff242bb260fd05edf0028cfba3aee7f18ce9f3104fc59541b216467cf0136162`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 16:40:01 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 27 Oct 2026 16:40:01 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 27 Oct 2026 16:40:01 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 27 Oct 2026 16:40:01 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 27 Oct 2026 16:40:01 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='0167aeea1e33b57165dd6354655232ad47dc74c68e2151dacf1c6f57d48b2f11';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='206bc11c0dcef80aa137acfce4a6322f4b1f7ada60c7df5a5516d77bae3e8a6e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 27 Oct 2026 16:40:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
STOPSIGNAL SIGTERM
# Tue, 27 Oct 2026 16:40:20 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 27 Oct 2026 16:40:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1de1edfe8daa50fe0f1b91d06132435e3e9bff1e33403e4c6005eca33a9c65`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 988.7 KB (988731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ee24e187e63fbb33ed60b3cdc28605e41a0ead271e41df44975efbfb013e1b`  
		Last Modified: Tue, 27 Oct 2026 16:40:35 GMT  
		Size: 65.7 MB (65695088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fafdbb6d7db6cbc876139ecc2a9b37ca57511275fcb22040042d1e3b7c87e0`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3684947d4144a2e8d7d60a5addb97a02f12b13f3ab521ee91637d0952de72fe`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.1` - unknown; unknown

```console
$ docker pull aerospike@sha256:32b92f43f68720180f57cdfeb3b8c88ea9370656a9915d32145c6bf461eb4c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2181468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9d183178798f68782f15561975da5f44a2e49ce91f6324407a00003c03eb3b`

```dockerfile
```

-	Layers:
	-	`sha256:72eefd0220eb781ec7da3a36a1c25b8c61e509e8aa95911fcc7d726a1d44df6c`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 2.2 MB (2157000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ded346eeb9f80442362c07a4a90f078f1e60f37bc57cbe3aae70f0476d34e1b9`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ce-8.2.0.1_1`

```console
$ docker pull aerospike@sha256:e2d7f7fd7a06ff1e9fd074ff2fb6ce447c401f2a9ee1d914e2c49fabe9205082
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.2.0.1_1` - linux; amd64

```console
$ docker pull aerospike@sha256:57a0f9d7f562dd818ea0184e9cc018ebc935be5ee77a555b0ed1665f515b4641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97473942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3b4e39aa1fd20d25fbd8b997142f3d7469fb14337f27e14bcf801725e24760b`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 16:38:19 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 27 Oct 2026 16:38:19 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 27 Oct 2026 16:38:19 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 27 Oct 2026 16:38:19 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 27 Oct 2026 16:38:19 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:38:36 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='0167aeea1e33b57165dd6354655232ad47dc74c68e2151dacf1c6f57d48b2f11';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='206bc11c0dcef80aa137acfce4a6322f4b1f7ada60c7df5a5516d77bae3e8a6e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 27 Oct 2026 16:38:36 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 27 Oct 2026 16:38:36 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 27 Oct 2026 16:38:36 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 16:38:36 GMT
STOPSIGNAL SIGTERM
# Tue, 27 Oct 2026 16:38:36 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 27 Oct 2026 16:38:36 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a7dec344dbf44d98f0a313a76182ab87cd82d31cd08e4d42af428062277e0f`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 1.0 MB (1005734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcccbaf5c20ea40c730436b98fe4de05e9d42add9936920cd7b17444f1d6b20f`  
		Last Modified: Tue, 27 Oct 2026 16:38:50 GMT  
		Size: 66.7 MB (66698169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e19f302b5683b2effad4c98bdc3fecc3b0c27cb084e6494b8164628ff6f1594`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ba07aaa11e6d06fd22a020a578bc0c9e0266c951cbe9771d8bdb65c1549d84`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.1_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:4877cbfcf49b653fa394d452d550a8a74fad5766fed75c7a21e78194e62c8a96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74c818b922fb69b7ae5e95996dfe71563530b6510e740f74c7ff3054b202c088`

```dockerfile
```

-	Layers:
	-	`sha256:f4ce7559ac6ef65acf4ec18672f6b13694d5a6a545d345aa63be5eb7ec4f94ec`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 2.2 MB (2155911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94ebd758aad61b0f6c4eb8327a906477d5666abd7d68abcbcdd06aa2fa15bb20`  
		Last Modified: Tue, 27 Oct 2026 16:38:48 GMT  
		Size: 24.4 KB (24377 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.2.0.1_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:67559583dac5b5254437dbd2e177bdd04223fec655bc75490a5d76f8c628aa0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95626369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff242bb260fd05edf0028cfba3aee7f18ce9f3104fc59541b216467cf0136162`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 16:40:01 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 27 Oct 2026 16:40:01 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 27 Oct 2026 16:40:01 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 27 Oct 2026 16:40:01 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 27 Oct 2026 16:40:01 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='0167aeea1e33b57165dd6354655232ad47dc74c68e2151dacf1c6f57d48b2f11';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='206bc11c0dcef80aa137acfce4a6322f4b1f7ada60c7df5a5516d77bae3e8a6e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 27 Oct 2026 16:40:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 16:40:20 GMT
STOPSIGNAL SIGTERM
# Tue, 27 Oct 2026 16:40:20 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 27 Oct 2026 16:40:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1de1edfe8daa50fe0f1b91d06132435e3e9bff1e33403e4c6005eca33a9c65`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 988.7 KB (988731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ee24e187e63fbb33ed60b3cdc28605e41a0ead271e41df44975efbfb013e1b`  
		Last Modified: Tue, 27 Oct 2026 16:40:35 GMT  
		Size: 65.7 MB (65695088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18fafdbb6d7db6cbc876139ecc2a9b37ca57511275fcb22040042d1e3b7c87e0`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3684947d4144a2e8d7d60a5addb97a02f12b13f3ab521ee91637d0952de72fe`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.1_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:32b92f43f68720180f57cdfeb3b8c88ea9370656a9915d32145c6bf461eb4c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2181468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9d183178798f68782f15561975da5f44a2e49ce91f6324407a00003c03eb3b`

```dockerfile
```

-	Layers:
	-	`sha256:72eefd0220eb781ec7da3a36a1c25b8c61e509e8aa95911fcc7d726a1d44df6c`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 2.2 MB (2157000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ded346eeb9f80442362c07a4a90f078f1e60f37bc57cbe3aae70f0476d34e1b9`  
		Last Modified: Tue, 27 Oct 2026 16:40:33 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.2.0.1`

```console
$ docker pull aerospike@sha256:aab4155b37589b7ea23f09617622b39b93ac5db56c49cf82b67c5680433fa22e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.2.0.1` - linux; amd64

```console
$ docker pull aerospike@sha256:7373fd21cbb5a89c8dc882d68022768eea392f6b16bf62dbffe4528eb664762a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102026708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8588096af0738ecd938c01efbb47be3f124ef0ab51ac3304baa43b065025395e`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 16:38:32 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 27 Oct 2026 16:38:32 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 27 Oct 2026 16:38:32 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 27 Oct 2026 16:38:32 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 27 Oct 2026 16:38:32 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:39:02 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='2ea683cb88b8f1955cf3e2f77bb65f2b62acdb659d12311f4a24074b63187fb0';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='bfaf312f69741a09b58ef205c963d8e4f394fe3afde9debf0efa905ab54b7b71';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 27 Oct 2026 16:39:02 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 27 Oct 2026 16:39:02 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 27 Oct 2026 16:39:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 16:39:02 GMT
STOPSIGNAL SIGTERM
# Tue, 27 Oct 2026 16:39:02 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 27 Oct 2026 16:39:02 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf4de325b954a0d5c0fbe39228195e7e69b8ffbbade3470af7944a5595ba70c`  
		Last Modified: Tue, 27 Oct 2026 16:39:14 GMT  
		Size: 1.0 MB (1005749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9de864ed79bbc2cb0b8a4e95ac39ce42c0bf2d25d1ce1b347cec60a156b1052`  
		Last Modified: Tue, 27 Oct 2026 16:39:16 GMT  
		Size: 71.3 MB (71250921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a108ee00e6920177a3ba0f5ff97b5ac8db4b211ed9ad0535983173b8b023fe2`  
		Last Modified: Tue, 27 Oct 2026 16:39:13 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c221c1ce727cbcb616fb6d55cf9f47c520979e077265a25df84b6687597e749`  
		Last Modified: Tue, 27 Oct 2026 16:39:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.1` - unknown; unknown

```console
$ docker pull aerospike@sha256:b2cb496a30d10fd2bda1347bb8437e392717eb8beaa8beb7e1e98c0459bed5b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2281395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b883d2b07c7b28b447c66626475d536f71e8e14abce9c63d441d4dc377547a0b`

```dockerfile
```

-	Layers:
	-	`sha256:6ad60bb6b96fdd2e0024f907b3bc3419ae556b8126e7d8b5f63288d42adfb8f8`  
		Last Modified: Tue, 27 Oct 2026 16:39:14 GMT  
		Size: 2.3 MB (2257001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c868010ef6a9e339213012c8efb0eb5478685110d72b04cdac0aafff874e709`  
		Last Modified: Tue, 27 Oct 2026 16:39:13 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.2.0.1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:f58a2ed2f342011433ea0080de1746a98cd30329d8274244450e383518d64ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100234919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801730ca1eff04714a69ebfa61bb32b6d14138b167eda1dc48d5c6abb3c019c7`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 16:39:45 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 27 Oct 2026 16:39:45 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 27 Oct 2026 16:39:45 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 27 Oct 2026 16:39:45 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 27 Oct 2026 16:39:45 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='2ea683cb88b8f1955cf3e2f77bb65f2b62acdb659d12311f4a24074b63187fb0';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='bfaf312f69741a09b58ef205c963d8e4f394fe3afde9debf0efa905ab54b7b71';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 27 Oct 2026 16:40:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
STOPSIGNAL SIGTERM
# Tue, 27 Oct 2026 16:40:04 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 27 Oct 2026 16:40:04 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001eabcc1e8901162485dbc3d07e362f37de9218c6c2308842fd9945b403ad2a`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 988.7 KB (988739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d74ad042106fc42fa7ad41ca7443c6a4e9cf738ca67fcf5c91eefb1c4da37e`  
		Last Modified: Tue, 27 Oct 2026 16:40:19 GMT  
		Size: 70.3 MB (70303630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c3b9f1f512738c4b56d8aba39524c78b4f60f01e279d10100b650b21ba6e24`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc105304d74333aa7800e4828cbdf35aabe52901fb2e07dd08101ac7461f7f5`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.1` - unknown; unknown

```console
$ docker pull aerospike@sha256:2ef686d2210a831cd6eb11b97d0c5d925903092bfc9e09e34a0c8ebf5942cc04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2282593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1393825965d5489408496edf2f4a31da5844a8e466480e81ad0f21508aac159f`

```dockerfile
```

-	Layers:
	-	`sha256:474ef17ea81a83a6ffeff2a49d6ca695d7ddc3422f8176ba00bec579b3c04596`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 2.3 MB (2258108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8270ca2f50a1f6dbf454d44f03eaaf35e0d319e1f28c2f313875ca9f76c9c34c`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 24.5 KB (24485 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.2.0.1_1`

```console
$ docker pull aerospike@sha256:aab4155b37589b7ea23f09617622b39b93ac5db56c49cf82b67c5680433fa22e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.2.0.1_1` - linux; amd64

```console
$ docker pull aerospike@sha256:7373fd21cbb5a89c8dc882d68022768eea392f6b16bf62dbffe4528eb664762a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102026708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8588096af0738ecd938c01efbb47be3f124ef0ab51ac3304baa43b065025395e`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 16:38:32 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 27 Oct 2026 16:38:32 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 27 Oct 2026 16:38:32 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 27 Oct 2026 16:38:32 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 27 Oct 2026 16:38:32 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:39:02 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='2ea683cb88b8f1955cf3e2f77bb65f2b62acdb659d12311f4a24074b63187fb0';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='bfaf312f69741a09b58ef205c963d8e4f394fe3afde9debf0efa905ab54b7b71';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 27 Oct 2026 16:39:02 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 27 Oct 2026 16:39:02 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 27 Oct 2026 16:39:02 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 16:39:02 GMT
STOPSIGNAL SIGTERM
# Tue, 27 Oct 2026 16:39:02 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 27 Oct 2026 16:39:02 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cf4de325b954a0d5c0fbe39228195e7e69b8ffbbade3470af7944a5595ba70c`  
		Last Modified: Tue, 27 Oct 2026 16:39:14 GMT  
		Size: 1.0 MB (1005749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9de864ed79bbc2cb0b8a4e95ac39ce42c0bf2d25d1ce1b347cec60a156b1052`  
		Last Modified: Tue, 27 Oct 2026 16:39:16 GMT  
		Size: 71.3 MB (71250921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a108ee00e6920177a3ba0f5ff97b5ac8db4b211ed9ad0535983173b8b023fe2`  
		Last Modified: Tue, 27 Oct 2026 16:39:13 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c221c1ce727cbcb616fb6d55cf9f47c520979e077265a25df84b6687597e749`  
		Last Modified: Tue, 27 Oct 2026 16:39:13 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.1_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:b2cb496a30d10fd2bda1347bb8437e392717eb8beaa8beb7e1e98c0459bed5b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2281395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b883d2b07c7b28b447c66626475d536f71e8e14abce9c63d441d4dc377547a0b`

```dockerfile
```

-	Layers:
	-	`sha256:6ad60bb6b96fdd2e0024f907b3bc3419ae556b8126e7d8b5f63288d42adfb8f8`  
		Last Modified: Tue, 27 Oct 2026 16:39:14 GMT  
		Size: 2.3 MB (2257001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c868010ef6a9e339213012c8efb0eb5478685110d72b04cdac0aafff874e709`  
		Last Modified: Tue, 27 Oct 2026 16:39:13 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.2.0.1_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:f58a2ed2f342011433ea0080de1746a98cd30329d8274244450e383518d64ffb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100234919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:801730ca1eff04714a69ebfa61bb32b6d14138b167eda1dc48d5c6abb3c019c7`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 16:39:45 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 27 Oct 2026 16:39:45 GMT
ARG AEROSPIKE_EDITION=enterprise
# Tue, 27 Oct 2026 16:39:45 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 27 Oct 2026 16:39:45 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 27 Oct 2026 16:39:45 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='2ea683cb88b8f1955cf3e2f77bb65f2b62acdb659d12311f4a24074b63187fb0';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='bfaf312f69741a09b58ef205c963d8e4f394fe3afde9debf0efa905ab54b7b71';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 27 Oct 2026 16:40:04 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 27 Oct 2026 16:40:04 GMT
STOPSIGNAL SIGTERM
# Tue, 27 Oct 2026 16:40:04 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 27 Oct 2026 16:40:04 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001eabcc1e8901162485dbc3d07e362f37de9218c6c2308842fd9945b403ad2a`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 988.7 KB (988739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d74ad042106fc42fa7ad41ca7443c6a4e9cf738ca67fcf5c91eefb1c4da37e`  
		Last Modified: Tue, 27 Oct 2026 16:40:19 GMT  
		Size: 70.3 MB (70303630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c3b9f1f512738c4b56d8aba39524c78b4f60f01e279d10100b650b21ba6e24`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc105304d74333aa7800e4828cbdf35aabe52901fb2e07dd08101ac7461f7f5`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.1_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:2ef686d2210a831cd6eb11b97d0c5d925903092bfc9e09e34a0c8ebf5942cc04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2282593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1393825965d5489408496edf2f4a31da5844a8e466480e81ad0f21508aac159f`

```dockerfile
```

-	Layers:
	-	`sha256:474ef17ea81a83a6ffeff2a49d6ca695d7ddc3422f8176ba00bec579b3c04596`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 2.3 MB (2258108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8270ca2f50a1f6dbf454d44f03eaaf35e0d319e1f28c2f313875ca9f76c9c34c`  
		Last Modified: Tue, 27 Oct 2026 16:40:17 GMT  
		Size: 24.5 KB (24485 bytes)  
		MIME: application/vnd.in-toto+json
