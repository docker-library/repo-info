## `aerospike:ee-8.1.2.4`

```console
$ docker pull aerospike@sha256:76b770e82e63dff5b234c84fe9852eae13196fefc8dedf0ab428f288821109b8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.4` - linux; amd64

```console
$ docker pull aerospike@sha256:ecf76d2c135a46349c777928bf20f10917232c44507115dfa21e84587d1c5686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138688886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a415d850789dea27d431c7bbb9d56804982c4ce4c9b3cb007ebeab0622da5752`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:12:15 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Wed, 09 Sep 2026 02:12:15 GMT
ARG AEROSPIKE_EDITION=enterprise
# Wed, 09 Sep 2026 02:12:15 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Wed, 09 Sep 2026 02:12:15 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Wed, 09 Sep 2026 02:12:15 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:12:32 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Wed, 09 Sep 2026 02:12:32 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Wed, 09 Sep 2026 02:12:32 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Wed, 09 Sep 2026 02:12:32 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:12:32 GMT
STOPSIGNAL SIGTERM
# Wed, 09 Sep 2026 02:12:32 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Wed, 09 Sep 2026 02:12:32 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e95a71730b4f8172ca1b6b56be645d034711b7b18821c75d37c30405883f00`  
		Last Modified: Wed, 09 Sep 2026 02:12:48 GMT  
		Size: 1.0 MB (1008377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c52c6f272f350408e82c2dc72661692b9a9cf481eee314f847585fc2e8a1dd`  
		Last Modified: Wed, 09 Sep 2026 02:12:51 GMT  
		Size: 107.9 MB (107914951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc7341bf4b1f2300600c1d6d1ff8d55250e46ee89888bd73c30323b82224c75`  
		Last Modified: Wed, 09 Sep 2026 02:12:48 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f3b7191d8dca737b71e170ab2c4224756be3d56bbe61b323fde8ee9344e26c`  
		Last Modified: Wed, 09 Sep 2026 02:12:48 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4` - unknown; unknown

```console
$ docker pull aerospike@sha256:a69615d6c76b7b03a44cd288632bede4bcb5edc9f564ac86a8d539b668684ddc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2317177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5dd49580ed1f38e6fc52f0d792ef0a8dc3229fd68945f871387e8edeb0a3d21`

```dockerfile
```

-	Layers:
	-	`sha256:89014e612cf3ed04efac24241de5309397953ede48e57b334afbce69f880c3d1`  
		Last Modified: Wed, 09 Sep 2026 02:12:48 GMT  
		Size: 2.3 MB (2295363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7566b046e3d04b1d5a300e225359ff25edc705acdb61c4d7e0f3f9202cbcd31a`  
		Last Modified: Wed, 09 Sep 2026 02:12:48 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.4` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:a167bbb30b0b4912734a03be6e8c20797a17ebe7f57b04005f7255d423ac78d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.0 MB (134956418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a117b5197ad40fac9b659276899699f312d2e2018fce57a6cc8bf3601317bc6`
-	Entrypoint: `["\/usr\/bin\/as-tini-static","-r","SIGUSR1","-t","SIGTERM","--","\/entrypoint.sh"]`
-	Default Command: `["asd"]`
-	`SHELL`: `["\/bin\/bash","-Eeuo","pipefail","-c"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:11:57 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.4 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Wed, 09 Sep 2026 02:11:57 GMT
ARG AEROSPIKE_EDITION=enterprise
# Wed, 09 Sep 2026 02:11:57 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Wed, 09 Sep 2026 02:11:57 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Wed, 09 Sep 2026 02:11:57 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:12:12 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_x86_64.tgz';         pkgSha='dd148f0793a0bea410b05a5387f8000d0963ee7a1a764d5a5f05248e4325dfe9';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.4/aerospike-server-enterprise_8.1.2.4_tools-13.0.2_ubuntu24.04_aarch64.tgz';         pkgSha='08624bac4c7a151138dad6bb117aecf92448c523dab0fb353781f414bdb64bee';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Wed, 09 Sep 2026 02:12:12 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Wed, 09 Sep 2026 02:12:12 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Wed, 09 Sep 2026 02:12:12 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:12:12 GMT
STOPSIGNAL SIGTERM
# Wed, 09 Sep 2026 02:12:12 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Wed, 09 Sep 2026 02:12:12 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804781fc964b54519bccc7da794bd2a0e384e950f45aa5d97a0ffdb908e2c4e2`  
		Last Modified: Wed, 09 Sep 2026 02:12:29 GMT  
		Size: 990.3 KB (990263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0baa17fdc57e9bdc327002cb71a4d8785170985f3a6c17043edf6de9c8b965cd`  
		Last Modified: Wed, 09 Sep 2026 02:12:32 GMT  
		Size: 105.0 MB (105023838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3b736876ec86059f5c9857ed365d5a65a8fbec09748658f6a41985faba77f0`  
		Last Modified: Wed, 09 Sep 2026 02:12:29 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2633f851cdaf78217b2911ab4fcfc15d572cd4a52c8ab93f99144666beb7fbbc`  
		Last Modified: Wed, 09 Sep 2026 02:12:29 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.4` - unknown; unknown

```console
$ docker pull aerospike@sha256:4dc1beefa8892c6f81758de94ef21646140e08cf288d593c8066f99f17d79fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d9f8cf534d3e955db34ec633ac407faa6474be8be2d84b100df1014bb2f2853`

```dockerfile
```

-	Layers:
	-	`sha256:768ef42ad73cb0097d57240f354568e6852bbf6f460a34f9c8e54d8eebe0e5ab`  
		Last Modified: Wed, 09 Sep 2026 02:12:29 GMT  
		Size: 2.3 MB (2296473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6ba447ca5d6c08d6bcf4eb141c171ee6aae58cd9c0017150934145e6e12c511`  
		Last Modified: Wed, 09 Sep 2026 02:12:29 GMT  
		Size: 21.9 KB (21904 bytes)  
		MIME: application/vnd.in-toto+json
