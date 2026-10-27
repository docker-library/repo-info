<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:ce-8.2.0.0`](#aerospikece-8200)
-	[`aerospike:ce-8.2.0.0_1`](#aerospikece-8200_1)
-	[`aerospike:ee-8.2.0.0`](#aerospikeee-8200)
-	[`aerospike:ee-8.2.0.0_1`](#aerospikeee-8200_1)

## `aerospike:ce-8.2.0.0`

```console
$ docker pull aerospike@sha256:b5fddd730c66e7ed3e57a513347cd43b035e7b85086a104d06750c5cffd7b95a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.2.0.0` - linux; amd64

```console
$ docker pull aerospike@sha256:da374e2c7f6e15dea662681496bb15aea45640e386d1674912fda0dd2abaf093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97472881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35591d0b860f470ed347db376201110a6eefc8f28dd5f4c12f681a37c6087d56`
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
# Mon, 26 Oct 2026 23:02:04 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Mon, 26 Oct 2026 23:02:04 GMT
ARG AEROSPIKE_EDITION=community
# Mon, 26 Oct 2026 23:02:04 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Mon, 26 Oct 2026 23:02:04 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Mon, 26 Oct 2026 23:02:04 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:02:20 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='765928889fca6e22eee7c38887e2f962a973a2c3a7668501a6875c34ef93331f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='ddfc4aa365f6adf48b4d42ade69356ace4f6482d3df001bdc075044cbbca657c';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Mon, 26 Oct 2026 23:02:20 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Mon, 26 Oct 2026 23:02:20 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Mon, 26 Oct 2026 23:02:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:02:20 GMT
STOPSIGNAL SIGTERM
# Mon, 26 Oct 2026 23:02:20 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Mon, 26 Oct 2026 23:02:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7bf0e75b6ff96a96763174b1acfd4156b7bb83c0ee15629415b52ddd040b62`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 1.0 MB (1005712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02908df5d49f58a5cc9bf5d0a8bbad0d09056e2b2cdfeaf9aef0172df8be24a0`  
		Last Modified: Mon, 26 Oct 2026 23:02:34 GMT  
		Size: 66.7 MB (66697129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18d93e2d019f067839974872d435a7cc63bec947f8c930663b7f333dc2f98e6`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e4221bdb371b9443428494d0372f6dfb01eace21d5a48c7de387aa42e9ca60`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.0` - unknown; unknown

```console
$ docker pull aerospike@sha256:3a82eca93cd83e6a4ff28b9bc157f513d3d2b657a68df77471595bf21f6edcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a9ac872ab4c1a1755fc88e589bcb00a3ad32facffe14c6d7d72950e3e8bddb`

```dockerfile
```

-	Layers:
	-	`sha256:92799bf438cc6e86f1399b03c2bf6982ec855a5a3cbdfdea7812a58fd6c1aa80`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 2.2 MB (2155911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b04c105523dc94fc9955a6b0bf1ae01d542811cc6919613d3bbd91940e0fa4f`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 24.4 KB (24377 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.2.0.0` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:1c0280efc56e60d6e6e2c8d1566d37e0e5af14f5b2164b4306d009672cf11c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95624288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5df452e9f2bd270dcfeb9dfc490b21f22a688daec4bda11aa556bb69605d66`
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
# Mon, 26 Oct 2026 23:08:09 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Mon, 26 Oct 2026 23:08:09 GMT
ARG AEROSPIKE_EDITION=community
# Mon, 26 Oct 2026 23:08:09 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Mon, 26 Oct 2026 23:08:09 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Mon, 26 Oct 2026 23:08:09 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:08:26 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='765928889fca6e22eee7c38887e2f962a973a2c3a7668501a6875c34ef93331f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='ddfc4aa365f6adf48b4d42ade69356ace4f6482d3df001bdc075044cbbca657c';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Mon, 26 Oct 2026 23:08:26 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Mon, 26 Oct 2026 23:08:26 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Mon, 26 Oct 2026 23:08:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:26 GMT
STOPSIGNAL SIGTERM
# Mon, 26 Oct 2026 23:08:26 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:26 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdd413abcc9816a50a7ad691dc2bb31f9fa523f9b487d1ae697cd744f22d5dc`  
		Last Modified: Mon, 26 Oct 2026 23:08:39 GMT  
		Size: 988.7 KB (988731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf4f3352a89946d9453d48318ce9d1085d7eb861079d004d2389bf74fbb03e4`  
		Last Modified: Mon, 26 Oct 2026 23:08:41 GMT  
		Size: 65.7 MB (65693007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f75cde321a1c54070b8bbe7000b7f67851eca18a2b0862c749698adfb70a0a`  
		Last Modified: Mon, 26 Oct 2026 23:08:38 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5ee9dcde0ca0e47d55da4d748e4aad9acd6cf621fee5c3159bd6baa2bf8edd`  
		Last Modified: Mon, 26 Oct 2026 23:08:38 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.0` - unknown; unknown

```console
$ docker pull aerospike@sha256:a035bb3469fd5edad6aa221c57854b5b6a2114fc4c3c16eb8ecb02348bf7fb54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2181468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418684508f8007b6b573b700e5c40a7d788a5c69df849ef5370d6359b60d2e4e`

```dockerfile
```

-	Layers:
	-	`sha256:463a422ffdc693be899612a28e0730996489f934b65866071d0605386111352d`  
		Last Modified: Mon, 26 Oct 2026 23:08:39 GMT  
		Size: 2.2 MB (2157000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f3a8ca2ce35742788c0eadca4bd34134dbf07cc2945cdedb4322386bc6cba03`  
		Last Modified: Mon, 26 Oct 2026 23:08:38 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ce-8.2.0.0_1`

```console
$ docker pull aerospike@sha256:b5fddd730c66e7ed3e57a513347cd43b035e7b85086a104d06750c5cffd7b95a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.2.0.0_1` - linux; amd64

```console
$ docker pull aerospike@sha256:da374e2c7f6e15dea662681496bb15aea45640e386d1674912fda0dd2abaf093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97472881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35591d0b860f470ed347db376201110a6eefc8f28dd5f4c12f681a37c6087d56`
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
# Mon, 26 Oct 2026 23:02:04 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Mon, 26 Oct 2026 23:02:04 GMT
ARG AEROSPIKE_EDITION=community
# Mon, 26 Oct 2026 23:02:04 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Mon, 26 Oct 2026 23:02:04 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Mon, 26 Oct 2026 23:02:04 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:02:20 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='765928889fca6e22eee7c38887e2f962a973a2c3a7668501a6875c34ef93331f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='ddfc4aa365f6adf48b4d42ade69356ace4f6482d3df001bdc075044cbbca657c';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Mon, 26 Oct 2026 23:02:20 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Mon, 26 Oct 2026 23:02:20 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Mon, 26 Oct 2026 23:02:20 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:02:20 GMT
STOPSIGNAL SIGTERM
# Mon, 26 Oct 2026 23:02:20 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Mon, 26 Oct 2026 23:02:20 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7bf0e75b6ff96a96763174b1acfd4156b7bb83c0ee15629415b52ddd040b62`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 1.0 MB (1005712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02908df5d49f58a5cc9bf5d0a8bbad0d09056e2b2cdfeaf9aef0172df8be24a0`  
		Last Modified: Mon, 26 Oct 2026 23:02:34 GMT  
		Size: 66.7 MB (66697129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18d93e2d019f067839974872d435a7cc63bec947f8c930663b7f333dc2f98e6`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e4221bdb371b9443428494d0372f6dfb01eace21d5a48c7de387aa42e9ca60`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.0_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:3a82eca93cd83e6a4ff28b9bc157f513d3d2b657a68df77471595bf21f6edcb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a9ac872ab4c1a1755fc88e589bcb00a3ad32facffe14c6d7d72950e3e8bddb`

```dockerfile
```

-	Layers:
	-	`sha256:92799bf438cc6e86f1399b03c2bf6982ec855a5a3cbdfdea7812a58fd6c1aa80`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 2.2 MB (2155911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b04c105523dc94fc9955a6b0bf1ae01d542811cc6919613d3bbd91940e0fa4f`  
		Last Modified: Mon, 26 Oct 2026 23:02:32 GMT  
		Size: 24.4 KB (24377 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.2.0.0_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:1c0280efc56e60d6e6e2c8d1566d37e0e5af14f5b2164b4306d009672cf11c56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95624288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f5df452e9f2bd270dcfeb9dfc490b21f22a688daec4bda11aa556bb69605d66`
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
# Mon, 26 Oct 2026 23:08:09 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Mon, 26 Oct 2026 23:08:09 GMT
ARG AEROSPIKE_EDITION=community
# Mon, 26 Oct 2026 23:08:09 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Mon, 26 Oct 2026 23:08:09 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Mon, 26 Oct 2026 23:08:09 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:08:26 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='765928889fca6e22eee7c38887e2f962a973a2c3a7668501a6875c34ef93331f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='ddfc4aa365f6adf48b4d42ade69356ace4f6482d3df001bdc075044cbbca657c';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Mon, 26 Oct 2026 23:08:26 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Mon, 26 Oct 2026 23:08:26 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Mon, 26 Oct 2026 23:08:26 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:26 GMT
STOPSIGNAL SIGTERM
# Mon, 26 Oct 2026 23:08:26 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:26 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bdd413abcc9816a50a7ad691dc2bb31f9fa523f9b487d1ae697cd744f22d5dc`  
		Last Modified: Mon, 26 Oct 2026 23:08:39 GMT  
		Size: 988.7 KB (988731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf4f3352a89946d9453d48318ce9d1085d7eb861079d004d2389bf74fbb03e4`  
		Last Modified: Mon, 26 Oct 2026 23:08:41 GMT  
		Size: 65.7 MB (65693007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f75cde321a1c54070b8bbe7000b7f67851eca18a2b0862c749698adfb70a0a`  
		Last Modified: Mon, 26 Oct 2026 23:08:38 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5ee9dcde0ca0e47d55da4d748e4aad9acd6cf621fee5c3159bd6baa2bf8edd`  
		Last Modified: Mon, 26 Oct 2026 23:08:38 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.0_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:a035bb3469fd5edad6aa221c57854b5b6a2114fc4c3c16eb8ecb02348bf7fb54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2181468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418684508f8007b6b573b700e5c40a7d788a5c69df849ef5370d6359b60d2e4e`

```dockerfile
```

-	Layers:
	-	`sha256:463a422ffdc693be899612a28e0730996489f934b65866071d0605386111352d`  
		Last Modified: Mon, 26 Oct 2026 23:08:39 GMT  
		Size: 2.2 MB (2157000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f3a8ca2ce35742788c0eadca4bd34134dbf07cc2945cdedb4322386bc6cba03`  
		Last Modified: Mon, 26 Oct 2026 23:08:38 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.2.0.0`

```console
$ docker pull aerospike@sha256:4cd8464660d800734d0a78565c0769dd95d208be0b3edaee38ba9949bbd7979b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.2.0.0` - linux; amd64

```console
$ docker pull aerospike@sha256:15890424831545ba0308c37186190238e3ee3a31cd37e267c7c0a69f63e5f865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102025632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dba09a5127f7f2f40101d7934dedc3c96c5295696d7583d94550839702042b`
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
# Mon, 26 Oct 2026 23:01:58 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Mon, 26 Oct 2026 23:01:58 GMT
ARG AEROSPIKE_EDITION=enterprise
# Mon, 26 Oct 2026 23:01:58 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Mon, 26 Oct 2026 23:01:58 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Mon, 26 Oct 2026 23:01:58 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:02:14 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='01691672ec94d5bebc7d32ecbbde87e669292846d224bac1148ea142d843047f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='eb026e5180011e5b33e7fda866b4650304437a521a98cfa3148fcf66ac36850e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Mon, 26 Oct 2026 23:02:14 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Mon, 26 Oct 2026 23:02:14 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Mon, 26 Oct 2026 23:02:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:02:14 GMT
STOPSIGNAL SIGTERM
# Mon, 26 Oct 2026 23:02:14 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Mon, 26 Oct 2026 23:02:14 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4a42c1221f5a18958195df119c3e5b10b300fcc35d9e629ab30c959799aecd`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 1.0 MB (1005686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfb295f0ec5cfc5e6a906ee7bb57fb3907e3df7cc2a1fbd661d9a7ce7f68d04`  
		Last Modified: Mon, 26 Oct 2026 23:02:28 GMT  
		Size: 71.2 MB (71249908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48766e5de0759753974fc9ee7a7396f2bf9d49fb83f4b532883de47274a69f7`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2092911c54c910c0ac099490877b621291474b439b8fa5e04a3d5d56c388fedb`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.0` - unknown; unknown

```console
$ docker pull aerospike@sha256:7dfcdabb9cea3f9f124fc5f9eccc429837e3d341d35145279ead05af90a84067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2281395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a83c852657eaebb8437803575b46a8d70d9f152b871b529580238f35a2cafb6`

```dockerfile
```

-	Layers:
	-	`sha256:9f555ffa8f6694653ce927f91949defe7a55fd4d417d901b6fa759311e01fd65`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 2.3 MB (2257001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49cfd9557b38728829b9d1922772b49181d40d94dcd61d5ede5780feda5ea288`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.2.0.0` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:24a485ae7a645b59702e74cff1b139f7a6fd22642758a9b566fb58c603626fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100226435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c94991271b4dcb1b61022d4692ea01822044a597aed52c8e09bb9aa347234c`
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
# Mon, 26 Oct 2026 23:08:02 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Mon, 26 Oct 2026 23:08:02 GMT
ARG AEROSPIKE_EDITION=enterprise
# Mon, 26 Oct 2026 23:08:02 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Mon, 26 Oct 2026 23:08:02 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Mon, 26 Oct 2026 23:08:02 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:08:21 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='01691672ec94d5bebc7d32ecbbde87e669292846d224bac1148ea142d843047f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='eb026e5180011e5b33e7fda866b4650304437a521a98cfa3148fcf66ac36850e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Mon, 26 Oct 2026 23:08:21 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Mon, 26 Oct 2026 23:08:21 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Mon, 26 Oct 2026 23:08:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:21 GMT
STOPSIGNAL SIGTERM
# Mon, 26 Oct 2026 23:08:21 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:21 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910779c0aec92c5de2d05ca7933bd46f4abbb3962ba76f41422787a42081d8bf`  
		Last Modified: Mon, 26 Oct 2026 23:08:33 GMT  
		Size: 988.7 KB (988744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8593e93c9e0bd9ae20c0220c88c4d500c50aff3f7ea5c345ea6af37638b06e3`  
		Last Modified: Mon, 26 Oct 2026 23:08:35 GMT  
		Size: 70.3 MB (70295136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b8e5ff2c48e6831c9397a8608738ae56b40ac809f8ca3a39561577e1466c6e`  
		Last Modified: Mon, 26 Oct 2026 23:08:33 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a948598a078bb9d6895873ab419bf444c1863da2e71027e12f41f488b552e41`  
		Last Modified: Mon, 26 Oct 2026 23:08:33 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.0` - unknown; unknown

```console
$ docker pull aerospike@sha256:5a5f13c044451fe2040bc5d5ac27a98095ac1bd26220c7ddfe267d306d1ba4e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2282592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209eb14bae1a22403df6676852b5df13b24985d64e21d89550a1534c99ad6977`

```dockerfile
```

-	Layers:
	-	`sha256:41af4d17b2a4bc4acf6c6fbcc1db0b6ac2157d13d07293d1b301c33c64399dbb`  
		Last Modified: Mon, 26 Oct 2026 23:08:33 GMT  
		Size: 2.3 MB (2258108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62a8d77fa31927d502d50a9ec0d2e30cd2088ff08a1ef7aec33acc341900ccab`  
		Last Modified: Mon, 26 Oct 2026 23:08:34 GMT  
		Size: 24.5 KB (24484 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.2.0.0_1`

```console
$ docker pull aerospike@sha256:4cd8464660d800734d0a78565c0769dd95d208be0b3edaee38ba9949bbd7979b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.2.0.0_1` - linux; amd64

```console
$ docker pull aerospike@sha256:15890424831545ba0308c37186190238e3ee3a31cd37e267c7c0a69f63e5f865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (102025632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dba09a5127f7f2f40101d7934dedc3c96c5295696d7583d94550839702042b`
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
# Mon, 26 Oct 2026 23:01:58 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Mon, 26 Oct 2026 23:01:58 GMT
ARG AEROSPIKE_EDITION=enterprise
# Mon, 26 Oct 2026 23:01:58 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Mon, 26 Oct 2026 23:01:58 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Mon, 26 Oct 2026 23:01:58 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:02:14 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='01691672ec94d5bebc7d32ecbbde87e669292846d224bac1148ea142d843047f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='eb026e5180011e5b33e7fda866b4650304437a521a98cfa3148fcf66ac36850e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Mon, 26 Oct 2026 23:02:14 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Mon, 26 Oct 2026 23:02:14 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Mon, 26 Oct 2026 23:02:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:02:14 GMT
STOPSIGNAL SIGTERM
# Mon, 26 Oct 2026 23:02:14 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Mon, 26 Oct 2026 23:02:14 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4a42c1221f5a18958195df119c3e5b10b300fcc35d9e629ab30c959799aecd`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 1.0 MB (1005686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfb295f0ec5cfc5e6a906ee7bb57fb3907e3df7cc2a1fbd661d9a7ce7f68d04`  
		Last Modified: Mon, 26 Oct 2026 23:02:28 GMT  
		Size: 71.2 MB (71249908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48766e5de0759753974fc9ee7a7396f2bf9d49fb83f4b532883de47274a69f7`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2092911c54c910c0ac099490877b621291474b439b8fa5e04a3d5d56c388fedb`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.0_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:7dfcdabb9cea3f9f124fc5f9eccc429837e3d341d35145279ead05af90a84067
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2281395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a83c852657eaebb8437803575b46a8d70d9f152b871b529580238f35a2cafb6`

```dockerfile
```

-	Layers:
	-	`sha256:9f555ffa8f6694653ce927f91949defe7a55fd4d417d901b6fa759311e01fd65`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 2.3 MB (2257001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49cfd9557b38728829b9d1922772b49181d40d94dcd61d5ede5780feda5ea288`  
		Last Modified: Mon, 26 Oct 2026 23:02:26 GMT  
		Size: 24.4 KB (24394 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.2.0.0_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:24a485ae7a645b59702e74cff1b139f7a6fd22642758a9b566fb58c603626fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100226435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c94991271b4dcb1b61022d4692ea01822044a597aed52c8e09bb9aa347234c`
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
# Mon, 26 Oct 2026 23:08:02 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Mon, 26 Oct 2026 23:08:02 GMT
ARG AEROSPIKE_EDITION=enterprise
# Mon, 26 Oct 2026 23:08:02 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Mon, 26 Oct 2026 23:08:02 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Mon, 26 Oct 2026 23:08:02 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:08:21 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='01691672ec94d5bebc7d32ecbbde87e669292846d224bac1148ea142d843047f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-enterprise/aerospike-server-enterprise_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='eb026e5180011e5b33e7fda866b4650304437a521a98cfa3148fcf66ac36850e';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Mon, 26 Oct 2026 23:08:21 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Mon, 26 Oct 2026 23:08:21 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Mon, 26 Oct 2026 23:08:21 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:08:21 GMT
STOPSIGNAL SIGTERM
# Mon, 26 Oct 2026 23:08:21 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:21 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910779c0aec92c5de2d05ca7933bd46f4abbb3962ba76f41422787a42081d8bf`  
		Last Modified: Mon, 26 Oct 2026 23:08:33 GMT  
		Size: 988.7 KB (988744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8593e93c9e0bd9ae20c0220c88c4d500c50aff3f7ea5c345ea6af37638b06e3`  
		Last Modified: Mon, 26 Oct 2026 23:08:35 GMT  
		Size: 70.3 MB (70295136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b8e5ff2c48e6831c9397a8608738ae56b40ac809f8ca3a39561577e1466c6e`  
		Last Modified: Mon, 26 Oct 2026 23:08:33 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a948598a078bb9d6895873ab419bf444c1863da2e71027e12f41f488b552e41`  
		Last Modified: Mon, 26 Oct 2026 23:08:33 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.2.0.0_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:5a5f13c044451fe2040bc5d5ac27a98095ac1bd26220c7ddfe267d306d1ba4e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2282592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209eb14bae1a22403df6676852b5df13b24985d64e21d89550a1534c99ad6977`

```dockerfile
```

-	Layers:
	-	`sha256:41af4d17b2a4bc4acf6c6fbcc1db0b6ac2157d13d07293d1b301c33c64399dbb`  
		Last Modified: Mon, 26 Oct 2026 23:08:33 GMT  
		Size: 2.3 MB (2258108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62a8d77fa31927d502d50a9ec0d2e30cd2088ff08a1ef7aec33acc341900ccab`  
		Last Modified: Mon, 26 Oct 2026 23:08:34 GMT  
		Size: 24.5 KB (24484 bytes)  
		MIME: application/vnd.in-toto+json
