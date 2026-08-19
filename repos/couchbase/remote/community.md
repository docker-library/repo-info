## `couchbase:community`

```console
$ docker pull couchbase@sha256:a483f685e4cf4a3c3d087255f1efc645385e1d7f3bc772ef724f1d3c12bb798f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:96b7d1a75119999357923c60300c2a6c27cc5c133b5a9be66223f66665713bb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 MB (502475660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0404e81c0b549d114294587848b52329f66de925698419134d7e0bbd48eb91e0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:23 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 19:11:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 19:11:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 19:11:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 19:11:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 19:11:44 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Tue, 18 Aug 2026 19:11:44 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 19:11:44 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 19:11:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 19:11:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 19:12:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 19:12:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 19:12:11 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 19:12:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 19:12:12 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:12:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 19:12:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 19:12:12 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:12:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:12:12 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 19:12:12 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 19:12:12 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8839641054305aa26b593d38222e4ff5616352fd8ce72ee5468431da4e9fcc`  
		Last Modified: Tue, 18 Aug 2026 19:12:56 GMT  
		Size: 44.0 MB (43961828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd548bf7477b47be57ce40d5c0993a069cc5d6429a31961c753b0a6d314e45f`  
		Last Modified: Tue, 18 Aug 2026 19:12:54 GMT  
		Size: 878.9 KB (878946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48d24b46c980557602eb4bdd2502a7e2484c8e7056176eb281e5938aa23760f`  
		Last Modified: Tue, 18 Aug 2026 19:12:54 GMT  
		Size: 3.7 KB (3728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d5e32ff45a9600ae5c7bb88d73da6cda05ab430729fcbc139b0f826d3ccb60`  
		Last Modified: Tue, 18 Aug 2026 19:13:02 GMT  
		Size: 427.9 MB (427875085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9184bdbd8e24dc8c45a3b340ee2c1b7e7f2c46907afb8cfec7aaa8d1f1bbb264`  
		Last Modified: Tue, 18 Aug 2026 19:12:55 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3ba3e6b398a2d4545a0bf492c3212f04ae2e0669b46f51588151e1464095d5`  
		Last Modified: Tue, 18 Aug 2026 19:12:56 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833de606cbafd67abdf2d9d78cd8b7523acd9fdb4f1321367952e5774f2c967d`  
		Last Modified: Tue, 18 Aug 2026 19:12:57 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0e536c6255e23c145b4294deb7e01c0a249ab9ed0ff66e664342813cfdbc8d`  
		Last Modified: Tue, 18 Aug 2026 19:12:57 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ea7a9a4c846e937169375eb092ae61584506a45d7e78e217fc0ba5f99c30ae`  
		Last Modified: Tue, 18 Aug 2026 19:12:58 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af46e169070414300bc07f8fa43c6c88f648e166a3ff906cc69717da29532f4b`  
		Last Modified: Tue, 18 Aug 2026 19:12:58 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community` - unknown; unknown

```console
$ docker pull couchbase@sha256:32f2c4f0d5585216355144a3455ef44d37d5c72cc8832281ba449702aa1317ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c9052871fb45fefaba4d68a598fa58b859cdab02bd4866f7228e67e1fba4b52`

```dockerfile
```

-	Layers:
	-	`sha256:87e18ef79eeb34f5086243b3bfa377573af79ae038e2dfe1f25b753de011426d`  
		Last Modified: Tue, 18 Aug 2026 19:12:54 GMT  
		Size: 37.6 KB (37553 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:871a97e599f72ec5ab0dedbe993c90cfded6a1596bcedfd4356f61e2759dbc4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.1 MB (472096384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b275222d751362d063a02823ab63bd20dfbdc891f1f7fa9a8e5e0ad742c27ca8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:15 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 19:11:15 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 19:11:15 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 19:11:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 19:11:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 19:11:40 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Tue, 18 Aug 2026 19:11:40 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 19:11:40 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 19:11:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 19:11:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 19:12:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 19:12:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 19:12:01 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 19:12:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 19:12:01 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:12:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 19:12:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 19:12:01 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:12:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:12:01 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 19:12:01 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 19:12:01 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4f7c93c821279ba10f868f8acd37f3f8c2c28927e892d09014f470b280236a`  
		Last Modified: Tue, 18 Aug 2026 19:12:41 GMT  
		Size: 43.8 MB (43788602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:555a707b6d8967defd20a6ce22ca1640405aa889689f3a1b2395736e959059de`  
		Last Modified: Tue, 18 Aug 2026 19:12:39 GMT  
		Size: 766.2 KB (766163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ee24241f81daf6971266aa622322fd69af9cd3204c0cc5df6ac760e3fe3eca`  
		Last Modified: Tue, 18 Aug 2026 19:12:39 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3afa67f34938cdfef7e11ab3eeb881a5f427c24be39958e2abd0756e3f36c4`  
		Last Modified: Tue, 18 Aug 2026 19:12:48 GMT  
		Size: 398.6 MB (398647401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eef38b2e31739b92a4c2805bedeb6745fb2bd73e2868726693cad749a70b3e4`  
		Last Modified: Tue, 18 Aug 2026 19:12:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83eb29b9f845a853f1762c46009c9f31c8d7bb0b1976c36b994d398bfe6871a6`  
		Last Modified: Tue, 18 Aug 2026 19:12:41 GMT  
		Size: 813.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3fd80a6745e295a37fa1cb816cc8586e5fbf9c59716637b95c5ae2b1402a34`  
		Last Modified: Tue, 18 Aug 2026 19:12:42 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24f8379316b81daedf5a0ca07e362da8910806244692e78354f469ced68d718`  
		Last Modified: Tue, 18 Aug 2026 19:12:42 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c80e84e6502649cc9fe6da3e7b3585bc6b7d1a830b5c5ac9e2df9eafa64b6a6`  
		Last Modified: Tue, 18 Aug 2026 19:12:43 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2562c79308ae0b6ae144dc906b54cff4cade7922d03d2761969f9d407e611376`  
		Last Modified: Tue, 18 Aug 2026 19:12:43 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community` - unknown; unknown

```console
$ docker pull couchbase@sha256:8f3964cb9dfe0c4b355c4b8bdb781d9c8d51d911ce7cd14d3b87c19846986fe9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e11f1b342cd9b6dcdf48dc7c6512762b481682793e3d4e0dc88f1b1dda34c562`

```dockerfile
```

-	Layers:
	-	`sha256:36e0f48c128ddc3c9796547b8264ba5839b6f5dfb3d21e3a297a4d0bb2b81d02`  
		Last Modified: Tue, 18 Aug 2026 19:12:39 GMT  
		Size: 37.7 KB (37738 bytes)  
		MIME: application/vnd.in-toto+json
