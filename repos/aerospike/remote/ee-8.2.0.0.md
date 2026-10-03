## `aerospike:ee-8.2.0.0`

```console
$ docker pull aerospike@sha256:964b67503667636935da766f15cc471814db11e89428ff3f34b5b7f6575eeca0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.2.0.0` - linux; amd64

```console
$ docker pull aerospike@sha256:c40ba533d282798b32d3510081a5e7730587fe8e8a8c6cff65f05ed036bca37f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104435898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ae080aff9b38b4e4e0328615e15e0d725f4a4623174a90a86d6cebf609b4392`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 23:49:42 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 23:49:42 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 02 Oct 2026 23:49:42 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 23:49:42 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 23:49:42 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:49:58 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='01691672ec94d5bebc7d32ecbbde87e669292846d224bac1148ea142d843047f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='eb026e5180011e5b33e7fda866b4650304437a521a98cfa3148fcf66ac36850e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 23:49:58 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 23:49:58 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 23:49:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:49:58 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 23:49:58 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 23:49:58 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f044e128392ac708caf8388388cc0cf0f5b652924110f84561c2f181d30e7b`  
		Last Modified: Fri, 02 Oct 2026 23:50:11 GMT  
		Size: 3.4 MB (3419922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184d32c96bc1c9575dad024dbec3e7bac29fdf342477e15c345442a5012f84d1`  
		Last Modified: Fri, 02 Oct 2026 23:50:12 GMT  
		Size: 71.2 MB (71249128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab61874048f9ede94d0fa2ac540032162a6b6da298b311b8c170208db7d706d3`  
		Last Modified: Fri, 02 Oct 2026 23:50:10 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5da0c3c3cfc2329ea4c2a4c3c50dfb6de08269233b78f9fc72b47dff0a8e823`  
		Last Modified: Fri, 02 Oct 2026 23:50:11 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.0` - unknown; unknown

```console
$ docker pull aerospike@sha256:2c17368ec57289fe392b928c8e55bf8b5816d4d089e7c3a8ca1b2e711b41d704
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2282021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c17997c0f78d552ed377ae69defc788bf7f75732db63a7da3bda8f77fee09705`

```dockerfile
```

-	Layers:
	-	`sha256:cf576bbc3db2ad54d0df9bbdf6ae9af821adf4f829a3898cfd2d891003585443`  
		Last Modified: Fri, 02 Oct 2026 23:50:11 GMT  
		Size: 2.3 MB (2257627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9061bee9508a1837bbbbed02386427d67ad309e67b9be715dc84c0b0fef287bc`  
		Last Modified: Fri, 02 Oct 2026 23:50:10 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.2.0.0` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:51ed645eafed4b8a1af406570d2425f26e64cb410d3dc55caf9d7fbd89a9c141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102495601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c6d94d21ff1af0ef96a3f7d25158973df27e689b12c4a374b96e0254397ae8`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 23:50:58 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 23:50:58 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 02 Oct 2026 23:50:58 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 23:50:58 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 23:50:58 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 23:51:14 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='01691672ec94d5bebc7d32ecbbde87e669292846d224bac1148ea142d843047f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='eb026e5180011e5b33e7fda866b4650304437a521a98cfa3148fcf66ac36850e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 23:51:14 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 23:51:14 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 23:51:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 23:51:14 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 23:51:14 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 23:51:14 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b529f333b80eaffbc6db42b0c201037665a56e21ae13ab6bb1c8f8c44b885946`  
		Last Modified: Fri, 02 Oct 2026 23:51:28 GMT  
		Size: 3.3 MB (3258819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0914127733b4ad01f0d49a41cb4d2f5017879d45c9209488e6c92dbbfb44694a`  
		Last Modified: Fri, 02 Oct 2026 23:51:30 GMT  
		Size: 70.3 MB (70294268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed48e16d4fd91d435e58af6dc939ed59229481ce320b8116d63bb07f0838604`  
		Last Modified: Fri, 02 Oct 2026 23:51:27 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4745d7b0aee8f439d56267c3acfefcb8c632d9d1c20e1f1243ce79e6dbe08d19`  
		Last Modified: Fri, 02 Oct 2026 23:51:27 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.0` - unknown; unknown

```console
$ docker pull aerospike@sha256:d4dbf6357e2a9ab1648d951308df95da3fc074f4f7bcd412fb4983b7eb9f6021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2283223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dc1cdbecc92f3a75c3248e060c31126242cf88082e8139d5c157339d8a6385`

```dockerfile
```

-	Layers:
	-	`sha256:6b69bce3115a22de50a0d370dffcca4c2dba537cb8c27be2b4cd2e1296a62e4a`  
		Last Modified: Fri, 02 Oct 2026 23:51:28 GMT  
		Size: 2.3 MB (2258734 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79d68ce732475d552969a4211a770e91927e9823a844dd208221f649c8cff6a6`  
		Last Modified: Fri, 02 Oct 2026 23:51:27 GMT  
		Size: 24.5 KB (24489 bytes)  
		MIME: application/vnd.in-toto+json
