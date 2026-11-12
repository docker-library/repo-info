## `aerospike:ee-8.2.0.1`

```console
$ docker pull aerospike@sha256:b938a1b467a66514f4506e97d1cd2c3869c0a0cab234f6e084ff2e14d5599f99
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
$ docker pull aerospike@sha256:44ce37529a6b4fcafa2f4341bcc7932e393abcdde98909563f28805385206ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.3 MB (100260678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6063eba4782850dcc7162ed0821095f42e255bfac84f743c8408a9284b51c3`
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
# Wed, 11 Nov 2026 23:13:04 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.1 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Wed, 11 Nov 2026 23:13:04 GMT
ARG AEROSPIKE_EDITION=enterprise
# Wed, 11 Nov 2026 23:13:04 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Wed, 11 Nov 2026 23:13:04 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Wed, 11 Nov 2026 23:13:04 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:13:29 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_amd64.deb';         serverSha='2ea683cb88b8f1955cf3e2f77bb65f2b62acdb659d12311f4a24074b63187fb0';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.1-10ubuntu24.04_arm64.deb';         serverSha='bfaf312f69741a09b58ef205c963d8e4f394fe3afde9debf0efa905ab54b7b71';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Wed, 11 Nov 2026 23:13:29 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Wed, 11 Nov 2026 23:13:29 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Wed, 11 Nov 2026 23:13:29 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:13:29 GMT
STOPSIGNAL SIGTERM
# Wed, 11 Nov 2026 23:13:29 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Wed, 11 Nov 2026 23:13:29 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fccfad15200d60e31e82740c4b1353fe6d26332b15f1be0aa9f6072a3dd4efa`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 989.2 KB (989250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1db2b7bf2ef6a84aad6d825c20ff32ac24db2dda4277dcc1ddee29be48c2679`  
		Last Modified: Wed, 11 Nov 2026 23:13:45 GMT  
		Size: 70.3 MB (70303741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f55ca0d0e66a50c22a8766ea3c74352f6c7f11ce82b3b20eca72bd54513d91f`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed93ee5d71b4a4579c9071159ce8beeed34a2902748e7fab1df6df27d38c89ed`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.1` - unknown; unknown

```console
$ docker pull aerospike@sha256:bd53f5b5bd972ad6e3670f20c445d0244df6b7ce9816505b8ba05101f3908b2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2283196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b664eadf60407b14a10ea0e42ec10c124f7cde42703d20caea437c22192c9b4`

```dockerfile
```

-	Layers:
	-	`sha256:7ecf8d2d93b2be21d8cf7668df2939a5c19a6d13fc801138c6fe740530028ace`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 2.3 MB (2258712 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd2bfe05599a5840953a4bb4c7e45e3605e8adea5cf6fbd5449f64df29084b35`  
		Last Modified: Wed, 11 Nov 2026 23:13:43 GMT  
		Size: 24.5 KB (24484 bytes)  
		MIME: application/vnd.in-toto+json
