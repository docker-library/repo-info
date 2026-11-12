## `aerospike:ce-8.2.0.1_1`

```console
$ docker pull aerospike@sha256:faa8f036f041d96658ddb0faf83240267df0fc8796c65df8b9a3c78704066ffa
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
$ docker pull aerospike@sha256:10f6162e364a61d7b4d3a5b6c3efbc1a8ee91d99082ffa923f80df94a1caefbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95652189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0869f941b20df6dac9d12acc65fa0721df699aa6c1af879e2041aed66f37c41`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:13:12 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Wed, 11 Nov 2026 23:13:12 GMT
ARG AEROSPIKE_EDITION=community
# Wed, 11 Nov 2026 23:13:12 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Wed, 11 Nov 2026 23:13:12 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Wed, 11 Nov 2026 23:13:12 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:13:30 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='0167aeea1e33b57165dd6354655232ad47dc74c68e2151dacf1c6f57d48b2f11';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='206bc11c0dcef80aa137acfce4a6322f4b1f7ada60c7df5a5516d77bae3e8a6e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Wed, 11 Nov 2026 23:13:30 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Wed, 11 Nov 2026 23:13:30 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Wed, 11 Nov 2026 23:13:30 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:13:30 GMT
STOPSIGNAL SIGTERM
# Wed, 11 Nov 2026 23:13:30 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Wed, 11 Nov 2026 23:13:30 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7358e7320afe887a857558d51d0001a1d69839beded970726d21722cb80d0278`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 989.2 KB (989237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e53efb6d9867189af28af16927b070f34ef22e00e0493bd0b447126fea4ac3`  
		Last Modified: Wed, 11 Nov 2026 23:13:46 GMT  
		Size: 65.7 MB (65695271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b841657aa581bfbac8ae11eab3e189f0704227c29b4fb00b7c74ad0ebdce270d`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69386699f0b37a2c372740c1f3cc9270acd5ff84ca00705629253cd85d90f29`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.1_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:8b95de9739008f48c9f31d8f3397c0b528895def2811c078a37f9f6f4db4e111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97e661aed3a272fb39d30a0aa16e0cff6c4d4f092f8a2f15bdbbea44758e6f57`

```dockerfile
```

-	Layers:
	-	`sha256:8a1fc0f84490ed1e61902969f2674bec9e42e8647a74390e058224053159930e`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 2.2 MB (2157604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa90450259969eac7f5ba3fe5ebc30d575c2ad16e22efb991b5aa58386c9ad49`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json
