## `aerospike:ee-8.2.0.1_1`

```console
$ docker pull aerospike@sha256:aab133230e9ae065d4656d21a7be157f6c531ee915545f9f7d4775879d766ec5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.2.0.1_1` - linux; amd64

```console
$ docker pull aerospike@sha256:4773e94ba3b1a80f4260479fc539aa0705466cf54450bf3b08c0e4d4bc914419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.1 MB (102052637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126925f4b1cc4453d4e39a76acc7f7b44e4408c95e898fed1b3f85346eed5811`
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
# Fri, 20 Nov 2026 03:09:32 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 20 Nov 2026 03:09:32 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 20 Nov 2026 03:09:32 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 20 Nov 2026 03:09:32 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 20 Nov 2026 03:09:32 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:09:44 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='2ea683cb88b8f1955cf3e2f77bb65f2b62acdb659d12311f4a24074b63187fb0';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='bfaf312f69741a09b58ef205c963d8e4f394fe3afde9debf0efa905ab54b7b71';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 20 Nov 2026 03:09:44 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 20 Nov 2026 03:09:44 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 20 Nov 2026 03:09:44 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:09:44 GMT
STOPSIGNAL SIGTERM
# Fri, 20 Nov 2026 03:09:44 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 20 Nov 2026 03:09:44 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6694518a9b98c3b583a24f0edff29092e1bad436e84797dcdeeecbe3251775a`  
		Last Modified: Fri, 20 Nov 2026 03:09:57 GMT  
		Size: 1.0 MB (1006090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6f0a5558bbb16c45872953d90c07ed36099d922e871977362ad7747b1561ef`  
		Last Modified: Fri, 20 Nov 2026 03:09:59 GMT  
		Size: 71.3 MB (71250823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2638dd9a04f6919ae45c4dfa4a674a01167664741575e428181265416806cb9`  
		Last Modified: Fri, 20 Nov 2026 03:09:57 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee1a8cd91a32596fb9351ab54eec3f347867b351ada22e842ba3d635e6f7295`  
		Last Modified: Fri, 20 Nov 2026 03:09:57 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.1_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:e81b701c851095c56512502f09e2a53ac09dbf32e932a9615cb1ef9ea0f8eb0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2281999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35c5dc25c85f085da3bd1ea7e4cf6bdd0345e0bb5b18d21c5c9013818056b961`

```dockerfile
```

-	Layers:
	-	`sha256:eebd79c52afe3c7767693e18241a3dd7200dc5e137c6dea300b2e4f8601a7695`  
		Last Modified: Fri, 20 Nov 2026 03:09:57 GMT  
		Size: 2.3 MB (2257605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9be6e5ff6aa29280ea04c710302e677df58dd9cfd5bd65310125ca405b796070`  
		Last Modified: Fri, 20 Nov 2026 03:09:57 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.2.0.1_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:1097100ed9ada8033d633bc8a4d94658989ff71f56f3e0799de4b98566d00c04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.3 MB (100260745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8340f0f872a042f2f8a530cba02a1a0d9846992336b8c1519ab406a08d700476`
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
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 20 Nov 2026 03:09:47 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 20 Nov 2026 03:09:47 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 20 Nov 2026 03:09:47 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 20 Nov 2026 03:09:47 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:10:07 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='2ea683cb88b8f1955cf3e2f77bb65f2b62acdb659d12311f4a24074b63187fb0';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='bfaf312f69741a09b58ef205c963d8e4f394fe3afde9debf0efa905ab54b7b71';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 20 Nov 2026 03:10:07 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 20 Nov 2026 03:10:07 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 20 Nov 2026 03:10:07 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:10:07 GMT
STOPSIGNAL SIGTERM
# Fri, 20 Nov 2026 03:10:07 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 20 Nov 2026 03:10:07 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e42741e162b640f6466924e6b4463c281124cd0e7ff0e82cf4d7d1c3c3ca6a`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 989.3 KB (989253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fb94f793e9554804025afea717149016ecbfb579da0c8abcd99e10fc345cf9`  
		Last Modified: Fri, 20 Nov 2026 03:10:22 GMT  
		Size: 70.3 MB (70303746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7d4fc74ea47a1938b79e2540aa8633d31bc9a282b6df38f06ed6ec89ab0e76c`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846c01f42504cab37d432a7d5226b5403cd0c992a2dbe5a07b2bcdefe7e10c8b`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.1_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:987015d50ee0a54773f5b865fc3e460a98eb1ff79bb50d9218ab0521c9389cbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2283197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce5a46ea1653f06704416955d17079993a20920456bdd58f7f8e8300aadaaf97`

```dockerfile
```

-	Layers:
	-	`sha256:1ba0759ce0b291e825805065de1da914d935ffb2fe772908013a3833fbe4f881`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 2.3 MB (2258712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9e8f0519dcf93e8e80d35724cd0d3f33c3f03c95d3dea807510b598a3d49f36`  
		Last Modified: Fri, 20 Nov 2026 03:10:20 GMT  
		Size: 24.5 KB (24485 bytes)  
		MIME: application/vnd.in-toto+json
