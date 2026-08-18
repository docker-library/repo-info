## `couchbase:enterprise-7.6.0`

```console
$ docker pull couchbase@sha256:3bcfb4d2867fbd431cd05ee79e4d0112a384bbf66423ad322fd4db60f7f74e4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:780af88bd32411c3e186aec48fbd13d4ea0a3fe0dd13040a2b4903808717be8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.0 MB (759978548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfab00058cb0b2b19bff284ec15e73ae729015040048a36012b8b75f86965849`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:11:45 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:11:45 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:11:45 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:11:45 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:12:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:12:11 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Tue, 18 Aug 2026 01:12:11 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:12:11 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:12:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:12:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:13:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:13:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:13:13 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:13:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:13:13 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:13:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:13:14 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:13:14 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:13:14 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27de04575c786653f3523621e3fb84b04b2fda0cfce5e6ee971b563dd68f1d80`  
		Last Modified: Tue, 18 Aug 2026 01:13:58 GMT  
		Size: 39.3 MB (39262228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d316f55a3c773cb5d33617d0e4cce8f988d869711a63cf826eb0ae60e5f7f0f`  
		Last Modified: Tue, 18 Aug 2026 01:13:57 GMT  
		Size: 927.0 KB (926957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ff93c6ee5a981224debe7937534ce9de555a0f2d7c4fa8b417cdaf5957e702`  
		Last Modified: Tue, 18 Aug 2026 01:13:57 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b93560e449a42a18b24892f82e5311b735456d911f366b8ab59a62e1d15210`  
		Last Modified: Tue, 18 Aug 2026 01:14:09 GMT  
		Size: 690.0 MB (690047243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4810faffffd01a4df34ed865ba2f6142ce9f2ca9abc9d5f68f077d50eeaf635`  
		Last Modified: Tue, 18 Aug 2026 01:13:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3b963da732b2863dddacdc29c5747af7701aedd8f9be574652ca020ae9c8b8`  
		Last Modified: Tue, 18 Aug 2026 01:13:58 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fbc2812c712e35974e92e822cedebf6550e2968c54db2768a82725e6a1a380`  
		Last Modified: Tue, 18 Aug 2026 01:13:59 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22952b3ac1845f9a86990ea4a18b3cc7198b5b0de301df848a7a98c3f1d31c24`  
		Last Modified: Tue, 18 Aug 2026 01:13:59 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f594b61ffc580dca78ba32007602ab624c310c86b55355ab00ec29e6de9bad`  
		Last Modified: Tue, 18 Aug 2026 01:14:00 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf9941e3cd600155fcc6e4b28ae06e1df2bf8be3ac6d1acf0754ecf2d962dfce`  
		Last Modified: Tue, 18 Aug 2026 01:14:01 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:e720d73c36567e7524ecdcc7678e1b2e35624e14ac9f284be7c376c1ee888f29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d52a4ad2445a268b3655367f8b51eda2c191164a9443d2d46243861c9061aa`

```dockerfile
```

-	Layers:
	-	`sha256:3cbe379d8e503dac67afc3b13fa0bb647c3ffa38940a5e54936dec09ef647cba`  
		Last Modified: Tue, 18 Aug 2026 01:13:57 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:6672b5f008eb5687965818d1766084766bcd084b572700c92bd6c004f5cc17a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.2 MB (732151191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7696a4c2f1da6777a18ea237fbc266388359d7520bc9de899eb12eda882ab1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:12:03 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:12:03 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:12:03 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:12:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:12:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:12:28 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Tue, 18 Aug 2026 01:12:28 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:12:28 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:12:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:12:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:13:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:13:32 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:13:32 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:13:32 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72ef1e99f85c97fe567879d4ab73a67c2a1ec8ecb3507ed32003c8212a093f8`  
		Last Modified: Tue, 18 Aug 2026 01:14:24 GMT  
		Size: 38.8 MB (38841368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df03231c4e784150a010afa8a91c012d4bff3e24175fa5f705badda6df5d0ab`  
		Last Modified: Tue, 18 Aug 2026 01:14:23 GMT  
		Size: 775.5 KB (775482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7479a8393e721321173351b62037ab2e69107e9376566cd160229f4d95e793dd`  
		Last Modified: Tue, 18 Aug 2026 01:14:22 GMT  
		Size: 2.0 KB (2002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588ba7d66df574133c320b2954bf27381a9569969e0a835541c757f7101174cf`  
		Last Modified: Tue, 18 Aug 2026 01:14:35 GMT  
		Size: 664.9 MB (664908696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03a9c7989dea6ad695a82c3c114d464cfa47774cbe105844c94fe0f33264edf5`  
		Last Modified: Tue, 18 Aug 2026 01:14:24 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5edd0987cb7e57c3619f060f8b06112ac6b39e8ccb72e90e05821c115764750`  
		Last Modified: Tue, 18 Aug 2026 01:14:24 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebc5e6ec5e58c74d366dc72390a1dac14981e350c8df9e57875c99c81c091b7`  
		Last Modified: Tue, 18 Aug 2026 01:14:25 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a79331fab3e5ddeb7f45da39b8b7999e57986fa252cbf20bb6d1de2e172167e`  
		Last Modified: Tue, 18 Aug 2026 01:14:25 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199394d7c3a1c4a35d7fa2266111186e0de8db4f7d2e6371dc3c4f3f40d0be9a`  
		Last Modified: Tue, 18 Aug 2026 01:14:26 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03957613de0bbc305a3afe2c5f34a2e3fdeb1feff79edd41883e7dcb34d57418`  
		Last Modified: Tue, 18 Aug 2026 01:14:26 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:0ebef0f33b42fc8a7235c81e7c9d03033c585e93b3157b196f4d9fbe0d5ba44e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c6b3875fd5215a1e7dc97feba270d9e0336615ce669e512fa2e7aa23b50ab8a`

```dockerfile
```

-	Layers:
	-	`sha256:26fced1495fc6ed6e584ce9ee26e5facc3023ca273407cb49e108a6de1dc850d`  
		Last Modified: Tue, 18 Aug 2026 01:14:22 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json
