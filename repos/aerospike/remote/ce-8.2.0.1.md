## `aerospike:ce-8.2.0.1`

```console
$ docker pull aerospike@sha256:5c11b9b11a4d76ef9484d1367c3be3f902d446204ad1b33bb01566327516acf8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.2.0.1` - linux; amd64

```console
$ docker pull aerospike@sha256:6fa7dff2d071cf8cddab2bc46cce63443111fb5ec00aeb164d4562882b2e7517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97500101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44627124ddebec5f8b3ceb62a627324ddb455dda027539cd0e1efdc8cca740d8`
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
# Fri, 20 Nov 2026 03:09:41 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 20 Nov 2026 03:09:41 GMT
ARG AEROSPIKE_EDITION=community
# Fri, 20 Nov 2026 03:09:41 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 20 Nov 2026 03:09:41 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 20 Nov 2026 03:09:41 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:09:52 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='0167aeea1e33b57165dd6354655232ad47dc74c68e2151dacf1c6f57d48b2f11';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='206bc11c0dcef80aa137acfce4a6322f4b1f7ada60c7df5a5516d77bae3e8a6e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 20 Nov 2026 03:09:52 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 20 Nov 2026 03:09:52 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 20 Nov 2026 03:09:52 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:09:52 GMT
STOPSIGNAL SIGTERM
# Fri, 20 Nov 2026 03:09:52 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 20 Nov 2026 03:09:52 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97816ab72f1b36c8f390e4ecd25a3a7f18a700e073d151d4a08ad0f56421ce7f`  
		Last Modified: Fri, 20 Nov 2026 03:10:04 GMT  
		Size: 1.0 MB (1006118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e91193ae613cde942440a5ca03a42a8d965dc34ef27abe68b41ec3a708d47b`  
		Last Modified: Fri, 20 Nov 2026 03:10:06 GMT  
		Size: 66.7 MB (66698265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0d056f8439b530dcd6208e55d60c08255d549c6cb207709712fee8bff92fa2f`  
		Last Modified: Fri, 20 Nov 2026 03:10:04 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cb701c207b91739eff191c47bcfbdb38feb0b5141122ee9519ecae9d455c9b`  
		Last Modified: Fri, 20 Nov 2026 03:10:04 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.1` - unknown; unknown

```console
$ docker pull aerospike@sha256:2f42e3186df1d598f590ca73bc0b715da3d3b44f9912d855c3fcbfcaaac58d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bec0c33f65f68c76789da644280e490fa876b7a601fe5f2d09e437a29c408ad`

```dockerfile
```

-	Layers:
	-	`sha256:b55bc12eac0a03283ca14f947f1fd3a6f530666eb52f58766cbcf7cc11608c73`  
		Last Modified: Fri, 20 Nov 2026 03:10:04 GMT  
		Size: 2.2 MB (2156515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40881257c3a034b85ae4a490670b8725dd5289ad7825b0f8f9e7a2493df448ba`  
		Last Modified: Fri, 20 Nov 2026 03:10:04 GMT  
		Size: 24.4 KB (24377 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.2.0.1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:571e7a7c3aafc916d7c891c0174d6c5c668daa40bf50675e92cd151e797e5cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.7 MB (95652233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56c50b4d58189aa976172b045bb48fca0ebd9921f5955de8c5c36112047eb4c`
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
# Fri, 20 Nov 2026 03:09:47 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 20 Nov 2026 03:09:47 GMT
ARG AEROSPIKE_EDITION=community
# Fri, 20 Nov 2026 03:09:47 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 20 Nov 2026 03:09:47 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 20 Nov 2026 03:09:47 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:08 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='0167aeea1e33b57165dd6354655232ad47dc74c68e2151dacf1c6f57d48b2f11';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='206bc11c0dcef80aa137acfce4a6322f4b1f7ada60c7df5a5516d77bae3e8a6e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 20 Nov 2026 03:10:08 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 20 Nov 2026 03:10:08 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 20 Nov 2026 03:10:08 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:08 GMT
STOPSIGNAL SIGTERM
# Fri, 20 Nov 2026 03:10:08 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 20 Nov 2026 03:10:08 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab287d7cd42da6a9b291f157f8fa4cfdeece33af66c62693d105483c72e9ed4`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 989.2 KB (989243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56d9d27ba47e3dec380fd6606e9889b36294ef2af4330cf8e91a0a9fe44a284`  
		Last Modified: Fri, 20 Nov 2026 03:10:22 GMT  
		Size: 65.7 MB (65695245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3b47b25c201ae06336233fcd5c474d9d3c903835d51a93cc202c5ec901db7b`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cb701c207b91739eff191c47bcfbdb38feb0b5141122ee9519ecae9d455c9b`  
		Last Modified: Fri, 20 Nov 2026 03:10:04 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.1` - unknown; unknown

```console
$ docker pull aerospike@sha256:3d61abd6f569af49fa05ae846e63d4b997a95fc159c195f1309e8aa39186541d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5326b63570486353674909a45bf86787c98fc898f2c7b5a04e2bdc4c356e1f62`

```dockerfile
```

-	Layers:
	-	`sha256:6f6ebd4427efca6f15ab49304052eb460bc84dec8364ebcd3707be731492fe29`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 2.2 MB (2157604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c124d7b3462f354327a071a029c479a4e4e35467743ae4752b4d4e1f2df3490`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json
