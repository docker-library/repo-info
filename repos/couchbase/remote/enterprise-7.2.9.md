## `couchbase:enterprise-7.2.9`

```console
$ docker pull couchbase@sha256:cec90c8ed091ca40caa57d8bdcdfb770d0bc71bf7358eb23d949207e40834d6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.2.9` - linux; amd64

```console
$ docker pull couchbase@sha256:4aa456cdd078f7e9dc18e53958caed6dbb0f50dc4e849ccd3f937783a6a35fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **712.8 MB (712762199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7b087f736c90f136f8f1ed63664dcd557d42465c28c23324a884635698cc38`
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
# Tue, 18 Aug 2026 19:11:27 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 19:11:27 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 19:11:27 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 19:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 19:11:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 19:11:53 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9
# Tue, 18 Aug 2026 19:11:53 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 19:11:53 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 19:11:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 19:13:46 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1f894b910a15d727c7f7d1c2daa3b3e0d4107dc4d6aff5f353aa501006875e31            ;;          'amd64')            CB_SHA256=af822187cd62b562b54d46df3f8b1161a1e7ee753ebf9a22e3da2d74ddf644f8            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:14:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:14:21 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 19:14:21 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 19:14:21 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f3d8b880f714e51b23ac80357bbcf7f728dfc9eb55b44a10623ed741c61026`  
		Last Modified: Tue, 18 Aug 2026 19:13:25 GMT  
		Size: 43.8 MB (43787296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1188619342c7af05935e642ad1f43eb317035659bde6156121748952a583eb33`  
		Last Modified: Tue, 18 Aug 2026 19:13:23 GMT  
		Size: 878.1 KB (878149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7049df81d4e625c6887119b7fc17e0d7ac3c3290eb007d24676166f9bd3ffe7`  
		Last Modified: Tue, 18 Aug 2026 19:15:04 GMT  
		Size: 3.7 KB (3727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83cdc0dac6d2dd76d35a4279fef4042b88d24d06c7fe193124054aa354e1ddfd`  
		Last Modified: Tue, 18 Aug 2026 19:15:15 GMT  
		Size: 638.3 MB (638336958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8efbcfae1a1a99d0586120094d9e5dab17023d5ea1899653a4726d0970b659`  
		Last Modified: Tue, 18 Aug 2026 19:15:04 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cba24212a1f1204f477549aca2a6570458322264dbc748bca9a9d3903bea781`  
		Last Modified: Tue, 18 Aug 2026 19:15:04 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719d182fb771811ef97fc66f1a37903e060224268274be8d6fe3f5adce9166f2`  
		Last Modified: Tue, 18 Aug 2026 19:15:06 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:150ade270487b586e644f54149c9df980bda0f8caf0c6591f2b578fdf7ca577f`  
		Last Modified: Tue, 18 Aug 2026 19:15:05 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccfa203f2b5b3dcfcc1866c764484b4cf09267e27579ab1e830d234a4b34587d`  
		Last Modified: Tue, 18 Aug 2026 19:15:05 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d55cb0f9f0d15ff2f109d73bd612c95cbfaa0423d36b1aeae3ff17f4755439`  
		Last Modified: Tue, 18 Aug 2026 19:15:07 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.2.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:2e27827e2844eb8edc44a6a6494a4625bcdc232d2ebc3816e8140b453a39fe9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca73ffbf426ca46c49c68b5416e63e0f1ddb89cf072489a4c775bff8f8025d6`

```dockerfile
```

-	Layers:
	-	`sha256:654b5a8780465fa700234f8bd2a135fb5d2632d94c7144078d14ba518994e226`  
		Last Modified: Tue, 18 Aug 2026 19:15:04 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.2.9` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:c42e1e79d6d19088add923e168a81de11f650025c8ce10fa3869bfd8b6f7670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **685.9 MB (685900061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5851326e23547c141b9059a82a73d4aaddb276ae02d3ebbef2d7947f4a67da2`
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
# Tue, 18 Aug 2026 19:11:16 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 19:11:16 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 19:11:16 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 19:11:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 19:11:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 19:11:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9
# Tue, 18 Aug 2026 19:11:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 19:11:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 19:11:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 19:13:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 19:14:22 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1f894b910a15d727c7f7d1c2daa3b3e0d4107dc4d6aff5f353aa501006875e31            ;;          'amd64')            CB_SHA256=af822187cd62b562b54d46df3f8b1161a1e7ee753ebf9a22e3da2d74ddf644f8            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 19:14:22 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 19:14:22 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 19:14:22 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 19:14:23 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:14:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 19:14:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.9 CB_PACKAGE=couchbase-server-enterprise_7.2.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 19:14:23 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:14:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:14:23 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 19:14:23 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 19:14:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c0f187c4bc534f8cc935d1d7e1a4003c7292e409610366790eaf12d3338fef`  
		Last Modified: Tue, 18 Aug 2026 19:13:27 GMT  
		Size: 43.6 MB (43614295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0092adb3c6707ab80417558a34dca45184023bed27967bce18cc6200a14fa119`  
		Last Modified: Tue, 18 Aug 2026 19:13:25 GMT  
		Size: 765.4 KB (765361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330b634919a419a6fa9d63df9a4b20ba05d35d0f387572a7f1407fe21e09536c`  
		Last Modified: Tue, 18 Aug 2026 19:15:13 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a38ad42d64897704ee5fe74b840c06c83d9aef449e20dc7894f83243324901`  
		Last Modified: Tue, 18 Aug 2026 19:15:25 GMT  
		Size: 612.6 MB (612626181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369e952c40f8a19dcadbdf54757091f3d90ba0631d0185e5e798a6848e2402fd`  
		Last Modified: Tue, 18 Aug 2026 19:15:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fd572ad26148984805569efb1f635074427283b4e9665528ea6a79112096c5`  
		Last Modified: Tue, 18 Aug 2026 19:15:13 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98b02f1395f6a0abe6badaff2cdd695da074ea6de59d21e0092f7d168eff4b3`  
		Last Modified: Tue, 18 Aug 2026 19:15:14 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c19eb0d333679c2417ce2347c111f06004cc2aa6cf2b332ae1573f541cd80e`  
		Last Modified: Tue, 18 Aug 2026 19:15:14 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53495aa69d0e1bf3104e6824c2b9cf078cc9b8b4f17c5c9c869756d6b14a61c2`  
		Last Modified: Tue, 18 Aug 2026 19:15:14 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596adae498e04223ce6e05177a7ecf83bbef60d88c43d1b82b2b3013ab871f38`  
		Last Modified: Tue, 18 Aug 2026 19:15:16 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.2.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:ca850f9ce3d4ac6f3f7a2d7f67b429d63663db597662b2371e897d22208b1b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba67b3a28f057ac308cd6aa5c4b70892cc9035ed732b2fadc62ae4f7b8c761cb`

```dockerfile
```

-	Layers:
	-	`sha256:c39345e91d4f1e8d758f1d7803de2530c73230c771a591fbabc57ded5b849b20`  
		Last Modified: Tue, 18 Aug 2026 19:15:13 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json
