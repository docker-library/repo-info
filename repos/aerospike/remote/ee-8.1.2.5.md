## `aerospike:ee-8.1.2.5`

```console
$ docker pull aerospike@sha256:1da0d65c09d4bd95c34bfd8cbc92c227e36ae70d5c1659b4dd9caa7a22b534d4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.5` - linux; amd64

```console
$ docker pull aerospike@sha256:86ce60b6935a27e0565b0264e66bf9bee647c8cc17b239dc376920b1f9422cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **133.7 MB (133716209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d57e704fbb2dcf845561312cc28aefd0bbb1f32361c0f3354bb8fd636ee7eff6`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:32 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Wed, 16 Sep 2026 03:11:32 GMT
ARG AEROSPIKE_EDITION=enterprise
# Wed, 16 Sep 2026 03:11:32 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Wed, 16 Sep 2026 03:11:32 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Wed, 16 Sep 2026 03:11:32 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:11:46 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Wed, 16 Sep 2026 03:11:47 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Wed, 16 Sep 2026 03:11:47 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Wed, 16 Sep 2026 03:11:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:11:47 GMT
STOPSIGNAL SIGTERM
# Wed, 16 Sep 2026 03:11:47 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Wed, 16 Sep 2026 03:11:47 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feed1fa219cc09bc70cbf2d5484f3db8bbec7f184f302c5c9b1f2c5567796990`  
		Last Modified: Wed, 16 Sep 2026 03:12:03 GMT  
		Size: 1.0 MB (1008405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d849178298837a6e6b14ab7d20477c96044441525cdbc05597ec8ecc18c6247`  
		Last Modified: Wed, 16 Sep 2026 03:12:05 GMT  
		Size: 102.9 MB (102941261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2b2f36c3ff37361ed20a44924bb92a2e169993394324e4a8bf42748129be64`  
		Last Modified: Wed, 16 Sep 2026 03:12:02 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e5c692da433cd5970c0eed691a8e0e92e585058d6ef0af835debab32ec3efda`  
		Last Modified: Wed, 16 Sep 2026 03:12:02 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:e98b8dfca94b927cdf535f411f403c459aa6891ca611cdb76fb7878bc228acd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e91f890bfffc79ec13f95ed80fe232bc91aef55f1dd90fea94fa8d3b9f8cedfe`

```dockerfile
```

-	Layers:
	-	`sha256:a383d12bea05d6cda51fec090caabd3c4ffbe762ea11a0c675214377032afa1b`  
		Last Modified: Wed, 16 Sep 2026 03:12:02 GMT  
		Size: 2.3 MB (2296502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e45b3c2d910082483f4b19d439b1b358bbd91dcf9c371ad52f1cbbd6060fb75`  
		Last Modified: Wed, 16 Sep 2026 03:12:02 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.5` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:ef2fd2591baf6bfe9dd7008089334bfd59b3dc4443c6b1e048144bb47d06d90b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130501875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1c41ed3245c49de9b4edc60aa9a1623e7b13590943950960fce8a6eb2b220c`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:10:58 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Wed, 16 Sep 2026 03:10:58 GMT
ARG AEROSPIKE_EDITION=enterprise
# Wed, 16 Sep 2026 03:10:58 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Wed, 16 Sep 2026 03:10:58 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Wed, 16 Sep 2026 03:10:58 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 16 Sep 2026 03:11:14 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Wed, 16 Sep 2026 03:11:14 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Wed, 16 Sep 2026 03:11:14 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Wed, 16 Sep 2026 03:11:14 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 16 Sep 2026 03:11:14 GMT
STOPSIGNAL SIGTERM
# Wed, 16 Sep 2026 03:11:14 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Wed, 16 Sep 2026 03:11:14 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5b4b3267a7a6a76f14bdf03e315239192694af13b3929156185699d3fbf599`  
		Last Modified: Wed, 16 Sep 2026 03:11:30 GMT  
		Size: 990.3 KB (990260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba93f96701d197b7512e995bde0af84a1621e62dfb36e128792d2770ddbed7c`  
		Last Modified: Wed, 16 Sep 2026 03:11:32 GMT  
		Size: 100.6 MB (100567606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5dd2dbd23c9c8316f7d9e600d8f692a81d5b9c891d1ff7d0a53689d54b56a57`  
		Last Modified: Wed, 16 Sep 2026 03:11:30 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d18a4ae13071a0e8d94fea233b9ec02704197a204d44605fd00c6624f802c52`  
		Last Modified: Wed, 16 Sep 2026 03:11:30 GMT  
		Size: 1.2 KB (1233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:310ce18b2fa2c16c4b9c6ca2380b8e638e11d6664579c4254734a74735de192b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2319515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6759056b3a73952db10104bcb4180a982c70c706c7e5a703dcfd0e1134f18a8`

```dockerfile
```

-	Layers:
	-	`sha256:150d40854c7ea73a90be081a468e4a6d34809fbd299d393306a96c4ab6a17ebf`  
		Last Modified: Wed, 16 Sep 2026 03:11:30 GMT  
		Size: 2.3 MB (2297610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4dc233f8071073d908783bad9ec1fb0e18722c3c930085289c7964f972dcb9a`  
		Last Modified: Wed, 16 Sep 2026 03:11:30 GMT  
		Size: 21.9 KB (21905 bytes)  
		MIME: application/vnd.in-toto+json
