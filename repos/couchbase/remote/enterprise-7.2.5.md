## `couchbase:enterprise-7.2.5`

```console
$ docker pull couchbase@sha256:ef21856ea6c9f603bacda31efa82652e2bab95dee9eab662de943ac72c73876e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.2.5` - linux; amd64

```console
$ docker pull couchbase@sha256:392bf353ef33c69e2340c0243f4fbd7cf8c5729e8f7753424043db91a60d67b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.1 MB (678083656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c938549d6e1b9d09eeecb18cc82ccfeac2c7d3666d8b970bde56ab4b9c57539b`
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
# Tue, 18 Aug 2026 01:12:04 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:12:04 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:12:04 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:12:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:12:36 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5
# Tue, 18 Aug 2026 01:12:36 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:12:36 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:12:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:12:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=843d8aba87fa4740ff53d739f0b535a828a9f43a5276a0ec59c467f617e639df            ;;          'amd64')            CB_SHA256=f428b2ff390dd0421c12742aea0cacf9ebb63160d3c485ffec928997dc55a0cd            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:13:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:13:26 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:13:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:13:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc684f45d2b8151c2e81ebae97fc238b68cb53f4afc69995531689415227860a`  
		Last Modified: Tue, 18 Aug 2026 01:14:11 GMT  
		Size: 39.3 MB (39261297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea8704c0998728992a9eb42645ec3115bea284a8ae080cf79c00991ccc3122d`  
		Last Modified: Tue, 18 Aug 2026 01:14:09 GMT  
		Size: 927.0 KB (927002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd87c622f237538dbd076c951e72ce3a5b4721b65d1658b328a71b22a8e8e9e`  
		Last Modified: Tue, 18 Aug 2026 01:14:09 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce1ee94e4072f5de9125d853514e9a5b932ba42dcdcd27e3b14c6c6ef581329`  
		Last Modified: Tue, 18 Aug 2026 01:14:24 GMT  
		Size: 608.2 MB (608153232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc28d350b036d831180396026f35cb515a88951b3fb0e3e057e5c3557e8934d8`  
		Last Modified: Tue, 18 Aug 2026 01:14:10 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9efb25b579b64a7441ddf013373923e9a1db8ea16b620eec0fbf394b84581d48`  
		Last Modified: Tue, 18 Aug 2026 01:14:11 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651224195a746c4d65eddb0683931fb71d1fd89670ff3229ba3ed4d736f10fd1`  
		Last Modified: Tue, 18 Aug 2026 01:14:12 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07aacb30ad9f7b3333a5419cb7a2e3f8c95bb5f3f265436b898fa80f5cdb9d2`  
		Last Modified: Tue, 18 Aug 2026 01:14:12 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ea953f8b8a16c6578655e1979ec6844e373f180023e2cf8d37c56c422f3da2`  
		Last Modified: Tue, 18 Aug 2026 01:14:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c37f345639e9ab281f5aa39ee26a075b14f132f3cad81f645599554fa3fd7ae`  
		Last Modified: Tue, 18 Aug 2026 01:14:13 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.2.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:93b89d7f0d5c3c9573c29c847d9405451a3c1522151978529f78bdc6cf821b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de91cdc507590135596631df4fa041a8aafb7a02b3cfc4d60bde01218db2b119`

```dockerfile
```

-	Layers:
	-	`sha256:054ed21f6f608495ad18d6956811a10d2658e40fce41743525393030cd78b19d`  
		Last Modified: Tue, 18 Aug 2026 01:14:09 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.2.5` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:db9faba57fa2e33b63a3c9716d7d0d4dd919d8de596c1a8a621255f2d4253a96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.7 MB (652659781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f86ffe5f26a959fa1f67e500c1a38f54dd894e5218044c49f5883764ee4074`
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
# Tue, 18 Aug 2026 01:11:12 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:11:12 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:11:12 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:11:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:11:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:11:40 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5
# Tue, 18 Aug 2026 01:11:40 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:11:40 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:11:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:13:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=843d8aba87fa4740ff53d739f0b535a828a9f43a5276a0ec59c467f617e639df            ;;          'amd64')            CB_SHA256=f428b2ff390dd0421c12742aea0cacf9ebb63160d3c485ffec928997dc55a0cd            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.5 CB_PACKAGE=couchbase-server-enterprise_7.2.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:14:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:14:42 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:14:42 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:14:42 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84103949c75b8d758577a887102f9a4edef8d82861990d938cf4f8bc3592c6f`  
		Last Modified: Tue, 18 Aug 2026 01:13:22 GMT  
		Size: 38.8 MB (38841057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5872cdacad3af68600f43d273b9b3fb114448f10f8c03306bb03d5ce6fec875c`  
		Last Modified: Tue, 18 Aug 2026 01:13:20 GMT  
		Size: 775.4 KB (775433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bfa998d4a615575f4a51930f51ce8300f8fec1b0dca22176581ec4263831fc`  
		Last Modified: Tue, 18 Aug 2026 01:15:24 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf09581b7a37fd30d51b15586ccbee4670f5ba0e4d4bc680322a57ea79f3665b`  
		Last Modified: Tue, 18 Aug 2026 01:15:36 GMT  
		Size: 585.4 MB (585417652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b04f2b14387f49ae15b3a837a5d587393d21713e1efe00028ace5c3c43ac66d`  
		Last Modified: Tue, 18 Aug 2026 01:15:24 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b8ad1c56f7820cb237e185ea2ee7047170ad853f55adf5ea29eb3267245af1e`  
		Last Modified: Tue, 18 Aug 2026 01:15:24 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d0e8e3047e6f47c283a9ec8e5fd4b1fc01e3931f448a8e7478a5a0a4160e16`  
		Last Modified: Tue, 18 Aug 2026 01:15:26 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c5acf2afa731bd128343f11351de59546c8b8824cbdf09a3e55fc6bb8430adc`  
		Last Modified: Tue, 18 Aug 2026 01:15:26 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1432e8fc1f24ff258f01139d94945297bf31dc3246dd51b78fdd6eef460efdd`  
		Last Modified: Tue, 18 Aug 2026 01:15:26 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee65f6c3d149050b313266f67b2c93de7e94ad5e9fca3fe799572ebe96a3b51`  
		Last Modified: Tue, 18 Aug 2026 01:15:27 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.2.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:93ee5b50d8df083813c90a2e603510dcfad8ac3d6bdbe794204408a2f0f7661e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e31c79c456378aebde8f9ae2ed3cea9800c4b92c45a45ae798643f79d11d5869`

```dockerfile
```

-	Layers:
	-	`sha256:9d8b22e4de15f4798d9e4a6c4e19387d52cdaf2a03649bc653857dfcf88dd9ce`  
		Last Modified: Tue, 18 Aug 2026 01:15:24 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json
