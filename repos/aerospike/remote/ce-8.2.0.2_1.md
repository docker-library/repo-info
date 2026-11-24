## `aerospike:ce-8.2.0.2_1`

```console
$ docker pull aerospike@sha256:6682b63510564b0bb90d82fc4377167ff1968013fb73f18ca9ace861e85bf8ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.2.0.2_1` - linux; amd64

```console
$ docker pull aerospike@sha256:a31e6352257be4c64328a867342d3566ae02c29f2ea28ccc7d7839b11e049703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97687758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f746794039e35c2ae4b9f5cf634545d3de315102b94bb5156c9b1cedc79db1b`
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
# Tue, 24 Nov 2026 18:41:05 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.2 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 24 Nov 2026 18:41:05 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 24 Nov 2026 18:41:05 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 24 Nov 2026 18:41:05 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 24 Nov 2026 18:41:05 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 18:41:19 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.2-21ubuntu24.04_amd64.deb';         serverSha='d195b9ef29444d2b779a79701fcdf50b2605c70c75ec45bdebc0a1e45ffaa583';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.2.0-1ubuntu24.04_amd64.deb';         asadmSha='f44a807bdfbae57cce99a9bbb597813ef8afb0d476ca6ec01c866d39d9d836ef';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.2-21ubuntu24.04_arm64.deb';         serverSha='4b6fe2cef7831ff495f099556982a953abd68daab4a8b0e168b453bc4dffad65';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.2.0-1ubuntu24.04_arm64.deb';         asadmSha='38681f608748007f78470bd82962da2d50f1d373d680b4f3731cc6b3cbdd2821';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 24 Nov 2026 18:41:19 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 24 Nov 2026 18:41:19 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 24 Nov 2026 18:41:19 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 18:41:19 GMT
STOPSIGNAL SIGTERM
# Tue, 24 Nov 2026 18:41:19 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 18:41:19 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da98d1cdef7b79813245d327628a37ccaf6e0be6d65f181e401dd936a04982aa`  
		Last Modified: Tue, 24 Nov 2026 18:41:31 GMT  
		Size: 1.0 MB (1006129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2721c7c33c1e4368515b6971c793961972266da12e4410758188116bd0e466`  
		Last Modified: Tue, 24 Nov 2026 18:41:33 GMT  
		Size: 66.9 MB (66885905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa2642faeb17bfd0806ffd5d495ff5962ef086a0ed3be614910619d5fbbc3af`  
		Last Modified: Tue, 24 Nov 2026 18:41:31 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a717fd380ec2d488e9a51766c97c44cb574c642efda718cb72904f4fcfc1b1`  
		Last Modified: Tue, 24 Nov 2026 18:41:31 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.2_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:51cf999af0a7474465f02a553d5a59a1be41f4dcf33db518edfe05233cebca27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3141e1b473aaa35fea777b81b9a82e6967ffec46d6e7e3d658415aeb024da5b8`

```dockerfile
```

-	Layers:
	-	`sha256:4b4eb90b59c037192ee1d599547ff2b6532678ba62847d33fac6b898f10ad0aa`  
		Last Modified: Tue, 24 Nov 2026 18:41:31 GMT  
		Size: 2.2 MB (2156537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb986139973660315a08c319980cb9729ff3825af78f70528db17d38e67da904`  
		Last Modified: Tue, 24 Nov 2026 18:41:31 GMT  
		Size: 24.4 KB (24377 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.2.0.2_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:3556e7a0eb4755f8c722fdd86216ed268b14739751915e0910e5feb8073dcd20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.8 MB (95843248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf15b3dff90da0ae5875f0148b00d09916056aff3430619ff265f0ec6caaa356`
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
# Tue, 24 Nov 2026 18:41:15 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.2.0.2 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Tue, 24 Nov 2026 18:41:15 GMT
ARG AEROSPIKE_EDITION=community
# Tue, 24 Nov 2026 18:41:15 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Tue, 24 Nov 2026 18:41:15 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Tue, 24 Nov 2026 18:41:15 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 18:41:31 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN set -eux;   {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.2-21ubuntu24.04_amd64.deb';         serverSha='d195b9ef29444d2b779a79701fcdf50b2605c70c75ec45bdebc0a1e45ffaa583';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.2.0-1ubuntu24.04_amd64.deb';         asadmSha='f44a807bdfbae57cce99a9bbb597813ef8afb0d476ca6ec01c866d39d9d836ef';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         serverUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-server-community/aerospike-server-community_8.2.0.2-21ubuntu24.04_arm64.deb';         serverSha='4b6fe2cef7831ff495f099556982a953abd68daab4a8b0e168b453bc4dffad65';         asadmUrl='https://aerospike.jfrog.io/artifactory/database-deb-prod-public-local/pool/noble/aerospike-asadm/aerospike-asadm_5.2.0-1ubuntu24.04_arm64.deb';         asadmSha='38681f608748007f78470bd82962da2d50f1d373d680b4f3731cc6b3cbdd2821';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     if [ -n "${serverUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-server-dl_${ARCH}.deb" "${serverUrl}";         echo "${serverSha} */tmp/aerospike/aerospike-server-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;     if [ -n "${asadmUrl}" ]; then         curl -fL -o "/tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" "${asadmUrl}";         echo "${asadmSha} */tmp/aerospike/aerospike-asadm-dl_${ARCH}.deb" | sha256sum --strict --check -;     fi;   };   {     apt-get install -y --no-install-recommends /tmp/aerospike/aerospike-*_"${ARCH}".deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /opt/aerospike/doc/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Tue, 24 Nov 2026 18:41:31 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Tue, 24 Nov 2026 18:41:31 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Tue, 24 Nov 2026 18:41:31 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 18:41:31 GMT
STOPSIGNAL SIGTERM
# Tue, 24 Nov 2026 18:41:31 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Tue, 24 Nov 2026 18:41:31 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f86235469dbee93ed5945abd2727d0df5b0b5e4792a005462186b087eb7ea29`  
		Last Modified: Tue, 24 Nov 2026 18:41:44 GMT  
		Size: 989.2 KB (989248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0d62b0961d685d1c0aed6851eaf8d5753500ad3bf518a2d5182ae7500be07f`  
		Last Modified: Tue, 24 Nov 2026 18:41:45 GMT  
		Size: 65.9 MB (65886256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc20f564a717f18e2a61ad5f9769c33f0581c0c8cbefe9ec2a4515f9e364ab4f`  
		Last Modified: Tue, 24 Nov 2026 18:41:43 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ced858c0818e48ee417ad3fe81f0b4b9a6e1433703c51aa30ac87cae9d9987f`  
		Last Modified: Tue, 24 Nov 2026 18:41:44 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.2.0.2_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:60dd2e334732ce27df343cf3535a5422a10ffe8353339213d9115f4cb1b1821c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4e719e6d894470b923fc075cbc5e19db446cdc85a59257eedb46ded9caae18`

```dockerfile
```

-	Layers:
	-	`sha256:1c63bc43aaacb85940e4669ab72ed1c9fafed1cdd928053415c4da962552b1f7`  
		Last Modified: Tue, 24 Nov 2026 18:41:44 GMT  
		Size: 2.2 MB (2157627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf8495ecab67fae6100db8c170fdffa6d4ea46ec849b7e1c072a13ccf91ef6b0`  
		Last Modified: Tue, 24 Nov 2026 18:41:44 GMT  
		Size: 24.5 KB (24468 bytes)  
		MIME: application/vnd.in-toto+json
