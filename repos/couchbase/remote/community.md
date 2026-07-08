## `couchbase:community`

```console
$ docker pull couchbase@sha256:3b8102d5f05afd75a30fd04fdc5f89e25d1520f4fb67163aa4bf58455f8c1c87
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:684e124ce75915fd084d089583667a66b497fd20996c021bd97330f01f7e50c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **504.9 MB (504863306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2c38a60104e360a03c3b7e20f43272e70e7ff23ebc34443e40cd215df4fa9f`
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
# Wed, 08 Jul 2026 16:51:19 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 08 Jul 2026 16:51:19 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 08 Jul 2026 16:51:19 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 08 Jul 2026 16:51:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 08 Jul 2026 16:51:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 08 Jul 2026 16:51:52 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 08 Jul 2026 16:51:52 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Wed, 08 Jul 2026 16:51:52 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 08 Jul 2026 16:51:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 08 Jul 2026 16:51:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 08 Jul 2026 16:52:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 08 Jul 2026 16:52:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 08 Jul 2026 16:52:13 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 08 Jul 2026 16:52:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 08 Jul 2026 16:52:13 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:52:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 08 Jul 2026 16:52:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 08 Jul 2026 16:52:14 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 16:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 16:52:14 GMT
CMD ["couchbase-server"]
# Wed, 08 Jul 2026 16:52:14 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 08 Jul 2026 16:52:14 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94c6dddade46cd0bd97ddd4549b417900ab083ad42c0a68d5efc0112d42e242`  
		Last Modified: Wed, 08 Jul 2026 16:52:59 GMT  
		Size: 44.0 MB (43959154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832848483e58b232b36177a4e0dc94d3d453606f44b69fdb6babab218258037b`  
		Last Modified: Wed, 08 Jul 2026 16:52:57 GMT  
		Size: 3.3 MB (3285104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6788de377a602a798e04122f4cc209b2a6b13f05fdc213ac62ee640845f9707a`  
		Last Modified: Wed, 08 Jul 2026 16:52:56 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2312399fc0004b55c18784105c20a18ecc4cf538d97cb3bc710134f5b5ddd51`  
		Last Modified: Wed, 08 Jul 2026 16:53:10 GMT  
		Size: 427.9 MB (427876459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be925a79d9120f8bc49cc636872d94862e79bb21713a2bd8083608f9b31e1cce`  
		Last Modified: Wed, 08 Jul 2026 16:52:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41257f7cbbd786d3590a5a9ef085ed6123b54290db038a941456df8e3a92a0d6`  
		Last Modified: Wed, 08 Jul 2026 16:52:58 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc6552b57ba1a713c163890128020add18250117556b1286e68f471147ed723`  
		Last Modified: Wed, 08 Jul 2026 16:53:00 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99549b38e26f0745468c99f1d6cd2479a9cce85b7e981cc7f90bca9c1e4098a5`  
		Last Modified: Wed, 08 Jul 2026 16:53:00 GMT  
		Size: 234.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2752febe615d0b9022e2ac56599305f9fe1787b9a21bd01f40b04d20caf1dda5`  
		Last Modified: Wed, 08 Jul 2026 16:53:01 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5f2c1f8e32cd468bb97223db7bab0828e356b89ece7879439641354765333e`  
		Last Modified: Wed, 08 Jul 2026 16:53:01 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community` - unknown; unknown

```console
$ docker pull couchbase@sha256:c88d887d74cf057d701feb49b23b2797ebeec5ac9ca72305cfc190af61fe6e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b809f775c5d304f884e4aff485de9f75fce72621e46b9381bb7192723ae96d`

```dockerfile
```

-	Layers:
	-	`sha256:886d2797ee78ee5fe9f4ea3675417d8b47bd0f5486e859973a7e58130505d011`  
		Last Modified: Wed, 08 Jul 2026 16:52:57 GMT  
		Size: 37.6 KB (37563 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:d7186a2fd87098c6c42242dbebf93300dda3183e1170c0f2b770a6a50fbb15e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.5 MB (474461627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453f0f429686d5ecd1bd31ed342db7f1ddcbab11c15b3013edcc36e317d46f6c`
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
# Wed, 08 Jul 2026 16:51:59 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 08 Jul 2026 16:51:59 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 08 Jul 2026 16:51:59 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 08 Jul 2026 16:51:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 08 Jul 2026 16:52:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 08 Jul 2026 16:52:32 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 08 Jul 2026 16:52:32 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Wed, 08 Jul 2026 16:52:32 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 08 Jul 2026 16:52:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 08 Jul 2026 16:52:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 08 Jul 2026 16:53:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 08 Jul 2026 16:53:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 08 Jul 2026 16:53:00 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 08 Jul 2026 16:53:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 08 Jul 2026 16:53:00 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 08 Jul 2026 16:53:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 08 Jul 2026 16:53:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 08 Jul 2026 16:53:01 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 08 Jul 2026 16:53:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 Jul 2026 16:53:01 GMT
CMD ["couchbase-server"]
# Wed, 08 Jul 2026 16:53:01 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 08 Jul 2026 16:53:01 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ab90275572995b08ba76f24a5562fd2af74272d80dd3126eb33ef6bafd9568`  
		Last Modified: Wed, 08 Jul 2026 16:53:40 GMT  
		Size: 43.8 MB (43785091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5daa78218354671457270468b55ce674d00482dae3f03c537895494aecf31b3f`  
		Last Modified: Wed, 08 Jul 2026 16:53:37 GMT  
		Size: 3.1 MB (3138320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:246be1656964600060ed575c5456acc3f035fa309e8abf9b5e8ba380a71c67a7`  
		Last Modified: Wed, 08 Jul 2026 16:53:37 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac617f7e310b9c9b09aeec37df47895a9dc236bbfb72864ffde0666a03acd6`  
		Last Modified: Wed, 08 Jul 2026 16:53:51 GMT  
		Size: 398.6 MB (398647054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c31e0217bfe164b7151560030741677e89445a20cd967c48953dd71beb29ed1`  
		Last Modified: Wed, 08 Jul 2026 16:53:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1fffc2136677a3f14eb92921ddc241032e5933aaa9ffb08ba6ee76984a6a6ae`  
		Last Modified: Wed, 08 Jul 2026 16:53:39 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e0dd7b8fde558eba0baf7b48b6ec5e2c0dc3d537fd2669b22f09d6382997ea`  
		Last Modified: Wed, 08 Jul 2026 16:53:40 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c183293f72a6737befef3d9a470f522320f963f3229e2dddad8cda87fcbef2b8`  
		Last Modified: Wed, 08 Jul 2026 16:53:41 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d95542e96984ba6c808c9a36dee94453947bdd0c9f1ab74663f5368a1437898`  
		Last Modified: Wed, 08 Jul 2026 16:53:41 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6d1b5eea2a9c18a634ffcc32db7c634ac58b5157824b3754960f0ae4bb67dd8`  
		Last Modified: Wed, 08 Jul 2026 16:53:42 GMT  
		Size: 929.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community` - unknown; unknown

```console
$ docker pull couchbase@sha256:edd4b39fa37393ba1a3da9d55b48f08635d89076ce78d3bc4974fe694c309a52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5a770c3607aaa82eb8d3dec728a1aaacab89ecd2c7ac2fe1353106571fe463`

```dockerfile
```

-	Layers:
	-	`sha256:440988730f7625a2dcb5254f68e3ce9426abab1560b1d7f4cee9a9be4d6952cc`  
		Last Modified: Wed, 08 Jul 2026 16:53:37 GMT  
		Size: 37.7 KB (37748 bytes)  
		MIME: application/vnd.in-toto+json
