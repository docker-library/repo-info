## `couchbase:community`

```console
$ docker pull couchbase@sha256:70c34403286e4dd7f9b267557929ba412f15815e63151d0cf8de1267316024df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:f04bacbb63c6214109a25e9345bc09267ba7ad5b48505b4868261b51f9d1d45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 MB (502510683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c21d4c459e1ed4c5f1c0f10640f033658600bee2050cec58e449c171734c41a`
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
# Mon, 26 Oct 2026 23:04:10 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:10 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:10 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:04:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:05:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:05:02 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:05:02 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:05:02 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69bc977d51412c541fc2a6c91fadece617a8f8690bfa2bc0827f1e240ea6099`  
		Last Modified: Mon, 26 Oct 2026 23:05:42 GMT  
		Size: 44.0 MB (43981990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b2e612023a40dd0c77ed9ec1d37860855328c1c6e83c8de52c46c214570625`  
		Last Modified: Mon, 26 Oct 2026 23:05:40 GMT  
		Size: 879.0 KB (878959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31f3f93639f8508f4113b321d86b0785e94d81dfcb22f846735ba8277ffc820`  
		Last Modified: Mon, 26 Oct 2026 23:05:40 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe3531365a4fb16e0d46057f0d2c0f7177303aa80d02a65dcabe457ef4acfb7`  
		Last Modified: Mon, 26 Oct 2026 23:05:51 GMT  
		Size: 427.9 MB (427875139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da26911c93b650e283277baf5a4c98d9dcc41ce755dbba4330af9359f045c12`  
		Last Modified: Mon, 26 Oct 2026 23:05:41 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682fa3a7a92b54160ba0511048eda2116615646cde1fb644907c412ab2657134`  
		Last Modified: Mon, 26 Oct 2026 23:05:42 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3127f48573d93d0a8c7738b0f18697e78e44cad35c46df84ceb942fb3b66e3`  
		Last Modified: Mon, 26 Oct 2026 23:05:43 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d8661f61a2f931739a6461628983a93df09de67ddef5e38b255257c5732f19`  
		Last Modified: Mon, 26 Oct 2026 23:05:43 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5886a53db874380735ccc864e2ed6a43dfbbd572f3fe0e4a8c0d0cb10cbe3d1`  
		Last Modified: Mon, 26 Oct 2026 23:05:44 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cfd3a70899ce4a0bad16828ec81cd323b6bba2e86f317b48cb9a9ad9283157`  
		Last Modified: Mon, 26 Oct 2026 23:05:44 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community` - unknown; unknown

```console
$ docker pull couchbase@sha256:62a7b50fae7eced92d658582c41e1d404d4d153fb54d993ba18850b517fd87e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca0f10a0e769950593a96f5c1c9c5c838259c08b804c017c51c8fe411766e78`

```dockerfile
```

-	Layers:
	-	`sha256:812b696fb6faf2e2aabf4d2e4b8a6e8d4ac3574214b10ec4d79dccde65a895fa`  
		Last Modified: Mon, 26 Oct 2026 23:05:40 GMT  
		Size: 37.6 KB (37553 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:a046afb9898cd4fff3ad6732261f17927969f3eacc5053a9eac9edf1c9c18c33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.2 MB (472197899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7753427884f0c2847acc62d97275d4a82f2843eae6003233015b8e003affd404`
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
# Wed, 11 Nov 2026 23:14:52 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:52 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:52 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:41 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:41 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:41 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:41 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:41 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5338df6ec40204316206949b5853d69a1d5062a4473fcc14585506b4447f4ba`  
		Last Modified: Wed, 11 Nov 2026 23:17:21 GMT  
		Size: 43.8 MB (43811369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41d6ebd5e35f20190f20b89d472a18a5ac8e79f20c34dc469b3485396f1e71d`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 766.8 KB (766778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ef413b419bb2b8b4ef4201867fc6c96426a93a475fac115f2d38eda6fbb86`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8089e94a5eea24ec0388981cc383339c84663b114ee143bac845ba26c3264dc`  
		Last Modified: Wed, 11 Nov 2026 23:17:28 GMT  
		Size: 398.6 MB (398647507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3200b8e89dbff2bd49a872edb2c38cd36d64ddb69b2d766c36a2df9a51c1d965`  
		Last Modified: Wed, 11 Nov 2026 23:17:20 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b8ebdc8e10850f004738e6f5cfcdaf921eac10b42a6c84c38d6389de48b6c2`  
		Last Modified: Wed, 11 Nov 2026 23:17:20 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a6a42ed61a4feef7724f24cff116eb04e5dd330966127b353840ebc377d05c`  
		Last Modified: Wed, 11 Nov 2026 23:17:21 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff73d8a3329a129330d54bb38c1fc6f4eea951e80dfce8029b0b0012c6bc44c7`  
		Last Modified: Wed, 11 Nov 2026 23:17:22 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d16e1be4bfdfe217bc9a3edd6b582acf0b4468714a53449a753d8d84370f8e`  
		Last Modified: Wed, 11 Nov 2026 23:17:23 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23f4535ceea4bc8599bd27b716d48e6933703475eed56e64fabeab4648637943`  
		Last Modified: Wed, 11 Nov 2026 23:17:23 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community` - unknown; unknown

```console
$ docker pull couchbase@sha256:68f865267f4c66c1a28d46de78a963775d41341d2129ffcffdafe2d093b3d33e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c208d6047c17f6c52693acfa3aee362f24b4b0526fafe809ba0c4ca9f117096`

```dockerfile
```

-	Layers:
	-	`sha256:98f39745426dc76f51b831ba74dfea0317e64070c8eb9729285c7a424fdee14d`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 37.7 KB (37737 bytes)  
		MIME: application/vnd.in-toto+json
