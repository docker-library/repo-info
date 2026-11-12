## `couchbase:latest`

```console
$ docker pull couchbase@sha256:414470a835728443987e4d1e52f9b21ed6ba653f54afd850b6222c1a9c7fb7ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:963279110948be0c60959b26c776ea28aa45b8a900c610625e4c203abefdc784
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.0 MB (919013056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f21add35e41feb2807b27bf6fa6b7aafebb42dd2aabd9e02748044c9c6c7e6dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Mon, 26 Oct 2026 23:03:27 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:03:27 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:03:27 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:03:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:03:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:03:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:03:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:04:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:04:24 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:04:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:04:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1395ea8c6683a72b1da7d32caafcc37bd3abc5fdd91daf8248bbfdba8be7027c`  
		Last Modified: Mon, 26 Oct 2026 23:05:26 GMT  
		Size: 44.0 MB (43982157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b96cf72c2cb6cca04db3aeb5230ef947074e5241f0eacff16e9389d4309ec8a`  
		Last Modified: Mon, 26 Oct 2026 23:05:24 GMT  
		Size: 879.1 KB (879052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4123b69375bd1bef98d9322f9bf6f501094df98b8a7e3dfb067566e063c2c3`  
		Last Modified: Mon, 26 Oct 2026 23:05:24 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8c42afcdf52cec4c21b44bdc2dc61a6551d7f8de725015a84b9a4e5e660921`  
		Last Modified: Mon, 26 Oct 2026 23:05:41 GMT  
		Size: 844.4 MB (844377256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15aede909a33629eefc36f88927c285d0c6dd72f9ade89048eb59d5e6adac47`  
		Last Modified: Mon, 26 Oct 2026 23:05:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2041a4e7f933972f4b73dc7f84d8331100028c25658057a9885744f437b2d2`  
		Last Modified: Mon, 26 Oct 2026 23:05:26 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbffd54db1c8f03e520c2ec7e5df474f546ace7dd603c8611b2bd7f21fe5bb4`  
		Last Modified: Mon, 26 Oct 2026 23:05:27 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b9d5e6f012fd63dd48c9364be71328147211b0f9cdad4ac3f4f45ed2f53a6d8`  
		Last Modified: Mon, 26 Oct 2026 23:05:27 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6d9341c65de71e5485e3ab7d3b872e6daa9fc8671a0e2b062981216daf7433`  
		Last Modified: Mon, 26 Oct 2026 23:05:28 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234f54f3034c6bef54f0ab7b8e34237070d1b3df8a2f5ece3273847aaa5e9e73`  
		Last Modified: Mon, 26 Oct 2026 23:05:28 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:latest` - unknown; unknown

```console
$ docker pull couchbase@sha256:6f5be14c3cb0f8c5ae9ce9d8dc9c69161107557f780a5dbe5fd5271428cc7c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739529b792c074b492afa8e25902490b76ad6aac372cad23df484c7902edff8f`

```dockerfile
```

-	Layers:
	-	`sha256:be97fe1b5e93df0d54f3852cedc9194445b1fcf55d701d3e32e0a8ee0c8d9d10`  
		Last Modified: Mon, 26 Oct 2026 23:05:24 GMT  
		Size: 38.2 KB (38172 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:latest` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:0785ae5ccd5eed8daf45bdfb3a38035dfab6b851fbee4ecdc48f40c1b423ddc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **871.0 MB (870973113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24fe30b862006be9b1f9147d0338a7f046c33cdc75f4290dd56da73c11c5098f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Wed, 11 Nov 2026 23:14:51 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:51 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:51 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:14 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Wed, 11 Nov 2026 23:16:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:14 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:43 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:43 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:43 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3476ee7f47eb939acb85ade5dfbfdd8032e59594907096685ce7687a06001f7`  
		Last Modified: Wed, 11 Nov 2026 23:17:45 GMT  
		Size: 43.8 MB (43810892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e4cd8f46be82acb90451a0b462abd39edf9e4ad50353ebc4a59db6c71160c62`  
		Last Modified: Wed, 11 Nov 2026 23:17:43 GMT  
		Size: 766.7 KB (766728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a050d8218d16666e86b70d60dbee2e7e635b60fcff7aa64eb9e38afeb40148e`  
		Last Modified: Wed, 11 Nov 2026 23:17:43 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ede8cd66786b764fc31414bd92e2c0f1efa31f35a9d88e4731fc251f4cd5b46`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 797.4 MB (797423249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edaf971d2d0775ee5bd17b748ea06184983f39a4ecf217e4c8b667e8ea497c36`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c884495d6aa7f5bd96fe06f2ffb9774030b954c491e205c84080d7156184311`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbeaa2ac3854eb0f4a801aded2a4c0c39ce0a925e10de6b6f1df4222ce447627`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41fdcb42612dfd9b8ebaede59f8cbe2ffafcd4befadb60a24d250cb961160ad6`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9723e53d5264f4168ef19210dd5663ebc42e497bd5ebebfde50d4bb08352f1a`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d25f19b37b1dadafdbcf6002cb5f47ece652d75780e91817fde904e90f24b83`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:latest` - unknown; unknown

```console
$ docker pull couchbase@sha256:d52be190122e0d41e29d0f25b1e32ca1cb28eb1401a7d84c8f38b3af2e0fc881
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 KB (38381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c38123ed0f2433ee484ce2f66fd00f9f5814c01037723bf3490fad28801cceca`

```dockerfile
```

-	Layers:
	-	`sha256:4f48c52a61470fda497551d60978e8c2c760e081be2306b89d353a44d6c84ab4`  
		Last Modified: Wed, 11 Nov 2026 23:17:43 GMT  
		Size: 38.4 KB (38381 bytes)  
		MIME: application/vnd.in-toto+json
