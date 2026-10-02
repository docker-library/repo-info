<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:ce-8.1.2.5`](#aerospikece-8125)
-	[`aerospike:ce-8.1.2.5_1`](#aerospikece-8125_1)
-	[`aerospike:ee-8.1.2.5`](#aerospikeee-8125)
-	[`aerospike:ee-8.1.2.5_1`](#aerospikeee-8125_1)

## `aerospike:ce-8.1.2.5`

```console
$ docker pull aerospike@sha256:d2fec6996ec1a5e28e7ec938bcec5bc1181accf42700ac9dfc259f3b71d2fa2d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.5` - linux; amd64

```console
$ docker pull aerospike@sha256:e79cb2574705865ba4c27935254ee32137f6f130a162bebc8ca0be1c60a676f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131763575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d052ac5c0b8f4b0911b97a903bf8df3c6b56f0b481f20152bc5d0fa12d060f1f`
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
# Fri, 02 Oct 2026 01:11:42 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 01:11:42 GMT
ARG AEROSPIKE_EDITION=community
# Fri, 02 Oct 2026 01:11:42 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 01:11:42 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 01:11:42 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:58 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='f9d59d40e37b3a0301f8e3a140d09480d5606454162882e715e5dcf6388ad785';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='c5c0493ec38731b8ab192259ea938c2209d0d8e9d392aadcfd1aa5a7e80c6b19';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 01:11:58 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 01:11:58 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 01:11:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:11:58 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 01:11:58 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 01:11:58 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93069d70c17964cb0bcc65ceb0d2d92244a5eed118bb8bfadc704be5408fb96`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 3.4 MB (3419959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3aa5587525b4d953d451adb77a7d3ece03b77e3a9bf098f4a978cc30c647021`  
		Last Modified: Fri, 02 Oct 2026 01:12:16 GMT  
		Size: 98.6 MB (98576765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d796d6d83c4bb68c9a6647237afd1d1a032ec978bc0ca0d1d8ba30b66ca89eb`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0440ab426ce03e23c73f4d79afcf7bdcc36383e8374b11ebd07c5af6a365324`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:e565a2871001837beb1df1360378b6b41d37117540adec4516ddc1d39518694e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2217217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954fe4da0fd14117e87a5b5cd2b8e025d5c7f3dca5e71d16eb77c9b76c78da84`

```dockerfile
```

-	Layers:
	-	`sha256:3991401add01cab46fc272b6f7ba5c1392ef234077309a2fb33e1cb58ef4bbe6`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 2.2 MB (2195424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc15df724222ee6612312d31e7ecaddc2bc2b480ee9e55fbd4e126a2faa5485c`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.5` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:7d665d81764dfdf1e3607f0bd9d5627a1d0502c1cd00892e997a5691f998766d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128364009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6197428eb409e5d27eace88b63dd4cf50a21cd3ff0064971f5b500ed6b1a7f13`
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
# Fri, 02 Oct 2026 01:11:30 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 01:11:30 GMT
ARG AEROSPIKE_EDITION=community
# Fri, 02 Oct 2026 01:11:30 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 01:11:30 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 01:11:30 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='f9d59d40e37b3a0301f8e3a140d09480d5606454162882e715e5dcf6388ad785';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='c5c0493ec38731b8ab192259ea938c2209d0d8e9d392aadcfd1aa5a7e80c6b19';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 01:11:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 01:11:47 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 01:11:47 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4db2997e522b8df3c1bfdb614a0b9e9199e7435604e67a84c2d7415004f35fe`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 3.3 MB (3258835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cc543a939e22846c16d4dc8bcc3e66838f686cdd088f95e69efee5970f3b36`  
		Last Modified: Fri, 02 Oct 2026 01:12:06 GMT  
		Size: 96.2 MB (96162659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863de582f6128acc836b151ae8706ec3fe4aa778a564834c512fdf5761e61528`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596efd3b3cad515686e5136da778046b1bf84986f61a73127f604974e7f9430`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:843cc8e2320224f8a9e51d352806ad9f13ba09a0e8f224c4ed3ad3df3d9ac1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2218403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181131a24cbad473b3643df85676a12cdc61a82d763ff993acd5766f02f521e8`

```dockerfile
```

-	Layers:
	-	`sha256:d8d5eab7b8b32ef519385db57adb09cbf85b393016fccf1c5cbc91c76ba2e1c8`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 2.2 MB (2196514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0772f719c2ba9cf0a474fdd7aee563642b9a6199e694a13ce82eabaf70df56d`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 21.9 KB (21889 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ce-8.1.2.5_1`

```console
$ docker pull aerospike@sha256:d2fec6996ec1a5e28e7ec938bcec5bc1181accf42700ac9dfc259f3b71d2fa2d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ce-8.1.2.5_1` - linux; amd64

```console
$ docker pull aerospike@sha256:e79cb2574705865ba4c27935254ee32137f6f130a162bebc8ca0be1c60a676f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131763575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d052ac5c0b8f4b0911b97a903bf8df3c6b56f0b481f20152bc5d0fa12d060f1f`
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
# Fri, 02 Oct 2026 01:11:42 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 01:11:42 GMT
ARG AEROSPIKE_EDITION=community
# Fri, 02 Oct 2026 01:11:42 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 01:11:42 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 01:11:42 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:58 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='f9d59d40e37b3a0301f8e3a140d09480d5606454162882e715e5dcf6388ad785';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='c5c0493ec38731b8ab192259ea938c2209d0d8e9d392aadcfd1aa5a7e80c6b19';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 01:11:58 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 01:11:58 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 01:11:58 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:11:58 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 01:11:58 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 01:11:58 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93069d70c17964cb0bcc65ceb0d2d92244a5eed118bb8bfadc704be5408fb96`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 3.4 MB (3419959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3aa5587525b4d953d451adb77a7d3ece03b77e3a9bf098f4a978cc30c647021`  
		Last Modified: Fri, 02 Oct 2026 01:12:16 GMT  
		Size: 98.6 MB (98576765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d796d6d83c4bb68c9a6647237afd1d1a032ec978bc0ca0d1d8ba30b66ca89eb`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0440ab426ce03e23c73f4d79afcf7bdcc36383e8374b11ebd07c5af6a365324`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.5_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:e565a2871001837beb1df1360378b6b41d37117540adec4516ddc1d39518694e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2217217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954fe4da0fd14117e87a5b5cd2b8e025d5c7f3dca5e71d16eb77c9b76c78da84`

```dockerfile
```

-	Layers:
	-	`sha256:3991401add01cab46fc272b6f7ba5c1392ef234077309a2fb33e1cb58ef4bbe6`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 2.2 MB (2195424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc15df724222ee6612312d31e7ecaddc2bc2b480ee9e55fbd4e126a2faa5485c`  
		Last Modified: Fri, 02 Oct 2026 01:12:14 GMT  
		Size: 21.8 KB (21793 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ce-8.1.2.5_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:7d665d81764dfdf1e3607f0bd9d5627a1d0502c1cd00892e997a5691f998766d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.4 MB (128364009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6197428eb409e5d27eace88b63dd4cf50a21cd3ff0064971f5b500ed6b1a7f13`
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
# Fri, 02 Oct 2026 01:11:30 GMT
LABEL org.opencontainers.image.title=Aerospike Community Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 01:11:30 GMT
ARG AEROSPIKE_EDITION=community
# Fri, 02 Oct 2026 01:11:30 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 01:11:30 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 01:11:30 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
# ARGS: AEROSPIKE_EDITION=community
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='f9d59d40e37b3a0301f8e3a140d09480d5606454162882e715e5dcf6388ad785';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-community/8.1.2.5/aerospike-server-community_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='c5c0493ec38731b8ab192259ea938c2209d0d8e9d392aadcfd1aa5a7e80c6b19';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 01:11:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 01:11:47 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 01:11:47 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4db2997e522b8df3c1bfdb614a0b9e9199e7435604e67a84c2d7415004f35fe`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 3.3 MB (3258835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cc543a939e22846c16d4dc8bcc3e66838f686cdd088f95e69efee5970f3b36`  
		Last Modified: Fri, 02 Oct 2026 01:12:06 GMT  
		Size: 96.2 MB (96162659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863de582f6128acc836b151ae8706ec3fe4aa778a564834c512fdf5761e61528`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596efd3b3cad515686e5136da778046b1bf84986f61a73127f604974e7f9430`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ce-8.1.2.5_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:843cc8e2320224f8a9e51d352806ad9f13ba09a0e8f224c4ed3ad3df3d9ac1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2218403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:181131a24cbad473b3643df85676a12cdc61a82d763ff993acd5766f02f521e8`

```dockerfile
```

-	Layers:
	-	`sha256:d8d5eab7b8b32ef519385db57adb09cbf85b393016fccf1c5cbc91c76ba2e1c8`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 2.2 MB (2196514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0772f719c2ba9cf0a474fdd7aee563642b9a6199e694a13ce82eabaf70df56d`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 21.9 KB (21889 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.1.2.5`

```console
$ docker pull aerospike@sha256:5038a0c67191ae37a2f3ef65a0e39e935a0bf5967cfbeb7c7fe835eafffe27da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.5` - linux; amd64

```console
$ docker pull aerospike@sha256:991d18751f0a75eceb65539cb893cc7366b115b9b9fb0c0a124bcdb1912d2094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136128997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d46479e55a72467e7f8c9432e8cba1c91fbbbd128e5b97a22be5467c1be5ba7`
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
# Fri, 02 Oct 2026 01:11:32 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 01:11:32 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 02 Oct 2026 01:11:32 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 01:11:32 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 01:11:32 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 01:11:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 01:11:47 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 01:11:47 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca14de69e4ffe10ec5d754c95ed8906042ee8f160129f542d8aeb14e5b34571`  
		Last Modified: Fri, 02 Oct 2026 01:12:04 GMT  
		Size: 3.4 MB (3419976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a3e46a0803e9d3ec9a20c3cdd216f0a097d03ea60089ef42e4c43a7034215d5`  
		Last Modified: Fri, 02 Oct 2026 01:12:07 GMT  
		Size: 102.9 MB (102942172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e4677d5a72e40a5152011284008ad63f906c204563b23f079a904da582c882`  
		Last Modified: Fri, 02 Oct 2026 01:12:04 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596efd3b3cad515686e5136da778046b1bf84986f61a73127f604974e7f9430`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:fd3a5fc6041d9da74c628acb2e2ccd82a4a3e129ccdcf61a4f378960ea1094da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553f165e601cc7067f359eefde8978b5a1c0a54f3b3b5c81297cd5dac5319c7b`

```dockerfile
```

-	Layers:
	-	`sha256:0dac4d794bc70cc30ec0c196e6c90fd636e668a2ac712344c7bfb23ec07d80c8`  
		Last Modified: Fri, 02 Oct 2026 01:12:04 GMT  
		Size: 2.3 MB (2296502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d966ac8127c90a4765e521d7ae54b434bd955516830182da7c32a9b3abe00c8`  
		Last Modified: Fri, 02 Oct 2026 01:12:04 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.5` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:93eae45c5bc2ecfcab1062ac5ef50ef51e8f0b8567b1fc83a826d4d1dc75b761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132769587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83389e6be9d73422182e742d757fac24beda58e71954f1b408ffbcb961db7e7`
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
# Fri, 02 Oct 2026 01:11:10 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 01:11:10 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 02 Oct 2026 01:11:10 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 01:11:10 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 01:11:10 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:27 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 01:11:27 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 01:11:27 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 01:11:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:11:27 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 01:11:27 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 01:11:27 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8a03c1bf7d596919a09a0a4ecf4a2d78f63e787f86b5c1ed0b23af83d08100`  
		Last Modified: Fri, 02 Oct 2026 01:11:44 GMT  
		Size: 3.3 MB (3258829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254c4aa391d1442e201b3e94c88b92342e17df802823c0def59976f159154a82`  
		Last Modified: Fri, 02 Oct 2026 01:11:46 GMT  
		Size: 100.6 MB (100568245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aae3aec833d4a514bf1179e54d37aa1299a58364adfa5cb9ebbc4ed34cd9dad`  
		Last Modified: Fri, 02 Oct 2026 01:11:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e940f8ec457034ad21dc294ffa968f199424fbde6f825c0a690f916ef7ecf53a`  
		Last Modified: Fri, 02 Oct 2026 01:11:43 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5` - unknown; unknown

```console
$ docker pull aerospike@sha256:0cf9bd00519990908ef9e9b036fe0c03011861543e1e043114f679e88ac71806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2319519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23c25eeb3b184cd0af6db95bffe442bee1b72ac1fa6c40cabdc99d64212a7b3`

```dockerfile
```

-	Layers:
	-	`sha256:02ecb4db806380717f723f45ea6015ac1fa696bc317e9322835db209a694b9fe`  
		Last Modified: Fri, 02 Oct 2026 01:11:43 GMT  
		Size: 2.3 MB (2297610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3d38c69bc66e80a852f0d21911e818b3b72839133fd8d62f679ce49d8ad2dbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:43 GMT  
		Size: 21.9 KB (21909 bytes)  
		MIME: application/vnd.in-toto+json

## `aerospike:ee-8.1.2.5_1`

```console
$ docker pull aerospike@sha256:5038a0c67191ae37a2f3ef65a0e39e935a0bf5967cfbeb7c7fe835eafffe27da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `aerospike:ee-8.1.2.5_1` - linux; amd64

```console
$ docker pull aerospike@sha256:991d18751f0a75eceb65539cb893cc7366b115b9b9fb0c0a124bcdb1912d2094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136128997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d46479e55a72467e7f8c9432e8cba1c91fbbbd128e5b97a22be5467c1be5ba7`
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
# Fri, 02 Oct 2026 01:11:32 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 01:11:32 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 02 Oct 2026 01:11:32 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 01:11:32 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 01:11:32 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 01:11:47 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:11:47 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 01:11:47 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 01:11:47 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca14de69e4ffe10ec5d754c95ed8906042ee8f160129f542d8aeb14e5b34571`  
		Last Modified: Fri, 02 Oct 2026 01:12:04 GMT  
		Size: 3.4 MB (3419976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a3e46a0803e9d3ec9a20c3cdd216f0a097d03ea60089ef42e4c43a7034215d5`  
		Last Modified: Fri, 02 Oct 2026 01:12:07 GMT  
		Size: 102.9 MB (102942172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e4677d5a72e40a5152011284008ad63f906c204563b23f079a904da582c882`  
		Last Modified: Fri, 02 Oct 2026 01:12:04 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7596efd3b3cad515686e5136da778046b1bf84986f61a73127f604974e7f9430`  
		Last Modified: Fri, 02 Oct 2026 01:12:03 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:fd3a5fc6041d9da74c628acb2e2ccd82a4a3e129ccdcf61a4f378960ea1094da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2318316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553f165e601cc7067f359eefde8978b5a1c0a54f3b3b5c81297cd5dac5319c7b`

```dockerfile
```

-	Layers:
	-	`sha256:0dac4d794bc70cc30ec0c196e6c90fd636e668a2ac712344c7bfb23ec07d80c8`  
		Last Modified: Fri, 02 Oct 2026 01:12:04 GMT  
		Size: 2.3 MB (2296502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d966ac8127c90a4765e521d7ae54b434bd955516830182da7c32a9b3abe00c8`  
		Last Modified: Fri, 02 Oct 2026 01:12:04 GMT  
		Size: 21.8 KB (21814 bytes)  
		MIME: application/vnd.in-toto+json

### `aerospike:ee-8.1.2.5_1` - linux; arm64 variant v8

```console
$ docker pull aerospike@sha256:93eae45c5bc2ecfcab1062ac5ef50ef51e8f0b8567b1fc83a826d4d1dc75b761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.8 MB (132769587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83389e6be9d73422182e742d757fac24beda58e71954f1b408ffbcb961db7e7`
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
# Fri, 02 Oct 2026 01:11:10 GMT
LABEL org.opencontainers.image.title=Aerospike Enterprise Server org.opencontainers.image.description=Aerospike is a real-time database with predictable performance at petabyte scale with microsecond latency over billions of transactions. org.opencontainers.image.documentation=https://hub.docker.com/_/aerospike org.opencontainers.image.base.name=docker.io/library/ubuntu:24.04 org.opencontainers.image.source=https://github.com/aerospike/aerospike-server.docker org.opencontainers.image.vendor=Aerospike org.opencontainers.image.version=8.1.2.5 org.opencontainers.image.url=https://github.com/aerospike/aerospike-server.docker
# Fri, 02 Oct 2026 01:11:10 GMT
ARG AEROSPIKE_EDITION=enterprise
# Fri, 02 Oct 2026 01:11:10 GMT
ENV AEROSPIKE_LINUX_BASE=ubuntu:24.04
# Fri, 02 Oct 2026 01:11:10 GMT
SHELL [/bin/bash -Eeuo pipefail -c]
# Fri, 02 Oct 2026 01:11:10 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN apt-get update;   apt-get install -y --no-install-recommends     ca-certificates     procps   ;   rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:27 GMT
# ARGS: AEROSPIKE_EDITION=enterprise
RUN {     apt-get update;     apt-get install -y --no-install-recommends curl;     ARCH="$(dpkg --print-architecture)";     if [ "${ARCH}" = "amd64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static';         tiniSha='d1f6826dd70cdd88dde3d5a20d8ed248883a3bc2caba3071c8a3a9b0e0de5940';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_x86_64.tgz';         pkgSha='71b5d5fdfae168d0fd6f0f677a34fd4b902219f9bfe22e6b471069ad48b85c15';     elif [ "${ARCH}" = "arm64" ]; then         tiniUrl='https://github.com/aerospike/tini/releases/download/1.0.1/as-tini-static-arm64';         tiniSha='1c398e5283af2f33888b7d8ac5b01ac89f777ea27c85d25866a40d1e64d0341b';         pkgLink='https://download.aerospike.com/artifacts/aerospike-server-enterprise/8.1.2.5/aerospike-server-enterprise_8.1.2.5_tools-13.0.3_ubuntu24.04_aarch64.tgz';         pkgSha='7dfc9ee39aefa79059397ac40107551bcd6b293aae94e6566904ddc1a4197e0e';     else         echo >&2 "error: unsupported architecture '${ARCH}'";         exit 1;     fi;   };   {     curl -fL -o /usr/bin/as-tini-static "${tiniUrl}";     echo "${tiniSha} */usr/bin/as-tini-static" | sha256sum --strict --check -;     chmod +x /usr/bin/as-tini-static;   };   {     mkdir -p /tmp/aerospike;     curl -fL -o /tmp/aerospike/pkg.tgz "${pkgLink}";     echo "${pkgSha} */tmp/aerospike/pkg.tgz" | sha256sum --strict --check -;     tar -xzf /tmp/aerospike/pkg.tgz --strip-components=1 -C /tmp/aerospike;   };   {     apt-get install -y --no-install-recommends         /tmp/aerospike/aerospike-server-*.deb         /tmp/aerospike/aerospike-tools*.deb;   };   {     mkdir -p /etc/aerospike /licenses /var/log/aerospike /var/run/aerospike;     cp /tmp/aerospike/LICENSE /licenses/;     if [ "${AEROSPIKE_EDITION}" = "enterprise" ] || [ "${AEROSPIKE_EDITION}" = "federal" ]; then         if [ -f /tmp/aerospike/features.conf ]; then             cp /tmp/aerospike/features.conf /etc/aerospike/features.conf;         fi;     fi;     rm -rf /tmp/aerospike;     apt-mark auto curl;     apt-get autoremove -y --purge;     rm -rf /var/lib/apt/lists/*;   };   echo "done"; # buildkit
# Fri, 02 Oct 2026 01:11:27 GMT
COPY aerospike.template.conf /etc/aerospike/aerospike.template.conf # buildkit
# Fri, 02 Oct 2026 01:11:27 GMT
EXPOSE map[3000/tcp:{} 3001/tcp:{} 3002/tcp:{}]
# Fri, 02 Oct 2026 01:11:27 GMT
COPY entrypoint.sh /entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:11:27 GMT
STOPSIGNAL SIGTERM
# Fri, 02 Oct 2026 01:11:27 GMT
ENTRYPOINT ["/usr/bin/as-tini-static" "-r" "SIGUSR1" "-t" "SIGTERM" "--" "/entrypoint.sh"]
# Fri, 02 Oct 2026 01:11:27 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8a03c1bf7d596919a09a0a4ecf4a2d78f63e787f86b5c1ed0b23af83d08100`  
		Last Modified: Fri, 02 Oct 2026 01:11:44 GMT  
		Size: 3.3 MB (3258829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254c4aa391d1442e201b3e94c88b92342e17df802823c0def59976f159154a82`  
		Last Modified: Fri, 02 Oct 2026 01:11:46 GMT  
		Size: 100.6 MB (100568245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aae3aec833d4a514bf1179e54d37aa1299a58364adfa5cb9ebbc4ed34cd9dad`  
		Last Modified: Fri, 02 Oct 2026 01:11:43 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e940f8ec457034ad21dc294ffa968f199424fbde6f825c0a690f916ef7ecf53a`  
		Last Modified: Fri, 02 Oct 2026 01:11:43 GMT  
		Size: 1.2 KB (1232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `aerospike:ee-8.1.2.5_1` - unknown; unknown

```console
$ docker pull aerospike@sha256:0cf9bd00519990908ef9e9b036fe0c03011861543e1e043114f679e88ac71806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2319519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e23c25eeb3b184cd0af6db95bffe442bee1b72ac1fa6c40cabdc99d64212a7b3`

```dockerfile
```

-	Layers:
	-	`sha256:02ecb4db806380717f723f45ea6015ac1fa696bc317e9322835db209a694b9fe`  
		Last Modified: Fri, 02 Oct 2026 01:11:43 GMT  
		Size: 2.3 MB (2297610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3d38c69bc66e80a852f0d21911e818b3b72839133fd8d62f679ce49d8ad2dbc`  
		Last Modified: Fri, 02 Oct 2026 01:11:43 GMT  
		Size: 21.9 KB (21909 bytes)  
		MIME: application/vnd.in-toto+json
