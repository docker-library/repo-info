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
