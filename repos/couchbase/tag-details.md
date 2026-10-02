<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:7.6.0`](#couchbase760)
-	[`couchbase:7.6.1`](#couchbase761)
-	[`couchbase:7.6.10`](#couchbase7610)
-	[`couchbase:7.6.11`](#couchbase7611)
-	[`couchbase:7.6.12`](#couchbase7612)
-	[`couchbase:7.6.2`](#couchbase762)
-	[`couchbase:7.6.3`](#couchbase763)
-	[`couchbase:7.6.4`](#couchbase764)
-	[`couchbase:7.6.5`](#couchbase765)
-	[`couchbase:7.6.6`](#couchbase766)
-	[`couchbase:7.6.7`](#couchbase767)
-	[`couchbase:7.6.8`](#couchbase768)
-	[`couchbase:7.6.9`](#couchbase769)
-	[`couchbase:8.0.0`](#couchbase800)
-	[`couchbase:8.0.1`](#couchbase801)
-	[`couchbase:8.0.2`](#couchbase802)
-	[`couchbase:8.0.3`](#couchbase803)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-7.6.0`](#couchbasecommunity-760)
-	[`couchbase:community-7.6.1`](#couchbasecommunity-761)
-	[`couchbase:community-7.6.2`](#couchbasecommunity-762)
-	[`couchbase:community-8.0.0`](#couchbasecommunity-800)
-	[`couchbase:community-8.0.1`](#couchbasecommunity-801)
-	[`couchbase:community-8.0.2`](#couchbasecommunity-802)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-7.6.0`](#couchbaseenterprise-760)
-	[`couchbase:enterprise-7.6.1`](#couchbaseenterprise-761)
-	[`couchbase:enterprise-7.6.10`](#couchbaseenterprise-7610)
-	[`couchbase:enterprise-7.6.11`](#couchbaseenterprise-7611)
-	[`couchbase:enterprise-7.6.12`](#couchbaseenterprise-7612)
-	[`couchbase:enterprise-7.6.2`](#couchbaseenterprise-762)
-	[`couchbase:enterprise-7.6.3`](#couchbaseenterprise-763)
-	[`couchbase:enterprise-7.6.4`](#couchbaseenterprise-764)
-	[`couchbase:enterprise-7.6.5`](#couchbaseenterprise-765)
-	[`couchbase:enterprise-7.6.6`](#couchbaseenterprise-766)
-	[`couchbase:enterprise-7.6.7`](#couchbaseenterprise-767)
-	[`couchbase:enterprise-7.6.8`](#couchbaseenterprise-768)
-	[`couchbase:enterprise-7.6.9`](#couchbaseenterprise-769)
-	[`couchbase:enterprise-8.0.0`](#couchbaseenterprise-800)
-	[`couchbase:enterprise-8.0.1`](#couchbaseenterprise-801)
-	[`couchbase:enterprise-8.0.2`](#couchbaseenterprise-802)
-	[`couchbase:enterprise-8.0.3`](#couchbaseenterprise-803)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:7.6.0`

```console
$ docker pull couchbase@sha256:410c73d6a8f58d2359944cb9eba8bbc0bccd41fe92ee0479a83d9626cbdb6595
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:2972c770462c2f9cf46ef6de42c6f27860e743654bf048576ae663e8686ea9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.0 MB (760030007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7a0e3aa1f05bca47f4c427f4e4d451aec425b09d8dc3a909833399534cf074`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:44 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:44 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:44 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:17:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:17:10 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Fri, 02 Oct 2026 01:17:10 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:17:10 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:17:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:17:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:15 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:18:15 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:18:15 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b907dd73b6dbf4e62cae4014433ef9c6caf291379a27b9985db678282ba476`  
		Last Modified: Fri, 02 Oct 2026 01:19:01 GMT  
		Size: 39.3 MB (39298683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6659afa9c7588e7eebb24ea80f658a70ce8a15d4b9e7cd58c0b30c5127bb386f`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 927.4 KB (927388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985b177d1dc9ae8def83c156e17dd3a6e9a3d5baa193118b3895835437aa54a3`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d2bb9b79298fd37588f5e08dbc38fd0c2d97c8a399c1fc5ffb37ce9cb7c13b`  
		Last Modified: Fri, 02 Oct 2026 01:19:13 GMT  
		Size: 690.0 MB (690047128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e4a105c1e36294110e5dc7d64b5baa5e31f8078dcd574688ef3dfa15057854`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3796eb0d375c9973b3078c2d598ab1a1a0c258ba8affae38d86dafefe5653be0`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1ba90cdf653e74aaddb32dc1877390f8be56646e5337eeb2bc52bc06a76804`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2ae1a3e2dfa177fc48561325b49db0491190b087d863d6afbd9edfe65740e1`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1786e81df235ce0f6c1ec57c57590c7fdb389fc300bac2659576fcfeeb89e6aa`  
		Last Modified: Fri, 02 Oct 2026 01:19:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be37a45de01d5307bc359b68f71076a97c6d51c7dae2dd68829a661f8f6d4077`  
		Last Modified: Fri, 02 Oct 2026 01:19:03 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:d24dde70ab9eeb233899a4ea9868f580f665d3ba625c5433fce8c1f1dcf245b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6c3dec74b9e485c5e4e0790f075655ab07af0b80997fbc6679df92ace5f02c`

```dockerfile
```

-	Layers:
	-	`sha256:ffff2969fe7a0c40f56147c3c08cc54738767c9eaf0dd740e8c3593ad7d272c0`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:40590fea1fae4e53e6d9122061bfdf987aca0801bde68fcca5c77b7018901f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.2 MB (732220361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d6cbc56f7e147dc026b6f958b87433a3eb86beb4a280b70ecb0a6388701161`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:26 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:16:53 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Fri, 02 Oct 2026 01:16:53 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:16:53 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:16:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:00 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:18:00 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:18:00 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5508c5681ee6f2b8252ff8e563e3b0790507cac3ef1d5c3897aaaa37733f9b`  
		Last Modified: Fri, 02 Oct 2026 01:18:47 GMT  
		Size: 38.8 MB (38846880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4188d8dfbc273183ac67993b1c506ad9c9710d78f1f90e90efb717c159d98cb`  
		Last Modified: Fri, 02 Oct 2026 01:18:45 GMT  
		Size: 776.0 KB (775975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9067e523c0639e2042d7972c563197cfecc23cdd8398c3d5d3252b15f6a3bd2b`  
		Last Modified: Fri, 02 Oct 2026 01:18:45 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086d61d64173ba1ffbf6083955cb7ea01c5e108023a16830397fde2d7d5d3962`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 664.9 MB (664908182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e602e8b258d1a57e7aaf0670ecdba12a3da2a6690e592c0dfece4533cf794ea1`  
		Last Modified: Fri, 02 Oct 2026 01:18:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9647d631e1bbd0e68fc5b20e8b9d65cec594eaf4e400f1d82ff5fde03fbdf9b6`  
		Last Modified: Fri, 02 Oct 2026 01:18:46 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f10a8e7f19f1bd0d47cff19d604fe2166a18b54fa68c191163be84566e2fc0f9`  
		Last Modified: Fri, 02 Oct 2026 01:18:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f902897ef53c590bb6f2a139b6055c4daa0347bd9581df2428cc0b82df6302`  
		Last Modified: Fri, 02 Oct 2026 01:18:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6ddd030fd290ce9d777730446698595d12887e3cd08369ba2fb183a8622934`  
		Last Modified: Fri, 02 Oct 2026 01:18:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1036428398978c5235a967c9aef71d6964b96adfb31c2e659d5b98892bb937ed`  
		Last Modified: Fri, 02 Oct 2026 01:18:49 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:b2ddd5cffe5f84f1c285ca7629b6c6c94e78f56dc11b693a425472906aaf7849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b203fa1e2ad91bebd6795d7d6103b58128b5c8e3c8f637d7e50a2993dbff1b19`

```dockerfile
```

-	Layers:
	-	`sha256:bb4395bdd5bead8c815b152b3b825ef5f0cf35defdbf1ca7c75c4dbfbe227669`  
		Last Modified: Fri, 02 Oct 2026 01:18:45 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.1`

```console
$ docker pull couchbase@sha256:fe25001d04b39136667d821daade494383e342cbf251dfb9339d166541f1faa9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.1` - linux; amd64

```console
$ docker pull couchbase@sha256:58476cd8334699c0fc7bf7f9c9c5bf9c2c625a42ad581ed1c2acd9814b93650c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.1 MB (760055793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc67815dd39de95ea48995474a1a57c9c3f7854d3915942a1284562aee37f73`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:29 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:29 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:29 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:16:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:16:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:17:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=785f9d1f17ce6cde779f361adf0a0ed5f0bdaa78a1a4ab1c70b289d109b59709            ;;          'amd64')            CB_SHA256=12f1a671c28f12d946b9f39fb5cf7fe7c32e51fe30e0045d423b25627367be54            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:18:05 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:06 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:18:06 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:18:06 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51602d15e6192e64f244d5a31e9cd3cc46cb30db9e17582c787b35e3a0bf2e4`  
		Last Modified: Fri, 02 Oct 2026 01:18:58 GMT  
		Size: 39.3 MB (39298684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9679ded0f54de163f5181dd1e19f572f890228a32b93e88203179b26695a8a7`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 927.4 KB (927393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbe4f8b10922f3ed9a17c56bc72c1797ea275bf1c05a2d690c82dfd2ce8856f`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e216a06763eeead61ae7abb7e5267250b733442dd6477cbfaa22d315b4ec50f`  
		Last Modified: Fri, 02 Oct 2026 01:19:09 GMT  
		Size: 690.1 MB (690072903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bab06489a15df48a52a48cd92a3f7deda2d07ae5700e63efbda0a879997b30`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a7fa877ae6def38817c764a3dc6580e94b74f36a34f0018068ba0e15219a30`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ecc05f65ab5262e46723f90d125d654df9e517a059d5e3c5e27be7140f1099`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f568489e0e3f865cc256a6e05520c95be810c905c119ca5e72a41e9f70c85989`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697a7fb31d0edc1889f5b0f43276582b57efe3e66183fc881de3912e7a9549fc`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa700aa01f0d0d22137d8c2be55392471e3358a5f06b9b2de6d54386ba37caf8`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:5034a85ba3d66d229eeb82258d33d035367013ee3430325d07e2a377b8932a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15146a06e1a4df8fba7d8bddc348414b2fb40067f78bfca41782da97c6f078f2`

```dockerfile
```

-	Layers:
	-	`sha256:618da42f9b80a91f5f68fd59ac3e6270bc0d02f93bbb672fef7cb7561184cc28`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 37.5 KB (37521 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:22ef09f5d71308a80e219e15222d2ce9fac32357a01af76be799603c8aeacfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.2 MB (732230330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f4078173ea77eace0594a590bcef96629db67b795d6869fb79ef105d4ef8f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:04 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:04 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:04 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:16:33 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:16:33 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Fri, 02 Oct 2026 01:16:33 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:16:33 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:16:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:16:33 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:17:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=785f9d1f17ce6cde779f361adf0a0ed5f0bdaa78a1a4ab1c70b289d109b59709            ;;          'amd64')            CB_SHA256=12f1a671c28f12d946b9f39fb5cf7fe7c32e51fe30e0045d423b25627367be54            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:17:35 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:17:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:17:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb593a67414982188fe19defe9a9b8c0b78757413aabcb9c1b6ea00e034137`  
		Last Modified: Fri, 02 Oct 2026 01:18:27 GMT  
		Size: 38.8 MB (38846801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaac82af6caf2ca0007b1afac57f6a939821cbb84bd2de1e51574fcfd9f4f3c5`  
		Last Modified: Fri, 02 Oct 2026 01:18:25 GMT  
		Size: 776.0 KB (776023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b9cabca9b6964bbc41205cf56c1f640a83531db79d27b956d3a43b5a86109e`  
		Last Modified: Fri, 02 Oct 2026 01:18:25 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3476d0907f976a89b08845ec532feac468659e2c8de66523e699b4400d88137d`  
		Last Modified: Fri, 02 Oct 2026 01:18:38 GMT  
		Size: 664.9 MB (664918189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0a6913663a29328b671d1fc2920c654d9b2e6fa949fb44b4211604a5182e68`  
		Last Modified: Fri, 02 Oct 2026 01:18:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bc12f480cd3f9701cfdd670fd4faef11b75953f9f5dc333a0b5c81982b0458`  
		Last Modified: Fri, 02 Oct 2026 01:18:27 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d0ac06fe8aa7894456944b455f2f3b8a97c964c04e335a3e3e5d4226fc0f8b`  
		Last Modified: Fri, 02 Oct 2026 01:18:28 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9db9dcca5065db2a21e865e4e12595edfcf552aa4cf960f0f429dde204f063`  
		Last Modified: Fri, 02 Oct 2026 01:18:28 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67de2c5a0513e34313ba32e0b001a2d77e3ab1ccf70371ff37953b4562ee83b`  
		Last Modified: Fri, 02 Oct 2026 01:18:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4399e580fedbc775ba62dc2f4634c3c482d29488585f6a6e244ef66f9d6d0432`  
		Last Modified: Fri, 02 Oct 2026 01:18:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:27ada8f665dd8e7a90f839802fd225383e29ce3acdf5df9efc563566cc9480a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9407da9b5f33abb02530c157a7536c1b85392515ccbee0e199e0ee6507c9af99`

```dockerfile
```

-	Layers:
	-	`sha256:2fe4afea04b724c98c358e0aa4881cda3d62bc60c82f50891783500af9f2199a`  
		Last Modified: Fri, 02 Oct 2026 01:18:25 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.10`

```console
$ docker pull couchbase@sha256:5a525308f6129320957feb71826bfcdfa97240be3af4cfc9b92addadff3ff6c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.10` - linux; amd64

```console
$ docker pull couchbase@sha256:d010f6a02d0fc64d7987ab61df52a0fd4d96ffb88911ec1a9176645b7e236fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **834.2 MB (834199410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09517424afffb4af8d376e74be389f89f63333295f41f25cccc6fa65681a0573`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:36 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:36 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:36 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10
# Wed, 16 Sep 2026 03:13:06 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:06 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:15:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=680d6833172db7691aa0f9562aa50e044214f97cd8a785b410e828a840ce38bc            ;;          'amd64')            CB_SHA256=80938b3c86eb4cf412d9eb80b6494d96d32ce90555dc8536e0fb44a884f453ef            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:54 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:54 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3894adfdae8be1e726b7c61461d7298d1da95b318433f13585af76aded6d3893`  
		Last Modified: Wed, 16 Sep 2026 03:14:51 GMT  
		Size: 44.0 MB (43963447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07142c60d829a35e3baa822dd81cdcfb5ee171c7217e21223c5c4773eadb26f`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 879.0 KB (879034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3ea0117fcff5d2e43b2af445be853e945929bb107e1fa30d3c34112225c721`  
		Last Modified: Wed, 16 Sep 2026 03:16:53 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78356e55443713b427602e2a0b7f8a5d274abf2a5f878a931196a5efdb54eea7`  
		Last Modified: Wed, 16 Sep 2026 03:17:10 GMT  
		Size: 759.6 MB (759585825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69287b58392ce592f38f3747ffde17e968286877e3a60ab97113e6198a68cbaf`  
		Last Modified: Wed, 16 Sep 2026 03:16:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5464886a09354daa412d824152bffd6c78bc64c050437155761f51f01bd0d7`  
		Last Modified: Wed, 16 Sep 2026 03:16:54 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b648b3d3841e82fd5fc218eebb6e944c692c9736d9591365059b55e88c263a5`  
		Last Modified: Wed, 16 Sep 2026 03:16:55 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9be3ec82f433d7c307550829f70cb2458c9b4d9e0fb95ca6c52ba5e7ddddd0`  
		Last Modified: Wed, 16 Sep 2026 03:16:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e916e25f4d91eebe326c1ffdab94e91db8c84af3b5c20a5660c9e66bf23b9b`  
		Last Modified: Wed, 16 Sep 2026 03:16:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f707ee120bb56d2657bcc6864423f2ea449c7fa6b389ecb68a070518b72de53`  
		Last Modified: Wed, 16 Sep 2026 03:16:56 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.10` - unknown; unknown

```console
$ docker pull couchbase@sha256:63b077f594e096f117ce7a194afe81bbcf9c3b8826b24ea1159722039016a513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ae997dbf7ba0a3d8dd45cb3fcd6e318bfdfb71690b90ce2da4a9dea15bf2d8`

```dockerfile
```

-	Layers:
	-	`sha256:fc63d88a45bdcf425d7715bcaf3d444ffbd9898a1356a084c490826f04373526`  
		Last Modified: Wed, 16 Sep 2026 03:16:53 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.10` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:a93ad6adceb0dc0c74fb32a174acb0371ae4b64b6beb7c503d3e0172dea6b28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.3 MB (799325484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a525c54c553e5e37d8c382a38b499fa77f83810edf946db972d5b774a057c54b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=680d6833172db7691aa0f9562aa50e044214f97cd8a785b410e828a840ce38bc            ;;          'amd64')            CB_SHA256=80938b3c86eb4cf412d9eb80b6494d96d32ce90555dc8536e0fb44a884f453ef            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:16:11 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:16:11 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:16:11 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cfef94b6d94851b9f13aa7791dea52ed3a9f0196f47c7e35c0ceb165376896`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 46.1 MB (46056556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728d43abf81d0ba7bbac8a05f98d79c890eadba90da911f2c827ac1650eddc86`  
		Last Modified: Fri, 02 Oct 2026 01:15:22 GMT  
		Size: 766.8 KB (766797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3de94ec1e4b0f283f411dbe5fe1deeea8c2e6943fa2974c9ee81ee3e1c0a2a`  
		Last Modified: Fri, 02 Oct 2026 01:17:02 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d114ac2b16a7d1f6fd3235231a1ac5da92ca593d9391ccf51944546bea3b0f`  
		Last Modified: Fri, 02 Oct 2026 01:17:17 GMT  
		Size: 723.6 MB (723555055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301bd4c8732dfa18ae9bb4ca8866c68be084bdf1ce7585635838122b6e964d14`  
		Last Modified: Fri, 02 Oct 2026 01:17:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c05fd0ecadd6df47696f47849a89589f54d36adc2c2508f4b94ab51f5937b16`  
		Last Modified: Fri, 02 Oct 2026 01:17:02 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a7d8c3415f6bd736990cf476041f75c6ed512805101aeb18eb3a3cfb3209df`  
		Last Modified: Fri, 02 Oct 2026 01:17:03 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2dce71347b3a43694880c14f8c0eb53f41e6bd26298c4d098a488edf467dd61`  
		Last Modified: Fri, 02 Oct 2026 01:17:03 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846cf98c540d136d9209747dcadb2060a0a637f1068376eccef9d4ef0e092414`  
		Last Modified: Fri, 02 Oct 2026 01:17:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c50acb4ba0b02aaa8e862621253a41ed770cfd5c89ef2dc6290d818df0b58d0`  
		Last Modified: Fri, 02 Oct 2026 01:17:05 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.10` - unknown; unknown

```console
$ docker pull couchbase@sha256:98b541516585ea8d8b8fcc778348d71a50b63f6914714c61a68742ad2fbe0dbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0d679232d0e712fa6246887eca9cdc8c74439706f76adc2271c2034d3fb71d`

```dockerfile
```

-	Layers:
	-	`sha256:132783fabef70fbf6943ab26a075fe204fbbbc02301373b63b9143bde9137962`  
		Last Modified: Fri, 02 Oct 2026 01:17:02 GMT  
		Size: 37.8 KB (37763 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.11`

```console
$ docker pull couchbase@sha256:f2bf2958fe63aa5ba83bda7b72a334e0387331e3dff754066820de5c4424272b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.11` - linux; amd64

```console
$ docker pull couchbase@sha256:ab016a2940d943cc1b0fd78cb7b6797587fe2d5bfab9fa1d797b17d7101f2664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **855.7 MB (855740614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8124fea7fafd32363829e7181747c456900736a2468b639408b6f580ce934284`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:31 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:31 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:31 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:02 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11
# Wed, 16 Sep 2026 03:13:02 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:02 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=802192fbfb596eb954f8de21597d83d26e9af60ff03e911f0210e441d9be5f19            ;;          'amd64')            CB_SHA256=a9dc8eb353e7e05c22a60d31330e9712954905012dd32eb4cea0fdbfb1bdbaab            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:51 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:51 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5501135d3104e58ac220103d23be85dac354a56e371e093bc4c195594c746b06`  
		Last Modified: Wed, 16 Sep 2026 03:14:48 GMT  
		Size: 44.0 MB (43963140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c61a0fab652ddd81cbb78ec686d261361df7b85bc622f093895bf65bb455c`  
		Last Modified: Wed, 16 Sep 2026 03:14:46 GMT  
		Size: 879.0 KB (879015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba983d306961c648fdd94fb9fbcc0f3dce06d8906095c65d3b10f83f671a8ee`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807d55b4e73bf6575aa79fa9d4e7842ef3dad586f9ec7821dccf7f4339440255`  
		Last Modified: Wed, 16 Sep 2026 03:17:04 GMT  
		Size: 781.1 MB (781127350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315e8b57123a880ae14faa8e7b7a22edc6fc6a83d244e28711df8c026667b8b8`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631fc7d21f39f7fa5ddd83beff6a01ada44a817dc103281a10ad8daa52f2ab4c`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a117b26ff14658f3e18522165e14704671f3b4ef0377f988cfbcd09ad84be62e`  
		Last Modified: Wed, 16 Sep 2026 03:16:52 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd80ef7c81b9afdabde3ca9f7c80d93188918512be1b6c9c6e1aa84f67230c3`  
		Last Modified: Wed, 16 Sep 2026 03:16:52 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eef08a4ca283a66a813782e4afe0b02665fd4f19dbd2df7c48db038d68545a2b`  
		Last Modified: Wed, 16 Sep 2026 03:16:52 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ab8e3f73fd98e71d2aa8a7bbf28714378e22666b4c36da12ca6170bc53dd08`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.11` - unknown; unknown

```console
$ docker pull couchbase@sha256:13be2ee2035d6986cf548fe657fab063dab442f7aedc73830e97bf60865fda3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e98021ef2052dce57a565230aff9a4fe9e98718ae86c39d7e4b8d608e572ab`

```dockerfile
```

-	Layers:
	-	`sha256:931eb1189403ea9ccac122577b8f26766bd6a1c6b0bde60effbc8b73c017a06d`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.11` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:c6092cc73397dbd1e32cdad2affa26b56cd18092c23caf8888feda27707df560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.0 MB (815990452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455a62ad6cd4cf958f50de8ffee662cc2fe14013e40b2a43b51cd14480c2ce0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:23 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:38 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=802192fbfb596eb954f8de21597d83d26e9af60ff03e911f0210e441d9be5f19            ;;          'amd64')            CB_SHA256=a9dc8eb353e7e05c22a60d31330e9712954905012dd32eb4cea0fdbfb1bdbaab            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:16:23 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:16:23 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:16:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b665f11ff944a79e9b4c1cb9334bea9659e81e8898c2335cb517b92bc899ec9`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 46.1 MB (46056381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6a95cd611728188c9f1cc3781c00cc550b27a0861d088dfac3ed1b64b7ad01`  
		Last Modified: Fri, 02 Oct 2026 01:15:19 GMT  
		Size: 766.8 KB (766813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e126e8321f720ec5dfde37c45cf33724d3933686b10f8d9c029488d82927c9`  
		Last Modified: Fri, 02 Oct 2026 01:17:13 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac431672abb4290fefe0f7dfe1c931d3e96a6b6bf112b979320eef985b6455d`  
		Last Modified: Fri, 02 Oct 2026 01:17:27 GMT  
		Size: 740.2 MB (740220184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18defd6d2c85a4ad8cfddad4bcc30d3fceb0bae373d49d5d9bc48d05b924dd92`  
		Last Modified: Fri, 02 Oct 2026 01:17:14 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f0433b94bef5df9b5ed3bfd1e9917d9e19c820db95fc17b8add671a66cd21c`  
		Last Modified: Fri, 02 Oct 2026 01:17:14 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce3863acad61b7830c9e42a147bab6be82f2de6b9b757fda33fd386f6f8e6ff`  
		Last Modified: Fri, 02 Oct 2026 01:17:15 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40dbbe65efe1226853bfd48a09bdd0d912d29e4dc33c99e6148a1c53453c7f9`  
		Last Modified: Fri, 02 Oct 2026 01:17:15 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c440cb1febcbe20e4b5a4413ecefbb6e1c99f29de0872dcc8e6654270aa452e9`  
		Last Modified: Fri, 02 Oct 2026 01:17:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7749a9a383a050d38f9f78f69e73bb92663538088799c2151bf46d4145959fa3`  
		Last Modified: Fri, 02 Oct 2026 01:17:16 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.11` - unknown; unknown

```console
$ docker pull couchbase@sha256:e40a85c59989527262059228fc88e22833adf73f463b47c0d0eb61a836c078f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078e769d99fdc472f0e19daa1896342052e096783660bfbf8d7f65827941590f`

```dockerfile
```

-	Layers:
	-	`sha256:e91cec19629634d3cf5a8ce00a952955af08c3568d6490ed2c5a28ed5d1daeb6`  
		Last Modified: Fri, 02 Oct 2026 01:17:13 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.12`

```console
$ docker pull couchbase@sha256:9cc06172185405194d7958cb45c563f4c19fb4ee304e1120e7c48d7577c72fe8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.12` - linux; amd64

```console
$ docker pull couchbase@sha256:f9aaee85d59af6aade19c1b3971887254efb93b09ac98c177c75321f9bf4e6c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.7 MB (879669544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f950459be25ef6b8a935d14d75a0b388fdb92309b2d9c5b83c0a75869d5c9cc4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:50 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:50 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:50 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:35 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd15c83d65470bb29518f9d122fa988d5904d05956d3144c0f1514e9358a0c9e`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 44.0 MB (43963039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa388dff340704302d49becb316e859ae36c71099567abda528ffa12b773c90a`  
		Last Modified: Wed, 16 Sep 2026 03:14:47 GMT  
		Size: 879.0 KB (878979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87871e167812bf80b1f2f42b58e798c34a132eb2e9174cd51c611351af256d59`  
		Last Modified: Wed, 16 Sep 2026 03:16:26 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a190154a9de60b033e31a6bef5904dd94b170b0680ac6f09816ce96dc6a59ea2`  
		Last Modified: Wed, 16 Sep 2026 03:16:45 GMT  
		Size: 805.1 MB (805056422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6735d80e1cbc665195d48898dc580ef2f523ed512c86cd9444da4251ac10d70`  
		Last Modified: Wed, 16 Sep 2026 03:16:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f7ad2405dd6d3206eb193dac8bf4f6bf1939c0df67b4249bf2e568ac302c8b`  
		Last Modified: Wed, 16 Sep 2026 03:16:26 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5027b372574adea4794030852f420715425d18285a395c8a795a8506f5206e1`  
		Last Modified: Wed, 16 Sep 2026 03:16:27 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a398dac3a66c0d1155c7f624240c3b873005ae732078f634880468437dbffe38`  
		Last Modified: Wed, 16 Sep 2026 03:16:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543af9e76c9dab40127be5d192c5aee0ade8732aa54e60fd870c507ee208325c`  
		Last Modified: Wed, 16 Sep 2026 03:16:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ab8e3f73fd98e71d2aa8a7bbf28714378e22666b4c36da12ca6170bc53dd08`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:313a2bed932d381075ce699de2b84697c3c293912f2222465be1bd6093ce22f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd31791694318857e67b36e691b607efc8f8d7884ff0150ce7c046448493821`

```dockerfile
```

-	Layers:
	-	`sha256:e731a7206b0eb002935d43be613a3e1155d2b5330f47fe580521113c9eca312d`  
		Last Modified: Wed, 16 Sep 2026 03:16:26 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.12` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:59b8b863b7601b43d76ca3f8b34f1907a39196a1d479df70c322eedf1fb812ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **839.5 MB (839530996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a9c920e5d30444a8a905adff292243681065bf3d3cfaec1585941d83dfb739`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:16 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:16 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:16 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:50 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:50 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:50 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036a2a6f53e7f22293a83404592ac8330a7ab4bfa628e4b9a74e9fd35b2c8463`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 46.1 MB (46056550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38de68c06891af9632ff67069eb1104b9e2a303d00d159fb435425e75020bed1`  
		Last Modified: Fri, 02 Oct 2026 01:14:50 GMT  
		Size: 766.7 KB (766737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82395568121c8764fb96e1954742bcf8789cfe66ee0d52b02e91755253988722`  
		Last Modified: Fri, 02 Oct 2026 01:16:42 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5565f9e214ab34535689c84658f160171e40a4d4548877560498e6553c017b3`  
		Last Modified: Fri, 02 Oct 2026 01:16:56 GMT  
		Size: 763.8 MB (763760634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216c3edd10b69cf160fcacbd70e8f3346ff4fe65353f6828b446d0dccd48ce87`  
		Last Modified: Fri, 02 Oct 2026 01:16:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d524bb5b9163661de8272b72ff767c6489266373338c8c3804a72dd1878a0621`  
		Last Modified: Fri, 02 Oct 2026 01:16:42 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308caccaa53148b931520c1214ef5a41120f0ea1f1accf50a7d8ece5a2d0b430`  
		Last Modified: Fri, 02 Oct 2026 01:16:43 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3e42c6c375cd5d59b63cb0f5e7785e78bef897c7ad471fbed04299ef6e426`  
		Last Modified: Fri, 02 Oct 2026 01:16:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e75f2ba4fd633aadbbdc5e7767d976dfee3a6af6dfdacc3d20be76235935d9`  
		Last Modified: Fri, 02 Oct 2026 01:16:43 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800922ce88b94d5951ca12b4e0d2d2690c2599bf32bf9503af933423e0e20bc7`  
		Last Modified: Fri, 02 Oct 2026 01:16:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:2bec56a94a53ba22d53aceab4446b896088ae9739b28debb7668e46d3dda62c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a205632eb26d6b97ce39b130b3b13a58ac24cb3112926983d6829dfba4b11173`

```dockerfile
```

-	Layers:
	-	`sha256:f0a60017725d8e65a7bdd2a6e611f0d9100bdafa1b4044edf438ebec08795784`  
		Last Modified: Fri, 02 Oct 2026 01:16:42 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.2`

```console
$ docker pull couchbase@sha256:3d41471d6be3b077df10b898a0006868b4ecda871ecff432a68a5261e6fbcb18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.2` - linux; amd64

```console
$ docker pull couchbase@sha256:93d318e990a144296f4b6126fbc3e915c911d395f1ed8655c6524201de088fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.9 MB (773902851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92592732f04f6c87176cd5395467f8025d5b658b66f507e7dd7eedc154c45285`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:21 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:21 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:21 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:49 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Wed, 16 Sep 2026 03:12:49 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:49 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:15:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c5697f6f2bfc21bc696f27d86e6f01b92e23ccbd3213e524c910c10d7bcab3fb            ;;          'amd64')            CB_SHA256=05fd37139aab8f3538ddfcf04eec97bd27654a5279468dce79dfad0f605bd784            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:42 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:43 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:43 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:43 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2096c8e020e7af114daf40b31829662ccce65ff2ff497625e8fc761974f4d4`  
		Last Modified: Wed, 16 Sep 2026 03:14:40 GMT  
		Size: 44.0 MB (43963344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7f3bec2e635937167bd43d06d7b4affea52bbc15ab90c7cc7faf5bf564424b`  
		Last Modified: Wed, 16 Sep 2026 03:14:38 GMT  
		Size: 879.0 KB (878973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff3942ec346be41c4dcc89c8a1b391f3be36a7faf9ec2c15a84679d9a4be608`  
		Last Modified: Wed, 16 Sep 2026 03:16:33 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7300b6dfa8bdc81a0031f56b486b361f8d3b7f5457dc72844c05676a9483dd8`  
		Last Modified: Wed, 16 Sep 2026 03:16:46 GMT  
		Size: 699.3 MB (699289503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42358a15bd13e0bf5476780e0dd0f555540a86250071337b573012a270415170`  
		Last Modified: Wed, 16 Sep 2026 03:16:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29972ae5766aa89613c808dcb372e537448ab25da92ca36bfaf00c0c7d307e2d`  
		Last Modified: Wed, 16 Sep 2026 03:16:33 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e498ffc10fd67e214fc7557ee638216f203819b85e66bebdcf2f03e922dfb0c`  
		Last Modified: Wed, 16 Sep 2026 03:16:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064d053358d81759465449b2e5437a44c4f0140a6e80ddde1c42323a0d8c27b8`  
		Last Modified: Wed, 16 Sep 2026 03:16:34 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e84eb9bd152e109f34c8ab95dfba2daf05ba66f5928e4feb01b1ef4556533f4`  
		Last Modified: Wed, 16 Sep 2026 03:16:35 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2320ff0780a8c85da0699c92844f221cc769083b1e619646e7e02224a88fe5`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:37d119bfad16c228d407ed9b26d7d3a5af1f88373b15cafc56674274316ffd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e264a8b2e7958704b5ec3c1e928140023636859319eff128aa89f86bd1fea1`

```dockerfile
```

-	Layers:
	-	`sha256:36688612a2fd0a764634136d30726fd5168c317c99a32b7fa3ca8715b63a77ac`  
		Last Modified: Wed, 16 Sep 2026 03:16:33 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:c511e7d970165053c649799dff5724fc0fd8bf4bcd29fa4344defaa0dc364524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.2 MB (749167038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de24becc00c94df4f7f351308561c0cd5655fb722e3519d49014e601f3e5b4d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:26 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:55 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Fri, 02 Oct 2026 01:12:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:55 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c5697f6f2bfc21bc696f27d86e6f01b92e23ccbd3213e524c910c10d7bcab3fb            ;;          'amd64')            CB_SHA256=05fd37139aab8f3538ddfcf04eec97bd27654a5279468dce79dfad0f605bd784            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:40 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:40 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154588d0ab6591780306c3326cb2b4b3e98e017b0f7db6d421a210bf76508a08`  
		Last Modified: Fri, 02 Oct 2026 01:14:42 GMT  
		Size: 46.1 MB (46056596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:200c310b6d4ad48f05777ee38d22135aa67e07427e056bebf057d196adcd76eb`  
		Last Modified: Fri, 02 Oct 2026 01:14:40 GMT  
		Size: 766.8 KB (766810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdef8b420af3c1518c56343378219eb5681ee7a5a8b226c3efc4277ee83232b`  
		Last Modified: Fri, 02 Oct 2026 01:16:30 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb5b71449a98c95d3920f58746fa9d8b0bf5853d923c66373764c772423c47a`  
		Last Modified: Fri, 02 Oct 2026 01:16:45 GMT  
		Size: 673.4 MB (673396633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b76d87261302a657af9876e2ed01608982714d6f7c5e6d8003b1d9f4b6ec49`  
		Last Modified: Fri, 02 Oct 2026 01:16:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3735206311dd306a1d3c725e025d0a5cedfb8cdc903b3b726f6e7590edcc7238`  
		Last Modified: Fri, 02 Oct 2026 01:16:30 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b254dc84405b478a46c251993a0785e75cac45df45c0cd556c1bc65269a46b9b`  
		Last Modified: Fri, 02 Oct 2026 01:16:31 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bad9b767cd058727c82823b4483147114194bcc41c040db540669ce9deb092`  
		Last Modified: Fri, 02 Oct 2026 01:16:31 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215e7dedbd5f017117e0242bf5dd2c96801fe305baa4338f8cebd4e524135554`  
		Last Modified: Fri, 02 Oct 2026 01:16:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8aa7bc8167acb2bb932c3079c134339b04c45c93610fbb5e5b9ca3d57b8909`  
		Last Modified: Fri, 02 Oct 2026 01:16:33 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:9bba47c91ae219bb714ae6cca3a8f3a5506de3a1b7dceafda63c717b5ed05df6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436d81d0411d6ca9d3ac7b6293c989d9d15ecc6a8112aba32ca2d23d455c14e2`

```dockerfile
```

-	Layers:
	-	`sha256:1986935b23a8ac0f7e4c652e3296a808a0977a1649207c8b99c85c6e9628f63f`  
		Last Modified: Fri, 02 Oct 2026 01:16:30 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.3`

```console
$ docker pull couchbase@sha256:897dcdd55c459848f889cceefa6da83c296db1544aab37368c025010fceb700a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:524a8fcb90394468d82dc43e742af1db1f2fa8d71778ce93843fa023ef76008d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.2 MB (776223639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5e7be53ccc67496b38e5da846e55d1e1f95fcbb2a3e7a9859f7745a8425a60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:45 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:10 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:10 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:10 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb81bfc7caf8593cf5af694de6e01974291ae8ef3b64deedee3a036084e9beb`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 46.4 MB (46383015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcef8151dd40ed59efd1a0b44ee65578efd3f68f99374a38b294bbe8fcf8965`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 879.3 KB (879317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0016d36993641db3585158e262832c81c8553d942c64b1a6e5b46d773b8b95cc`  
		Last Modified: Fri, 02 Oct 2026 01:15:54 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e6c97b63d037ce329f208640573f177e460c7a17d0f169550cce91c0cb984b`  
		Last Modified: Fri, 02 Oct 2026 01:16:17 GMT  
		Size: 699.2 MB (699189904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebb0a5e60d199e764087969ed16faed3ba5c81f8189510b168ed75cc33b262c`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c070878535b872b1cb7e93c612e8dad357a489ced53dae0be68e5acf877543e`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24487cf9c4af486d17913888fb800f6426320a4263291b0c03b40a7d56a98e12`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb2bbef49ae85a2a6db9de7ea4db1072c346f69e2588c026c1ff244757e87c4`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f829005a789038bc07643c80b9baf727eb56efc329dddad4160682b267afbb1`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf81adaf939ea8c07ab4eea25b63f92fa75e323421dda66a4aeebcd8aadcf343`  
		Last Modified: Fri, 02 Oct 2026 01:15:57 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:2339535bb4950ac1f73250d766dc9e6faf5946731fb4c4f4a3db3a6ebccc730b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece391bc02af78d52fb1a40aef3171d12c58bc1dfde66982884d69c803a6e2c1`

```dockerfile
```

-	Layers:
	-	`sha256:7669ba0bb8337ee69fe51723e7943ea6569a29823a26e53a157b72ada1300770`  
		Last Modified: Fri, 02 Oct 2026 01:15:54 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.3` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:e9fdba753986050c99f5d07366cbf878f305133771ec123fa002dbc8b801cac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749072945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818667104686b7baea1c85a5064a1b08fd5445e1d022f438072e70fcabc62888`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:15 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:15 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:15 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Fri, 02 Oct 2026 01:12:43 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:43 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:14 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:14 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:14 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df42c3c2e3319d423c741137344b1f99bf6a45ee40c68964540b18b57d9005f4`  
		Last Modified: Fri, 02 Oct 2026 01:14:17 GMT  
		Size: 46.1 MB (46056383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0b223905d5161b81f8c9b03b3798793700d2d592f78f6118252805cbbf154a`  
		Last Modified: Fri, 02 Oct 2026 01:14:16 GMT  
		Size: 766.8 KB (766841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1acab84ee6324f32ee9b22934b5abbc6ff70921e50f4e7928323704f76388514`  
		Last Modified: Fri, 02 Oct 2026 01:16:04 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b007e5af8479e9051a746ad97217b9cc9bc562eee7c4d7a93825c29c5f69dc16`  
		Last Modified: Fri, 02 Oct 2026 01:16:17 GMT  
		Size: 673.3 MB (673302651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4625206d9205259819c41fe5ee0aced94541809c8230f29a5d8e51f5f1397dfb`  
		Last Modified: Fri, 02 Oct 2026 01:16:04 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf602d01b780fcd94d385fa6ab9472e220c507d1a678ec96ebb0c93e186bfd68`  
		Last Modified: Fri, 02 Oct 2026 01:16:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c49338a4d849788bee4f34fda923c5e5374a08d54e12ed1c4e0ca53919e4ee`  
		Last Modified: Fri, 02 Oct 2026 01:16:05 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ad57e4c7172e79bee661f2bd33638667b2e53291dbf8da174fc36d69aa142b`  
		Last Modified: Fri, 02 Oct 2026 01:16:06 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cb50a9d4c9088ee53f16cd86ac3aee18f1078df3480aa9aa0d5502d57c44aa`  
		Last Modified: Fri, 02 Oct 2026 01:16:06 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27fd137a44549e12c7c1ffa3a68a284128530acbdc05311eef76d156f5df9f5`  
		Last Modified: Fri, 02 Oct 2026 01:16:07 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:131583fcc4a112e1f30c534a9d5732edf44f60481d77812c816c8b0ce435f47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db63eb05f6fe44205459ee88c222a47275e804638acb031c557431b72f020768`

```dockerfile
```

-	Layers:
	-	`sha256:64582a2735d86fc6c5317bc3eaa1af41433665c1f42bf9c9775137bec10daa2a`  
		Last Modified: Fri, 02 Oct 2026 01:16:04 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.4`

```console
$ docker pull couchbase@sha256:9a9f7b51652d9cf4d44be06e202b3f4c14e7dc7049e07f734b980af286d514f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:9c8a09b05e306280cc512344d267b0ab9c258073a1f5d4cc0b9cd4c431c6ae7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **778.9 MB (778916831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c550a2d1abe1c3bc86c39750bf2388abfbb1a1decf42c82fb566eb36ec6788d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:16 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:16 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:16 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=362376a07ccdc1d604ef2d48229d853bed9340dbd033abd8a0174819dfa76b6e            ;;          'amd64')            CB_SHA256=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:23 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:23 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2d128299d0b0010333ddeb8007125c72f8c90d59a2e2082b586976d1352ac2`  
		Last Modified: Fri, 02 Oct 2026 01:14:20 GMT  
		Size: 46.4 MB (46383164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea8ac11e7d5b2f5a9ee2bf13623c172d5a6f0f78bf59bf5a2eb966a35bb6340`  
		Last Modified: Fri, 02 Oct 2026 01:14:18 GMT  
		Size: 879.4 KB (879368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdfdc63ab421a6b35b200dc9ae1b91022eccfe2bdbf9c853be99abe447fb99f`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 3.7 KB (3727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869de63d41cddfa6a7dc6e320da4c304e63c2c522b3974bea4d651399930d667`  
		Last Modified: Fri, 02 Oct 2026 01:16:26 GMT  
		Size: 701.9 MB (701882888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0c8615f859d8fd930cbf14f880a83132e11e715ea5511b4f5cf078efe7df0d`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4175edd7a782b31f2938dec18a9a35334df71203798385c7931c7c218553b9ce`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e548d7a8c3e702c130abab2ef9c0b444fe106c24d8a349f3aaab7d3a983960e3`  
		Last Modified: Fri, 02 Oct 2026 01:16:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44f110d7025a2ca4598cf058ddecdb9c38865889aeeb6b795f88f128bb99116`  
		Last Modified: Fri, 02 Oct 2026 01:16:14 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e93d2f99e6e613bb0804c5d3ce0df88e5c6c7ad5828183c082713ee2f0f0edd`  
		Last Modified: Fri, 02 Oct 2026 01:16:14 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d560b3147e499509f447821722aaf5968cbdc3cd833f99eb22a64c7ae932923`  
		Last Modified: Fri, 02 Oct 2026 01:16:16 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.4` - unknown; unknown

```console
$ docker pull couchbase@sha256:9b61c7ac833e6588ad3caf46b3be1780534a75a96b6341b5b70277b33ad7dd36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3f97a2495bf3a99afb75003997721d20872b90b38e847137e31926f2d40b7d`

```dockerfile
```

-	Layers:
	-	`sha256:fbdee3f2c2cd7ea9e938c14e0ca1740958bb5b1a478e4203d20ae233eedf9d04`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.4` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:05a5a5fe63d57163fa13242c331f9cf6327bf0dd0188120eaa1762aea75904aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **751.3 MB (751334847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c508c197553f598ed6b2b28d74e0c72e2d6d05823f916ac430363de22cc4539`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:03 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:03 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:03 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4
# Fri, 02 Oct 2026 01:12:34 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:34 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=362376a07ccdc1d604ef2d48229d853bed9340dbd033abd8a0174819dfa76b6e            ;;          'amd64')            CB_SHA256=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:09 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:09 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:09 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e251490108b3ad03624a04c5757af82a70bbd2212142904c8b5f089e654c733e`  
		Last Modified: Fri, 02 Oct 2026 01:14:09 GMT  
		Size: 46.1 MB (46056678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e7d200642c66776fd59d7e05db47f9d570d709a5d945ef4155be2c57db201e`  
		Last Modified: Fri, 02 Oct 2026 01:14:07 GMT  
		Size: 766.8 KB (766809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5753ca5f2ed98e490258b8401900c369b08fdf819c0052ee086d9e7ee0e5344`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d58bbe03b32acc835cae6ff6a689fb68c31968ec945ae9c9ebfb4893588076`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 675.6 MB (675564283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619a758f6e5004cde880603f712846ca053071523bac211b00affb5760b9a94b`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de70604e789079d4b948ddd5055e51a8c060245c414c4ca1e89ef92971585e45`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17698b1c14f5afb5880cbfcd8e2701eda699cef1a36d7a58a6d242cb99694ff`  
		Last Modified: Fri, 02 Oct 2026 01:16:01 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abe772dd6d065c7c9ead572489ed28142554d66b7eb6dd3bf98fd61f56778b7`  
		Last Modified: Fri, 02 Oct 2026 01:16:01 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e421312f6e62054c5688b0436077997396ee8e7a2a71045baba9f73c49556759`  
		Last Modified: Fri, 02 Oct 2026 01:16:01 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dcd07db3df95705b835bf142ed5bf1713763d837ca9306df1c5e58ac4037aa`  
		Last Modified: Fri, 02 Oct 2026 01:16:02 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.4` - unknown; unknown

```console
$ docker pull couchbase@sha256:af643909728827ffc445dbc50000087cfc5387d253978d5c549145bdd4b15ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdf4fda8db04791063a21003ef0fe26611f81f8b80d9c2d1c178083b22a7b13`

```dockerfile
```

-	Layers:
	-	`sha256:9c497ef22f52f1d897b2da8584834205f77480a3717089887ff2e0f360a663e5`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.5`

```console
$ docker pull couchbase@sha256:1bbe115d0fee93f6df30341bb17ddc91ed24edfb7872a216a5d7f63d65715b7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:54e6b1c52847700fcabc521b380f754e487af765bb24298f57b2d9c0830ece0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **778.8 MB (778776780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faf0db830505773e589d40d6de4e0d881b78c09d343abde82ad7e06f06160b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:35 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:35 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:35 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:02 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5
# Fri, 02 Oct 2026 01:13:02 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:02 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=d162fb1d2e7acf151fdbf302c80f79622b7df67bf27ab85d83c40cc7e82a2ad1            ;;          'amd64')            CB_SHA256=9c2f2a01cecf862c210af5a7bfe38fd71fe087c52e1cc168119d34bf7aa79761            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:07 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:08 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:08 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:08 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9528788677916d7a0f24016131abf5a459707d06b4609f11710497a51efa4813`  
		Last Modified: Fri, 02 Oct 2026 01:14:15 GMT  
		Size: 46.4 MB (46383646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2c76ed2f7194eb935d1505b4fdb3118d7662167b13bb4c65ca8dbb9adf533b`  
		Last Modified: Fri, 02 Oct 2026 01:14:13 GMT  
		Size: 879.3 KB (879314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bd469eefaa1e95342185e8784da2ceb45abaeac45d5a36d6572f179cb599e0`  
		Last Modified: Fri, 02 Oct 2026 01:15:53 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd6e4da47461a659b7dfa5dbcee3ada24b3b0f5c08384d4ebcfc742159ea6f0`  
		Last Modified: Fri, 02 Oct 2026 01:16:06 GMT  
		Size: 701.7 MB (701742410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e8cdc4e4beba7c55c1052578ff0fc0ab18efe11d8d2e398d93e7543c221007`  
		Last Modified: Fri, 02 Oct 2026 01:15:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc52a1009019837d0c6ee47d7d353f1095251656ed5b8477997940600782dcd9`  
		Last Modified: Fri, 02 Oct 2026 01:15:53 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6419a4cb4a387c192297df5fc01ad96bd9150a3d307c726f2f0aa1d881d72ad`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d8bab4857dccf7ae2bbe9a11b82afe53962bb6ef16f71eefa0a049e8f0eb31`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d0f5b1f891ee44bcfb06cf2e3a0105d39a9f52b72ab86bdacea193711e9b66`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f3d403fbe5ef2ea68d01d1a4c126af6bb53e5211078103568cb148c907ed65`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:c6a1b7b5f180e5853638a5eb55296e5d0ebd76a77fa2f764842fdf94efd0d1b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1b71a949b960ae96958ba284aa972096f6cddeaf2a651743a8a7f2867bc482`

```dockerfile
```

-	Layers:
	-	`sha256:1943f0e64770b0f6f4a3d4091ce9e7a2814a8de3d634231c175bb50a2506a5e1`  
		Last Modified: Fri, 02 Oct 2026 01:15:53 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.5` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:99e964ae22a2448808dd0a780b547669031622db80c1901daad5d935ae26f2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **751.2 MB (751244331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bea0b0f996866c90b023a457bd705bc957ef7ccfe5ce30367dcac768c0b2ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:27 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:27 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:27 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:57 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5
# Fri, 02 Oct 2026 01:12:57 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:57 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=d162fb1d2e7acf151fdbf302c80f79622b7df67bf27ab85d83c40cc7e82a2ad1            ;;          'amd64')            CB_SHA256=9c2f2a01cecf862c210af5a7bfe38fd71fe087c52e1cc168119d34bf7aa79761            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:57 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:57 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:57 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f3dbc9fcbbed54b862cec0a96bf8c20dfdd73ef9e54bb1de53c87c61da78045`  
		Last Modified: Fri, 02 Oct 2026 01:14:05 GMT  
		Size: 46.1 MB (46056693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad8ca2f2b608f481833981c364b195ba0bf11768183dbca315ef91ab3f777df`  
		Last Modified: Fri, 02 Oct 2026 01:14:03 GMT  
		Size: 766.8 KB (766804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e9735e0421cf5442ec48baa1293bd097450909c87f6c44c1187a0ba9b343b6`  
		Last Modified: Fri, 02 Oct 2026 01:15:47 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e989079354ec9f9ea1976cafcf8d8d31aa04d30aec15405ad16b84d16e6581`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 675.5 MB (675473762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19964c0f2d03fe792848d342745f4421ca152e9af7f90f9f6bb30d971bffbb1e`  
		Last Modified: Fri, 02 Oct 2026 01:15:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efff4b595321fdb24c2ba07c59c5cc8005d8b56d1e7c55cd83c54daf9e79a6d7`  
		Last Modified: Fri, 02 Oct 2026 01:15:47 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ceee5606137969fead7d90570fb5f41a9b3da1178f0b7cce4227459bd900745`  
		Last Modified: Fri, 02 Oct 2026 01:15:49 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038247005c50840c7e66e0f87f2073a7da1bc22df002b33b842ecc10bf046d4a`  
		Last Modified: Fri, 02 Oct 2026 01:15:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a404a261a7bc6fb5b199069d97ca25c0a70f4a357b2516d0b945dab936973ba`  
		Last Modified: Fri, 02 Oct 2026 01:15:49 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f42cf9c0caf6fd04a1243c0eadf06b6e6b7ce52e0c05601a6648bad6ef99e12`  
		Last Modified: Fri, 02 Oct 2026 01:15:50 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:20f622355f1abe1a8647a89a0fc54c7bb6831874c2c0960ebbb98698170931dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ca203aca1fee0af70329c72c98f8b61feeea1fa25068949056ed573b6d6df2`

```dockerfile
```

-	Layers:
	-	`sha256:23cb9cfffea6b65a9d74422c35991e9db664b326a5a780d67830dac1dededa12`  
		Last Modified: Fri, 02 Oct 2026 01:15:47 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.6`

```console
$ docker pull couchbase@sha256:061d2ef9c7cdb8d5a3270cafeb1c08c50436c9bde93c8af36d148330f3f259c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.6` - linux; amd64

```console
$ docker pull couchbase@sha256:bd1f9e1810d98b7b1d72ea9322a00e0182c7458bc2d9f463d0dcd80198649e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.0 MB (802021998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eaa32f2f2a8f410133b7fbc651be849217e60cae982c5ccfb974b8407ffc4c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:33 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:33 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:33 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:33 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=21b348be14c30e39658e9378ed62750806a20946677866d5859ac426df0e6486            ;;          'amd64')            CB_SHA256=43992488e154a87119a7ffb738de92b3364f5b1bfcbdd958e757e87762076ed7            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:09 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:09 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:09 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f1fab40877da7df80eee13d902146f79a629e51e9d7e71bb6e7f68891ba734`  
		Last Modified: Fri, 02 Oct 2026 01:14:13 GMT  
		Size: 46.4 MB (46383389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f04ad9ce80ec8c83c5967b81c145ebd8c4383f24785a356c214f6b6ddc97678`  
		Last Modified: Fri, 02 Oct 2026 01:14:11 GMT  
		Size: 879.3 KB (879333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e68b35a480f58552a9d247949abcc7be86c55484bfbd5cae062d5fc2208fe18`  
		Last Modified: Fri, 02 Oct 2026 01:16:08 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d7c7c009ee3d437e1a468a0368174d2d5d2aba280deda38196119da20e0490`  
		Last Modified: Fri, 02 Oct 2026 01:16:21 GMT  
		Size: 725.0 MB (724987867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e869cecef5f2e33c9e878392a6650d35c0cd32bc8daa7fa7254da55eafb58c`  
		Last Modified: Fri, 02 Oct 2026 01:16:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092dc8d506c8d7680bb1bbee62001f9b1f8b0fdca0c0cdf287e1231ee6939be9`  
		Last Modified: Fri, 02 Oct 2026 01:16:08 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed23766694974747d2cdf84145e717d859423ece9126c9bdec22bcb0b26728ac`  
		Last Modified: Fri, 02 Oct 2026 01:16:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10f5709fccc596c89ada18678e665bd16454b80d78b29106ad84cbc39fa30f3`  
		Last Modified: Fri, 02 Oct 2026 01:16:10 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0932051c3a941deab140d3f826bc3ebc466384462b883951d136e8b77b48085d`  
		Last Modified: Fri, 02 Oct 2026 01:16:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea91c730e11af0f246fbce1faaec32949385af22cea79ead400fe3c9b690d30`  
		Last Modified: Fri, 02 Oct 2026 01:16:11 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.6` - unknown; unknown

```console
$ docker pull couchbase@sha256:9eb4beabd3b3d7782deacdd203fb7c2d310d57aed03c6e728d5891adc1662d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65713645f1e5e05552960bbf6457972a1a8be50146f9056c5ec1ec9debbf5d3`

```dockerfile
```

-	Layers:
	-	`sha256:dd0384a6b7fc693b83a6a9da4e059de565cddd340cc989bf52f2610a3579bf4e`  
		Last Modified: Fri, 02 Oct 2026 01:16:08 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.6` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:531ddfe25ecdefc5b108a870d3943d26df5509c04a747769c4e9de30e9d9c9d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **772.2 MB (772204443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b19248530666a6adb3032b567eafccc89d5fbafed612b9ff5cb1e22968e833d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:17 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:17 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:17 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:46 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:46 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6
# Fri, 02 Oct 2026 01:12:46 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:46 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=21b348be14c30e39658e9378ed62750806a20946677866d5859ac426df0e6486            ;;          'amd64')            CB_SHA256=43992488e154a87119a7ffb738de92b3364f5b1bfcbdd958e757e87762076ed7            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:53 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:53 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d9ef507b7874ee98d0f71ebb267d899707725f3b65ca0b81edcb98e236995f`  
		Last Modified: Fri, 02 Oct 2026 01:14:00 GMT  
		Size: 46.1 MB (46056189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee0dd278f730d47d5855fdf10566aa3f1e5ecfe424ff533f7cd5b602cfa3e57`  
		Last Modified: Fri, 02 Oct 2026 01:13:58 GMT  
		Size: 766.8 KB (766777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f61765ac1113b99959ad94a1398ad2ecfacb8533a9afd10b2cdea1af2fcb52`  
		Last Modified: Fri, 02 Oct 2026 01:15:43 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d68dfdd2df754a8a93104661c3caf431a30ea81b503a25c1452a2d76c3de95`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 696.4 MB (696434403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b4551f3a4927abcb044032db9f3f8c544b0ff8fd002e19e4691f6781d20d71`  
		Last Modified: Fri, 02 Oct 2026 01:15:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9986893b4f811520e74ae1c8e8270bd63676549b1a8f919fef01d3ac5de1c0`  
		Last Modified: Fri, 02 Oct 2026 01:15:43 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d054a0b2b5ed52fe3b3f888c81783646a3eb3b6eea21c697fb047aba8f3d518`  
		Last Modified: Fri, 02 Oct 2026 01:15:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0341b1a0a8e1e4390c208920dee4589b297cfdd9b7e9d77d421b2ae44a03ac17`  
		Last Modified: Fri, 02 Oct 2026 01:15:45 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8817b2895b0f11569f4e0b8f590b266dae87438641e05b4714496212087ae21`  
		Last Modified: Fri, 02 Oct 2026 01:15:45 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbe69c6a89e218f0977d1b991cae8ee80fb8cab973d033e32d0ce380b757e7b`  
		Last Modified: Fri, 02 Oct 2026 01:15:46 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.6` - unknown; unknown

```console
$ docker pull couchbase@sha256:25e549fbaefdf4eb4ac196e85b01078afcce644327b81b3d0faf800135baf892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d5953a25efc0f35e11a9827637e8a007d39dce476f13e481e0a1cc87e2e7d1`

```dockerfile
```

-	Layers:
	-	`sha256:66021070cd4ae556b24d493dfcb6253ad397f54c4ca4be1bd210484312bc8cef`  
		Last Modified: Fri, 02 Oct 2026 01:15:43 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.7`

```console
$ docker pull couchbase@sha256:0102261d43e98ec8c0699977489dcd5378badfb82d8c3c2db8ff83c2e116b62c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.7` - linux; amd64

```console
$ docker pull couchbase@sha256:c32326e27471567c82b9943de2807085649cff3e44fb06290debf202ac8a5752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.4 MB (799441901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2652b817b16da9bcbcefd2ee002e3b30f32d9dab5f77e96f8359350add66ddfe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:50 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:50 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:50 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:57 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:57 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:57 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:57 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd15c83d65470bb29518f9d122fa988d5904d05956d3144c0f1514e9358a0c9e`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 44.0 MB (43963039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa388dff340704302d49becb316e859ae36c71099567abda528ffa12b773c90a`  
		Last Modified: Wed, 16 Sep 2026 03:14:47 GMT  
		Size: 879.0 KB (878979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b9836f2b84c9eb8c128fe0c2ab78f2c86b374365795da173e05052ba148efc`  
		Last Modified: Wed, 16 Sep 2026 03:14:47 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b9cba3bb4a7afcc7a238d8bdaa485fc526423521ffe2bf0afa8c8ae78fde02`  
		Last Modified: Wed, 16 Sep 2026 03:15:00 GMT  
		Size: 724.8 MB (724828785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1543b02cb9798d8e9a40316c64f05e967f522de2f6886bb8e7b11736ec5534ea`  
		Last Modified: Wed, 16 Sep 2026 03:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146c69a3d7252e6e8c216778f594762e212512bcd7baa06c78ec4c8923f74bc0`  
		Last Modified: Wed, 16 Sep 2026 03:14:48 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69418f08f5d034e47aefa26aa5595eba4c68c040751d00666f848e68b0b07735`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b11d81c5541123c63f54d50af8796b80bcfd76c4c31a839b9023f41b518cb9`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addb4516e3163c540ddfcab401c85243465941201af87cc77a4c050f77704bca`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84699d02444a68ba2d7dfeca67590d5744c9c3671c0dd868d17dfaf02ded8a5`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:7a6ea240c11c0c29a346260e76597064825ed2158d4a7c57811752e1d258e456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2878339f7ed4fffe4b7b1f86e558f94fdfc6a4246ddf7bacd10c23eafd93622e`

```dockerfile
```

-	Layers:
	-	`sha256:acdb54fcd290d207ece81d228ef645c863186184a677a34cf1973253c933e383`  
		Last Modified: Wed, 16 Sep 2026 03:14:47 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.7` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ccd613e647c99173e1035e61e32a1708d864b2bde6e04ab981d860541a782469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **772.1 MB (772053245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b873cc1ae590ba5c55a12c88710e163188a3e181176b9aa6828c3a30dff6a759`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:23 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:28 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:29 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:29 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b665f11ff944a79e9b4c1cb9334bea9659e81e8898c2335cb517b92bc899ec9`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 46.1 MB (46056381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6a95cd611728188c9f1cc3781c00cc550b27a0861d088dfac3ed1b64b7ad01`  
		Last Modified: Fri, 02 Oct 2026 01:15:19 GMT  
		Size: 766.8 KB (766813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b429dc7da52566bd89d79a65b5c4e04beeac9011393b51ab10e9aedc0b074b`  
		Last Modified: Fri, 02 Oct 2026 01:15:19 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220661603c7f0bab463b451794cbae0c23a89eeb219af5ddda0650ba87f16ce2`  
		Last Modified: Fri, 02 Oct 2026 01:15:32 GMT  
		Size: 696.3 MB (696282974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1efbb0db60a275af351317bd30ab598da51313cb2bb6016b92f4fa61880f289`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6eae3550d9667fbbcabb675b1f45b90fd531b5334cc5a4ce1ab847cf33515`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310f8649e9c798f1e56d6ca27afeced210a7eeea68abad7ea57162ce8e793b41`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e60de0e8ad3bb77cb2698ce765155dbe055358594118b252b4cf2a12aaa2d9e`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418f4956850de44c19d26c25aad1d83a156c61a9a587c2e0e2dd51165cddddfc`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867270f13442d2158f00c551136b615d54746bfecf13caadf3f4160c0d90d6bc`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:da875788b183fcc2752f4b70136f34bc8f865d114a66d2bb15d26679ffa7803c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b739abbc1bc32eff630527f2dfd037a39dde7fa1e4776ecfe2e62aefee4a23`

```dockerfile
```

-	Layers:
	-	`sha256:bd5426da221bb3a9b29fc9d1881d2957ee1ae5c97e5f13b7e69ff16e4066031b`  
		Last Modified: Fri, 02 Oct 2026 01:15:19 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.8`

```console
$ docker pull couchbase@sha256:8081630027f8685741d11bf335115b516b8aed7a496a7dd88451d5df16f620d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.8` - linux; amd64

```console
$ docker pull couchbase@sha256:a927316de0355b34e3e7d786613b96aa3519805e83facc3810ba3f60b8ab7228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.8 MB (820832183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b13ae2b53514571c922f2c238c62747a35410ef415b8ee8ed07e043359e1383f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:47 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:47 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:47 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8
# Wed, 16 Sep 2026 03:13:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:13:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=4594fe0dfe33e2674f3f800de605856bf7e2a5bb15e34f8bc44cc382bf8351a6            ;;          'amd64')            CB_SHA256=e1437c7e61aa1ab28b00604d9c1ce0e280fa4f4025f34ea3aaf6a975b8bdb3bf            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:59 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:59 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:59 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236dfa3bd19b9d1a85e2fc0d4b2f4aad80ded402a729062a2f3bcba08a48d334`  
		Last Modified: Wed, 16 Sep 2026 03:14:52 GMT  
		Size: 44.0 MB (43963392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4fb8914846c134236329587f4aa1ee1e31febe20c005d02ef325921854d4ba`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 879.0 KB (879025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34cb6806245f0548e0ae75a51d2284713597446de11f8930f460f2f8da0e3d7`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b250cf77dd2e8d58d49fead297d05f3082ead8d5674ec57377ef4b0b0a8c2c79`  
		Last Modified: Wed, 16 Sep 2026 03:15:05 GMT  
		Size: 746.2 MB (746218661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7501c1d479331cd44a5167612b6fb95e045c402a872f77fd1b98ceb0e165def`  
		Last Modified: Wed, 16 Sep 2026 03:14:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0853e0af2597abc39d593a0514a0678e81510d628e4647a788b914a4f879ab79`  
		Last Modified: Wed, 16 Sep 2026 03:14:51 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d88d9a987e8fb9f7dfd5fe365fb832b73d1353ea19f265b3721b841a3b3c21`  
		Last Modified: Wed, 16 Sep 2026 03:14:52 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c8f8a2e5f18e53978592a0a6230b8bbe464ec196649f660cb95edb17d39c0b`  
		Last Modified: Wed, 16 Sep 2026 03:14:52 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87efc819956432ae3c8c7e05ac925f8f148141cf19adb619d990180ffa62b7aa`  
		Last Modified: Wed, 16 Sep 2026 03:14:53 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd642d2c7f9ccd4eccdae1314bf8243bb7ec4b920d1adac13747c350c65e1858`  
		Last Modified: Wed, 16 Sep 2026 03:14:53 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.8` - unknown; unknown

```console
$ docker pull couchbase@sha256:80048d39a8cd514e0093ed0456443baa96e047834a59cc5fdab533c32e142676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7315887c22b25244e4078583e4d42a0dac348619f008b284e202561b66c2a05`

```dockerfile
```

-	Layers:
	-	`sha256:8dec79218c99bbc2fbb671aa18d4e1c65cfbc4b943cd5b663d050701f56ad94b`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.8` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:5fcd9631faaf8df2854115fb58c357bbe838f1109facb2cbf9725cfdfbd72ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **789.6 MB (789556277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e0d30a3735f2b7b6a1e0023a618f067fe5f7f32a2f6ca33a786f19fcb2b442`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:25 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:25 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:25 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:56 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8
# Fri, 02 Oct 2026 01:13:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:56 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=4594fe0dfe33e2674f3f800de605856bf7e2a5bb15e34f8bc44cc382bf8351a6            ;;          'amd64')            CB_SHA256=e1437c7e61aa1ab28b00604d9c1ce0e280fa4f4025f34ea3aaf6a975b8bdb3bf            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:37 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:37 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:37 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:37 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d3e0637eb214b88c7593ffa10cc434901a1dec7dce97551d45ad7a92c40c7d`  
		Last Modified: Fri, 02 Oct 2026 01:15:30 GMT  
		Size: 46.1 MB (46056529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710847fc7d303c2d5353de49ed2c4d4858d5abe25beef90119b6e9301638d01`  
		Last Modified: Fri, 02 Oct 2026 01:15:28 GMT  
		Size: 766.8 KB (766803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb41d73e59c82c5a8ebda6dde3dc43666e110252984fb873a9ca7dcb718bb0f`  
		Last Modified: Fri, 02 Oct 2026 01:15:28 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca0703d1ec827ae55d5c36f5dc61cdb4d3ff7b1267f7cb83ed11c080cf1367c`  
		Last Modified: Fri, 02 Oct 2026 01:15:41 GMT  
		Size: 713.8 MB (713785869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d161030f3b10f3b54633ea9ac75049b532bc7926932c7c132bc1e18d8b8f4d`  
		Last Modified: Fri, 02 Oct 2026 01:15:29 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df5ebed614ec07a47d243fd09318a62a2fed68a1655e6084554f3f304194ee8`  
		Last Modified: Fri, 02 Oct 2026 01:15:29 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eca4777789f64b38bf3e18d69b85258f1cd1452598649e401921b6ec56896a7`  
		Last Modified: Fri, 02 Oct 2026 01:15:30 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70db4b767ae63250402bb5cf3f00f675fd100541dfd6c818271c101e52b5593`  
		Last Modified: Fri, 02 Oct 2026 01:15:30 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac22853c52c852e261f6c766c421ec9d7926f025eb1862b20562cd62aa16278b`  
		Last Modified: Fri, 02 Oct 2026 01:15:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867270f13442d2158f00c551136b615d54746bfecf13caadf3f4160c0d90d6bc`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.8` - unknown; unknown

```console
$ docker pull couchbase@sha256:88c9c017eec8a00a58b58669609d771977e9f000e66213ed766bbb14835ce191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47d8f6f62343cb3334032491594460205ea2acf26bf8d60eef007b036fd974e`

```dockerfile
```

-	Layers:
	-	`sha256:8ca57b14b5c01e025a887d0ba7b7ef08e14ed7194267d4ef9498ec1bad5628a0`  
		Last Modified: Fri, 02 Oct 2026 01:15:27 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.9`

```console
$ docker pull couchbase@sha256:0e7462fc8ec96ce0f152e184b6df0f1ab15bb5ef9e1b3fda6b3fea4480d56784
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.9` - linux; amd64

```console
$ docker pull couchbase@sha256:279600a05edd3cc043c5b48c81c2ff9a693de82eb28cfe2ffe41a32f16d630dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **823.3 MB (823277616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90095022b8ecb1dd311c4bf982a6dd69161dd0f8355fcfd7b3a0fc543a0bb9aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:25 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:25 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:25 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ce070178588d34a08a792a63f11200c383b7c6d885f337101d13992850c282e5            ;;          'amd64')            CB_SHA256=51cd89e7db43bf5858d6b98e50c43e6217694d814fddabafdf5e798bf8460e43            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:29 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:29 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d97f3f792c6c31d7413ff7dc2260c76231bedaf09a0504346f7ace831a56ace`  
		Last Modified: Fri, 02 Oct 2026 01:15:22 GMT  
		Size: 46.4 MB (46383045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87b87d898b6c1d7b5c28ad91cd50a8038db69c4fdd734d583f4f8fa0228b672`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 879.3 KB (879286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f97b45b3d6083930bd14f30fa17a1f52dd79cba1670b75229eade3fa0b2f68`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b39eaf507f5113daace75354e440ccf00f70796906d6955269be640ce1b26e4`  
		Last Modified: Fri, 02 Oct 2026 01:15:34 GMT  
		Size: 746.2 MB (746243874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9101c1f468d4f720910677e0be6ce5673e834de40e612ec2b461e9dafa8c03`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a732968ac39e976e7833d2c5607ca33ebab6e9f9d65197a92c4198f73279f82`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d479ca25e53aa36e98be0c96a3bdaef37135bf9d93fe71fc504b6664daee5b61`  
		Last Modified: Fri, 02 Oct 2026 01:15:22 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1377339a0d8e6aca33e4f6d73c63c2018cb62fff80a78e29fe8a848d4fba82`  
		Last Modified: Fri, 02 Oct 2026 01:15:22 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe409f76ce0ca002ed842b522f2b479006a2ef71fd16c5bce6c0259792d1fe4`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15653f1ad055e5c854730ddebef024c216c4c06a1ed0713758043fc0b1fe2880`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:2f9ad5b4cfb15ec86a4b7337a333468bbf90574c886f90dd2889dbb5cc0d7786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75863892d3457cfac6826048bf8307582c068b47a69722a932311cc303e5a13f`

```dockerfile
```

-	Layers:
	-	`sha256:174a3450c5f10d4000895a6057738559f33b1672a237bdeba2912be5c16d0ec0`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.9` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:caffde1e7003c032e7cdd264247f50b6d69cf5eb714d1e303ffab5e21b4135b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.3 MB (787282228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b87d4f2c2526683e982bba998fdfe5c4b1dfbe8e06ea0ed9f64bea0144d82f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:13 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:13 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:13 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9
# Wed, 16 Sep 2026 03:12:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ce070178588d34a08a792a63f11200c383b7c6d885f337101d13992850c282e5            ;;          'amd64')            CB_SHA256=51cd89e7db43bf5858d6b98e50c43e6217694d814fddabafdf5e798bf8460e43            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:18 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:19 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:19 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:19 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efffc92fdeda9b9d804b808e89a52fb97dbcf809ec120f80c9303d6c3380c445`  
		Last Modified: Wed, 16 Sep 2026 03:14:12 GMT  
		Size: 43.8 MB (43790785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d067fc29cd504c4a8bcd878afc63178db252178ba47f7b9720da9a801b9f7c61`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 766.6 KB (766635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca9f7aa4e52d9ad008d3036c7f93244f9b98beca38361b8dcf1ed54f7c11482`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b8d7b669c1218dfa1c76e54bc2cd48e5530f87c0bfc9380fc4fe0b545d800b`  
		Last Modified: Wed, 16 Sep 2026 03:14:30 GMT  
		Size: 713.8 MB (713776239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5676d26e2924d2f09fec1fb8fb4d336103532645a98475faf90aa460df3364c8`  
		Last Modified: Wed, 16 Sep 2026 03:14:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb652f14012d4dd2e6b357a69c4851e42f199a363a1511e16b77070a1cb574a6`  
		Last Modified: Wed, 16 Sep 2026 03:14:11 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4063be1132515dd4f8eea1876037821371647bb01ca927bee1c6e5bdefcde29`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f8f9cfb9ff3a23e3f04a3eaba34ee9a44e7a6e2468bd435c1afd69325becd2`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d4ac1c16b08a4f46570e43ea02796099c4229401c7f4dd8c0d3c009bbe0fd1`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cade27fcb43fe0239459a0f7c9e845e7f90ebb0ff1ce5932b018c5d777a23b`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:7f163059febdbf10162bd8969a999f49fc5c571083d511b2169588f3781f588a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1f9ec3133263a92f960491c941cd61bf01d9ef136bf04cd2e9d8755a321a55`

```dockerfile
```

-	Layers:
	-	`sha256:56355be94517fee798d376586d834e54c0b093a12263a278bb989736a414654c`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:8.0.0`

```console
$ docker pull couchbase@sha256:76f875d302ed1489e64d7b3a17baf88488da0f0636887cc10d3b6c2471831592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:8.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:d6fc1c0d7d6c3e2f6a2c80ccc978f336db837ffe549dc64b6ce67fceb29ae1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **867.6 MB (867556984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191cf3bdd7b62e4d247a8349452dc7aa63952df2245f557b94e8173a032e082e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:28 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:28 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:28 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:57 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Wed, 16 Sep 2026 03:12:57 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:57 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:39 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:39 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5389faf1fb8f7cc9711b4144a4fe9d3f4ae238604549adbfe5f42be44dba9d`  
		Last Modified: Wed, 16 Sep 2026 03:14:41 GMT  
		Size: 44.0 MB (43963328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacef1b47da9f0630cd15050e85843fab0d221a620ea64d86dc5e05182e6d022`  
		Last Modified: Wed, 16 Sep 2026 03:14:39 GMT  
		Size: 879.0 KB (878981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e37061d37b0d03ae45e83a47091837db0631414f2cc76cfb7b77da7a376175`  
		Last Modified: Wed, 16 Sep 2026 03:14:39 GMT  
		Size: 3.7 KB (3729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a79bfbc190933e717ad51f1906ec46d79855f2a1385fd85dc3d9163520e723`  
		Last Modified: Wed, 16 Sep 2026 03:14:54 GMT  
		Size: 792.9 MB (792943570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f041374905a2ad2b39d4f5e77179d51b95ffca771d453b0bbc551755b56990c`  
		Last Modified: Wed, 16 Sep 2026 03:14:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681900b6f931d0b3709f89c1c755c6c84d68a0481c0154f353822ec030097ba6`  
		Last Modified: Wed, 16 Sep 2026 03:14:40 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9728c0ea268513f8e89ba1eb4319d827cd7694cdd833aff85f4823f81cf57eaa`  
		Last Modified: Wed, 16 Sep 2026 03:14:41 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc60796e7e4a92a68639372e3624f3b81eee18ed2720e57281fddc70d5c203c`  
		Last Modified: Wed, 16 Sep 2026 03:14:42 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e15866bc1dc81890bdbfcb6713696b15305cb434ad88d0bcdc5e3260b615e`  
		Last Modified: Wed, 16 Sep 2026 03:14:43 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041f5ccab4de4761d87ea36e42ccdd4805da07976a67b0c07398dc5910a662fd`  
		Last Modified: Wed, 16 Sep 2026 03:14:43 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:9adc1c311fff7b6e8fe2fd919fbac2c2f98f4d080021ba8a8b0c09b75a8b7028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f35a3d33b00d23c6b2b9a299e5f7590aea01830f28c65ee66e0e3f77402e6e`

```dockerfile
```

-	Layers:
	-	`sha256:4a67f4c0397c5c0f0190a6601b3407f9dba22aec81db3399ac4184fd0f1d0590`  
		Last Modified: Wed, 16 Sep 2026 03:14:39 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:8.0.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:1e34449de85607fe8cc4c822b9ca13954e23afad45da98fb802fcfff8eeaf2b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **829.1 MB (829126167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f69a62c279a026ec2cb56556bbfa5809b5ad93f80cc5dece99486339d110e9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:58 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:58 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:58 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:07 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:07 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:07 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:07 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5428692f9b07329c63b4e86dcb00ca71ec0cab31078f910c528f474e2f5ea94`  
		Last Modified: Wed, 16 Sep 2026 03:14:09 GMT  
		Size: 43.8 MB (43791282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156469cae98a992cccac48e671eb8459501364f3883c2bc6fab0f7d4521198f3`  
		Last Modified: Wed, 16 Sep 2026 03:14:07 GMT  
		Size: 766.6 KB (766603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1320f8323b2b944df2abbbfe8c39571fe4cafd46f5a68849fe34f2133079b5`  
		Last Modified: Wed, 16 Sep 2026 03:14:07 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e2ea7876f91e7178e9878e7ba82dc75879ab379c6dae8e3ba7783c36a4f508`  
		Last Modified: Wed, 16 Sep 2026 03:14:24 GMT  
		Size: 755.6 MB (755619721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caec46d0e773a4c66ff430b513d89d99c0621955720058b46744b92f7c594f9e`  
		Last Modified: Wed, 16 Sep 2026 03:14:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06bc43e4054867908bab7a10630e2388163998fab3bc1345db7f5b2e462cd831`  
		Last Modified: Wed, 16 Sep 2026 03:14:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dba85a76497a4fc7787b8e722405a8d37f5d0123c3c20fb8a32436a7df11849`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fa78e7466864c907a23ad2ddda215043ba0f19f369d1789a3d72dcaf630d4c`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd58fb64639dbe5cbbc2f079910ce728ae82c42f958888aa2df73dac2a1c0806`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136fce27f6e4b7ffb6e14b499e8d24fc3f9e93af6163b585ccd075b0c1dac72b`  
		Last Modified: Wed, 16 Sep 2026 03:14:11 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:decc8c36db149857e1ac4288872b6bba9df130af0e5cf3dd2359613954040e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec79263b8943cd55067e28e49fb7d53b81a9472985c26c934349f90375b8cadb`

```dockerfile
```

-	Layers:
	-	`sha256:182f89e27b5e4038d6a4859f455b835a9bd5011102c5630c9472fcb0c0914cea`  
		Last Modified: Wed, 16 Sep 2026 03:14:07 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:8.0.1`

```console
$ docker pull couchbase@sha256:a3e072106ca6447daa4da1e2a81d178057ed2861ad17b6fa2c01171f1788177a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:8.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:7fda09eecb6bfb1de9d2b0356db46e9bb1fe0a4113f42b3ec97c7d6057de2907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **892.7 MB (892713323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a42f934e6009b290d652a5d1ed1e87614ab663f16855173f88050f802357e3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:36 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:36 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:36 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:08 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Fri, 02 Oct 2026 01:13:08 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:08 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=dba9dbeb2ff3928e62ebecf154353e1574e50e4e2548664ea25cb52bc2028cc7            ;;          'amd64')            CB_SHA256=194504d728e6725068a15a7e19e7b60685a3fe4c70394112e132805445174128            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:13:51 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:13:51 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:13:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060e439afbfec559975c0b4c9e05734e685d3e327052f7eaa6133b299a99d14f`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 46.4 MB (46383681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edc6dead325218debca4f692f90ba321172292ef71aaa9353781c6468a7b98e`  
		Last Modified: Fri, 02 Oct 2026 01:14:52 GMT  
		Size: 879.3 KB (879328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8a2c58731ac0770abf6ab3a0647444a2d13a8ed988a65530f03087a29d581`  
		Last Modified: Fri, 02 Oct 2026 01:14:51 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3b203d678a668381d03b54545603e521a55a8fc8406e179cb4c7204c368bb9`  
		Last Modified: Fri, 02 Oct 2026 01:15:08 GMT  
		Size: 815.7 MB (815678910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b984c21d680aac74712f5e1407a41ac124b4c772bf53debbe51697927a80fbe3`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00486eaff56b0fc0939c19eaffc2a5e879638e1b605997886384068be2a5fbae`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f727058dc7b1e10b4a277afd34eb58b86c203232bdddbc20acd9bbf9fb2353a`  
		Last Modified: Fri, 02 Oct 2026 01:14:54 GMT  
		Size: 844.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b60839ac21252935467f6b8dfdfb8c90821cb5417eda8297b9e3b5a549f863e`  
		Last Modified: Fri, 02 Oct 2026 01:14:54 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da187d1ad72e3fb578498a8641e5ea244b3b5c210d39a1bff24196993448a6ae`  
		Last Modified: Fri, 02 Oct 2026 01:14:55 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef93136c0c72c50ec20123f9e67e71d54f8f22a0657f5cfbe9c4abae73a68c39`  
		Last Modified: Fri, 02 Oct 2026 01:14:15 GMT  
		Size: 929.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:50e712b75b46d785c99fbb80183555ad1d5fd66f27a052e3e1235ebc66d88f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af7f7010df880c1633d58f7788992ccf8fbc9b281943744e2a8ba3a775c9ac`

```dockerfile
```

-	Layers:
	-	`sha256:d212451bbe4cc09de6c1dadf30c14b5525cce6b04c8c06d3a1cd0766e0eb1abc`  
		Last Modified: Fri, 02 Oct 2026 01:14:51 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:8.0.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:8077a6f622f3654e56a159bf1a32d920cd3d68ff531bdf26eb14832434acfc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **847.0 MB (847008175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41884691ccd9e2a08bd4e95b98ec6d1ccf23084728c0195e52b37497254c8b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:06 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:06 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:06 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:34 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Wed, 16 Sep 2026 03:12:34 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:34 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=dba9dbeb2ff3928e62ebecf154353e1574e50e4e2548664ea25cb52bc2028cc7            ;;          'amd64')            CB_SHA256=194504d728e6725068a15a7e19e7b60685a3fe4c70394112e132805445174128            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:16 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:16 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:16 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af770b116c1945830db9f9791d5f71c8d02fef89005c6e1264cd74a7273fcfa`  
		Last Modified: Wed, 16 Sep 2026 03:14:19 GMT  
		Size: 43.8 MB (43791044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5e02b96d3e0310689c0e8bc9bf6007fd3095b49826fafcffb392d0ac537d57`  
		Last Modified: Wed, 16 Sep 2026 03:14:17 GMT  
		Size: 766.6 KB (766646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca4138746f2d151640567cf3df7f4b4eb2b2d615e815bdb25e746dcab91e860`  
		Last Modified: Wed, 16 Sep 2026 03:14:17 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10e4c45b33618bdc31e983c0b8f221d09ccc071a20cd349f287aaa6ac531cc2`  
		Last Modified: Wed, 16 Sep 2026 03:14:32 GMT  
		Size: 773.5 MB (773501922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde896084c9e08e191b83449cff1ad81b62becd6846310166e53571ec60eadee`  
		Last Modified: Wed, 16 Sep 2026 03:14:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2672fce4c9a97b6f8bf4c8bd0fc489c06c2570954605f91326ab5a8e631eb3`  
		Last Modified: Wed, 16 Sep 2026 03:14:18 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f297dbb576f7a04732de9ab7aad268343c432316bf328653bfa0583d254bb91b`  
		Last Modified: Wed, 16 Sep 2026 03:14:19 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd2f4df41fa212b095a92555bda15ea989ee90bdfc2cbf32d5bc79db5ea8a03`  
		Last Modified: Wed, 16 Sep 2026 03:14:19 GMT  
		Size: 230.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c329ae3264fbdf13aecd974b1c9194aa55854a39f49083d1c54f653298c1b`  
		Last Modified: Wed, 16 Sep 2026 03:14:20 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cd9e4d9951270b6ebfb2a34c16ca04251bb8d740a059f13b05f208ee7c35d3`  
		Last Modified: Wed, 16 Sep 2026 03:14:20 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:74687bf01801f5948111557331cc20fffd1d1a775a46ed6d5cb643fe92b6f8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b6d31bfe1d9a488e4398346ddbfb2c0e27da946ad38a19591ccadbe8a4c413`

```dockerfile
```

-	Layers:
	-	`sha256:594d63554b4ad866ab4ba524957c5b87e7bf65b346614f973baad2cd40d96cd7`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:8.0.2`

```console
$ docker pull couchbase@sha256:280ae5733cba507a93e59236b4935d3c42da90bb7edb77f555032cfd13e8abbb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:8.0.2` - linux; amd64

```console
$ docker pull couchbase@sha256:26befc1718d6bd9d17dd3a92d8ee096cbbc2108613cacf86cd96682f67881d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **883.2 MB (883156256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d0119ed7909f0226af10f386cfb37a8fc2f09394f97f48e67dd74aa6ffe8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:16 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:16 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:16 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:12:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:13:17 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:13:17 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:13:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2d128299d0b0010333ddeb8007125c72f8c90d59a2e2082b586976d1352ac2`  
		Last Modified: Fri, 02 Oct 2026 01:14:20 GMT  
		Size: 46.4 MB (46383164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea8ac11e7d5b2f5a9ee2bf13623c172d5a6f0f78bf59bf5a2eb966a35bb6340`  
		Last Modified: Fri, 02 Oct 2026 01:14:18 GMT  
		Size: 879.4 KB (879368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772ad8602d1e71092194fd56d1fc4850b1144a400c3a8ee14d37574fcfbafa8a`  
		Last Modified: Fri, 02 Oct 2026 01:14:18 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0415d425bd60e7313d5ff810fad6bc851fdf1477d18409b545d6486a526af2d`  
		Last Modified: Fri, 02 Oct 2026 01:14:37 GMT  
		Size: 806.1 MB (806122315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570fa4b26544c24cd4a2130e541be3d8afa42b210bc3ee237e3506de1c4acf`  
		Last Modified: Fri, 02 Oct 2026 01:14:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd941c649049a0e3a4de13bd228eb8d95403bfdbd58462c3b4e9a70f29c74323`  
		Last Modified: Fri, 02 Oct 2026 01:14:19 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd10bb1bd167dae5ee4ca9fd111dfbec33d69a6f75bad72a11f01b0cee09c54`  
		Last Modified: Fri, 02 Oct 2026 01:14:20 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4023e1b9eacf1c2eb0d5c6c347c5dfbf5fbed9916735e2505831d5fbf289d592`  
		Last Modified: Fri, 02 Oct 2026 01:14:20 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48ef089dc0007ac2991d0f561b67e8084f1f938e8314bce716d291c111004fb`  
		Last Modified: Fri, 02 Oct 2026 01:14:21 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15fbbd915d63ffada177f3cbe7a3bd8e65f8acf39693fe20860f294841ace408`  
		Last Modified: Fri, 02 Oct 2026 01:14:02 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:d5fc528f729b26e6ec249b773200470fe78b8fd6968adfe666315d67fe883db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedd805dbde47aa8dddc6d3631e825fd61997df249cf8aeea910df0dfd3f92e7`

```dockerfile
```

-	Layers:
	-	`sha256:f4825ac84d648d5f41f213ab2d4e9ed0fd1b7045fcb43550adbd8b5a099fd0bf`  
		Last Modified: Fri, 02 Oct 2026 01:14:18 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:8.0.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:dd6ee7f93584cc903fee9f33681daa13357cc81c7b474ebfa59f4e522bc32943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.4 MB (837434318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587c85f7b9f3c8cbf9f5b635d58a3e8da0b36766173275861d7fc5aad5266149`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:55 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:55 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:55 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:13 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:13 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:13 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:13 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60854d68df6f1ef1d48b1959c4b29a0c8d7b1dfecf1ac4de70ffdb58f106758`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 43.8 MB (43791058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c684205eca48c26709683577d71ae8976e96f8d09f87f2c13162f65fdb7ef3ea`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 766.6 KB (766624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba3f8eeee6645a29183b467084ddcf3268dd8e574d4923036ed34105636b6ef`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0676fceafa154c9bfc07feb0bb712dfde4c933cd8e36808a23cd110522be5f`  
		Last Modified: Wed, 16 Sep 2026 03:14:26 GMT  
		Size: 763.9 MB (763928074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c848e74d6cdd36e8a73b7f89ea6cbc7608ca1d93c50acbf29b2b0aa37f8dd06e`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba32bbc9889e30b0d494d52403a4b3ae5c1985d4a5e0b7d63da8f09451a444b`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78bcc8ab134d0a0f25746e519efd5fd65cc8af79d352a7dc05735108f0f88b7b`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868af8a559d4e3cd6295cb65960f426f2888605cd4ddb43a6d2149bee913c48d`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 230.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a912d476ba0d7b370ef75f1a96944e857ad8e6b4bd628233ac6202a7599b498b`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a420c11fdd75f9a66ad1117de1761eb6019bcfe58f5f4e66fb2a604281cf2e0`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:b3656673bd5f771dc65029f063314e80f7ab5fdf57f7ab1b4daaedbed63ea9d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8592ffe49bb6b2b5ca798f127a1bd5370557ce6cd7dde1a8522b224474c245`

```dockerfile
```

-	Layers:
	-	`sha256:50c839c1cc23469faa9ec5408600f77c83875fe94aa682c25cdf4dedd9de51b3`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:8.0.3`

```console
$ docker pull couchbase@sha256:ac62628218956b196cf566c980142e522864a73de6da29b3dfdc2387b6aba68b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:8.0.3` - linux; amd64

```console
$ docker pull couchbase@sha256:121343156861ea5cf01ffbcc24acc49b02add15901a598b0df1a1c436474d03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.4 MB (921412264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3713428da61977e972f8308f22ab015433ffdbce43530c8db0b509d0e34c0961`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:13:24 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:13:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:13:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb81bfc7caf8593cf5af694de6e01974291ae8ef3b64deedee3a036084e9beb`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 46.4 MB (46383015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcef8151dd40ed59efd1a0b44ee65578efd3f68f99374a38b294bbe8fcf8965`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 879.3 KB (879317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fb80a93dcc3a91188f91577bea80c12ddf91bd77e4d74246d574b5384eb6a5`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b80f438c4e770dcecc02118cbd8001b5aaac872d96a5e895ec0402c392fdce`  
		Last Modified: Fri, 02 Oct 2026 01:14:39 GMT  
		Size: 844.4 MB (844378518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328988eb4bf756e344bc6c553bf2f66ccc7095b24b8086ab9e270bc200dd7ec0`  
		Last Modified: Fri, 02 Oct 2026 01:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e0164db3d2a72aa43608818e8979c98b5021c202a2cc049cb5dbda7a35598b`  
		Last Modified: Fri, 02 Oct 2026 01:14:25 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbdf6c3bacc2f2d9f438e94ba2919a2ab1a995d5c02bdd279516fe7c002fc3a`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:defd28c9b6ecccddcd2213b42e5d2876035265d99fb5af71cd7e0374b621ed20`  
		Last Modified: Fri, 02 Oct 2026 01:14:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db51906c6a9c803231dd62d25d2801f2064f23d9c458486fdb314e343c8e5a7`  
		Last Modified: Fri, 02 Oct 2026 01:14:28 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca33bd7065ecc7acbc7ff9e6ff01b0ab46b2b28a15d82519a3d94c2829ba853`  
		Last Modified: Fri, 02 Oct 2026 01:14:28 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:9525dd7b1e3369585346ba50c1ac74bfb0ca9839cf004877ae352783364ead02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d21a9a7d7052c1a39703415f16b4ba809afc6e80c9237fc239cccdf9aa8d91f`

```dockerfile
```

-	Layers:
	-	`sha256:41e201055c22ee33d65b488c3454945c052f76ca827d34f8049d11d2b2d2b03c`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 38.2 KB (38171 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:8.0.3` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:95e3285ecebed213813b3b2ddf0b5dd1f8a39b79f8e6c7bf07dbdf979e0b86ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **870.9 MB (870929384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a285e6cb036c124fcb3a942ca676e975d4c0ff33a7a98c9aa621b5a0fc4234`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:55 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:55 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:55 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:35 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3273815f3278d8f1142c92e06df521ecb22bba6b72a51719b38714203352c6`  
		Last Modified: Wed, 16 Sep 2026 03:16:38 GMT  
		Size: 43.8 MB (43791160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc43fa6a23023fe1ebe0ab89bce6a79c8b400551440c99596ec75cea09eccaf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 766.7 KB (766655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe8b2d1c271f019010e39c05f3a61c2aeb16e733e15bf77ddfb7e9f03f7162e`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba04dfd1d6bc08968c3d5f26ce4c8b25f6a4adabb576bf5ab029293be25efbdc`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 797.4 MB (797423001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c5b2f2ef78224c0637530238a1de46c1a16ecd8a64ac12000a60634192fb08`  
		Last Modified: Wed, 16 Sep 2026 03:16:37 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aac10786c23b6eabb3e67896799d5cb0707f030b3f8b9d186e88cefb424cfaf`  
		Last Modified: Wed, 16 Sep 2026 03:16:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82be6d021cf83666a4afa5813b94c9b8b3071a9712775d69e994bb036bcecc7d`  
		Last Modified: Wed, 16 Sep 2026 03:16:39 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c97f389182207750c9ffe8544e46c51f67cf4d0b953aa8eaaa4530911c0ef4f`  
		Last Modified: Wed, 16 Sep 2026 03:16:39 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a896a57a9372bf71ca9bbd5de04f81a2fce1bac186bd80b25065af13abb7ca`  
		Last Modified: Wed, 16 Sep 2026 03:16:40 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2dad5f6c0e0368eb58c45af37b2c97fb488354c36633be206c4fcba7fdf616`  
		Last Modified: Wed, 16 Sep 2026 03:16:40 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:39a43e9532e02dd086b1ab0ca25360af69396a496cc3facd179f77a0df2fddac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 KB (38380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55c46e187762330081c74e36d63d3c3ed0f8b1a77ffda3badd61a5e8c99f168`

```dockerfile
```

-	Layers:
	-	`sha256:18439e60773adbb51f6e6dafc242fcb9be908534d00a384522dc3266fe91652a`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 38.4 KB (38380 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community`

```console
$ docker pull couchbase@sha256:8144c36d667d1254e8b1d0610d5d9612b6ef4e9cf85e95abac8f3bcfc61b677d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:30701e71e61818596fd5ba86dad1e97a2a5361a0f384ff0b1e3777250c08efc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 MB (502488394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160c390ce3294a95fefe8516ef33af9a91a09a6fcad15e0f52430263f23b866f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:35 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:35 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:35 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:04 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 16 Sep 2026 03:13:04 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:04 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:13:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:31 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:31 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:31 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce01375d0ede4bdfddf2d8224cdc40aef3370547ad062486798db041d806d333`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 44.0 MB (43963291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a26933b413b154cd8a43be1e018893f7b5b11244e8348bb9a64cf58027d8174`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 879.0 KB (878996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac027aae5621a55c46310feaae20a900b4b2127ef950c047a41e75cf9a9b7a6c`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da549231336770110ffb0e66cec752f55218be07fdc1f0c8ef67850658a9c54`  
		Last Modified: Wed, 16 Sep 2026 03:14:22 GMT  
		Size: 427.9 MB (427875007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7339fbb481be985047688b532a4b3add10a563ba630657b76d5bb4526f5224`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a656b37764c09e612a236f487b5617cd7c78827c8dc935cad9a8a452cf6b586b`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3d97fafb07f548ed8a40a170637bd72d2dd86e6409da486aadaa9745cd443d`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b01c82df5af1065c67320311253521fea0d2c99b549ce964458a164eac5ea90`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521cb68754e8199a88a08ffa6fcf92193ec68ac4f00884398ea8f60be40fea48`  
		Last Modified: Wed, 16 Sep 2026 03:14:17 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310ac5a9a16634d4e4383e23dee194c8b1e264fefb696d1e72a3e6cc598c637f`  
		Last Modified: Wed, 16 Sep 2026 03:14:17 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community` - unknown; unknown

```console
$ docker pull couchbase@sha256:1645be0591e522460af08a73c37cf41eb2eb62c3ab9e8857afc7413a75361134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7201597f0962ec4498f526c284af797506be41cd8017bc47408eac0fc84926`

```dockerfile
```

-	Layers:
	-	`sha256:8a39acd9c56a2b758a0b09ccf306e7c3b2ba8aa565b9a34def3571e9c79aa322`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 37.6 KB (37553 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ef94852b3b7286a2c1c5290237ec555e38f6f3cf9316c6193e20beae57aca433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.2 MB (472153421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63261eae7b14277796676043a9432ed7984bee5582aa6be8f17d85a25f217b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:57 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:57 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:57 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:12:56 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:12:56 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:12:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e828680e8c8217086214d53f27d090e737f707d8c0143ecdc68b8d545965d48f`  
		Last Modified: Wed, 16 Sep 2026 03:13:41 GMT  
		Size: 43.8 MB (43790679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af6d50a4f6e2761329b8a456306354c283ba36cf6c542bce907877decc5ddee`  
		Last Modified: Wed, 16 Sep 2026 03:13:39 GMT  
		Size: 766.6 KB (766641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd5b76665e886c4e19abbfa6a1a4ec793de2c89aa0e753c549a40fd07014cb5`  
		Last Modified: Wed, 16 Sep 2026 03:13:39 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4d98f8ce90b7656e9d9a8aea2658a6e5c312812ef152af4bfc195bc5da5853`  
		Last Modified: Wed, 16 Sep 2026 03:13:46 GMT  
		Size: 398.6 MB (398647530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0985eeba419f2a5e9125fedfe3825bb8c79d2f3d7cabbb0c3dc34e8052fdeeb2`  
		Last Modified: Wed, 16 Sep 2026 03:13:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c15b64a82a5f82c79a266be5372fee013773b703db29212f4b25f4a554e8e21`  
		Last Modified: Wed, 16 Sep 2026 03:13:40 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7b1d662351793b6c838fa1e041ce21110a7d060a517bf760b739764ec0267f`  
		Last Modified: Wed, 16 Sep 2026 03:13:41 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7130514292d13f79ec9298f1b3e28e1cdd7013f23c70fd676c7b959d8c688ac`  
		Last Modified: Wed, 16 Sep 2026 03:13:41 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e20ce5e22e2fac90980913779c35ab8e04e6f6084a0d4d4e3ef67601bc3454b`  
		Last Modified: Wed, 16 Sep 2026 03:13:42 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc426680a79e6b6c23419bd541bdaf3e528e2f6e3a3bb74b0ca8f48c50ce796b`  
		Last Modified: Wed, 16 Sep 2026 03:13:43 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community` - unknown; unknown

```console
$ docker pull couchbase@sha256:5b295ae05bc1a082b3eef5a2640d330fe3afc5c870aec9851b3374a41895902b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f4469251024579de4fb243c8b0365a20969cad67664f9979a1b4dbbb68c2fd`

```dockerfile
```

-	Layers:
	-	`sha256:2dff50e4d1b8464ffdba40f5c315dc4b8b277af82869ab2ee67565daaf002a0b`  
		Last Modified: Wed, 16 Sep 2026 03:13:39 GMT  
		Size: 37.7 KB (37737 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-7.6.0`

```console
$ docker pull couchbase@sha256:1aec040966adca9d03df748082da2f6240cbbd20b3edc0efe73efa98f1cc7374
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:447e1cb5569df00f85d4dcaa762880da971d67e361e900a32a4030dc3189fceb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.8 MB (419816757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc657dd950ea3a3b3d814b597897de708c2433898b3308c8faf88ae618a6b44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:48 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:48 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:48 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:17:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:17:13 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Fri, 02 Oct 2026 01:17:13 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:17:13 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:17:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:17:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=9fee2723a019157fa6b696d5bfc011440ae96347430087f67c67a73afc1a2518            ;;          'amd64')            CB_SHA256=b6b86779b16bc5c83e86220f40c8e230cf9650f0a7deb7e190997a93d9a50316            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:17:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:17:46 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:17:46 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:17:46 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb2e6931bfcef88d62d325b67ed1f0a52bfb66f801a8cfb4a36ea563b34295f`  
		Last Modified: Fri, 02 Oct 2026 01:18:23 GMT  
		Size: 39.3 MB (39298647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76102ecfa412dcc3eb72a8f0faa132e698fdea010fe600c1ba32bce49b225a20`  
		Last Modified: Fri, 02 Oct 2026 01:18:22 GMT  
		Size: 927.4 KB (927423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8506591238b56c9abe7b157c0959a828c4bea85d85f40d6ba82b1d5a5bcd3df`  
		Last Modified: Fri, 02 Oct 2026 01:18:22 GMT  
		Size: 2.0 KB (1988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16ec7f9761fc9ea442007a521746f4bfa0d166f2d6d38c631cfd3ed3267af79d`  
		Last Modified: Fri, 02 Oct 2026 01:18:28 GMT  
		Size: 349.8 MB (349833881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dcc8049df2b38e565bdc9830903e08fa8da0b8939748d50c8b7f904ec743ce`  
		Last Modified: Fri, 02 Oct 2026 01:18:23 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632bed5762fed084167b51b13cd06338f8a9372dcaefccb72cf84791790bbc98`  
		Last Modified: Fri, 02 Oct 2026 01:18:23 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fd637c386e6522ee16e58bf9736e2894640fb25d1f0c992136c1e5eb359d3b`  
		Last Modified: Fri, 02 Oct 2026 01:18:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfdacc6803f03539422d555ca2f12a161bb141da509d7fa8b9f4a90020a6b2b5`  
		Last Modified: Fri, 02 Oct 2026 01:18:24 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9435f0a4561d148c45e143bdac81f48a0502f71d2bb18a49810b5c771739b50b`  
		Last Modified: Fri, 02 Oct 2026 01:18:25 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29cdf6378f51568e3c8e9982c5784c6818a1880dabdf58c393addb55956ae187`  
		Last Modified: Fri, 02 Oct 2026 01:18:26 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:6074ddf871861c5a21851b07960e72586fdca4b7bdd6e614a8e4064696c35a7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5fd40d93b5077e1549535593f2c7ae68d1e780d7939ee4bf6a862e1f714b5da`

```dockerfile
```

-	Layers:
	-	`sha256:30dc154e400ddae4e9fb92f2dac170a901d317a368a69733a672cbd4f3456d94`  
		Last Modified: Fri, 02 Oct 2026 01:18:22 GMT  
		Size: 37.2 KB (37209 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.6.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:99f69f58ac0d227f1e3b014a4e6d26c61116e20965906ea57ecff2436b061da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400682411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ba1e8691a1e22760042a67f6e472a9eedd0321ad81d5cc109fa8c5a1950e46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:33 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:33 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:33 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:33 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:16:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:16:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:16:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=9fee2723a019157fa6b696d5bfc011440ae96347430087f67c67a73afc1a2518            ;;          'amd64')            CB_SHA256=b6b86779b16bc5c83e86220f40c8e230cf9650f0a7deb7e190997a93d9a50316            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:17:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:17:31 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:17:31 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:17:31 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa077cc9928cfbbb496ce7201a5603b4fca3f6a008ae1b74b6c91a0a67ddd30e`  
		Last Modified: Fri, 02 Oct 2026 01:18:09 GMT  
		Size: 38.8 MB (38846801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b99f15fffd33942f558c1ecd59e0b65c25bf33b8387c1d3bfcc884d86c37a11`  
		Last Modified: Fri, 02 Oct 2026 01:18:07 GMT  
		Size: 776.0 KB (776011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4670883b10ae385116e66cc81f411cd3490fb0d5fb9409c8a763100a2ddd0485`  
		Last Modified: Fri, 02 Oct 2026 01:18:07 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85ad09aa926b14a4437eaef600399ea922fd5f39f8b6c271b0a1a198c794bdb`  
		Last Modified: Fri, 02 Oct 2026 01:18:14 GMT  
		Size: 333.4 MB (333370281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b867b785fe487865ae6af46fff4627a1dddfbe03a588081eea38c58c991c6f`  
		Last Modified: Fri, 02 Oct 2026 01:18:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d2f2393ee2a5411815817b80a13dd8b0326e1183fe69a9739c37a2fb5de5a6`  
		Last Modified: Fri, 02 Oct 2026 01:18:08 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425d2c3c9b9de837e6f4cfc16a84d7436b601833b15b097886bc65450246025d`  
		Last Modified: Fri, 02 Oct 2026 01:18:09 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e70f5eb88b4e83f5501946e4f3bd73c4b19f675b3bea0ad9eb66dc2e4f2aa4d`  
		Last Modified: Fri, 02 Oct 2026 01:18:09 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1dd0d2ea6ef1d314548d86908e926a31d58417283531630c2b4b34213f1393d`  
		Last Modified: Fri, 02 Oct 2026 01:18:11 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b3582a96a1e1044e6a3c4484a9580bcdb577c4f563dd11f9805f36ccf47d60d`  
		Last Modified: Fri, 02 Oct 2026 01:18:11 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:127b75d27b0f4ddb6ae0d33a2b179eba820c41735966d34cbcc8c30b51900a9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8558758ac19db32333553abe24b9c0d2acbfb4a4ad0444d693828dafd28743c`

```dockerfile
```

-	Layers:
	-	`sha256:e6ddf97825efed698220782a0298a85970030289c4d07fc35965753161f86d20`  
		Last Modified: Fri, 02 Oct 2026 01:18:07 GMT  
		Size: 37.4 KB (37382 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-7.6.1`

```console
$ docker pull couchbase@sha256:24da080a98deb3e94d1ab3c76b0c5d41e590bc93a49167952d6ddf147558c69c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.6.1` - linux; amd64

```console
$ docker pull couchbase@sha256:0eb113e92a6d948c25c80abd890f95bc98847577bfa1c9028fbf39479d9b8b56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.8 MB (419829523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b328093d8547a764d6bfcdfce60c7a130f052796ea22285a56b11bc3afd7cc7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:36 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:36 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:36 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:17:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:17:05 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Fri, 02 Oct 2026 01:17:05 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:17:05 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:17:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:17:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=abfd2a4d57c930be72d501af1e54612e06d9a73faf948df549c342252f1d3e49            ;;          'amd64')            CB_SHA256=c1e48a4175ed7f82532a1b2b858f0c2af08752ab83b4d084cb16d59f52437a82            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:17:36 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:17:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:17:36 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:17:36 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:17:36 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9310178529610b64cd935dd3c0fb79d579d4e318e53995ceba6213e8fa95c47`  
		Last Modified: Fri, 02 Oct 2026 01:18:13 GMT  
		Size: 39.3 MB (39298665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ced80aac207693bc3eb7259f6a0463822b019c0e45de7e4d8347f5c4958cc8`  
		Last Modified: Fri, 02 Oct 2026 01:18:11 GMT  
		Size: 927.4 KB (927420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fc48315cc20f9fbe617ac528d034c527a7ccd78081790d2ab1eb07ca9c876a`  
		Last Modified: Fri, 02 Oct 2026 01:18:11 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d81b721212b8a29e5a0612851a3c70d82a364c44f9e835ea89de75956e342e8`  
		Last Modified: Fri, 02 Oct 2026 01:18:18 GMT  
		Size: 349.8 MB (349846629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227aeeecfbca95fdcd7f5cac3f73de1d09a1eff6596b768bf07a83ca8dc962e2`  
		Last Modified: Fri, 02 Oct 2026 01:18:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93faa74e6e4f12f9e9c1ab8d4d9d6a7ecd20f319175acb12b32923abb0bebea7`  
		Last Modified: Fri, 02 Oct 2026 01:18:12 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74460378761c0e64840b308125003e913ef4412b5d2676df53b063741248a51b`  
		Last Modified: Fri, 02 Oct 2026 01:18:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52fe2313b0c83a05532ca2eb3be024811a22b354716b41bfef28c696e448999`  
		Last Modified: Fri, 02 Oct 2026 01:18:14 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2540bf555bd2f23d1b8fadb7f78fba85520c3801902dae31ec9b0bc1629a31f4`  
		Last Modified: Fri, 02 Oct 2026 01:18:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b3582a96a1e1044e6a3c4484a9580bcdb577c4f563dd11f9805f36ccf47d60d`  
		Last Modified: Fri, 02 Oct 2026 01:18:11 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:4a4f8137409280625df12dd04b7936948e9a3365d6e777d4a11694669fa602c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05c29ef1ff87f42670d0c999957d42e62cde1f7ca3872fc5c715b8e0c53e7732`

```dockerfile
```

-	Layers:
	-	`sha256:478659a6bbca8a2dfc7dc2e1535e4f12e4a269b0bb78333d563318d26fcedbbb`  
		Last Modified: Fri, 02 Oct 2026 01:18:11 GMT  
		Size: 37.2 KB (37208 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.6.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:64ff17ed690ab90d5341e0922c348222366b4f588ba6cea21f7e7bb17bc72499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.7 MB (400710513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cb7eb31752880ed73f69c3696ca3a228bfa3aa4f0ddc5ed2801d370b52ba33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:16:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:16:49 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Fri, 02 Oct 2026 01:16:49 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:16:49 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:16:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:16:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:17:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=abfd2a4d57c930be72d501af1e54612e06d9a73faf948df549c342252f1d3e49            ;;          'amd64')            CB_SHA256=c1e48a4175ed7f82532a1b2b858f0c2af08752ab83b4d084cb16d59f52437a82            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:17:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:17:25 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:17:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:17:25 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:17:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:17:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:17:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:17:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:17:26 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:17:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:17:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7606947326b2ffcaea7006426980786e5a19b4137c26be32e7385b3f1f506caf`  
		Last Modified: Fri, 02 Oct 2026 01:17:59 GMT  
		Size: 38.8 MB (38846833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e48bbe9aa51d3aa65479cfaacf943dfa51ed0955abd60f17a7326769229dc2`  
		Last Modified: Fri, 02 Oct 2026 01:17:57 GMT  
		Size: 776.0 KB (776023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56a7f9524929157f4a50ec155b02f3c7463cca457c88bfe48543232cef625d7`  
		Last Modified: Fri, 02 Oct 2026 01:17:57 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e961b52754b19a44d693de118c90db69ca501300cc754832c4d09de362766a5`  
		Last Modified: Fri, 02 Oct 2026 01:18:04 GMT  
		Size: 333.4 MB (333398337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663abed38662d3c1562410dc5277f786218f8d485fd8de2084c56ec7410207ef`  
		Last Modified: Fri, 02 Oct 2026 01:17:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d897ec0282d040ca7b540c1c3385d47e781bfa62b9ea2798b48c06a8a950e9a1`  
		Last Modified: Fri, 02 Oct 2026 01:17:58 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154eea72f3de629ca49286bf0e61c60f51d7bb53d14a6ca1c3b1aa5ed2150217`  
		Last Modified: Fri, 02 Oct 2026 01:17:59 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315c6db42bedb73e612b50dca9487df531161ce16f207075e950c15b7d27a200`  
		Last Modified: Fri, 02 Oct 2026 01:18:00 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba816c880e8c47c548c6567916148101a997983e314967ba02fb0afb8be4883`  
		Last Modified: Fri, 02 Oct 2026 01:18:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830ceabce099b71b2c2144dbf8148b207bc728c009193ca34ff0324386be336d`  
		Last Modified: Fri, 02 Oct 2026 01:18:01 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:b2f22bbd299c4c48c1996ae4c302e64f2a62d6c544a2a9e884cddaaf79a88841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9feff54f7aa48b86e9c8b370de94438c8ed3b9b889bf307ef4b03ecd71f10b`

```dockerfile
```

-	Layers:
	-	`sha256:46f260d61157ee8892fdf605b9f53f8c8fcd2adc2f37e8f1afb7850134c5c095`  
		Last Modified: Fri, 02 Oct 2026 01:17:57 GMT  
		Size: 37.4 KB (37382 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-7.6.2`

```console
$ docker pull couchbase@sha256:b189eeb7bebb141e5122064e6112e8178b459e2d639f37ffe97823d7a31ded81
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.6.2` - linux; amd64

```console
$ docker pull couchbase@sha256:45c86393b827a218ba5cce5025ffb2d3548bc4f5f1cff979601a96d5c543fed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.3 MB (439339393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37fa0aaebef8aae82b343d13c3d2aa01a9d8fc51c7a35645587e3b4dc9c7bfd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:27 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:27 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:27 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:54 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Fri, 02 Oct 2026 01:13:54 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:54 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c91d413632649ac9900c11137ddcf439b8b19852938e442a1c4591632d0da4c8            ;;          'amd64')            CB_SHA256=60c76f5ddc412b202a79ee927010cb0ede334cb7e6849429dd00bc0d7f1ffbcc            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:40 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:40 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f5789060ef68f06d8116a527fc942e0622c59d1279bbabede29c0bde64c04a`  
		Last Modified: Fri, 02 Oct 2026 01:15:08 GMT  
		Size: 46.4 MB (46383296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3a3f20eb8ab4e70330e1c19170628473b9afc9a6c9be117c39bef97b0d1f97`  
		Last Modified: Fri, 02 Oct 2026 01:15:07 GMT  
		Size: 879.3 KB (879341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8e246429e12465ef1c96ced6e47c78a55264319eb2b72bab42d2ef6ed8aeaf`  
		Last Modified: Fri, 02 Oct 2026 01:16:15 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695d24a2fbcd6b9e57ae69028cecc4869858e8995964eee83d34753b3cbaf0ec`  
		Last Modified: Fri, 02 Oct 2026 01:16:22 GMT  
		Size: 362.3 MB (362305420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d9576263b976a67879e8820e9bb81ac5555701263b01cbf84a08a4e631a6f6`  
		Last Modified: Fri, 02 Oct 2026 01:16:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2a54f29f49f04f417e92f626a91c4885a7f68856ceb42809da4b764b590f5`  
		Last Modified: Fri, 02 Oct 2026 01:16:15 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d891e9fc7855e97839171b1383a3a73b63db8838e97128c10980d95a4651a60`  
		Last Modified: Fri, 02 Oct 2026 01:16:16 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0832c6b4aa78bce402c95be20440cdd676800bbdb21a59f756e526b7fd673526`  
		Last Modified: Fri, 02 Oct 2026 01:16:16 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3e7d69dbc39661fbdd47c809ce0e90fd8d13b7b229ce3ebdebc3ebd278c2fd`  
		Last Modified: Fri, 02 Oct 2026 01:16:17 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eccf2dd057136d1d88af9df95275d0f33df57854eca2d86a287c204ebd513b1`  
		Last Modified: Fri, 02 Oct 2026 01:16:18 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:1f35b0e23009f83b0ee093962cab5f73dd06424cf866cb1bf43dea8480ad5ff8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceda91243aafc3dd44fd0e3752badf7b70d49a77469bf94b1a063939fe0910f2`

```dockerfile
```

-	Layers:
	-	`sha256:dd76069869231621737e201fe8bc5dac2c661af7accdb2194255ea5efc7aa717`  
		Last Modified: Fri, 02 Oct 2026 01:16:15 GMT  
		Size: 37.2 KB (37243 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.6.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:010441f928d5baa33f6d5fc85edacc5c01d6a026fb2ea3d8f5dfc5cd1475cdf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **417.3 MB (417337707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c486328573fbac6fd8167e0d83e7683f9ce1a5598631add2949450d5907399f3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:33 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:33 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:33 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:33 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c91d413632649ac9900c11137ddcf439b8b19852938e442a1c4591632d0da4c8            ;;          'amd64')            CB_SHA256=60c76f5ddc412b202a79ee927010cb0ede334cb7e6849429dd00bc0d7f1ffbcc            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:23 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:23 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f164082583e533ca0c788eb6c938299b5cdada5103e8ddabc447a5ffed507165`  
		Last Modified: Fri, 02 Oct 2026 01:14:47 GMT  
		Size: 46.1 MB (46056481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbbed6c86ed4de79388601994b01334067820d31e436450c2c22a6c1816dfdf4`  
		Last Modified: Fri, 02 Oct 2026 01:14:45 GMT  
		Size: 766.8 KB (766788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9838e7f8bfe2c65a197179e467df39d644a3d13e7612e693d20b99d893e6492`  
		Last Modified: Fri, 02 Oct 2026 01:15:59 GMT  
		Size: 3.7 KB (3727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657ff3f9b7301d27c3843cfac44367e0f92e14a6f2b11c97287f2579f47e6447`  
		Last Modified: Fri, 02 Oct 2026 01:16:06 GMT  
		Size: 341.6 MB (341567435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10da5dcc850d6338f661b535a2a9929a8f4affc891caaecf4dba6dca47eaff94`  
		Last Modified: Fri, 02 Oct 2026 01:15:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7417dc3afca1cda97c9d13f5952c4321742780c302e30498359fae4dea62ca`  
		Last Modified: Fri, 02 Oct 2026 01:15:59 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb4c5a7c2cecab11e607f03abc870ab43020a1eedaeb37afc3dee7a03d0a913`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9d343b0cf39914c90fa5ff4e9491952fe020e11244c4630e97bc4ce8d13b7c`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2f0a55a899fd1abac8cd98ed2b3648e53b6e5078f6bf15763ca33b9beb28db`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0364a2e4c0840f4777ab7dec34bf218f8ca1fa94c7567c0c0c36448cab0741ee`  
		Last Modified: Fri, 02 Oct 2026 01:16:01 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:e6a0a66e0bfc5a8ca1987b16079c1e46faab2a1c091d8afcdbce04d118958104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a1cda2946e832fedb439e542259e46312489b9d9ff49de71b70b1b7d6942ed`

```dockerfile
```

-	Layers:
	-	`sha256:96d3b7d1483f4219b6aae49d52cf117ee432088883eeeff4bddf17be2556324e`  
		Last Modified: Fri, 02 Oct 2026 01:15:59 GMT  
		Size: 37.4 KB (37416 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-8.0.0`

```console
$ docker pull couchbase@sha256:cd8483a6250ef06d9e8e16e0cb22f9066a335d7a36f9969d69a4b7db41577f97
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-8.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:fc4243176716d85bdc194a19417427ca3b24d2da4dba72f60ee0faf155ac5fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.2 MB (493245019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25accf41e7f96af21fc34f32dee450c852dd2ff189aec942bf91935b5316125e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:27 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:27 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:27 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:54 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Fri, 02 Oct 2026 01:13:54 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:54 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=6c3a94bfb0f5599e1df94bcfa82b45e9b1bfc6a457d0a5186ff01e0f451df5d8            ;;          'amd64')            CB_SHA256=ef4c87749b4d724362609a11aee9624cb85eefbf141e3b5dc14804749bf0717e            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:24 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:24 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:24 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11f5789060ef68f06d8116a527fc942e0622c59d1279bbabede29c0bde64c04a`  
		Last Modified: Fri, 02 Oct 2026 01:15:08 GMT  
		Size: 46.4 MB (46383296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db3a3f20eb8ab4e70330e1c19170628473b9afc9a6c9be117c39bef97b0d1f97`  
		Last Modified: Fri, 02 Oct 2026 01:15:07 GMT  
		Size: 879.3 KB (879341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43faefe90b9666208db232800871af773f0d39e99c79ec17855848e95983b5be`  
		Last Modified: Fri, 02 Oct 2026 01:15:06 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbc5b3499760274232916c8b807d9b03ad9f17c81ade34d80e7c9cd8c16fe8d3`  
		Last Modified: Fri, 02 Oct 2026 01:15:15 GMT  
		Size: 416.2 MB (416210967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b2dd3d161c3c10f2b049bb61903fc62cedbcb5f2d24f3a03e18a8f72495ec79`  
		Last Modified: Fri, 02 Oct 2026 01:15:08 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33cf8f0b1d024abbce71777835cc54e51068b1da057fcb3df9e0279a01f93169`  
		Last Modified: Fri, 02 Oct 2026 01:15:08 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ca43f85a5b89765e8f6016e609ffd5ce002ee21bba9a4de06a04d8f96945bd`  
		Last Modified: Fri, 02 Oct 2026 01:15:09 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766bbc2aaeb44002cfbb3ddbfc208c09052658db053861f366203d850c9ec74f`  
		Last Modified: Fri, 02 Oct 2026 01:15:09 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de401afe561c8993a7fbdc8deaf58b69e78c7a876ca5cb9f32a2abfd0b935b7`  
		Last Modified: Fri, 02 Oct 2026 01:15:10 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1754b361ef8fd5595814f10e17fc18003ba3448b6ba9f57602c2d4a92fd5eff`  
		Last Modified: Fri, 02 Oct 2026 01:15:10 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:364bbabceddbcaf44c380fa04241b14d8c8d2dff887115499d2d7f988054da71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0e36cb49d8be6d1c8ab1c15d2390a67e88b35baec7af5a37179ec4f783c30d7`

```dockerfile
```

-	Layers:
	-	`sha256:66de4e78684cfefc10739e9932314d831c5ea82def453f347f7e8b411875a109`  
		Last Modified: Fri, 02 Oct 2026 01:15:06 GMT  
		Size: 37.2 KB (37243 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-8.0.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:1d5536645a17aee974a74c7cd8fc2b47c7a3d64467fd7b04e0e704d92901360b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.5 MB (466472058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed41cd73ebc38a2ef17e62a637d2c0d7986d48a17f0bfb2f8d07f7044573578`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:16 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:16 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:16 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=6c3a94bfb0f5599e1df94bcfa82b45e9b1bfc6a457d0a5186ff01e0f451df5d8            ;;          'amd64')            CB_SHA256=ef4c87749b4d724362609a11aee9624cb85eefbf141e3b5dc14804749bf0717e            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:12 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:12 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:12 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036a2a6f53e7f22293a83404592ac8330a7ab4bfa628e4b9a74e9fd35b2c8463`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 46.1 MB (46056550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38de68c06891af9632ff67069eb1104b9e2a303d00d159fb435425e75020bed1`  
		Last Modified: Fri, 02 Oct 2026 01:14:50 GMT  
		Size: 766.7 KB (766737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb0053e2277028a5b1ee490e9baa7c277ecd81c885c9e7246567555e553a3e4`  
		Last Modified: Fri, 02 Oct 2026 01:14:50 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8412440cea56a52f96aee2961ed5b937e15d9bec13fd16f0be0cab835da022c9`  
		Last Modified: Fri, 02 Oct 2026 01:15:01 GMT  
		Size: 390.7 MB (390701695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9846702d7b5ca90eba812d80eb5eaca9ebd688446c2631131fbb778b74b816f0`  
		Last Modified: Fri, 02 Oct 2026 01:14:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f2c1e3f4e61284b4f25a622f8e3ddf492a453fce76b8b665d7398067a5a047`  
		Last Modified: Fri, 02 Oct 2026 01:14:52 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc21c804bc8a2b29c782c36f1d7dba4a9970a29b0fb74dcc808c50dc04708d8`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e946e213e61e2c14ac84b38fbfec1233850d816b0c2164ec60eb3abcdf808580`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96fc2cb99fd0d7f63338685214f34a245c36b351735b6871fd8982f558437616`  
		Last Modified: Fri, 02 Oct 2026 01:14:54 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0368c671a20b2f853b24db554b694314791fd969a17a813fb3b350c4400218f8`  
		Last Modified: Fri, 02 Oct 2026 01:14:54 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:484a85149e4cdd69bb8ad7c854ca2110cb1f91ad1a817b62aec40131d14d51f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a0fe9a18ddcd533d8ff84a44135aba694c2295a7e2fba1fe3b6d72ea7ca60ae`

```dockerfile
```

-	Layers:
	-	`sha256:8f2e436e859ed5a64e3a9924dd371f1649d2d2587678a70e87c347eb04305716`  
		Last Modified: Fri, 02 Oct 2026 01:14:50 GMT  
		Size: 37.4 KB (37416 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-8.0.1`

```console
$ docker pull couchbase@sha256:5d8b61a34b361c44050089c4743ba9e475cdd5fde1ba89788c7d607bd4ca0e79
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-8.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:40b5e6d6e7b60fdcf7f8cea25697f992a955b55b0afe60bc4dafa5e2836a54b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.6 MB (502626015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ff1b90451356e0514560fe377876878d67b075b6206eb61e452352fce9d9d3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:39 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:39 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:39 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:07 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Wed, 16 Sep 2026 03:13:07 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:07 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:13:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ca9aa048cb12e3d89d982c3139a4d65a94f3820691435762d34d5d1117840333            ;;          'amd64')            CB_SHA256=e4dc69cb42e0e8d8de80519f18768e0b0acc683d5e1f10c609583a8f76609507            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:27 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:27 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:28 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:28 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:28 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:28 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb096c5ba10a58efda592b1142ecb0e58dce26c77a973f47cfa8efb1cf8cc60`  
		Last Modified: Wed, 16 Sep 2026 03:14:12 GMT  
		Size: 44.0 MB (43963141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d685617598a94f60eb603a153f7c5553b0c13ce48af0fcf184a9913383af686`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 879.0 KB (879010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2b6d57c1c83ea192a80cd84c11f037124ce93af0f8ab7d1e6008fd72f72b2d`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327bbb2440507dc9589092a0dd5adaf756754e09824e9f1f1f2beef6f2c4579e`  
		Last Modified: Wed, 16 Sep 2026 03:14:19 GMT  
		Size: 428.0 MB (428012762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3045ad989c864c5a9cfa2e3637547cee25bdec6c30284ab3b57eb8b2d4bff4`  
		Last Modified: Wed, 16 Sep 2026 03:14:11 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351c03a65ce7c6355fc56be0a40cadf185fee8ff4d249b7ec09647252d7028ce`  
		Last Modified: Wed, 16 Sep 2026 03:14:11 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908683486cc1d04c921bfac64cc71eae4b9655d729299d29e33dd1c5d4bd45f1`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32bb6f3bedfbc05ae2df7544e2133d83165bff14842298780b87404a520673c1`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f50837291b638832da2a741aa505c3dca1bec6137a9c6070c7b94d3afd57b5`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:802577245fed182f77b5d16f993367563d44003a9f0f7b213b53d58983cdfe13`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:ea3e456cc93d0923ca6638fd32d1950ff09b6226ace081564ea39fc9ba5b7a20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a8dd40ebf7169685bada325750e243b556fa57866efe5b2badebc9a1aae9257`

```dockerfile
```

-	Layers:
	-	`sha256:96798ee3aa39bf88a037e71425a236d08e59452094ce51fe2ebf9d2437ada066`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 37.2 KB (37243 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-8.0.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ff6f1461cddbcaa0f89889cbfcf798022833d9649a5fddc09705bd33fdefd2fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472291762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56fe6398acbc76c7aaf7b593ba802c25c126252a33096bb57bdd6357207de4d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:06 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:06 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:06 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:38 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:38 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Wed, 16 Sep 2026 03:12:38 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:38 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ca9aa048cb12e3d89d982c3139a4d65a94f3820691435762d34d5d1117840333            ;;          'amd64')            CB_SHA256=e4dc69cb42e0e8d8de80519f18768e0b0acc683d5e1f10c609583a8f76609507            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:05 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:05 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:05 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3519de5687e6f4a01132502b34d95ebfa0d7ded203592cfdbde008049d225b`  
		Last Modified: Wed, 16 Sep 2026 03:13:50 GMT  
		Size: 43.8 MB (43791459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a282de33c95110fd741259fad13dc892789b8bb7865ea08b4c4fba21aa3e9af9`  
		Last Modified: Wed, 16 Sep 2026 03:13:48 GMT  
		Size: 766.6 KB (766621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145739f18bd16040ff48cbfe4ff6ae1d5219e87a326c0bce2988505efe5f8d2b`  
		Last Modified: Wed, 16 Sep 2026 03:13:48 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba48e0c7452ae2845367254d3a38e01474d3a55c8fef35f6f42a49882bebc041`  
		Last Modified: Wed, 16 Sep 2026 03:13:57 GMT  
		Size: 398.8 MB (398785116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d991a1acd0e48112fb58869e9e50ca1e863c3839c563273df7a527a38108e0a2`  
		Last Modified: Wed, 16 Sep 2026 03:13:49 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1b134879350e24c227a294db6387c0615f51d43481f8737ba002ad9af43311`  
		Last Modified: Wed, 16 Sep 2026 03:13:49 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97840f25b58bdfb814e04319cd26481c19f20b1db8b933ad09ff91f4695e8463`  
		Last Modified: Wed, 16 Sep 2026 03:13:50 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f32f2da095ea63857dcc10f57a25829ce9323d53f22ff2eb93b2faa501d439`  
		Last Modified: Wed, 16 Sep 2026 03:13:51 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e7b2387c86a9a2b58687e68e89dda893999c7e5c03cec93a1cc7620d007ac36`  
		Last Modified: Wed, 16 Sep 2026 03:13:52 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efd26a87d10513fa50f86b4acde8997b13f46b039f351878bdb238bd68f4a456`  
		Last Modified: Wed, 16 Sep 2026 03:13:52 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:46191823bb95403ff1ff1b393e128981fd39a82cd30e9186ccd0c9334197f2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:513fb827878f1324e1d7664e9f2e6e2981b74317d523064960a13450474aa03c`

```dockerfile
```

-	Layers:
	-	`sha256:2e349fde70859695925f5b5a610095ff0b11ff06f6a8364dc778be489f9351fc`  
		Last Modified: Wed, 16 Sep 2026 03:13:48 GMT  
		Size: 37.4 KB (37416 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-8.0.2`

```console
$ docker pull couchbase@sha256:8144c36d667d1254e8b1d0610d5d9612b6ef4e9cf85e95abac8f3bcfc61b677d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-8.0.2` - linux; amd64

```console
$ docker pull couchbase@sha256:30701e71e61818596fd5ba86dad1e97a2a5361a0f384ff0b1e3777250c08efc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.5 MB (502488394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160c390ce3294a95fefe8516ef33af9a91a09a6fcad15e0f52430263f23b866f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:35 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:35 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:35 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:04 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 16 Sep 2026 03:13:04 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:04 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:13:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:31 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:31 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:31 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce01375d0ede4bdfddf2d8224cdc40aef3370547ad062486798db041d806d333`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 44.0 MB (43963291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a26933b413b154cd8a43be1e018893f7b5b11244e8348bb9a64cf58027d8174`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 879.0 KB (878996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac027aae5621a55c46310feaae20a900b4b2127ef950c047a41e75cf9a9b7a6c`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da549231336770110ffb0e66cec752f55218be07fdc1f0c8ef67850658a9c54`  
		Last Modified: Wed, 16 Sep 2026 03:14:22 GMT  
		Size: 427.9 MB (427875007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7339fbb481be985047688b532a4b3add10a563ba630657b76d5bb4526f5224`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a656b37764c09e612a236f487b5617cd7c78827c8dc935cad9a8a452cf6b586b`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a3d97fafb07f548ed8a40a170637bd72d2dd86e6409da486aadaa9745cd443d`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b01c82df5af1065c67320311253521fea0d2c99b549ce964458a164eac5ea90`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:521cb68754e8199a88a08ffa6fcf92193ec68ac4f00884398ea8f60be40fea48`  
		Last Modified: Wed, 16 Sep 2026 03:14:17 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310ac5a9a16634d4e4383e23dee194c8b1e264fefb696d1e72a3e6cc598c637f`  
		Last Modified: Wed, 16 Sep 2026 03:14:17 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:1645be0591e522460af08a73c37cf41eb2eb62c3ab9e8857afc7413a75361134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7201597f0962ec4498f526c284af797506be41cd8017bc47408eac0fc84926`

```dockerfile
```

-	Layers:
	-	`sha256:8a39acd9c56a2b758a0b09ccf306e7c3b2ba8aa565b9a34def3571e9c79aa322`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 37.6 KB (37553 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-8.0.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ef94852b3b7286a2c1c5290237ec555e38f6f3cf9316c6193e20beae57aca433
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.2 MB (472153421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c63261eae7b14277796676043a9432ed7984bee5582aa6be8f17d85a25f217b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:57 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:57 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:57 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=2eef8f90f49cf503d258fe80307a157c996b4a4cdf3adc2810520aa38c9eb235            ;;          'amd64')            CB_SHA256=7e5eb3473c0d9d5e9e29a267357a03f67ced017b047c87bc6115dbe84aa71b85            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-community_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:12:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:12:56 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:12:56 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:12:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e828680e8c8217086214d53f27d090e737f707d8c0143ecdc68b8d545965d48f`  
		Last Modified: Wed, 16 Sep 2026 03:13:41 GMT  
		Size: 43.8 MB (43790679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af6d50a4f6e2761329b8a456306354c283ba36cf6c542bce907877decc5ddee`  
		Last Modified: Wed, 16 Sep 2026 03:13:39 GMT  
		Size: 766.6 KB (766641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd5b76665e886c4e19abbfa6a1a4ec793de2c89aa0e753c549a40fd07014cb5`  
		Last Modified: Wed, 16 Sep 2026 03:13:39 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba4d98f8ce90b7656e9d9a8aea2658a6e5c312812ef152af4bfc195bc5da5853`  
		Last Modified: Wed, 16 Sep 2026 03:13:46 GMT  
		Size: 398.6 MB (398647530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0985eeba419f2a5e9125fedfe3825bb8c79d2f3d7cabbb0c3dc34e8052fdeeb2`  
		Last Modified: Wed, 16 Sep 2026 03:13:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c15b64a82a5f82c79a266be5372fee013773b703db29212f4b25f4a554e8e21`  
		Last Modified: Wed, 16 Sep 2026 03:13:40 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be7b1d662351793b6c838fa1e041ce21110a7d060a517bf760b739764ec0267f`  
		Last Modified: Wed, 16 Sep 2026 03:13:41 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7130514292d13f79ec9298f1b3e28e1cdd7013f23c70fd676c7b959d8c688ac`  
		Last Modified: Wed, 16 Sep 2026 03:13:41 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e20ce5e22e2fac90980913779c35ab8e04e6f6084a0d4d4e3ef67601bc3454b`  
		Last Modified: Wed, 16 Sep 2026 03:13:42 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc426680a79e6b6c23419bd541bdaf3e528e2f6e3a3bb74b0ca8f48c50ce796b`  
		Last Modified: Wed, 16 Sep 2026 03:13:43 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:5b295ae05bc1a082b3eef5a2640d330fe3afc5c870aec9851b3374a41895902b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36f4469251024579de4fb243c8b0365a20969cad67664f9979a1b4dbbb68c2fd`

```dockerfile
```

-	Layers:
	-	`sha256:2dff50e4d1b8464ffdba40f5c315dc4b8b277af82869ab2ee67565daaf002a0b`  
		Last Modified: Wed, 16 Sep 2026 03:13:39 GMT  
		Size: 37.7 KB (37737 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:ac62628218956b196cf566c980142e522864a73de6da29b3dfdc2387b6aba68b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:121343156861ea5cf01ffbcc24acc49b02add15901a598b0df1a1c436474d03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.4 MB (921412264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3713428da61977e972f8308f22ab015433ffdbce43530c8db0b509d0e34c0961`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:13:24 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:13:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:13:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb81bfc7caf8593cf5af694de6e01974291ae8ef3b64deedee3a036084e9beb`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 46.4 MB (46383015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcef8151dd40ed59efd1a0b44ee65578efd3f68f99374a38b294bbe8fcf8965`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 879.3 KB (879317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fb80a93dcc3a91188f91577bea80c12ddf91bd77e4d74246d574b5384eb6a5`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b80f438c4e770dcecc02118cbd8001b5aaac872d96a5e895ec0402c392fdce`  
		Last Modified: Fri, 02 Oct 2026 01:14:39 GMT  
		Size: 844.4 MB (844378518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328988eb4bf756e344bc6c553bf2f66ccc7095b24b8086ab9e270bc200dd7ec0`  
		Last Modified: Fri, 02 Oct 2026 01:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e0164db3d2a72aa43608818e8979c98b5021c202a2cc049cb5dbda7a35598b`  
		Last Modified: Fri, 02 Oct 2026 01:14:25 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbdf6c3bacc2f2d9f438e94ba2919a2ab1a995d5c02bdd279516fe7c002fc3a`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:defd28c9b6ecccddcd2213b42e5d2876035265d99fb5af71cd7e0374b621ed20`  
		Last Modified: Fri, 02 Oct 2026 01:14:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db51906c6a9c803231dd62d25d2801f2064f23d9c458486fdb314e343c8e5a7`  
		Last Modified: Fri, 02 Oct 2026 01:14:28 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca33bd7065ecc7acbc7ff9e6ff01b0ab46b2b28a15d82519a3d94c2829ba853`  
		Last Modified: Fri, 02 Oct 2026 01:14:28 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise` - unknown; unknown

```console
$ docker pull couchbase@sha256:9525dd7b1e3369585346ba50c1ac74bfb0ca9839cf004877ae352783364ead02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d21a9a7d7052c1a39703415f16b4ba809afc6e80c9237fc239cccdf9aa8d91f`

```dockerfile
```

-	Layers:
	-	`sha256:41e201055c22ee33d65b488c3454945c052f76ca827d34f8049d11d2b2d2b03c`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 38.2 KB (38171 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:95e3285ecebed213813b3b2ddf0b5dd1f8a39b79f8e6c7bf07dbdf979e0b86ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **870.9 MB (870929384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a285e6cb036c124fcb3a942ca676e975d4c0ff33a7a98c9aa621b5a0fc4234`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:55 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:55 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:55 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:35 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3273815f3278d8f1142c92e06df521ecb22bba6b72a51719b38714203352c6`  
		Last Modified: Wed, 16 Sep 2026 03:16:38 GMT  
		Size: 43.8 MB (43791160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc43fa6a23023fe1ebe0ab89bce6a79c8b400551440c99596ec75cea09eccaf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 766.7 KB (766655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe8b2d1c271f019010e39c05f3a61c2aeb16e733e15bf77ddfb7e9f03f7162e`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba04dfd1d6bc08968c3d5f26ce4c8b25f6a4adabb576bf5ab029293be25efbdc`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 797.4 MB (797423001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c5b2f2ef78224c0637530238a1de46c1a16ecd8a64ac12000a60634192fb08`  
		Last Modified: Wed, 16 Sep 2026 03:16:37 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aac10786c23b6eabb3e67896799d5cb0707f030b3f8b9d186e88cefb424cfaf`  
		Last Modified: Wed, 16 Sep 2026 03:16:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82be6d021cf83666a4afa5813b94c9b8b3071a9712775d69e994bb036bcecc7d`  
		Last Modified: Wed, 16 Sep 2026 03:16:39 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c97f389182207750c9ffe8544e46c51f67cf4d0b953aa8eaaa4530911c0ef4f`  
		Last Modified: Wed, 16 Sep 2026 03:16:39 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a896a57a9372bf71ca9bbd5de04f81a2fce1bac186bd80b25065af13abb7ca`  
		Last Modified: Wed, 16 Sep 2026 03:16:40 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2dad5f6c0e0368eb58c45af37b2c97fb488354c36633be206c4fcba7fdf616`  
		Last Modified: Wed, 16 Sep 2026 03:16:40 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise` - unknown; unknown

```console
$ docker pull couchbase@sha256:39a43e9532e02dd086b1ab0ca25360af69396a496cc3facd179f77a0df2fddac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 KB (38380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55c46e187762330081c74e36d63d3c3ed0f8b1a77ffda3badd61a5e8c99f168`

```dockerfile
```

-	Layers:
	-	`sha256:18439e60773adbb51f6e6dafc242fcb9be908534d00a384522dc3266fe91652a`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 38.4 KB (38380 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.0`

```console
$ docker pull couchbase@sha256:410c73d6a8f58d2359944cb9eba8bbc0bccd41fe92ee0479a83d9626cbdb6595
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:2972c770462c2f9cf46ef6de42c6f27860e743654bf048576ae663e8686ea9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.0 MB (760030007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7a0e3aa1f05bca47f4c427f4e4d451aec425b09d8dc3a909833399534cf074`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:44 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:44 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:44 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:17:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:17:10 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Fri, 02 Oct 2026 01:17:10 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:17:10 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:17:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:17:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:18:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:15 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:18:15 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:18:15 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b907dd73b6dbf4e62cae4014433ef9c6caf291379a27b9985db678282ba476`  
		Last Modified: Fri, 02 Oct 2026 01:19:01 GMT  
		Size: 39.3 MB (39298683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6659afa9c7588e7eebb24ea80f658a70ce8a15d4b9e7cd58c0b30c5127bb386f`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 927.4 KB (927388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985b177d1dc9ae8def83c156e17dd3a6e9a3d5baa193118b3895835437aa54a3`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4d2bb9b79298fd37588f5e08dbc38fd0c2d97c8a399c1fc5ffb37ce9cb7c13b`  
		Last Modified: Fri, 02 Oct 2026 01:19:13 GMT  
		Size: 690.0 MB (690047128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e4a105c1e36294110e5dc7d64b5baa5e31f8078dcd574688ef3dfa15057854`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3796eb0d375c9973b3078c2d598ab1a1a0c258ba8affae38d86dafefe5653be0`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1ba90cdf653e74aaddb32dc1877390f8be56646e5337eeb2bc52bc06a76804`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2ae1a3e2dfa177fc48561325b49db0491190b087d863d6afbd9edfe65740e1`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1786e81df235ce0f6c1ec57c57590c7fdb389fc300bac2659576fcfeeb89e6aa`  
		Last Modified: Fri, 02 Oct 2026 01:19:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be37a45de01d5307bc359b68f71076a97c6d51c7dae2dd68829a661f8f6d4077`  
		Last Modified: Fri, 02 Oct 2026 01:19:03 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:d24dde70ab9eeb233899a4ea9868f580f665d3ba625c5433fce8c1f1dcf245b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6c3dec74b9e485c5e4e0790f075655ab07af0b80997fbc6679df92ace5f02c`

```dockerfile
```

-	Layers:
	-	`sha256:ffff2969fe7a0c40f56147c3c08cc54738767c9eaf0dd740e8c3593ad7d272c0`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:40590fea1fae4e53e6d9122061bfdf987aca0801bde68fcca5c77b7018901f2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.2 MB (732220361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d6cbc56f7e147dc026b6f958b87433a3eb86beb4a280b70ecb0a6388701161`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:26 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:16:53 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Fri, 02 Oct 2026 01:16:53 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:16:53 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:16:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:18:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:00 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:18:00 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:18:00 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5508c5681ee6f2b8252ff8e563e3b0790507cac3ef1d5c3897aaaa37733f9b`  
		Last Modified: Fri, 02 Oct 2026 01:18:47 GMT  
		Size: 38.8 MB (38846880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4188d8dfbc273183ac67993b1c506ad9c9710d78f1f90e90efb717c159d98cb`  
		Last Modified: Fri, 02 Oct 2026 01:18:45 GMT  
		Size: 776.0 KB (775975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9067e523c0639e2042d7972c563197cfecc23cdd8398c3d5d3252b15f6a3bd2b`  
		Last Modified: Fri, 02 Oct 2026 01:18:45 GMT  
		Size: 2.0 KB (1998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086d61d64173ba1ffbf6083955cb7ea01c5e108023a16830397fde2d7d5d3962`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 664.9 MB (664908182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e602e8b258d1a57e7aaf0670ecdba12a3da2a6690e592c0dfece4533cf794ea1`  
		Last Modified: Fri, 02 Oct 2026 01:18:46 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9647d631e1bbd0e68fc5b20e8b9d65cec594eaf4e400f1d82ff5fde03fbdf9b6`  
		Last Modified: Fri, 02 Oct 2026 01:18:46 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f10a8e7f19f1bd0d47cff19d604fe2166a18b54fa68c191163be84566e2fc0f9`  
		Last Modified: Fri, 02 Oct 2026 01:18:47 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f902897ef53c590bb6f2a139b6055c4daa0347bd9581df2428cc0b82df6302`  
		Last Modified: Fri, 02 Oct 2026 01:18:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd6ddd030fd290ce9d777730446698595d12887e3cd08369ba2fb183a8622934`  
		Last Modified: Fri, 02 Oct 2026 01:18:49 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1036428398978c5235a967c9aef71d6964b96adfb31c2e659d5b98892bb937ed`  
		Last Modified: Fri, 02 Oct 2026 01:18:49 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:b2ddd5cffe5f84f1c285ca7629b6c6c94e78f56dc11b693a425472906aaf7849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b203fa1e2ad91bebd6795d7d6103b58128b5c8e3c8f637d7e50a2993dbff1b19`

```dockerfile
```

-	Layers:
	-	`sha256:bb4395bdd5bead8c815b152b3b825ef5f0cf35defdbf1ca7c75c4dbfbe227669`  
		Last Modified: Fri, 02 Oct 2026 01:18:45 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.1`

```console
$ docker pull couchbase@sha256:fe25001d04b39136667d821daade494383e342cbf251dfb9339d166541f1faa9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.1` - linux; amd64

```console
$ docker pull couchbase@sha256:58476cd8334699c0fc7bf7f9c9c5bf9c2c625a42ad581ed1c2acd9814b93650c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.1 MB (760055793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc67815dd39de95ea48995474a1a57c9c3f7854d3915942a1284562aee37f73`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:29 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:29 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:29 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:16:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:16:59 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:16:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:17:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=785f9d1f17ce6cde779f361adf0a0ed5f0bdaa78a1a4ab1c70b289d109b59709            ;;          'amd64')            CB_SHA256=12f1a671c28f12d946b9f39fb5cf7fe7c32e51fe30e0045d423b25627367be54            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:18:05 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:18:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:06 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:18:06 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:18:06 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51602d15e6192e64f244d5a31e9cd3cc46cb30db9e17582c787b35e3a0bf2e4`  
		Last Modified: Fri, 02 Oct 2026 01:18:58 GMT  
		Size: 39.3 MB (39298684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9679ded0f54de163f5181dd1e19f572f890228a32b93e88203179b26695a8a7`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 927.4 KB (927393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbe4f8b10922f3ed9a17c56bc72c1797ea275bf1c05a2d690c82dfd2ce8856f`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e216a06763eeead61ae7abb7e5267250b733442dd6477cbfaa22d315b4ec50f`  
		Last Modified: Fri, 02 Oct 2026 01:19:09 GMT  
		Size: 690.1 MB (690072903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4bab06489a15df48a52a48cd92a3f7deda2d07ae5700e63efbda0a879997b30`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a7fa877ae6def38817c764a3dc6580e94b74f36a34f0018068ba0e15219a30`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ecc05f65ab5262e46723f90d125d654df9e517a059d5e3c5e27be7140f1099`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f568489e0e3f865cc256a6e05520c95be810c905c119ca5e72a41e9f70c85989`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697a7fb31d0edc1889f5b0f43276582b57efe3e66183fc881de3912e7a9549fc`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa700aa01f0d0d22137d8c2be55392471e3358a5f06b9b2de6d54386ba37caf8`  
		Last Modified: Fri, 02 Oct 2026 01:19:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:5034a85ba3d66d229eeb82258d33d035367013ee3430325d07e2a377b8932a6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15146a06e1a4df8fba7d8bddc348414b2fb40067f78bfca41782da97c6f078f2`

```dockerfile
```

-	Layers:
	-	`sha256:618da42f9b80a91f5f68fd59ac3e6270bc0d02f93bbb672fef7cb7561184cc28`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 37.5 KB (37521 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:22ef09f5d71308a80e219e15222d2ce9fac32357a01af76be799603c8aeacfc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.2 MB (732230330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53f4078173ea77eace0594a590bcef96629db67b795d6869fb79ef105d4ef8f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:16:04 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:16:04 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:16:04 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:16:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:16:33 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:16:33 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Fri, 02 Oct 2026 01:16:33 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:16:33 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:16:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:16:33 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:17:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=785f9d1f17ce6cde779f361adf0a0ed5f0bdaa78a1a4ab1c70b289d109b59709            ;;          'amd64')            CB_SHA256=12f1a671c28f12d946b9f39fb5cf7fe7c32e51fe30e0045d423b25627367be54            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:17:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:17:35 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:17:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:17:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fedb593a67414982188fe19defe9a9b8c0b78757413aabcb9c1b6ea00e034137`  
		Last Modified: Fri, 02 Oct 2026 01:18:27 GMT  
		Size: 38.8 MB (38846801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaac82af6caf2ca0007b1afac57f6a939821cbb84bd2de1e51574fcfd9f4f3c5`  
		Last Modified: Fri, 02 Oct 2026 01:18:25 GMT  
		Size: 776.0 KB (776023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b9cabca9b6964bbc41205cf56c1f640a83531db79d27b956d3a43b5a86109e`  
		Last Modified: Fri, 02 Oct 2026 01:18:25 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3476d0907f976a89b08845ec532feac468659e2c8de66523e699b4400d88137d`  
		Last Modified: Fri, 02 Oct 2026 01:18:38 GMT  
		Size: 664.9 MB (664918189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0a6913663a29328b671d1fc2920c654d9b2e6fa949fb44b4211604a5182e68`  
		Last Modified: Fri, 02 Oct 2026 01:18:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bc12f480cd3f9701cfdd670fd4faef11b75953f9f5dc333a0b5c81982b0458`  
		Last Modified: Fri, 02 Oct 2026 01:18:27 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d0ac06fe8aa7894456944b455f2f3b8a97c964c04e335a3e3e5d4226fc0f8b`  
		Last Modified: Fri, 02 Oct 2026 01:18:28 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9db9dcca5065db2a21e865e4e12595edfcf552aa4cf960f0f429dde204f063`  
		Last Modified: Fri, 02 Oct 2026 01:18:28 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67de2c5a0513e34313ba32e0b001a2d77e3ab1ccf70371ff37953b4562ee83b`  
		Last Modified: Fri, 02 Oct 2026 01:18:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4399e580fedbc775ba62dc2f4634c3c482d29488585f6a6e244ef66f9d6d0432`  
		Last Modified: Fri, 02 Oct 2026 01:18:29 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:27ada8f665dd8e7a90f839802fd225383e29ce3acdf5df9efc563566cc9480a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9407da9b5f33abb02530c157a7536c1b85392515ccbee0e199e0ee6507c9af99`

```dockerfile
```

-	Layers:
	-	`sha256:2fe4afea04b724c98c358e0aa4881cda3d62bc60c82f50891783500af9f2199a`  
		Last Modified: Fri, 02 Oct 2026 01:18:25 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.10`

```console
$ docker pull couchbase@sha256:5a525308f6129320957feb71826bfcdfa97240be3af4cfc9b92addadff3ff6c7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.10` - linux; amd64

```console
$ docker pull couchbase@sha256:d010f6a02d0fc64d7987ab61df52a0fd4d96ffb88911ec1a9176645b7e236fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **834.2 MB (834199410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09517424afffb4af8d376e74be389f89f63333295f41f25cccc6fa65681a0573`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:36 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:36 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:36 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10
# Wed, 16 Sep 2026 03:13:06 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:06 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:15:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=680d6833172db7691aa0f9562aa50e044214f97cd8a785b410e828a840ce38bc            ;;          'amd64')            CB_SHA256=80938b3c86eb4cf412d9eb80b6494d96d32ce90555dc8536e0fb44a884f453ef            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:54 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:54 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:54 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3894adfdae8be1e726b7c61461d7298d1da95b318433f13585af76aded6d3893`  
		Last Modified: Wed, 16 Sep 2026 03:14:51 GMT  
		Size: 44.0 MB (43963447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07142c60d829a35e3baa822dd81cdcfb5ee171c7217e21223c5c4773eadb26f`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 879.0 KB (879034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3ea0117fcff5d2e43b2af445be853e945929bb107e1fa30d3c34112225c721`  
		Last Modified: Wed, 16 Sep 2026 03:16:53 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78356e55443713b427602e2a0b7f8a5d274abf2a5f878a931196a5efdb54eea7`  
		Last Modified: Wed, 16 Sep 2026 03:17:10 GMT  
		Size: 759.6 MB (759585825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69287b58392ce592f38f3747ffde17e968286877e3a60ab97113e6198a68cbaf`  
		Last Modified: Wed, 16 Sep 2026 03:16:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5464886a09354daa412d824152bffd6c78bc64c050437155761f51f01bd0d7`  
		Last Modified: Wed, 16 Sep 2026 03:16:54 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b648b3d3841e82fd5fc218eebb6e944c692c9736d9591365059b55e88c263a5`  
		Last Modified: Wed, 16 Sep 2026 03:16:55 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9be3ec82f433d7c307550829f70cb2458c9b4d9e0fb95ca6c52ba5e7ddddd0`  
		Last Modified: Wed, 16 Sep 2026 03:16:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e916e25f4d91eebe326c1ffdab94e91db8c84af3b5c20a5660c9e66bf23b9b`  
		Last Modified: Wed, 16 Sep 2026 03:16:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f707ee120bb56d2657bcc6864423f2ea449c7fa6b389ecb68a070518b72de53`  
		Last Modified: Wed, 16 Sep 2026 03:16:56 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.10` - unknown; unknown

```console
$ docker pull couchbase@sha256:63b077f594e096f117ce7a194afe81bbcf9c3b8826b24ea1159722039016a513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31ae997dbf7ba0a3d8dd45cb3fcd6e318bfdfb71690b90ce2da4a9dea15bf2d8`

```dockerfile
```

-	Layers:
	-	`sha256:fc63d88a45bdcf425d7715bcaf3d444ffbd9898a1356a084c490826f04373526`  
		Last Modified: Wed, 16 Sep 2026 03:16:53 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.10` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:a93ad6adceb0dc0c74fb32a174acb0371ae4b64b6beb7c503d3e0172dea6b28b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.3 MB (799325484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a525c54c553e5e37d8c382a38b499fa77f83810edf946db972d5b774a057c54b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=680d6833172db7691aa0f9562aa50e044214f97cd8a785b410e828a840ce38bc            ;;          'amd64')            CB_SHA256=80938b3c86eb4cf412d9eb80b6494d96d32ce90555dc8536e0fb44a884f453ef            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:16:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:16:11 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:16:11 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:16:11 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cfef94b6d94851b9f13aa7791dea52ed3a9f0196f47c7e35c0ceb165376896`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 46.1 MB (46056556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728d43abf81d0ba7bbac8a05f98d79c890eadba90da911f2c827ac1650eddc86`  
		Last Modified: Fri, 02 Oct 2026 01:15:22 GMT  
		Size: 766.8 KB (766797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3de94ec1e4b0f283f411dbe5fe1deeea8c2e6943fa2974c9ee81ee3e1c0a2a`  
		Last Modified: Fri, 02 Oct 2026 01:17:02 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d114ac2b16a7d1f6fd3235231a1ac5da92ca593d9391ccf51944546bea3b0f`  
		Last Modified: Fri, 02 Oct 2026 01:17:17 GMT  
		Size: 723.6 MB (723555055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301bd4c8732dfa18ae9bb4ca8866c68be084bdf1ce7585635838122b6e964d14`  
		Last Modified: Fri, 02 Oct 2026 01:17:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c05fd0ecadd6df47696f47849a89589f54d36adc2c2508f4b94ab51f5937b16`  
		Last Modified: Fri, 02 Oct 2026 01:17:02 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a7d8c3415f6bd736990cf476041f75c6ed512805101aeb18eb3a3cfb3209df`  
		Last Modified: Fri, 02 Oct 2026 01:17:03 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2dce71347b3a43694880c14f8c0eb53f41e6bd26298c4d098a488edf467dd61`  
		Last Modified: Fri, 02 Oct 2026 01:17:03 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846cf98c540d136d9209747dcadb2060a0a637f1068376eccef9d4ef0e092414`  
		Last Modified: Fri, 02 Oct 2026 01:17:03 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c50acb4ba0b02aaa8e862621253a41ed770cfd5c89ef2dc6290d818df0b58d0`  
		Last Modified: Fri, 02 Oct 2026 01:17:05 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.10` - unknown; unknown

```console
$ docker pull couchbase@sha256:98b541516585ea8d8b8fcc778348d71a50b63f6914714c61a68742ad2fbe0dbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e0d679232d0e712fa6246887eca9cdc8c74439706f76adc2271c2034d3fb71d`

```dockerfile
```

-	Layers:
	-	`sha256:132783fabef70fbf6943ab26a075fe204fbbbc02301373b63b9143bde9137962`  
		Last Modified: Fri, 02 Oct 2026 01:17:02 GMT  
		Size: 37.8 KB (37763 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.11`

```console
$ docker pull couchbase@sha256:f2bf2958fe63aa5ba83bda7b72a334e0387331e3dff754066820de5c4424272b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.11` - linux; amd64

```console
$ docker pull couchbase@sha256:ab016a2940d943cc1b0fd78cb7b6797587fe2d5bfab9fa1d797b17d7101f2664
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **855.7 MB (855740614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8124fea7fafd32363829e7181747c456900736a2468b639408b6f580ce934284`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:31 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:31 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:31 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:02 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11
# Wed, 16 Sep 2026 03:13:02 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:02 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=802192fbfb596eb954f8de21597d83d26e9af60ff03e911f0210e441d9be5f19            ;;          'amd64')            CB_SHA256=a9dc8eb353e7e05c22a60d31330e9712954905012dd32eb4cea0fdbfb1bdbaab            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:51 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:51 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5501135d3104e58ac220103d23be85dac354a56e371e093bc4c195594c746b06`  
		Last Modified: Wed, 16 Sep 2026 03:14:48 GMT  
		Size: 44.0 MB (43963140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56c61a0fab652ddd81cbb78ec686d261361df7b85bc622f093895bf65bb455c`  
		Last Modified: Wed, 16 Sep 2026 03:14:46 GMT  
		Size: 879.0 KB (879015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba983d306961c648fdd94fb9fbcc0f3dce06d8906095c65d3b10f83f671a8ee`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807d55b4e73bf6575aa79fa9d4e7842ef3dad586f9ec7821dccf7f4339440255`  
		Last Modified: Wed, 16 Sep 2026 03:17:04 GMT  
		Size: 781.1 MB (781127350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315e8b57123a880ae14faa8e7b7a22edc6fc6a83d244e28711df8c026667b8b8`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631fc7d21f39f7fa5ddd83beff6a01ada44a817dc103281a10ad8daa52f2ab4c`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a117b26ff14658f3e18522165e14704671f3b4ef0377f988cfbcd09ad84be62e`  
		Last Modified: Wed, 16 Sep 2026 03:16:52 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd80ef7c81b9afdabde3ca9f7c80d93188918512be1b6c9c6e1aa84f67230c3`  
		Last Modified: Wed, 16 Sep 2026 03:16:52 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eef08a4ca283a66a813782e4afe0b02665fd4f19dbd2df7c48db038d68545a2b`  
		Last Modified: Wed, 16 Sep 2026 03:16:52 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ab8e3f73fd98e71d2aa8a7bbf28714378e22666b4c36da12ca6170bc53dd08`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.11` - unknown; unknown

```console
$ docker pull couchbase@sha256:13be2ee2035d6986cf548fe657fab063dab442f7aedc73830e97bf60865fda3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e98021ef2052dce57a565230aff9a4fe9e98718ae86c39d7e4b8d608e572ab`

```dockerfile
```

-	Layers:
	-	`sha256:931eb1189403ea9ccac122577b8f26766bd6a1c6b0bde60effbc8b73c017a06d`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.11` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:c6092cc73397dbd1e32cdad2affa26b56cd18092c23caf8888feda27707df560
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.0 MB (815990452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455a62ad6cd4cf958f50de8ffee662cc2fe14013e40b2a43b51cd14480c2ce0c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:23 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:38 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=802192fbfb596eb954f8de21597d83d26e9af60ff03e911f0210e441d9be5f19            ;;          'amd64')            CB_SHA256=a9dc8eb353e7e05c22a60d31330e9712954905012dd32eb4cea0fdbfb1bdbaab            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:16:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:16:23 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:16:23 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:16:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b665f11ff944a79e9b4c1cb9334bea9659e81e8898c2335cb517b92bc899ec9`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 46.1 MB (46056381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6a95cd611728188c9f1cc3781c00cc550b27a0861d088dfac3ed1b64b7ad01`  
		Last Modified: Fri, 02 Oct 2026 01:15:19 GMT  
		Size: 766.8 KB (766813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e126e8321f720ec5dfde37c45cf33724d3933686b10f8d9c029488d82927c9`  
		Last Modified: Fri, 02 Oct 2026 01:17:13 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac431672abb4290fefe0f7dfe1c931d3e96a6b6bf112b979320eef985b6455d`  
		Last Modified: Fri, 02 Oct 2026 01:17:27 GMT  
		Size: 740.2 MB (740220184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18defd6d2c85a4ad8cfddad4bcc30d3fceb0bae373d49d5d9bc48d05b924dd92`  
		Last Modified: Fri, 02 Oct 2026 01:17:14 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75f0433b94bef5df9b5ed3bfd1e9917d9e19c820db95fc17b8add671a66cd21c`  
		Last Modified: Fri, 02 Oct 2026 01:17:14 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fce3863acad61b7830c9e42a147bab6be82f2de6b9b757fda33fd386f6f8e6ff`  
		Last Modified: Fri, 02 Oct 2026 01:17:15 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40dbbe65efe1226853bfd48a09bdd0d912d29e4dc33c99e6148a1c53453c7f9`  
		Last Modified: Fri, 02 Oct 2026 01:17:15 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c440cb1febcbe20e4b5a4413ecefbb6e1c99f29de0872dcc8e6654270aa452e9`  
		Last Modified: Fri, 02 Oct 2026 01:17:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7749a9a383a050d38f9f78f69e73bb92663538088799c2151bf46d4145959fa3`  
		Last Modified: Fri, 02 Oct 2026 01:17:16 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.11` - unknown; unknown

```console
$ docker pull couchbase@sha256:e40a85c59989527262059228fc88e22833adf73f463b47c0d0eb61a836c078f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078e769d99fdc472f0e19daa1896342052e096783660bfbf8d7f65827941590f`

```dockerfile
```

-	Layers:
	-	`sha256:e91cec19629634d3cf5a8ce00a952955af08c3568d6490ed2c5a28ed5d1daeb6`  
		Last Modified: Fri, 02 Oct 2026 01:17:13 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.12`

```console
$ docker pull couchbase@sha256:9cc06172185405194d7958cb45c563f4c19fb4ee304e1120e7c48d7577c72fe8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.12` - linux; amd64

```console
$ docker pull couchbase@sha256:f9aaee85d59af6aade19c1b3971887254efb93b09ac98c177c75321f9bf4e6c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.7 MB (879669544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f950459be25ef6b8a935d14d75a0b388fdb92309b2d9c5b83c0a75869d5c9cc4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:50 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:50 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:50 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:35 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd15c83d65470bb29518f9d122fa988d5904d05956d3144c0f1514e9358a0c9e`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 44.0 MB (43963039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa388dff340704302d49becb316e859ae36c71099567abda528ffa12b773c90a`  
		Last Modified: Wed, 16 Sep 2026 03:14:47 GMT  
		Size: 879.0 KB (878979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87871e167812bf80b1f2f42b58e798c34a132eb2e9174cd51c611351af256d59`  
		Last Modified: Wed, 16 Sep 2026 03:16:26 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a190154a9de60b033e31a6bef5904dd94b170b0680ac6f09816ce96dc6a59ea2`  
		Last Modified: Wed, 16 Sep 2026 03:16:45 GMT  
		Size: 805.1 MB (805056422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6735d80e1cbc665195d48898dc580ef2f523ed512c86cd9444da4251ac10d70`  
		Last Modified: Wed, 16 Sep 2026 03:16:26 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f7ad2405dd6d3206eb193dac8bf4f6bf1939c0df67b4249bf2e568ac302c8b`  
		Last Modified: Wed, 16 Sep 2026 03:16:26 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5027b372574adea4794030852f420715425d18285a395c8a795a8506f5206e1`  
		Last Modified: Wed, 16 Sep 2026 03:16:27 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a398dac3a66c0d1155c7f624240c3b873005ae732078f634880468437dbffe38`  
		Last Modified: Wed, 16 Sep 2026 03:16:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543af9e76c9dab40127be5d192c5aee0ade8732aa54e60fd870c507ee208325c`  
		Last Modified: Wed, 16 Sep 2026 03:16:20 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ab8e3f73fd98e71d2aa8a7bbf28714378e22666b4c36da12ca6170bc53dd08`  
		Last Modified: Wed, 16 Sep 2026 03:16:28 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:313a2bed932d381075ce699de2b84697c3c293912f2222465be1bd6093ce22f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fd31791694318857e67b36e691b607efc8f8d7884ff0150ce7c046448493821`

```dockerfile
```

-	Layers:
	-	`sha256:e731a7206b0eb002935d43be613a3e1155d2b5330f47fe580521113c9eca312d`  
		Last Modified: Wed, 16 Sep 2026 03:16:26 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.12` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:59b8b863b7601b43d76ca3f8b34f1907a39196a1d479df70c322eedf1fb812ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **839.5 MB (839530996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2a9c920e5d30444a8a905adff292243681065bf3d3cfaec1585941d83dfb739`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:16 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:16 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:16 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:43 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:50 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:50 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:50 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036a2a6f53e7f22293a83404592ac8330a7ab4bfa628e4b9a74e9fd35b2c8463`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 46.1 MB (46056550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38de68c06891af9632ff67069eb1104b9e2a303d00d159fb435425e75020bed1`  
		Last Modified: Fri, 02 Oct 2026 01:14:50 GMT  
		Size: 766.7 KB (766737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82395568121c8764fb96e1954742bcf8789cfe66ee0d52b02e91755253988722`  
		Last Modified: Fri, 02 Oct 2026 01:16:42 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5565f9e214ab34535689c84658f160171e40a4d4548877560498e6553c017b3`  
		Last Modified: Fri, 02 Oct 2026 01:16:56 GMT  
		Size: 763.8 MB (763760634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216c3edd10b69cf160fcacbd70e8f3346ff4fe65353f6828b446d0dccd48ce87`  
		Last Modified: Fri, 02 Oct 2026 01:16:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d524bb5b9163661de8272b72ff767c6489266373338c8c3804a72dd1878a0621`  
		Last Modified: Fri, 02 Oct 2026 01:16:42 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308caccaa53148b931520c1214ef5a41120f0ea1f1accf50a7d8ece5a2d0b430`  
		Last Modified: Fri, 02 Oct 2026 01:16:43 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ee3e42c6c375cd5d59b63cb0f5e7785e78bef897c7ad471fbed04299ef6e426`  
		Last Modified: Fri, 02 Oct 2026 01:16:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e75f2ba4fd633aadbbdc5e7767d976dfee3a6af6dfdacc3d20be76235935d9`  
		Last Modified: Fri, 02 Oct 2026 01:16:43 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:800922ce88b94d5951ca12b4e0d2d2690c2599bf32bf9503af933423e0e20bc7`  
		Last Modified: Fri, 02 Oct 2026 01:16:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:2bec56a94a53ba22d53aceab4446b896088ae9739b28debb7668e46d3dda62c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a205632eb26d6b97ce39b130b3b13a58ac24cb3112926983d6829dfba4b11173`

```dockerfile
```

-	Layers:
	-	`sha256:f0a60017725d8e65a7bdd2a6e611f0d9100bdafa1b4044edf438ebec08795784`  
		Last Modified: Fri, 02 Oct 2026 01:16:42 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.2`

```console
$ docker pull couchbase@sha256:3d41471d6be3b077df10b898a0006868b4ecda871ecff432a68a5261e6fbcb18
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.2` - linux; amd64

```console
$ docker pull couchbase@sha256:93d318e990a144296f4b6126fbc3e915c911d395f1ed8655c6524201de088fbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.9 MB (773902851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92592732f04f6c87176cd5395467f8025d5b658b66f507e7dd7eedc154c45285`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:21 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:21 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:21 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:49 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Wed, 16 Sep 2026 03:12:49 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:49 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:15:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c5697f6f2bfc21bc696f27d86e6f01b92e23ccbd3213e524c910c10d7bcab3fb            ;;          'amd64')            CB_SHA256=05fd37139aab8f3538ddfcf04eec97bd27654a5279468dce79dfad0f605bd784            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:42 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:43 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:43 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:43 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2096c8e020e7af114daf40b31829662ccce65ff2ff497625e8fc761974f4d4`  
		Last Modified: Wed, 16 Sep 2026 03:14:40 GMT  
		Size: 44.0 MB (43963344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f7f3bec2e635937167bd43d06d7b4affea52bbc15ab90c7cc7faf5bf564424b`  
		Last Modified: Wed, 16 Sep 2026 03:14:38 GMT  
		Size: 879.0 KB (878973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff3942ec346be41c4dcc89c8a1b391f3be36a7faf9ec2c15a84679d9a4be608`  
		Last Modified: Wed, 16 Sep 2026 03:16:33 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7300b6dfa8bdc81a0031f56b486b361f8d3b7f5457dc72844c05676a9483dd8`  
		Last Modified: Wed, 16 Sep 2026 03:16:46 GMT  
		Size: 699.3 MB (699289503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42358a15bd13e0bf5476780e0dd0f555540a86250071337b573012a270415170`  
		Last Modified: Wed, 16 Sep 2026 03:16:33 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29972ae5766aa89613c808dcb372e537448ab25da92ca36bfaf00c0c7d307e2d`  
		Last Modified: Wed, 16 Sep 2026 03:16:33 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e498ffc10fd67e214fc7557ee638216f203819b85e66bebdcf2f03e922dfb0c`  
		Last Modified: Wed, 16 Sep 2026 03:16:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064d053358d81759465449b2e5437a44c4f0140a6e80ddde1c42323a0d8c27b8`  
		Last Modified: Wed, 16 Sep 2026 03:16:34 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e84eb9bd152e109f34c8ab95dfba2daf05ba66f5928e4feb01b1ef4556533f4`  
		Last Modified: Wed, 16 Sep 2026 03:16:35 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2320ff0780a8c85da0699c92844f221cc769083b1e619646e7e02224a88fe5`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:37d119bfad16c228d407ed9b26d7d3a5af1f88373b15cafc56674274316ffd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63e264a8b2e7958704b5ec3c1e928140023636859319eff128aa89f86bd1fea1`

```dockerfile
```

-	Layers:
	-	`sha256:36688612a2fd0a764634136d30726fd5168c317c99a32b7fa3ca8715b63a77ac`  
		Last Modified: Wed, 16 Sep 2026 03:16:33 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:c511e7d970165053c649799dff5724fc0fd8bf4bcd29fa4344defaa0dc364524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.2 MB (749167038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de24becc00c94df4f7f351308561c0cd5655fb722e3519d49014e601f3e5b4d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:26 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:55 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Fri, 02 Oct 2026 01:12:55 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:55 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:15:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c5697f6f2bfc21bc696f27d86e6f01b92e23ccbd3213e524c910c10d7bcab3fb            ;;          'amd64')            CB_SHA256=05fd37139aab8f3538ddfcf04eec97bd27654a5279468dce79dfad0f605bd784            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:40 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:40 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154588d0ab6591780306c3326cb2b4b3e98e017b0f7db6d421a210bf76508a08`  
		Last Modified: Fri, 02 Oct 2026 01:14:42 GMT  
		Size: 46.1 MB (46056596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:200c310b6d4ad48f05777ee38d22135aa67e07427e056bebf057d196adcd76eb`  
		Last Modified: Fri, 02 Oct 2026 01:14:40 GMT  
		Size: 766.8 KB (766810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdef8b420af3c1518c56343378219eb5681ee7a5a8b226c3efc4277ee83232b`  
		Last Modified: Fri, 02 Oct 2026 01:16:30 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb5b71449a98c95d3920f58746fa9d8b0bf5853d923c66373764c772423c47a`  
		Last Modified: Fri, 02 Oct 2026 01:16:45 GMT  
		Size: 673.4 MB (673396633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b76d87261302a657af9876e2ed01608982714d6f7c5e6d8003b1d9f4b6ec49`  
		Last Modified: Fri, 02 Oct 2026 01:16:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3735206311dd306a1d3c725e025d0a5cedfb8cdc903b3b726f6e7590edcc7238`  
		Last Modified: Fri, 02 Oct 2026 01:16:30 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b254dc84405b478a46c251993a0785e75cac45df45c0cd556c1bc65269a46b9b`  
		Last Modified: Fri, 02 Oct 2026 01:16:31 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bad9b767cd058727c82823b4483147114194bcc41c040db540669ce9deb092`  
		Last Modified: Fri, 02 Oct 2026 01:16:31 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215e7dedbd5f017117e0242bf5dd2c96801fe305baa4338f8cebd4e524135554`  
		Last Modified: Fri, 02 Oct 2026 01:16:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8aa7bc8167acb2bb932c3079c134339b04c45c93610fbb5e5b9ca3d57b8909`  
		Last Modified: Fri, 02 Oct 2026 01:16:33 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:9bba47c91ae219bb714ae6cca3a8f3a5506de3a1b7dceafda63c717b5ed05df6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436d81d0411d6ca9d3ac7b6293c989d9d15ecc6a8112aba32ca2d23d455c14e2`

```dockerfile
```

-	Layers:
	-	`sha256:1986935b23a8ac0f7e4c652e3296a808a0977a1649207c8b99c85c6e9628f63f`  
		Last Modified: Fri, 02 Oct 2026 01:16:30 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.3`

```console
$ docker pull couchbase@sha256:897dcdd55c459848f889cceefa6da83c296db1544aab37368c025010fceb700a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:524a8fcb90394468d82dc43e742af1db1f2fa8d71778ce93843fa023ef76008d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.2 MB (776223639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5e7be53ccc67496b38e5da846e55d1e1f95fcbb2a3e7a9859f7745a8425a60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:45 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:10 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:10 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:10 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb81bfc7caf8593cf5af694de6e01974291ae8ef3b64deedee3a036084e9beb`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 46.4 MB (46383015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcef8151dd40ed59efd1a0b44ee65578efd3f68f99374a38b294bbe8fcf8965`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 879.3 KB (879317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0016d36993641db3585158e262832c81c8553d942c64b1a6e5b46d773b8b95cc`  
		Last Modified: Fri, 02 Oct 2026 01:15:54 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e6c97b63d037ce329f208640573f177e460c7a17d0f169550cce91c0cb984b`  
		Last Modified: Fri, 02 Oct 2026 01:16:17 GMT  
		Size: 699.2 MB (699189904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebb0a5e60d199e764087969ed16faed3ba5c81f8189510b168ed75cc33b262c`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c070878535b872b1cb7e93c612e8dad357a489ced53dae0be68e5acf877543e`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24487cf9c4af486d17913888fb800f6426320a4263291b0c03b40a7d56a98e12`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb2bbef49ae85a2a6db9de7ea4db1072c346f69e2588c026c1ff244757e87c4`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f829005a789038bc07643c80b9baf727eb56efc329dddad4160682b267afbb1`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf81adaf939ea8c07ab4eea25b63f92fa75e323421dda66a4aeebcd8aadcf343`  
		Last Modified: Fri, 02 Oct 2026 01:15:57 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:2339535bb4950ac1f73250d766dc9e6faf5946731fb4c4f4a3db3a6ebccc730b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece391bc02af78d52fb1a40aef3171d12c58bc1dfde66982884d69c803a6e2c1`

```dockerfile
```

-	Layers:
	-	`sha256:7669ba0bb8337ee69fe51723e7943ea6569a29823a26e53a157b72ada1300770`  
		Last Modified: Fri, 02 Oct 2026 01:15:54 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.3` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:e9fdba753986050c99f5d07366cbf878f305133771ec123fa002dbc8b801cac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749072945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818667104686b7baea1c85a5064a1b08fd5445e1d022f438072e70fcabc62888`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:15 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:15 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:15 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Fri, 02 Oct 2026 01:12:43 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:43 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:14 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:14 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:14 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df42c3c2e3319d423c741137344b1f99bf6a45ee40c68964540b18b57d9005f4`  
		Last Modified: Fri, 02 Oct 2026 01:14:17 GMT  
		Size: 46.1 MB (46056383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0b223905d5161b81f8c9b03b3798793700d2d592f78f6118252805cbbf154a`  
		Last Modified: Fri, 02 Oct 2026 01:14:16 GMT  
		Size: 766.8 KB (766841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1acab84ee6324f32ee9b22934b5abbc6ff70921e50f4e7928323704f76388514`  
		Last Modified: Fri, 02 Oct 2026 01:16:04 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b007e5af8479e9051a746ad97217b9cc9bc562eee7c4d7a93825c29c5f69dc16`  
		Last Modified: Fri, 02 Oct 2026 01:16:17 GMT  
		Size: 673.3 MB (673302651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4625206d9205259819c41fe5ee0aced94541809c8230f29a5d8e51f5f1397dfb`  
		Last Modified: Fri, 02 Oct 2026 01:16:04 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf602d01b780fcd94d385fa6ab9472e220c507d1a678ec96ebb0c93e186bfd68`  
		Last Modified: Fri, 02 Oct 2026 01:16:04 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c49338a4d849788bee4f34fda923c5e5374a08d54e12ed1c4e0ca53919e4ee`  
		Last Modified: Fri, 02 Oct 2026 01:16:05 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ad57e4c7172e79bee661f2bd33638667b2e53291dbf8da174fc36d69aa142b`  
		Last Modified: Fri, 02 Oct 2026 01:16:06 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cb50a9d4c9088ee53f16cd86ac3aee18f1078df3480aa9aa0d5502d57c44aa`  
		Last Modified: Fri, 02 Oct 2026 01:16:06 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27fd137a44549e12c7c1ffa3a68a284128530acbdc05311eef76d156f5df9f5`  
		Last Modified: Fri, 02 Oct 2026 01:16:07 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:131583fcc4a112e1f30c534a9d5732edf44f60481d77812c816c8b0ce435f47c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db63eb05f6fe44205459ee88c222a47275e804638acb031c557431b72f020768`

```dockerfile
```

-	Layers:
	-	`sha256:64582a2735d86fc6c5317bc3eaa1af41433665c1f42bf9c9775137bec10daa2a`  
		Last Modified: Fri, 02 Oct 2026 01:16:04 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.4`

```console
$ docker pull couchbase@sha256:9a9f7b51652d9cf4d44be06e202b3f4c14e7dc7049e07f734b980af286d514f8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:9c8a09b05e306280cc512344d267b0ab9c258073a1f5d4cc0b9cd4c431c6ae7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **778.9 MB (778916831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c550a2d1abe1c3bc86c39750bf2388abfbb1a1decf42c82fb566eb36ec6788d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:16 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:16 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:16 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=362376a07ccdc1d604ef2d48229d853bed9340dbd033abd8a0174819dfa76b6e            ;;          'amd64')            CB_SHA256=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:23 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:23 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:23 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2d128299d0b0010333ddeb8007125c72f8c90d59a2e2082b586976d1352ac2`  
		Last Modified: Fri, 02 Oct 2026 01:14:20 GMT  
		Size: 46.4 MB (46383164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea8ac11e7d5b2f5a9ee2bf13623c172d5a6f0f78bf59bf5a2eb966a35bb6340`  
		Last Modified: Fri, 02 Oct 2026 01:14:18 GMT  
		Size: 879.4 KB (879368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fdfdc63ab421a6b35b200dc9ae1b91022eccfe2bdbf9c853be99abe447fb99f`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 3.7 KB (3727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869de63d41cddfa6a7dc6e320da4c304e63c2c522b3974bea4d651399930d667`  
		Last Modified: Fri, 02 Oct 2026 01:16:26 GMT  
		Size: 701.9 MB (701882888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0c8615f859d8fd930cbf14f880a83132e11e715ea5511b4f5cf078efe7df0d`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4175edd7a782b31f2938dec18a9a35334df71203798385c7931c7c218553b9ce`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e548d7a8c3e702c130abab2ef9c0b444fe106c24d8a349f3aaab7d3a983960e3`  
		Last Modified: Fri, 02 Oct 2026 01:16:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e44f110d7025a2ca4598cf058ddecdb9c38865889aeeb6b795f88f128bb99116`  
		Last Modified: Fri, 02 Oct 2026 01:16:14 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e93d2f99e6e613bb0804c5d3ce0df88e5c6c7ad5828183c082713ee2f0f0edd`  
		Last Modified: Fri, 02 Oct 2026 01:16:14 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d560b3147e499509f447821722aaf5968cbdc3cd833f99eb22a64c7ae932923`  
		Last Modified: Fri, 02 Oct 2026 01:16:16 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.4` - unknown; unknown

```console
$ docker pull couchbase@sha256:9b61c7ac833e6588ad3caf46b3be1780534a75a96b6341b5b70277b33ad7dd36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3f97a2495bf3a99afb75003997721d20872b90b38e847137e31926f2d40b7d`

```dockerfile
```

-	Layers:
	-	`sha256:fbdee3f2c2cd7ea9e938c14e0ca1740958bb5b1a478e4203d20ae233eedf9d04`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.4` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:05a5a5fe63d57163fa13242c331f9cf6327bf0dd0188120eaa1762aea75904aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **751.3 MB (751334847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c508c197553f598ed6b2b28d74e0c72e2d6d05823f916ac430363de22cc4539`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:03 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:03 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:03 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:34 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4
# Fri, 02 Oct 2026 01:12:34 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:34 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=362376a07ccdc1d604ef2d48229d853bed9340dbd033abd8a0174819dfa76b6e            ;;          'amd64')            CB_SHA256=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:09 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:09 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:09 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e251490108b3ad03624a04c5757af82a70bbd2212142904c8b5f089e654c733e`  
		Last Modified: Fri, 02 Oct 2026 01:14:09 GMT  
		Size: 46.1 MB (46056678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e7d200642c66776fd59d7e05db47f9d570d709a5d945ef4155be2c57db201e`  
		Last Modified: Fri, 02 Oct 2026 01:14:07 GMT  
		Size: 766.8 KB (766809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5753ca5f2ed98e490258b8401900c369b08fdf819c0052ee086d9e7ee0e5344`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9d58bbe03b32acc835cae6ff6a689fb68c31968ec945ae9c9ebfb4893588076`  
		Last Modified: Fri, 02 Oct 2026 01:16:13 GMT  
		Size: 675.6 MB (675564283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619a758f6e5004cde880603f712846ca053071523bac211b00affb5760b9a94b`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de70604e789079d4b948ddd5055e51a8c060245c414c4ca1e89ef92971585e45`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17698b1c14f5afb5880cbfcd8e2701eda699cef1a36d7a58a6d242cb99694ff`  
		Last Modified: Fri, 02 Oct 2026 01:16:01 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abe772dd6d065c7c9ead572489ed28142554d66b7eb6dd3bf98fd61f56778b7`  
		Last Modified: Fri, 02 Oct 2026 01:16:01 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e421312f6e62054c5688b0436077997396ee8e7a2a71045baba9f73c49556759`  
		Last Modified: Fri, 02 Oct 2026 01:16:01 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dcd07db3df95705b835bf142ed5bf1713763d837ca9306df1c5e58ac4037aa`  
		Last Modified: Fri, 02 Oct 2026 01:16:02 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.4` - unknown; unknown

```console
$ docker pull couchbase@sha256:af643909728827ffc445dbc50000087cfc5387d253978d5c549145bdd4b15ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdf4fda8db04791063a21003ef0fe26611f81f8b80d9c2d1c178083b22a7b13`

```dockerfile
```

-	Layers:
	-	`sha256:9c497ef22f52f1d897b2da8584834205f77480a3717089887ff2e0f360a663e5`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.5`

```console
$ docker pull couchbase@sha256:1bbe115d0fee93f6df30341bb17ddc91ed24edfb7872a216a5d7f63d65715b7c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:54e6b1c52847700fcabc521b380f754e487af765bb24298f57b2d9c0830ece0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **778.8 MB (778776780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4faf0db830505773e589d40d6de4e0d881b78c09d343abde82ad7e06f06160b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:35 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:35 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:35 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:02 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5
# Fri, 02 Oct 2026 01:13:02 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:02 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=d162fb1d2e7acf151fdbf302c80f79622b7df67bf27ab85d83c40cc7e82a2ad1            ;;          'amd64')            CB_SHA256=9c2f2a01cecf862c210af5a7bfe38fd71fe087c52e1cc168119d34bf7aa79761            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:07 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:08 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:08 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:08 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9528788677916d7a0f24016131abf5a459707d06b4609f11710497a51efa4813`  
		Last Modified: Fri, 02 Oct 2026 01:14:15 GMT  
		Size: 46.4 MB (46383646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2c76ed2f7194eb935d1505b4fdb3118d7662167b13bb4c65ca8dbb9adf533b`  
		Last Modified: Fri, 02 Oct 2026 01:14:13 GMT  
		Size: 879.3 KB (879314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14bd469eefaa1e95342185e8784da2ceb45abaeac45d5a36d6572f179cb599e0`  
		Last Modified: Fri, 02 Oct 2026 01:15:53 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd6e4da47461a659b7dfa5dbcee3ada24b3b0f5c08384d4ebcfc742159ea6f0`  
		Last Modified: Fri, 02 Oct 2026 01:16:06 GMT  
		Size: 701.7 MB (701742410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e8cdc4e4beba7c55c1052578ff0fc0ab18efe11d8d2e398d93e7543c221007`  
		Last Modified: Fri, 02 Oct 2026 01:15:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc52a1009019837d0c6ee47d7d353f1095251656ed5b8477997940600782dcd9`  
		Last Modified: Fri, 02 Oct 2026 01:15:53 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6419a4cb4a387c192297df5fc01ad96bd9150a3d307c726f2f0aa1d881d72ad`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d8bab4857dccf7ae2bbe9a11b82afe53962bb6ef16f71eefa0a049e8f0eb31`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d0f5b1f891ee44bcfb06cf2e3a0105d39a9f52b72ab86bdacea193711e9b66`  
		Last Modified: Fri, 02 Oct 2026 01:15:55 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f3d403fbe5ef2ea68d01d1a4c126af6bb53e5211078103568cb148c907ed65`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:c6a1b7b5f180e5853638a5eb55296e5d0ebd76a77fa2f764842fdf94efd0d1b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1b71a949b960ae96958ba284aa972096f6cddeaf2a651743a8a7f2867bc482`

```dockerfile
```

-	Layers:
	-	`sha256:1943f0e64770b0f6f4a3d4091ce9e7a2814a8de3d634231c175bb50a2506a5e1`  
		Last Modified: Fri, 02 Oct 2026 01:15:53 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.5` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:99e964ae22a2448808dd0a780b547669031622db80c1901daad5d935ae26f2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **751.2 MB (751244331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47bea0b0f996866c90b023a457bd705bc957ef7ccfe5ce30367dcac768c0b2ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:27 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:27 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:27 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:57 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5
# Fri, 02 Oct 2026 01:12:57 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:57 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=d162fb1d2e7acf151fdbf302c80f79622b7df67bf27ab85d83c40cc7e82a2ad1            ;;          'amd64')            CB_SHA256=9c2f2a01cecf862c210af5a7bfe38fd71fe087c52e1cc168119d34bf7aa79761            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:57 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:57 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:57 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f3dbc9fcbbed54b862cec0a96bf8c20dfdd73ef9e54bb1de53c87c61da78045`  
		Last Modified: Fri, 02 Oct 2026 01:14:05 GMT  
		Size: 46.1 MB (46056693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ad8ca2f2b608f481833981c364b195ba0bf11768183dbca315ef91ab3f777df`  
		Last Modified: Fri, 02 Oct 2026 01:14:03 GMT  
		Size: 766.8 KB (766804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e9735e0421cf5442ec48baa1293bd097450909c87f6c44c1187a0ba9b343b6`  
		Last Modified: Fri, 02 Oct 2026 01:15:47 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e989079354ec9f9ea1976cafcf8d8d31aa04d30aec15405ad16b84d16e6581`  
		Last Modified: Fri, 02 Oct 2026 01:16:00 GMT  
		Size: 675.5 MB (675473762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19964c0f2d03fe792848d342745f4421ca152e9af7f90f9f6bb30d971bffbb1e`  
		Last Modified: Fri, 02 Oct 2026 01:15:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efff4b595321fdb24c2ba07c59c5cc8005d8b56d1e7c55cd83c54daf9e79a6d7`  
		Last Modified: Fri, 02 Oct 2026 01:15:47 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ceee5606137969fead7d90570fb5f41a9b3da1178f0b7cce4227459bd900745`  
		Last Modified: Fri, 02 Oct 2026 01:15:49 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038247005c50840c7e66e0f87f2073a7da1bc22df002b33b842ecc10bf046d4a`  
		Last Modified: Fri, 02 Oct 2026 01:15:49 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a404a261a7bc6fb5b199069d97ca25c0a70f4a357b2516d0b945dab936973ba`  
		Last Modified: Fri, 02 Oct 2026 01:15:49 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f42cf9c0caf6fd04a1243c0eadf06b6e6b7ce52e0c05601a6648bad6ef99e12`  
		Last Modified: Fri, 02 Oct 2026 01:15:50 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:20f622355f1abe1a8647a89a0fc54c7bb6831874c2c0960ebbb98698170931dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ca203aca1fee0af70329c72c98f8b61feeea1fa25068949056ed573b6d6df2`

```dockerfile
```

-	Layers:
	-	`sha256:23cb9cfffea6b65a9d74422c35991e9db664b326a5a780d67830dac1dededa12`  
		Last Modified: Fri, 02 Oct 2026 01:15:47 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.6`

```console
$ docker pull couchbase@sha256:061d2ef9c7cdb8d5a3270cafeb1c08c50436c9bde93c8af36d148330f3f259c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.6` - linux; amd64

```console
$ docker pull couchbase@sha256:bd1f9e1810d98b7b1d72ea9322a00e0182c7458bc2d9f463d0dcd80198649e36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **802.0 MB (802021998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4eaa32f2f2a8f410133b7fbc651be849217e60cae982c5ccfb974b8407ffc4c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:33 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:33 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:33 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:33 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:00 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=21b348be14c30e39658e9378ed62750806a20946677866d5859ac426df0e6486            ;;          'amd64')            CB_SHA256=43992488e154a87119a7ffb738de92b3364f5b1bfcbdd958e757e87762076ed7            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:15:08 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:15:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:15:09 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:15:09 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:15:09 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f1fab40877da7df80eee13d902146f79a629e51e9d7e71bb6e7f68891ba734`  
		Last Modified: Fri, 02 Oct 2026 01:14:13 GMT  
		Size: 46.4 MB (46383389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f04ad9ce80ec8c83c5967b81c145ebd8c4383f24785a356c214f6b6ddc97678`  
		Last Modified: Fri, 02 Oct 2026 01:14:11 GMT  
		Size: 879.3 KB (879333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e68b35a480f58552a9d247949abcc7be86c55484bfbd5cae062d5fc2208fe18`  
		Last Modified: Fri, 02 Oct 2026 01:16:08 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d7c7c009ee3d437e1a468a0368174d2d5d2aba280deda38196119da20e0490`  
		Last Modified: Fri, 02 Oct 2026 01:16:21 GMT  
		Size: 725.0 MB (724987867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e869cecef5f2e33c9e878392a6650d35c0cd32bc8daa7fa7254da55eafb58c`  
		Last Modified: Fri, 02 Oct 2026 01:16:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092dc8d506c8d7680bb1bbee62001f9b1f8b0fdca0c0cdf287e1231ee6939be9`  
		Last Modified: Fri, 02 Oct 2026 01:16:08 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed23766694974747d2cdf84145e717d859423ece9126c9bdec22bcb0b26728ac`  
		Last Modified: Fri, 02 Oct 2026 01:16:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10f5709fccc596c89ada18678e665bd16454b80d78b29106ad84cbc39fa30f3`  
		Last Modified: Fri, 02 Oct 2026 01:16:10 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0932051c3a941deab140d3f826bc3ebc466384462b883951d136e8b77b48085d`  
		Last Modified: Fri, 02 Oct 2026 01:16:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea91c730e11af0f246fbce1faaec32949385af22cea79ead400fe3c9b690d30`  
		Last Modified: Fri, 02 Oct 2026 01:16:11 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.6` - unknown; unknown

```console
$ docker pull couchbase@sha256:9eb4beabd3b3d7782deacdd203fb7c2d310d57aed03c6e728d5891adc1662d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b65713645f1e5e05552960bbf6457972a1a8be50146f9056c5ec1ec9debbf5d3`

```dockerfile
```

-	Layers:
	-	`sha256:dd0384a6b7fc693b83a6a9da4e059de565cddd340cc989bf52f2610a3579bf4e`  
		Last Modified: Fri, 02 Oct 2026 01:16:08 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.6` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:531ddfe25ecdefc5b108a870d3943d26df5509c04a747769c4e9de30e9d9c9d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **772.2 MB (772204443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b19248530666a6adb3032b567eafccc89d5fbafed612b9ff5cb1e22968e833d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:17 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:17 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:17 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:46 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:46 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6
# Fri, 02 Oct 2026 01:12:46 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:46 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:14:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=21b348be14c30e39658e9378ed62750806a20946677866d5859ac426df0e6486            ;;          'amd64')            CB_SHA256=43992488e154a87119a7ffb738de92b3364f5b1bfcbdd958e757e87762076ed7            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:53 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:53 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d9ef507b7874ee98d0f71ebb267d899707725f3b65ca0b81edcb98e236995f`  
		Last Modified: Fri, 02 Oct 2026 01:14:00 GMT  
		Size: 46.1 MB (46056189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee0dd278f730d47d5855fdf10566aa3f1e5ecfe424ff533f7cd5b602cfa3e57`  
		Last Modified: Fri, 02 Oct 2026 01:13:58 GMT  
		Size: 766.8 KB (766777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f61765ac1113b99959ad94a1398ad2ecfacb8533a9afd10b2cdea1af2fcb52`  
		Last Modified: Fri, 02 Oct 2026 01:15:43 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d68dfdd2df754a8a93104661c3caf431a30ea81b503a25c1452a2d76c3de95`  
		Last Modified: Fri, 02 Oct 2026 01:15:56 GMT  
		Size: 696.4 MB (696434403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b4551f3a4927abcb044032db9f3f8c544b0ff8fd002e19e4691f6781d20d71`  
		Last Modified: Fri, 02 Oct 2026 01:15:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9986893b4f811520e74ae1c8e8270bd63676549b1a8f919fef01d3ac5de1c0`  
		Last Modified: Fri, 02 Oct 2026 01:15:43 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d054a0b2b5ed52fe3b3f888c81783646a3eb3b6eea21c697fb047aba8f3d518`  
		Last Modified: Fri, 02 Oct 2026 01:15:45 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0341b1a0a8e1e4390c208920dee4589b297cfdd9b7e9d77d421b2ae44a03ac17`  
		Last Modified: Fri, 02 Oct 2026 01:15:45 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8817b2895b0f11569f4e0b8f590b266dae87438641e05b4714496212087ae21`  
		Last Modified: Fri, 02 Oct 2026 01:15:45 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbe69c6a89e218f0977d1b991cae8ee80fb8cab973d033e32d0ce380b757e7b`  
		Last Modified: Fri, 02 Oct 2026 01:15:46 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.6` - unknown; unknown

```console
$ docker pull couchbase@sha256:25e549fbaefdf4eb4ac196e85b01078afcce644327b81b3d0faf800135baf892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61d5953a25efc0f35e11a9827637e8a007d39dce476f13e481e0a1cc87e2e7d1`

```dockerfile
```

-	Layers:
	-	`sha256:66021070cd4ae556b24d493dfcb6253ad397f54c4ca4be1bd210484312bc8cef`  
		Last Modified: Fri, 02 Oct 2026 01:15:43 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.7`

```console
$ docker pull couchbase@sha256:0102261d43e98ec8c0699977489dcd5378badfb82d8c3c2db8ff83c2e116b62c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.7` - linux; amd64

```console
$ docker pull couchbase@sha256:c32326e27471567c82b9943de2807085649cff3e44fb06290debf202ac8a5752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.4 MB (799441901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2652b817b16da9bcbcefd2ee002e3b30f32d9dab5f77e96f8359350add66ddfe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:50 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:50 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:50 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:17 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:56 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:57 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:57 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:57 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:57 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd15c83d65470bb29518f9d122fa988d5904d05956d3144c0f1514e9358a0c9e`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 44.0 MB (43963039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa388dff340704302d49becb316e859ae36c71099567abda528ffa12b773c90a`  
		Last Modified: Wed, 16 Sep 2026 03:14:47 GMT  
		Size: 879.0 KB (878979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b9836f2b84c9eb8c128fe0c2ab78f2c86b374365795da173e05052ba148efc`  
		Last Modified: Wed, 16 Sep 2026 03:14:47 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b9cba3bb4a7afcc7a238d8bdaa485fc526423521ffe2bf0afa8c8ae78fde02`  
		Last Modified: Wed, 16 Sep 2026 03:15:00 GMT  
		Size: 724.8 MB (724828785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1543b02cb9798d8e9a40316c64f05e967f522de2f6886bb8e7b11736ec5534ea`  
		Last Modified: Wed, 16 Sep 2026 03:14:48 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:146c69a3d7252e6e8c216778f594762e212512bcd7baa06c78ec4c8923f74bc0`  
		Last Modified: Wed, 16 Sep 2026 03:14:48 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69418f08f5d034e47aefa26aa5595eba4c68c040751d00666f848e68b0b07735`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b11d81c5541123c63f54d50af8796b80bcfd76c4c31a839b9023f41b518cb9`  
		Last Modified: Wed, 16 Sep 2026 03:14:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addb4516e3163c540ddfcab401c85243465941201af87cc77a4c050f77704bca`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84699d02444a68ba2d7dfeca67590d5744c9c3671c0dd868d17dfaf02ded8a5`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:7a6ea240c11c0c29a346260e76597064825ed2158d4a7c57811752e1d258e456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2878339f7ed4fffe4b7b1f86e558f94fdfc6a4246ddf7bacd10c23eafd93622e`

```dockerfile
```

-	Layers:
	-	`sha256:acdb54fcd290d207ece81d228ef645c863186184a677a34cf1973253c933e383`  
		Last Modified: Wed, 16 Sep 2026 03:14:47 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.7` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ccd613e647c99173e1035e61e32a1708d864b2bde6e04ab981d860541a782469
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **772.1 MB (772053245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b873cc1ae590ba5c55a12c88710e163188a3e181176b9aa6828c3a30dff6a759`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:23 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:28 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:29 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:29 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b665f11ff944a79e9b4c1cb9334bea9659e81e8898c2335cb517b92bc899ec9`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 46.1 MB (46056381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6a95cd611728188c9f1cc3781c00cc550b27a0861d088dfac3ed1b64b7ad01`  
		Last Modified: Fri, 02 Oct 2026 01:15:19 GMT  
		Size: 766.8 KB (766813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b429dc7da52566bd89d79a65b5c4e04beeac9011393b51ab10e9aedc0b074b`  
		Last Modified: Fri, 02 Oct 2026 01:15:19 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220661603c7f0bab463b451794cbae0c23a89eeb219af5ddda0650ba87f16ce2`  
		Last Modified: Fri, 02 Oct 2026 01:15:32 GMT  
		Size: 696.3 MB (696282974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1efbb0db60a275af351317bd30ab598da51313cb2bb6016b92f4fa61880f289`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d6eae3550d9667fbbcabb675b1f45b90fd531b5334cc5a4ce1ab847cf33515`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310f8649e9c798f1e56d6ca27afeced210a7eeea68abad7ea57162ce8e793b41`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e60de0e8ad3bb77cb2698ce765155dbe055358594118b252b4cf2a12aaa2d9e`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418f4956850de44c19d26c25aad1d83a156c61a9a587c2e0e2dd51165cddddfc`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867270f13442d2158f00c551136b615d54746bfecf13caadf3f4160c0d90d6bc`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:da875788b183fcc2752f4b70136f34bc8f865d114a66d2bb15d26679ffa7803c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b739abbc1bc32eff630527f2dfd037a39dde7fa1e4776ecfe2e62aefee4a23`

```dockerfile
```

-	Layers:
	-	`sha256:bd5426da221bb3a9b29fc9d1881d2957ee1ae5c97e5f13b7e69ff16e4066031b`  
		Last Modified: Fri, 02 Oct 2026 01:15:19 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.8`

```console
$ docker pull couchbase@sha256:8081630027f8685741d11bf335115b516b8aed7a496a7dd88451d5df16f620d9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.8` - linux; amd64

```console
$ docker pull couchbase@sha256:a927316de0355b34e3e7d786613b96aa3519805e83facc3810ba3f60b8ab7228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.8 MB (820832183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b13ae2b53514571c922f2c238c62747a35410ef415b8ee8ed07e043359e1383f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:47 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:47 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:47 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:13:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:13:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8
# Wed, 16 Sep 2026 03:13:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:13:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:13:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:13:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=4594fe0dfe33e2674f3f800de605856bf7e2a5bb15e34f8bc44cc382bf8351a6            ;;          'amd64')            CB_SHA256=e1437c7e61aa1ab28b00604d9c1ce0e280fa4f4025f34ea3aaf6a975b8bdb3bf            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:59 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:59 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:59 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236dfa3bd19b9d1a85e2fc0d4b2f4aad80ded402a729062a2f3bcba08a48d334`  
		Last Modified: Wed, 16 Sep 2026 03:14:52 GMT  
		Size: 44.0 MB (43963392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4fb8914846c134236329587f4aa1ee1e31febe20c005d02ef325921854d4ba`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 879.0 KB (879025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c34cb6806245f0548e0ae75a51d2284713597446de11f8930f460f2f8da0e3d7`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b250cf77dd2e8d58d49fead297d05f3082ead8d5674ec57377ef4b0b0a8c2c79`  
		Last Modified: Wed, 16 Sep 2026 03:15:05 GMT  
		Size: 746.2 MB (746218661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7501c1d479331cd44a5167612b6fb95e045c402a872f77fd1b98ceb0e165def`  
		Last Modified: Wed, 16 Sep 2026 03:14:51 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0853e0af2597abc39d593a0514a0678e81510d628e4647a788b914a4f879ab79`  
		Last Modified: Wed, 16 Sep 2026 03:14:51 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d88d9a987e8fb9f7dfd5fe365fb832b73d1353ea19f265b3721b841a3b3c21`  
		Last Modified: Wed, 16 Sep 2026 03:14:52 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c8f8a2e5f18e53978592a0a6230b8bbe464ec196649f660cb95edb17d39c0b`  
		Last Modified: Wed, 16 Sep 2026 03:14:52 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87efc819956432ae3c8c7e05ac925f8f148141cf19adb619d990180ffa62b7aa`  
		Last Modified: Wed, 16 Sep 2026 03:14:53 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd642d2c7f9ccd4eccdae1314bf8243bb7ec4b920d1adac13747c350c65e1858`  
		Last Modified: Wed, 16 Sep 2026 03:14:53 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.8` - unknown; unknown

```console
$ docker pull couchbase@sha256:80048d39a8cd514e0093ed0456443baa96e047834a59cc5fdab533c32e142676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7315887c22b25244e4078583e4d42a0dac348619f008b284e202561b66c2a05`

```dockerfile
```

-	Layers:
	-	`sha256:8dec79218c99bbc2fbb671aa18d4e1c65cfbc4b943cd5b663d050701f56ad94b`  
		Last Modified: Wed, 16 Sep 2026 03:14:50 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.8` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:5fcd9631faaf8df2854115fb58c357bbe838f1109facb2cbf9725cfdfbd72ab3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **789.6 MB (789556277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72e0d30a3735f2b7b6a1e0023a618f067fe5f7f32a2f6ca33a786f19fcb2b442`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:25 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:25 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:25 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:56 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8
# Fri, 02 Oct 2026 01:13:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:56 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=4594fe0dfe33e2674f3f800de605856bf7e2a5bb15e34f8bc44cc382bf8351a6            ;;          'amd64')            CB_SHA256=e1437c7e61aa1ab28b00604d9c1ce0e280fa4f4025f34ea3aaf6a975b8bdb3bf            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:37 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:37 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:37 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:37 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5d3e0637eb214b88c7593ffa10cc434901a1dec7dce97551d45ad7a92c40c7d`  
		Last Modified: Fri, 02 Oct 2026 01:15:30 GMT  
		Size: 46.1 MB (46056529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710847fc7d303c2d5353de49ed2c4d4858d5abe25beef90119b6e9301638d01`  
		Last Modified: Fri, 02 Oct 2026 01:15:28 GMT  
		Size: 766.8 KB (766803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb41d73e59c82c5a8ebda6dde3dc43666e110252984fb873a9ca7dcb718bb0f`  
		Last Modified: Fri, 02 Oct 2026 01:15:28 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca0703d1ec827ae55d5c36f5dc61cdb4d3ff7b1267f7cb83ed11c080cf1367c`  
		Last Modified: Fri, 02 Oct 2026 01:15:41 GMT  
		Size: 713.8 MB (713785869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d161030f3b10f3b54633ea9ac75049b532bc7926932c7c132bc1e18d8b8f4d`  
		Last Modified: Fri, 02 Oct 2026 01:15:29 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df5ebed614ec07a47d243fd09318a62a2fed68a1655e6084554f3f304194ee8`  
		Last Modified: Fri, 02 Oct 2026 01:15:29 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eca4777789f64b38bf3e18d69b85258f1cd1452598649e401921b6ec56896a7`  
		Last Modified: Fri, 02 Oct 2026 01:15:30 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70db4b767ae63250402bb5cf3f00f675fd100541dfd6c818271c101e52b5593`  
		Last Modified: Fri, 02 Oct 2026 01:15:30 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac22853c52c852e261f6c766c421ec9d7926f025eb1862b20562cd62aa16278b`  
		Last Modified: Fri, 02 Oct 2026 01:15:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867270f13442d2158f00c551136b615d54746bfecf13caadf3f4160c0d90d6bc`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.8` - unknown; unknown

```console
$ docker pull couchbase@sha256:88c9c017eec8a00a58b58669609d771977e9f000e66213ed766bbb14835ce191
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47d8f6f62343cb3334032491594460205ea2acf26bf8d60eef007b036fd974e`

```dockerfile
```

-	Layers:
	-	`sha256:8ca57b14b5c01e025a887d0ba7b7ef08e14ed7194267d4ef9498ec1bad5628a0`  
		Last Modified: Fri, 02 Oct 2026 01:15:27 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.9`

```console
$ docker pull couchbase@sha256:0e7462fc8ec96ce0f152e184b6df0f1ab15bb5ef9e1b3fda6b3fea4480d56784
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.9` - linux; amd64

```console
$ docker pull couchbase@sha256:279600a05edd3cc043c5b48c81c2ff9a693de82eb28cfe2ffe41a32f16d630dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **823.3 MB (823277616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90095022b8ecb1dd311c4bf982a6dd69161dd0f8355fcfd7b3a0fc543a0bb9aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:13:25 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:13:25 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:13:25 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:13:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:50 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ce070178588d34a08a792a63f11200c383b7c6d885f337101d13992850c282e5            ;;          'amd64')            CB_SHA256=51cd89e7db43bf5858d6b98e50c43e6217694d814fddabafdf5e798bf8460e43            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:14:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:14:29 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:14:29 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:14:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d97f3f792c6c31d7413ff7dc2260c76231bedaf09a0504346f7ace831a56ace`  
		Last Modified: Fri, 02 Oct 2026 01:15:22 GMT  
		Size: 46.4 MB (46383045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87b87d898b6c1d7b5c28ad91cd50a8038db69c4fdd734d583f4f8fa0228b672`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 879.3 KB (879286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79f97b45b3d6083930bd14f30fa17a1f52dd79cba1670b75229eade3fa0b2f68`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b39eaf507f5113daace75354e440ccf00f70796906d6955269be640ce1b26e4`  
		Last Modified: Fri, 02 Oct 2026 01:15:34 GMT  
		Size: 746.2 MB (746243874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9101c1f468d4f720910677e0be6ce5673e834de40e612ec2b461e9dafa8c03`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a732968ac39e976e7833d2c5607ca33ebab6e9f9d65197a92c4198f73279f82`  
		Last Modified: Fri, 02 Oct 2026 01:15:21 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d479ca25e53aa36e98be0c96a3bdaef37135bf9d93fe71fc504b6664daee5b61`  
		Last Modified: Fri, 02 Oct 2026 01:15:22 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1377339a0d8e6aca33e4f6d73c63c2018cb62fff80a78e29fe8a848d4fba82`  
		Last Modified: Fri, 02 Oct 2026 01:15:22 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe409f76ce0ca002ed842b522f2b479006a2ef71fd16c5bce6c0259792d1fe4`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15653f1ad055e5c854730ddebef024c216c4c06a1ed0713758043fc0b1fe2880`  
		Last Modified: Fri, 02 Oct 2026 01:15:23 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:2f9ad5b4cfb15ec86a4b7337a333468bbf90574c886f90dd2889dbb5cc0d7786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75863892d3457cfac6826048bf8307582c068b47a69722a932311cc303e5a13f`

```dockerfile
```

-	Layers:
	-	`sha256:174a3450c5f10d4000895a6057738559f33b1672a237bdeba2912be5c16d0ec0`  
		Last Modified: Fri, 02 Oct 2026 01:15:20 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.9` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:caffde1e7003c032e7cdd264247f50b6d69cf5eb714d1e303ffab5e21b4135b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.3 MB (787282228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b87d4f2c2526683e982bba998fdfe5c4b1dfbe8e06ea0ed9f64bea0144d82f2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:13 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:13 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:13 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9
# Wed, 16 Sep 2026 03:12:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ce070178588d34a08a792a63f11200c383b7c6d885f337101d13992850c282e5            ;;          'amd64')            CB_SHA256=51cd89e7db43bf5858d6b98e50c43e6217694d814fddabafdf5e798bf8460e43            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:18 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:19 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:19 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:19 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efffc92fdeda9b9d804b808e89a52fb97dbcf809ec120f80c9303d6c3380c445`  
		Last Modified: Wed, 16 Sep 2026 03:14:12 GMT  
		Size: 43.8 MB (43790785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d067fc29cd504c4a8bcd878afc63178db252178ba47f7b9720da9a801b9f7c61`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 766.6 KB (766635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca9f7aa4e52d9ad008d3036c7f93244f9b98beca38361b8dcf1ed54f7c11482`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4b8d7b669c1218dfa1c76e54bc2cd48e5530f87c0bfc9380fc4fe0b545d800b`  
		Last Modified: Wed, 16 Sep 2026 03:14:30 GMT  
		Size: 713.8 MB (713776239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5676d26e2924d2f09fec1fb8fb4d336103532645a98475faf90aa460df3364c8`  
		Last Modified: Wed, 16 Sep 2026 03:14:11 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb652f14012d4dd2e6b357a69c4851e42f199a363a1511e16b77070a1cb574a6`  
		Last Modified: Wed, 16 Sep 2026 03:14:11 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4063be1132515dd4f8eea1876037821371647bb01ca927bee1c6e5bdefcde29`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 851.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14f8f9cfb9ff3a23e3f04a3eaba34ee9a44e7a6e2468bd435c1afd69325becd2`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d4ac1c16b08a4f46570e43ea02796099c4229401c7f4dd8c0d3c009bbe0fd1`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cade27fcb43fe0239459a0f7c9e845e7f90ebb0ff1ce5932b018c5d777a23b`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:7f163059febdbf10162bd8969a999f49fc5c571083d511b2169588f3781f588a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec1f9ec3133263a92f960491c941cd61bf01d9ef136bf04cd2e9d8755a321a55`

```dockerfile
```

-	Layers:
	-	`sha256:56355be94517fee798d376586d834e54c0b093a12263a278bb989736a414654c`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-8.0.0`

```console
$ docker pull couchbase@sha256:76f875d302ed1489e64d7b3a17baf88488da0f0636887cc10d3b6c2471831592
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:d6fc1c0d7d6c3e2f6a2c80ccc978f336db837ffe549dc64b6ce67fceb29ae1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **867.6 MB (867556984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191cf3bdd7b62e4d247a8349452dc7aa63952df2245f557b94e8173a032e082e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:28 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:28 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:28 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:57 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Wed, 16 Sep 2026 03:12:57 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:57 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:39 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:39 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5389faf1fb8f7cc9711b4144a4fe9d3f4ae238604549adbfe5f42be44dba9d`  
		Last Modified: Wed, 16 Sep 2026 03:14:41 GMT  
		Size: 44.0 MB (43963328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacef1b47da9f0630cd15050e85843fab0d221a620ea64d86dc5e05182e6d022`  
		Last Modified: Wed, 16 Sep 2026 03:14:39 GMT  
		Size: 879.0 KB (878981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e37061d37b0d03ae45e83a47091837db0631414f2cc76cfb7b77da7a376175`  
		Last Modified: Wed, 16 Sep 2026 03:14:39 GMT  
		Size: 3.7 KB (3729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a79bfbc190933e717ad51f1906ec46d79855f2a1385fd85dc3d9163520e723`  
		Last Modified: Wed, 16 Sep 2026 03:14:54 GMT  
		Size: 792.9 MB (792943570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f041374905a2ad2b39d4f5e77179d51b95ffca771d453b0bbc551755b56990c`  
		Last Modified: Wed, 16 Sep 2026 03:14:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681900b6f931d0b3709f89c1c755c6c84d68a0481c0154f353822ec030097ba6`  
		Last Modified: Wed, 16 Sep 2026 03:14:40 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9728c0ea268513f8e89ba1eb4319d827cd7694cdd833aff85f4823f81cf57eaa`  
		Last Modified: Wed, 16 Sep 2026 03:14:41 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc60796e7e4a92a68639372e3624f3b81eee18ed2720e57281fddc70d5c203c`  
		Last Modified: Wed, 16 Sep 2026 03:14:42 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684e15866bc1dc81890bdbfcb6713696b15305cb434ad88d0bcdc5e3260b615e`  
		Last Modified: Wed, 16 Sep 2026 03:14:43 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041f5ccab4de4761d87ea36e42ccdd4805da07976a67b0c07398dc5910a662fd`  
		Last Modified: Wed, 16 Sep 2026 03:14:43 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:9adc1c311fff7b6e8fe2fd919fbac2c2f98f4d080021ba8a8b0c09b75a8b7028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f35a3d33b00d23c6b2b9a299e5f7590aea01830f28c65ee66e0e3f77402e6e`

```dockerfile
```

-	Layers:
	-	`sha256:4a67f4c0397c5c0f0190a6601b3407f9dba22aec81db3399ac4184fd0f1d0590`  
		Last Modified: Wed, 16 Sep 2026 03:14:39 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-8.0.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:1e34449de85607fe8cc4c822b9ca13954e23afad45da98fb802fcfff8eeaf2b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **829.1 MB (829126167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f69a62c279a026ec2cb56556bbfa5809b5ad93f80cc5dece99486339d110e9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:58 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:58 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:58 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:07 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:07 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:07 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:07 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5428692f9b07329c63b4e86dcb00ca71ec0cab31078f910c528f474e2f5ea94`  
		Last Modified: Wed, 16 Sep 2026 03:14:09 GMT  
		Size: 43.8 MB (43791282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156469cae98a992cccac48e671eb8459501364f3883c2bc6fab0f7d4521198f3`  
		Last Modified: Wed, 16 Sep 2026 03:14:07 GMT  
		Size: 766.6 KB (766603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d1320f8323b2b944df2abbbfe8c39571fe4cafd46f5a68849fe34f2133079b5`  
		Last Modified: Wed, 16 Sep 2026 03:14:07 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e2ea7876f91e7178e9878e7ba82dc75879ab379c6dae8e3ba7783c36a4f508`  
		Last Modified: Wed, 16 Sep 2026 03:14:24 GMT  
		Size: 755.6 MB (755619721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caec46d0e773a4c66ff430b513d89d99c0621955720058b46744b92f7c594f9e`  
		Last Modified: Wed, 16 Sep 2026 03:14:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06bc43e4054867908bab7a10630e2388163998fab3bc1345db7f5b2e462cd831`  
		Last Modified: Wed, 16 Sep 2026 03:14:08 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dba85a76497a4fc7787b8e722405a8d37f5d0123c3c20fb8a32436a7df11849`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fa78e7466864c907a23ad2ddda215043ba0f19f369d1789a3d72dcaf630d4c`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd58fb64639dbe5cbbc2f079910ce728ae82c42f958888aa2df73dac2a1c0806`  
		Last Modified: Wed, 16 Sep 2026 03:14:10 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136fce27f6e4b7ffb6e14b499e8d24fc3f9e93af6163b585ccd075b0c1dac72b`  
		Last Modified: Wed, 16 Sep 2026 03:14:11 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:decc8c36db149857e1ac4288872b6bba9df130af0e5cf3dd2359613954040e07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec79263b8943cd55067e28e49fb7d53b81a9472985c26c934349f90375b8cadb`

```dockerfile
```

-	Layers:
	-	`sha256:182f89e27b5e4038d6a4859f455b835a9bd5011102c5630c9472fcb0c0914cea`  
		Last Modified: Wed, 16 Sep 2026 03:14:07 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-8.0.1`

```console
$ docker pull couchbase@sha256:a3e072106ca6447daa4da1e2a81d178057ed2861ad17b6fa2c01171f1788177a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:7fda09eecb6bfb1de9d2b0356db46e9bb1fe0a4113f42b3ec97c7d6057de2907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **892.7 MB (892713323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a42f934e6009b290d652a5d1ed1e87614ab663f16855173f88050f802357e3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:36 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:36 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:36 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:13:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:13:08 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Fri, 02 Oct 2026 01:13:08 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:13:08 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:13:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:13:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=dba9dbeb2ff3928e62ebecf154353e1574e50e4e2548664ea25cb52bc2028cc7            ;;          'amd64')            CB_SHA256=194504d728e6725068a15a7e19e7b60685a3fe4c70394112e132805445174128            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:13:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:13:51 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:13:51 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:13:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060e439afbfec559975c0b4c9e05734e685d3e327052f7eaa6133b299a99d14f`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 46.4 MB (46383681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edc6dead325218debca4f692f90ba321172292ef71aaa9353781c6468a7b98e`  
		Last Modified: Fri, 02 Oct 2026 01:14:52 GMT  
		Size: 879.3 KB (879328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d8a2c58731ac0770abf6ab3a0647444a2d13a8ed988a65530f03087a29d581`  
		Last Modified: Fri, 02 Oct 2026 01:14:51 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3b203d678a668381d03b54545603e521a55a8fc8406e179cb4c7204c368bb9`  
		Last Modified: Fri, 02 Oct 2026 01:15:08 GMT  
		Size: 815.7 MB (815678910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b984c21d680aac74712f5e1407a41ac124b4c772bf53debbe51697927a80fbe3`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00486eaff56b0fc0939c19eaffc2a5e879638e1b605997886384068be2a5fbae`  
		Last Modified: Fri, 02 Oct 2026 01:14:53 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f727058dc7b1e10b4a277afd34eb58b86c203232bdddbc20acd9bbf9fb2353a`  
		Last Modified: Fri, 02 Oct 2026 01:14:54 GMT  
		Size: 844.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b60839ac21252935467f6b8dfdfb8c90821cb5417eda8297b9e3b5a549f863e`  
		Last Modified: Fri, 02 Oct 2026 01:14:54 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da187d1ad72e3fb578498a8641e5ea244b3b5c210d39a1bff24196993448a6ae`  
		Last Modified: Fri, 02 Oct 2026 01:14:55 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef93136c0c72c50ec20123f9e67e71d54f8f22a0657f5cfbe9c4abae73a68c39`  
		Last Modified: Fri, 02 Oct 2026 01:14:15 GMT  
		Size: 929.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:50e712b75b46d785c99fbb80183555ad1d5fd66f27a052e3e1235ebc66d88f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53af7f7010df880c1633d58f7788992ccf8fbc9b281943744e2a8ba3a775c9ac`

```dockerfile
```

-	Layers:
	-	`sha256:d212451bbe4cc09de6c1dadf30c14b5525cce6b04c8c06d3a1cd0766e0eb1abc`  
		Last Modified: Fri, 02 Oct 2026 01:14:51 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-8.0.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:8077a6f622f3654e56a159bf1a32d920cd3d68ff531bdf26eb14832434acfc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **847.0 MB (847008175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d41884691ccd9e2a08bd4e95b98ec6d1ccf23084728c0195e52b37497254c8b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:12:06 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:12:06 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:12:06 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:12:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:34 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Wed, 16 Sep 2026 03:12:34 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:34 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=dba9dbeb2ff3928e62ebecf154353e1574e50e4e2548664ea25cb52bc2028cc7            ;;          'amd64')            CB_SHA256=194504d728e6725068a15a7e19e7b60685a3fe4c70394112e132805445174128            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:16 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:16 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:16 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af770b116c1945830db9f9791d5f71c8d02fef89005c6e1264cd74a7273fcfa`  
		Last Modified: Wed, 16 Sep 2026 03:14:19 GMT  
		Size: 43.8 MB (43791044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5e02b96d3e0310689c0e8bc9bf6007fd3095b49826fafcffb392d0ac537d57`  
		Last Modified: Wed, 16 Sep 2026 03:14:17 GMT  
		Size: 766.6 KB (766646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca4138746f2d151640567cf3df7f4b4eb2b2d615e815bdb25e746dcab91e860`  
		Last Modified: Wed, 16 Sep 2026 03:14:17 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10e4c45b33618bdc31e983c0b8f221d09ccc071a20cd349f287aaa6ac531cc2`  
		Last Modified: Wed, 16 Sep 2026 03:14:32 GMT  
		Size: 773.5 MB (773501922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde896084c9e08e191b83449cff1ad81b62becd6846310166e53571ec60eadee`  
		Last Modified: Wed, 16 Sep 2026 03:14:18 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2672fce4c9a97b6f8bf4c8bd0fc489c06c2570954605f91326ab5a8e631eb3`  
		Last Modified: Wed, 16 Sep 2026 03:14:18 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f297dbb576f7a04732de9ab7aad268343c432316bf328653bfa0583d254bb91b`  
		Last Modified: Wed, 16 Sep 2026 03:14:19 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd2f4df41fa212b095a92555bda15ea989ee90bdfc2cbf32d5bc79db5ea8a03`  
		Last Modified: Wed, 16 Sep 2026 03:14:19 GMT  
		Size: 230.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613c329ae3264fbdf13aecd974b1c9194aa55854a39f49083d1c54f653298c1b`  
		Last Modified: Wed, 16 Sep 2026 03:14:20 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57cd9e4d9951270b6ebfb2a34c16ca04251bb8d740a059f13b05f208ee7c35d3`  
		Last Modified: Wed, 16 Sep 2026 03:14:20 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:74687bf01801f5948111557331cc20fffd1d1a775a46ed6d5cb643fe92b6f8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2b6d31bfe1d9a488e4398346ddbfb2c0e27da946ad38a19591ccadbe8a4c413`

```dockerfile
```

-	Layers:
	-	`sha256:594d63554b4ad866ab4ba524957c5b87e7bf65b346614f973baad2cd40d96cd7`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-8.0.2`

```console
$ docker pull couchbase@sha256:280ae5733cba507a93e59236b4935d3c42da90bb7edb77f555032cfd13e8abbb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.2` - linux; amd64

```console
$ docker pull couchbase@sha256:26befc1718d6bd9d17dd3a92d8ee096cbbc2108613cacf86cd96682f67881d85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **883.2 MB (883156256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24d0119ed7909f0226af10f386cfb37a8fc2f09394f97f48e67dd74aa6ffe8a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:16 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:16 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:16 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:48 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:12:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:13:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:13:17 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:13:17 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:13:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2d128299d0b0010333ddeb8007125c72f8c90d59a2e2082b586976d1352ac2`  
		Last Modified: Fri, 02 Oct 2026 01:14:20 GMT  
		Size: 46.4 MB (46383164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea8ac11e7d5b2f5a9ee2bf13623c172d5a6f0f78bf59bf5a2eb966a35bb6340`  
		Last Modified: Fri, 02 Oct 2026 01:14:18 GMT  
		Size: 879.4 KB (879368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772ad8602d1e71092194fd56d1fc4850b1144a400c3a8ee14d37574fcfbafa8a`  
		Last Modified: Fri, 02 Oct 2026 01:14:18 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0415d425bd60e7313d5ff810fad6bc851fdf1477d18409b545d6486a526af2d`  
		Last Modified: Fri, 02 Oct 2026 01:14:37 GMT  
		Size: 806.1 MB (806122315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b570fa4b26544c24cd4a2130e541be3d8afa42b210bc3ee237e3506de1c4acf`  
		Last Modified: Fri, 02 Oct 2026 01:14:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd941c649049a0e3a4de13bd228eb8d95403bfdbd58462c3b4e9a70f29c74323`  
		Last Modified: Fri, 02 Oct 2026 01:14:19 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd10bb1bd167dae5ee4ca9fd111dfbec33d69a6f75bad72a11f01b0cee09c54`  
		Last Modified: Fri, 02 Oct 2026 01:14:20 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4023e1b9eacf1c2eb0d5c6c347c5dfbf5fbed9916735e2505831d5fbf289d592`  
		Last Modified: Fri, 02 Oct 2026 01:14:20 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48ef089dc0007ac2991d0f561b67e8084f1f938e8314bce716d291c111004fb`  
		Last Modified: Fri, 02 Oct 2026 01:14:21 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15fbbd915d63ffada177f3cbe7a3bd8e65f8acf39693fe20860f294841ace408`  
		Last Modified: Fri, 02 Oct 2026 01:14:02 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:d5fc528f729b26e6ec249b773200470fe78b8fd6968adfe666315d67fe883db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eedd805dbde47aa8dddc6d3631e825fd61997df249cf8aeea910df0dfd3f92e7`

```dockerfile
```

-	Layers:
	-	`sha256:f4825ac84d648d5f41f213ab2d4e9ed0fd1b7045fcb43550adbd8b5a099fd0bf`  
		Last Modified: Fri, 02 Oct 2026 01:14:18 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-8.0.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:dd6ee7f93584cc903fee9f33681daa13357cc81c7b474ebfa59f4e522bc32943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.4 MB (837434318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:587c85f7b9f3c8cbf9f5b635d58a3e8da0b36766173275861d7fc5aad5266149`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:55 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:55 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:55 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:13:12 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:13:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:13:13 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:13:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:13:13 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:13:13 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:13:13 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a60854d68df6f1ef1d48b1959c4b29a0c8d7b1dfecf1ac4de70ffdb58f106758`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 43.8 MB (43791058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c684205eca48c26709683577d71ae8976e96f8d09f87f2c13162f65fdb7ef3ea`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 766.6 KB (766624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba3f8eeee6645a29183b467084ddcf3268dd8e574d4923036ed34105636b6ef`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f0676fceafa154c9bfc07feb0bb712dfde4c933cd8e36808a23cd110522be5f`  
		Last Modified: Wed, 16 Sep 2026 03:14:26 GMT  
		Size: 763.9 MB (763928074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c848e74d6cdd36e8a73b7f89ea6cbc7608ca1d93c50acbf29b2b0aa37f8dd06e`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba32bbc9889e30b0d494d52403a4b3ae5c1985d4a5e0b7d63da8f09451a444b`  
		Last Modified: Wed, 16 Sep 2026 03:14:14 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78bcc8ab134d0a0f25746e519efd5fd65cc8af79d352a7dc05735108f0f88b7b`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868af8a559d4e3cd6295cb65960f426f2888605cd4ddb43a6d2149bee913c48d`  
		Last Modified: Wed, 16 Sep 2026 03:14:15 GMT  
		Size: 230.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a912d476ba0d7b370ef75f1a96944e857ad8e6b4bd628233ac6202a7599b498b`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a420c11fdd75f9a66ad1117de1761eb6019bcfe58f5f4e66fb2a604281cf2e0`  
		Last Modified: Wed, 16 Sep 2026 03:14:16 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:b3656673bd5f771dc65029f063314e80f7ab5fdf57f7ab1b4daaedbed63ea9d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8592ffe49bb6b2b5ca798f127a1bd5370557ce6cd7dde1a8522b224474c245`

```dockerfile
```

-	Layers:
	-	`sha256:50c839c1cc23469faa9ec5408600f77c83875fe94aa682c25cdf4dedd9de51b3`  
		Last Modified: Wed, 16 Sep 2026 03:14:13 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-8.0.3`

```console
$ docker pull couchbase@sha256:ac62628218956b196cf566c980142e522864a73de6da29b3dfdc2387b6aba68b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.3` - linux; amd64

```console
$ docker pull couchbase@sha256:121343156861ea5cf01ffbcc24acc49b02add15901a598b0df1a1c436474d03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.4 MB (921412264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3713428da61977e972f8308f22ab015433ffdbce43530c8db0b509d0e34c0961`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:13:24 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:13:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:13:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb81bfc7caf8593cf5af694de6e01974291ae8ef3b64deedee3a036084e9beb`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 46.4 MB (46383015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcef8151dd40ed59efd1a0b44ee65578efd3f68f99374a38b294bbe8fcf8965`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 879.3 KB (879317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fb80a93dcc3a91188f91577bea80c12ddf91bd77e4d74246d574b5384eb6a5`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b80f438c4e770dcecc02118cbd8001b5aaac872d96a5e895ec0402c392fdce`  
		Last Modified: Fri, 02 Oct 2026 01:14:39 GMT  
		Size: 844.4 MB (844378518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328988eb4bf756e344bc6c553bf2f66ccc7095b24b8086ab9e270bc200dd7ec0`  
		Last Modified: Fri, 02 Oct 2026 01:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e0164db3d2a72aa43608818e8979c98b5021c202a2cc049cb5dbda7a35598b`  
		Last Modified: Fri, 02 Oct 2026 01:14:25 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbdf6c3bacc2f2d9f438e94ba2919a2ab1a995d5c02bdd279516fe7c002fc3a`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:defd28c9b6ecccddcd2213b42e5d2876035265d99fb5af71cd7e0374b621ed20`  
		Last Modified: Fri, 02 Oct 2026 01:14:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db51906c6a9c803231dd62d25d2801f2064f23d9c458486fdb314e343c8e5a7`  
		Last Modified: Fri, 02 Oct 2026 01:14:28 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca33bd7065ecc7acbc7ff9e6ff01b0ab46b2b28a15d82519a3d94c2829ba853`  
		Last Modified: Fri, 02 Oct 2026 01:14:28 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:9525dd7b1e3369585346ba50c1ac74bfb0ca9839cf004877ae352783364ead02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d21a9a7d7052c1a39703415f16b4ba809afc6e80c9237fc239cccdf9aa8d91f`

```dockerfile
```

-	Layers:
	-	`sha256:41e201055c22ee33d65b488c3454945c052f76ca827d34f8049d11d2b2d2b03c`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 38.2 KB (38171 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-8.0.3` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:95e3285ecebed213813b3b2ddf0b5dd1f8a39b79f8e6c7bf07dbdf979e0b86ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **870.9 MB (870929384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a285e6cb036c124fcb3a942ca676e975d4c0ff33a7a98c9aa621b5a0fc4234`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:55 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:55 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:55 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:35 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3273815f3278d8f1142c92e06df521ecb22bba6b72a51719b38714203352c6`  
		Last Modified: Wed, 16 Sep 2026 03:16:38 GMT  
		Size: 43.8 MB (43791160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc43fa6a23023fe1ebe0ab89bce6a79c8b400551440c99596ec75cea09eccaf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 766.7 KB (766655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe8b2d1c271f019010e39c05f3a61c2aeb16e733e15bf77ddfb7e9f03f7162e`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba04dfd1d6bc08968c3d5f26ce4c8b25f6a4adabb576bf5ab029293be25efbdc`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 797.4 MB (797423001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c5b2f2ef78224c0637530238a1de46c1a16ecd8a64ac12000a60634192fb08`  
		Last Modified: Wed, 16 Sep 2026 03:16:37 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aac10786c23b6eabb3e67896799d5cb0707f030b3f8b9d186e88cefb424cfaf`  
		Last Modified: Wed, 16 Sep 2026 03:16:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82be6d021cf83666a4afa5813b94c9b8b3071a9712775d69e994bb036bcecc7d`  
		Last Modified: Wed, 16 Sep 2026 03:16:39 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c97f389182207750c9ffe8544e46c51f67cf4d0b953aa8eaaa4530911c0ef4f`  
		Last Modified: Wed, 16 Sep 2026 03:16:39 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a896a57a9372bf71ca9bbd5de04f81a2fce1bac186bd80b25065af13abb7ca`  
		Last Modified: Wed, 16 Sep 2026 03:16:40 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2dad5f6c0e0368eb58c45af37b2c97fb488354c36633be206c4fcba7fdf616`  
		Last Modified: Wed, 16 Sep 2026 03:16:40 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:39a43e9532e02dd086b1ab0ca25360af69396a496cc3facd179f77a0df2fddac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 KB (38380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55c46e187762330081c74e36d63d3c3ed0f8b1a77ffda3badd61a5e8c99f168`

```dockerfile
```

-	Layers:
	-	`sha256:18439e60773adbb51f6e6dafc242fcb9be908534d00a384522dc3266fe91652a`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 38.4 KB (38380 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:ac62628218956b196cf566c980142e522864a73de6da29b3dfdc2387b6aba68b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:121343156861ea5cf01ffbcc24acc49b02add15901a598b0df1a1c436474d03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **921.4 MB (921412264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3713428da61977e972f8308f22ab015433ffdbce43530c8db0b509d0e34c0961`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

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
# Fri, 02 Oct 2026 01:12:24 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 02 Oct 2026 01:12:24 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 02 Oct 2026 01:12:24 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 02 Oct 2026 01:12:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Fri, 02 Oct 2026 01:12:54 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 02 Oct 2026 01:12:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 02 Oct 2026 01:12:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Fri, 02 Oct 2026 01:13:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 02 Oct 2026 01:13:24 GMT
CMD ["couchbase-server"]
# Fri, 02 Oct 2026 01:13:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Fri, 02 Oct 2026 01:13:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb81bfc7caf8593cf5af694de6e01974291ae8ef3b64deedee3a036084e9beb`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 46.4 MB (46383015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcef8151dd40ed59efd1a0b44ee65578efd3f68f99374a38b294bbe8fcf8965`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 879.3 KB (879317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4fb80a93dcc3a91188f91577bea80c12ddf91bd77e4d74246d574b5384eb6a5`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b80f438c4e770dcecc02118cbd8001b5aaac872d96a5e895ec0402c392fdce`  
		Last Modified: Fri, 02 Oct 2026 01:14:39 GMT  
		Size: 844.4 MB (844378518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328988eb4bf756e344bc6c553bf2f66ccc7095b24b8086ab9e270bc200dd7ec0`  
		Last Modified: Fri, 02 Oct 2026 01:14:25 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e0164db3d2a72aa43608818e8979c98b5021c202a2cc049cb5dbda7a35598b`  
		Last Modified: Fri, 02 Oct 2026 01:14:25 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbdf6c3bacc2f2d9f438e94ba2919a2ab1a995d5c02bdd279516fe7c002fc3a`  
		Last Modified: Fri, 02 Oct 2026 01:14:26 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:defd28c9b6ecccddcd2213b42e5d2876035265d99fb5af71cd7e0374b621ed20`  
		Last Modified: Fri, 02 Oct 2026 01:14:27 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db51906c6a9c803231dd62d25d2801f2064f23d9c458486fdb314e343c8e5a7`  
		Last Modified: Fri, 02 Oct 2026 01:14:28 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca33bd7065ecc7acbc7ff9e6ff01b0ab46b2b28a15d82519a3d94c2829ba853`  
		Last Modified: Fri, 02 Oct 2026 01:14:28 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:latest` - unknown; unknown

```console
$ docker pull couchbase@sha256:9525dd7b1e3369585346ba50c1ac74bfb0ca9839cf004877ae352783364ead02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d21a9a7d7052c1a39703415f16b4ba809afc6e80c9237fc239cccdf9aa8d91f`

```dockerfile
```

-	Layers:
	-	`sha256:41e201055c22ee33d65b488c3454945c052f76ca827d34f8049d11d2b2d2b03c`  
		Last Modified: Fri, 02 Oct 2026 01:14:24 GMT  
		Size: 38.2 KB (38171 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:latest` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:95e3285ecebed213813b3b2ddf0b5dd1f8a39b79f8e6c7bf07dbdf979e0b86ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **870.9 MB (870929384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a285e6cb036c124fcb3a942ca676e975d4c0ff33a7a98c9aa621b5a0fc4234`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 03:11:55 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 16 Sep 2026 03:11:55 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 16 Sep 2026 03:11:55 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 16 Sep 2026 03:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb
# Wed, 16 Sep 2026 03:12:25 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 16 Sep 2026 03:12:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 16 Sep 2026 03:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=47d6ab04199bd30bec5c07f975b48df315103d0743e362f9976cad7caf3b39b6            ;;          'amd64')            CB_SHA256=1e9606eaae8a3a97a38e7622edd9a162152dab85235af219896fddd80e31ef28            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.3 CB_PACKAGE=couchbase-server-enterprise_8.0.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 16 Sep 2026 03:15:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 03:15:35 GMT
CMD ["couchbase-server"]
# Wed, 16 Sep 2026 03:15:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 16 Sep 2026 03:15:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee3273815f3278d8f1142c92e06df521ecb22bba6b72a51719b38714203352c6`  
		Last Modified: Wed, 16 Sep 2026 03:16:38 GMT  
		Size: 43.8 MB (43791160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc43fa6a23023fe1ebe0ab89bce6a79c8b400551440c99596ec75cea09eccaf8`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 766.7 KB (766655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe8b2d1c271f019010e39c05f3a61c2aeb16e733e15bf77ddfb7e9f03f7162e`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba04dfd1d6bc08968c3d5f26ce4c8b25f6a4adabb576bf5ab029293be25efbdc`  
		Last Modified: Wed, 16 Sep 2026 03:16:51 GMT  
		Size: 797.4 MB (797423001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c5b2f2ef78224c0637530238a1de46c1a16ecd8a64ac12000a60634192fb08`  
		Last Modified: Wed, 16 Sep 2026 03:16:37 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aac10786c23b6eabb3e67896799d5cb0707f030b3f8b9d186e88cefb424cfaf`  
		Last Modified: Wed, 16 Sep 2026 03:16:37 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82be6d021cf83666a4afa5813b94c9b8b3071a9712775d69e994bb036bcecc7d`  
		Last Modified: Wed, 16 Sep 2026 03:16:39 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c97f389182207750c9ffe8544e46c51f67cf4d0b953aa8eaaa4530911c0ef4f`  
		Last Modified: Wed, 16 Sep 2026 03:16:39 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a896a57a9372bf71ca9bbd5de04f81a2fce1bac186bd80b25065af13abb7ca`  
		Last Modified: Wed, 16 Sep 2026 03:16:40 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2dad5f6c0e0368eb58c45af37b2c97fb488354c36633be206c4fcba7fdf616`  
		Last Modified: Wed, 16 Sep 2026 03:16:40 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:latest` - unknown; unknown

```console
$ docker pull couchbase@sha256:39a43e9532e02dd086b1ab0ca25360af69396a496cc3facd179f77a0df2fddac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 KB (38380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55c46e187762330081c74e36d63d3c3ed0f8b1a77ffda3badd61a5e8c99f168`

```dockerfile
```

-	Layers:
	-	`sha256:18439e60773adbb51f6e6dafc242fcb9be908534d00a384522dc3266fe91652a`  
		Last Modified: Wed, 16 Sep 2026 03:16:36 GMT  
		Size: 38.4 KB (38380 bytes)  
		MIME: application/vnd.in-toto+json
