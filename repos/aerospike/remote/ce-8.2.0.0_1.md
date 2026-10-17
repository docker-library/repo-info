## `aerospike:ce-8.2.0.0_1`

```console
$ docker pull aerospike@sha256:74ee58f449dbb0a444d05939e74eea4dbb8af249e42409611a51014ebd973f9a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.2.0.0_1` - linux; amd64

```console
$ docker pull aerospike@sha256:80f985f339afd930b1fea786e526a0b717105cda52550ce55652122130435ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.5 MB (97474024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27c38c6fd2f2f8cf92cdb604fe4afdf408bd9eb1dad9c30caf535b813fe2866f`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:48 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 17 Oct 2026 00:11:48 GMT
ARG AEROSPIKE_EDITION=community
# Sat, 17 Oct 2026 00:11:48 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 17 Oct 2026 00:11:48 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 17 Oct 2026 00:11:48 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:12:11 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='765928889fca6e22eee7c38887e2f962a973a2c3a7668501a6875c34ef93331f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='ddfc4aa365f6adf48b4d42ade69356ace4f6482d3df001bdc075044cbbca657c';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 17 Oct 2026 00:12:11 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 17 Oct 2026 00:12:11 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 17 Oct 2026 00:12:11 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:11 GMT
STOPSIGNAL SIGTERM
# Sat, 17 Oct 2026 00:12:11 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 17 Oct 2026 00:12:11 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dbbe7951673586e6c50a13a72bb405700d46d37cb314b305399990ec264f33e`  
		Last Modified: Sat, 17 Oct 2026 00:12:23 GMT  
		Size: 1.0 MB (1008529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28be44c75d5df40366f256b583c76014d2496f020750895a0530cd011be9b6bd`  
		Last Modified: Sat, 17 Oct 2026 00:12:25 GMT  
		Size: 66.7 MB (66697309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c1973da98e60615e0a6d3d7836089a9d9db445bc7d644a94c50c8c0fa7b88c`  
		Last Modified: Sat, 17 Oct 2026 00:12:23 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0bf50c108beabbc6182824bf4668fc729d32113414302e25eddc18553f66e78`  
		Last Modified: Sat, 17 Oct 2026 00:12:23 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.0_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:c83090981582523b044c7b4b9598996b594103f5c3f3a912ba133cbc20a04691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0181799545f066b23a275d1ee807157ef3dd2f5aaa9a3f369a729e3aae7d383`

```dockerfile
```

-	Layers:
	-	`sha256:4dc7c07e7e9601f2e0687d318abaaaf1dbb7006ce11d3eaef21ab0e0cb8bdba0`  
		Last Modified: Sat, 17 Oct 2026 00:12:23 GMT  
		Size: 2.2 MB (2156555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b510e0b10db1b2627720392359b8f82aa9655af0c4463ba397c4d8fd7441d74d`  
		Last Modified: Sat, 17 Oct 2026 00:12:23 GMT  
		Size: 24.4 KB (24377 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.2.0.0_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:8004922b4a21b9edce0c66520d2341896a6b43c5182c69a1f33864775335bad3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.6 MB (95625452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bbda208e50bec8b6a51ae115a404ccdb637f13d37020b275c2cde5d700c2e7a`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:11:43 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.0 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Sat, 17 Oct 2026 00:11:43 GMT
ARG AEROSPIKE_EDITION=community
# Sat, 17 Oct 2026 00:11:43 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Sat, 17 Oct 2026 00:11:43 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Sat, 17 Oct 2026 00:11:43 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:12:00 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_amd64.deb';         serverSha='765928889fca6e22eee7c38887e2f962a973a2c3a7668501a6875c34ef93331f';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_amd64.deb';         asadmSha='46c53b20166b19f44b55b80955287363187b377ee2e60ce5c2da7af094f997bc';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.0-12ubuntu24.04_arm64.deb';         serverSha='ddfc4aa365f6adf48b4d42ade69356ace4f6482d3df001bdc075044cbbca657c';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.1.0-2ubuntu24.04_arm64.deb';         asadmSha='62950180530aca5dd5bffdfb4f5404dfd7bd76ad25464b4eb93ab0e4c671532e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Sat, 17 Oct 2026 00:12:00 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Sat, 17 Oct 2026 00:12:00 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Sat, 17 Oct 2026 00:12:00 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:00 GMT
STOPSIGNAL SIGTERM
# Sat, 17 Oct 2026 00:12:00 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Sat, 17 Oct 2026 00:12:00 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023beb8beb76e258f10ba331a9df424b0d86edff48b572d240e1e70c44c65b2d`  
		Last Modified: Sat, 17 Oct 2026 00:12:12 GMT  
		Size: 990.3 KB (990263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8077126970a8f8220686ec4f937c61117000e1cc80f5cb49fcd1db58916d3c50`  
		Last Modified: Sat, 17 Oct 2026 00:12:14 GMT  
		Size: 65.7 MB (65692998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f680f0f5622cd77452f718f42035db050c0fa4aa6234cc7d2861d5c23ae5911`  
		Last Modified: Sat, 17 Oct 2026 00:12:12 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a76f2a3bfc43e37fa7ee33e06ff0736b0ab4092dc2791133e6c9aadb0d2ade5`  
		Last Modified: Sat, 17 Oct 2026 00:12:12 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.0_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:59e7ff8bae13e7827ba1a18a7087f54b761713ce6726420140b44c91766c4ccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ba5fe0715b572406e6788d12d9b5388424a2cc36f6bd181ee97249af3fa0b5`

```dockerfile
```

-	Layers:
	-	`sha256:43ef20df16a84421e920c2067982ba18f754fa2355b58d6c0a6901bbf7c5e6d5`  
		Last Modified: Sat, 17 Oct 2026 00:12:12 GMT  
		Size: 2.2 MB (2157644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8a90f296049b392fafe0a09e78b7423aa8d1c2b93f7e9910c9869d0f381580f`  
		Last Modified: Sat, 17 Oct 2026 00:12:12 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json
