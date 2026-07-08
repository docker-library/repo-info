## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:e3773914cdfe8ec8014f0c6eb81f6eda70030de3ba86ec81402b2a82d0df39fc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:598fecac153a2b4e7bc7a76a595f65c6834d72102d2e4a3fab780e8c390a83b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **883.1 MB (883108329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ae1a556da6300be1649ea8569fa677c2fae12aa02d6b1f6c9e57716de7ac80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 16:51:22 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 08 Jul 2026 16:51:22 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 08 Jul 2026 16:51:22 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 08 Jul 2026 16:51:22 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 08 Jul 2026 16:52:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 08 Jul 2026 16:52:05 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 08 Jul 2026 16:52:05 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Wed, 08 Jul 2026 16:52:05 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 08 Jul 2026 16:52:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 08 Jul 2026 16:52:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 16:52:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 16:52:53 GMT
CMD ["couchbase-server"]
# Wed, 08 Jul 2026 16:52:53 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 08 Jul 2026 16:52:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06a09f8dc2df47963862d9e1e6a08e2890f5ec8fe8fee61d941790a842a33b3`  
		Last Modified: Wed, 08 Jul 2026 16:53:48 GMT  
		Size: 44.0 MB (43959261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba1ec2392df91071c3d3f7cb00ec864774419e8c90ae816c0df98d0378972c6`  
		Last Modified: Wed, 08 Jul 2026 16:53:46 GMT  
		Size: 3.3 MB (3285146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c78a0697b482eda438b3f52667ca5c7221b817f61b820d7511f8d591f7898af`  
		Last Modified: Wed, 08 Jul 2026 16:53:46 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0da531ec28899b834ba7f96e631e659fa6606aac880b71afc2f47cbfdbb24d`  
		Last Modified: Wed, 08 Jul 2026 16:54:12 GMT  
		Size: 806.1 MB (806121330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:032d6720bafb98d0baec54d8a121d4a6f5991a55a429395d62b5472ab756749c`  
		Last Modified: Wed, 08 Jul 2026 16:53:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8510f348a5adee0673d8a32b78a976963e782e9833f191e628ee01b360d56f`  
		Last Modified: Wed, 08 Jul 2026 16:53:48 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac7449b938de46f536797ba3fd1b9cd3b5bb149596de0144ffb815cce8eae9a`  
		Last Modified: Wed, 08 Jul 2026 16:53:49 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d22cba9f6dcccfbd98bf20462d9c067e8e289808709607fc3eb41a81ac4204f`  
		Last Modified: Wed, 08 Jul 2026 16:53:49 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b95f6366af6c24f496fc7d2626c391f34c7f375dbd2e13c325972b59e63535`  
		Last Modified: Wed, 08 Jul 2026 16:53:50 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a967b5ec01ca8f4f07f31d5fe6fa838142f937d8c1a9c5ea87a62c4c7465d3`  
		Last Modified: Wed, 08 Jul 2026 16:53:50 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise` - unknown; unknown

```console
$ docker pull couchbase@sha256:46f570554de95d449f1efa7a5a05073fcbf6832f26262e5c02270ff9ec0a74c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b554f4b82917ddc405f40fbb166a6c1ad2df66f68c635e74f81f8a58e3070b1`

```dockerfile
```

-	Layers:
	-	`sha256:af2217425d6daf86592d795e4fdcbfe677c1b7438255367bc8fd6dbe7fdc4abe`  
		Last Modified: Wed, 08 Jul 2026 16:53:46 GMT  
		Size: 38.2 KB (38182 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:5e91d2a2fadfddd97127a61996310aeb8da5b3215736bd1f09c31751d62c9a5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **839.7 MB (839741523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96105b7436490456d2ebe0dcf3bea04f8a82bc830526cb1aaa8f7e7d36e8695e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Wed, 08 Jul 2026 16:51:54 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 08 Jul 2026 16:51:54 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 08 Jul 2026 16:51:54 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 08 Jul 2026 16:51:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 08 Jul 2026 16:52:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 08 Jul 2026 16:52:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 08 Jul 2026 16:52:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Wed, 08 Jul 2026 16:52:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 08 Jul 2026 16:52:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 08 Jul 2026 16:52:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 08 Jul 2026 16:53:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 08 Jul 2026 16:53:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 08 Jul 2026 16:53:18 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 08 Jul 2026 16:53:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 08 Jul 2026 16:53:18 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:53:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 08 Jul 2026 16:53:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 08 Jul 2026 16:53:19 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 16:53:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 16:53:19 GMT
CMD ["couchbase-server"]
# Wed, 08 Jul 2026 16:53:19 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 08 Jul 2026 16:53:19 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705172022e706ff8448c30b5ba0f05c8c04a752499cda7e3125071ac5a62eb12`  
		Last Modified: Wed, 08 Jul 2026 16:54:21 GMT  
		Size: 43.8 MB (43784989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c0323e7169a1f13f07f0b0e67b88dd154a8c0f3768dfd0d441494d88113f04`  
		Last Modified: Wed, 08 Jul 2026 16:54:19 GMT  
		Size: 3.1 MB (3138265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253fda9ae2e69a7cc8c91710956e40a80c3ba98103c0a7d4c4134f71058c1e0c`  
		Last Modified: Wed, 08 Jul 2026 16:54:18 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6723a4a80e9519cb1a2739ad1b8fb9e40a69c3c31ba0204465180d6f17a0aba`  
		Last Modified: Wed, 08 Jul 2026 16:54:35 GMT  
		Size: 763.9 MB (763927105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee90853f98df8bb4d7ddb14e1a1c57433d4391051a91a8770e96adc09acfe52d`  
		Last Modified: Wed, 08 Jul 2026 16:54:20 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1dd23e4d0488a2374ea3074a3acf60ae45fda31734afa0e9440faf978970451`  
		Last Modified: Wed, 08 Jul 2026 16:54:21 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7d4c1c88d056fd9e42c5391250fe0801401dd7ace6092405134850c63c72be`  
		Last Modified: Wed, 08 Jul 2026 16:54:22 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900c58b27fb686142e66e071991fd3447e07d07d04d8c6e075b8851efdcba9ff`  
		Last Modified: Wed, 08 Jul 2026 16:54:22 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be0c435fd3630a43af5cfb6a2d19079532b0c78c6af33b61e4d14971d4e3fca`  
		Last Modified: Wed, 08 Jul 2026 16:54:23 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13337b9779e1a46975587f0db1a7c7e7852bffb7c8cd2ca8500b336efe242f23`  
		Last Modified: Wed, 08 Jul 2026 16:54:23 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise` - unknown; unknown

```console
$ docker pull couchbase@sha256:e5370d5a5e2b304420f09d2eb03dc0e46648b9cdd87d3937403780e2349f1fc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 KB (38391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca173dbcdeec70e16e33324e47397dcfe70501cb3ff8a8e380c51b4ea5fef71e`

```dockerfile
```

-	Layers:
	-	`sha256:0c6ecb0072673ce7eacc443e2d37affb1b484f6748a01a151763e82a34951bdb`  
		Last Modified: Wed, 08 Jul 2026 16:54:19 GMT  
		Size: 38.4 KB (38391 bytes)  
		MIME: application/vnd.in-toto+json
