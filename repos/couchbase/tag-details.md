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
$ docker pull couchbase@sha256:513ccbb567a66efd93b83bb92e8f9f3f36ac43851e66badafc3f2a6b3fdef544
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:fdd8a7f41bbb68a84059d77c62ec55d5d99d11416f5eda08f47c89271d516e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.0 MB (760032207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9158fc54cc453e68daf4744aa4a46c50f0fd5216af6ddcc5639f6b42c855a2b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:09:47 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:09:47 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:09:47 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:09:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:14 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Mon, 26 Oct 2026 23:10:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:14 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:01 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:01 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:01 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65ea755b4e8827048d419f2cda97a996ba60a859a249c7bff10c9b40ffbc2f4`  
		Last Modified: Mon, 26 Oct 2026 23:11:47 GMT  
		Size: 39.3 MB (39298360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663e1cb9d42e633588ac0250b512f63efd2b6e0944daebe3ae526d4d2d4f4a61`  
		Last Modified: Mon, 26 Oct 2026 23:11:45 GMT  
		Size: 927.5 KB (927545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1679a84772c6be0ed10eecac70aa6d2d970fd069a0cae63dd279c7a09a7387e8`  
		Last Modified: Mon, 26 Oct 2026 23:11:45 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada5609ba8c94bc7c578239a1b51abe9dc1658512da6bfe224aa73c6bcd75eb8`  
		Last Modified: Mon, 26 Oct 2026 23:11:57 GMT  
		Size: 690.0 MB (690048636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b492e47f13ba5900853c2d92b0a7ff72f911fcbc80053b732140857fa056c27`  
		Last Modified: Mon, 26 Oct 2026 23:11:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95911d902a85993ffbbac9a0ce1cee1266045de07677fbeaab7883f98594e541`  
		Last Modified: Mon, 26 Oct 2026 23:11:46 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0486e6f8fd5096986d8924bd70804e1e9287c3f372fd3335560f9bba51390953`  
		Last Modified: Mon, 26 Oct 2026 23:11:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85bdb56b2eb173fd31507a79a1b013394aea939498c4ef5233dcf55f7d69bc1`  
		Last Modified: Mon, 26 Oct 2026 23:11:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e0e9a4fd8830aa6de1d4f6cf60d8699c63b747b20b8ad2fc950d1880cd7b78f`  
		Last Modified: Mon, 26 Oct 2026 23:11:40 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31566da6121046462d945c120839572cd028145d0bccbf92f974da64a2a070a2`  
		Last Modified: Mon, 26 Oct 2026 23:11:48 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:8315c27e875d6c35f3ccc39bd9804318afdf587f181bd86980aff390f95566fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1d6f474b49cf87d0d143842ade19ce8df01132605ed5fa37476d8325af5bcc`

```dockerfile
```

-	Layers:
	-	`sha256:cce166bc3ec6531d9da3f4fd68df889af12c69532a0f1030af792c6ee2532048`  
		Last Modified: Mon, 26 Oct 2026 23:11:45 GMT  
		Size: 37.5 KB (37521 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ecfa9aee874437171a5127d032f71f173d6e39a0a5be3c5bbf48b6fbc8fd9388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.5 MB (732540901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79c9eda05ea3220bf810395d213a70ace631dd1468e0d0552206547515c0cbf2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:32 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:19:32 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:19:32 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:19:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:21:21 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:21:21 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:21:21 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a160269b4af60dc31abeca6a2038fbeec14ba2d67366a9b122a506ff63a9e2`  
		Last Modified: Wed, 11 Nov 2026 23:22:08 GMT  
		Size: 38.8 MB (38848932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9839d0845b3e86f8d2bb2d15e72ca75821fc72fd6db76e9425a224f6e3b4e6e2`  
		Last Modified: Wed, 11 Nov 2026 23:22:06 GMT  
		Size: 776.1 KB (776070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d633ee6e348dba8182a0d6cde75ba11240ac08c0b2fa599a3fcc464c14866e`  
		Last Modified: Wed, 11 Nov 2026 23:22:06 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f98add88f401e88470ce7b0ca93fc03674feb80da16efbc48252cde7159e77`  
		Last Modified: Wed, 11 Nov 2026 23:22:19 GMT  
		Size: 664.9 MB (664909302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccfda14ff2f2be230c47e406d98d5008873dae6bf9abf417ad6f48bdc0ab22de`  
		Last Modified: Wed, 11 Nov 2026 23:22:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a78559b7c17572548377e25c5c46a5f5160393268c3d726d00607e56466c960`  
		Last Modified: Wed, 11 Nov 2026 23:22:07 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347a8beb06d54bbf1e2c72a3e28093fe3c5ccb35aab86d0a8ff21a8744393253`  
		Last Modified: Wed, 11 Nov 2026 23:22:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5159d236b3f1fe1dd4aa6ab9f073b1fec4294028534f22b544cc87ad90cd8c9d`  
		Last Modified: Wed, 11 Nov 2026 23:22:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730eb0720eb4b74466ea0f5c66d112eb2fef36ff218c957cf6e9d7f35379251`  
		Last Modified: Wed, 11 Nov 2026 23:22:09 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5396ef83350911d5c64634019c3d8487fdc1b69df9e84527b66b299e3e193f`  
		Last Modified: Wed, 11 Nov 2026 23:22:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:c67bda71f5e9fa7823ba13319a59a51c1273bb2bedef61a6b961ce21676189f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31fc7b89c3f96eb049902080c8edc4d1fe88b1a8abd73a4f077692c5a26d6233`

```dockerfile
```

-	Layers:
	-	`sha256:57030781f83538e10c163019ad373f4e638b5f610488de89033ce0e1c7b77568`  
		Last Modified: Wed, 11 Nov 2026 23:22:06 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.1`

```console
$ docker pull couchbase@sha256:3a4e8a7d5434abff32b54b2d5df3f60fa4d7abf996d1967483b14fd2bef61016
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.1` - linux; amd64

```console
$ docker pull couchbase@sha256:fc46bb966494522fe9a7ecba77322cda6412fa14ef8329901d92fee493524e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.1 MB (760056417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f77c1534ba4a14e390ddfc8e336eca445ff42df875290e073b4e34c41cc9ea55`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:10:02 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:10:02 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:10:02 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:10:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:30 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:30 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Mon, 26 Oct 2026 23:10:30 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:30 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=785f9d1f17ce6cde779f361adf0a0ed5f0bdaa78a1a4ab1c70b289d109b59709            ;;          'amd64')            CB_SHA256=12f1a671c28f12d946b9f39fb5cf7fe7c32e51fe30e0045d423b25627367be54            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:27 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:27 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e59bab3e96f3fdf1e79425e75d8c222c0158793e8567612f7b2b69531126db`  
		Last Modified: Mon, 26 Oct 2026 23:12:19 GMT  
		Size: 39.3 MB (39298283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519fe7c978cd9b118a252e25f671cff30f19a32fbd3dcccac7f131da41f9374d`  
		Last Modified: Mon, 26 Oct 2026 23:12:18 GMT  
		Size: 927.4 KB (927434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebe6dbb416c43122a7dbc3c64477bc0476697ba7517178bcdc457f78a4b48fb`  
		Last Modified: Mon, 26 Oct 2026 23:12:17 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7896807db4fb4f5131bed105a89468d8fe3ae299c6c3ecf9c3981910ed52ef3c`  
		Last Modified: Mon, 26 Oct 2026 23:12:29 GMT  
		Size: 690.1 MB (690073032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50982d391fb2e27900864d4e6e9b9f9f902de106104fd0dc3d3a92e09ddeeb98`  
		Last Modified: Mon, 26 Oct 2026 23:12:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f389abb54bcb7ee90ca09ae12d1bd2dde17590757998ebe9cf45af31ccf019`  
		Last Modified: Mon, 26 Oct 2026 23:12:19 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da51ccdb40c27365cfaf668e8d2c978a993fc011b60347b26473538a16746b36`  
		Last Modified: Mon, 26 Oct 2026 23:12:20 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3752a1d71da338185ad4c0563bda03942fb0e95c91a0319053d23f2c10d934`  
		Last Modified: Mon, 26 Oct 2026 23:12:20 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b51ae37594e6ab81a68b902d221c794e13b1082295cbf40fe7b3c829a1871`  
		Last Modified: Mon, 26 Oct 2026 23:12:21 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e23b6fd70c8e0d2862810ed96ea5fd9d211c89842c0f283064a36ed4b71983`  
		Last Modified: Mon, 26 Oct 2026 23:12:21 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:49be250140c91a78a1fe2eb78bc256db6d016edfc81587797cc28eda0b512313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdd347013594933bb62209b9f0beb6ad7d6c4d6acd19bc976e77eeec88bbcbb`

```dockerfile
```

-	Layers:
	-	`sha256:985ebd2e7b84b52780594136935399e561f287501713e04a3e1e08badc5122e1`  
		Last Modified: Mon, 26 Oct 2026 23:12:17 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:2ccf36b9d91f1825ec9d8dd9c4c63141296daa069b3ccdecb9c8562a4d6937e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.5 MB (732549780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50699b954941be917c24337d4b22a60d06178b27230eb2d03e1f49807cede35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:04 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:19:04 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:19:04 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:19:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:21:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=785f9d1f17ce6cde779f361adf0a0ed5f0bdaa78a1a4ab1c70b289d109b59709            ;;          'amd64')            CB_SHA256=12f1a671c28f12d946b9f39fb5cf7fe7c32e51fe30e0045d423b25627367be54            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:21:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:21:25 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:21:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:21:26 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:21:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:21:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a458fd0a4f9346478574cfd1e40ee40b913e314ecb55bbb69091cad006a8b5`  
		Last Modified: Wed, 11 Nov 2026 23:22:18 GMT  
		Size: 38.8 MB (38848919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b089b3739451ecd96f82839a81f5171b348f2c396c5d844349882cc1e1d547`  
		Last Modified: Wed, 11 Nov 2026 23:22:16 GMT  
		Size: 776.1 KB (776107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af3184828ebbfc633be8801fd29a3d1cedcff5f5cd838fca65053a99ef84fdd`  
		Last Modified: Wed, 11 Nov 2026 23:22:16 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e106b37ff08c0e7dc868377cbaea8e82f79da1b0e3fdf24d42f7d170e6191d`  
		Last Modified: Wed, 11 Nov 2026 23:22:28 GMT  
		Size: 664.9 MB (664918157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b03fed0695768db5dce01dfe8b99d80fc3393e4645c28731e2eca8a879fdd4af`  
		Last Modified: Wed, 11 Nov 2026 23:22:17 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccff4a8650726ad92d6cf763df00d8809c34272a09124a0bf72b99de2c685a7`  
		Last Modified: Wed, 11 Nov 2026 23:22:17 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b165f583c868d0497ebc44396ac0abbda00ba1eca0ba15649e0c8c4b835aa0f`  
		Last Modified: Wed, 11 Nov 2026 23:22:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ca7ccbf0dd6a914aa70ebad68bc6f1eff1d9a1660c5a56f8171f6ba09dead8`  
		Last Modified: Wed, 11 Nov 2026 23:22:18 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51815ce007640f88596a21f751ff32209a905fc8428bd0b96261963c4cc9dc39`  
		Last Modified: Wed, 11 Nov 2026 23:22:19 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe43a97af55627fcb25b05f0a0861c91967ea3cbb2ee8ee77f744e8b2e88422e`  
		Last Modified: Wed, 11 Nov 2026 23:22:20 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:e70a19bcc691f89b7af17d90c4278ae2571e27debe1369214d3b4bc6835fb137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187b3a8d53dde0579ca767f154ba2d2a6111f547ddc40710f56da5846daf854a`

```dockerfile
```

-	Layers:
	-	`sha256:47240166f5ef9a56c9ecb5e94138c0c201bed6f7ea79c5c17b5843209751720b`  
		Last Modified: Wed, 11 Nov 2026 23:22:16 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.10`

```console
$ docker pull couchbase@sha256:7fd2be95e16077ab5d1c2e05f27dc694529f90ff3104b76884210109303f0a7e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.10` - linux; amd64

```console
$ docker pull couchbase@sha256:6c462520f38d401e39e87049a813ec03acd68aa1c02bc32d1325688c469d09ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **834.2 MB (834221814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4729fca531b3e1103315c24a272e177495eaa2237ec077c4f366a46dee00f37a`
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
# Mon, 26 Oct 2026 23:09:59 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:09:59 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:09:59 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:09:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=680d6833172db7691aa0f9562aa50e044214f97cd8a785b410e828a840ce38bc            ;;          'amd64')            CB_SHA256=80938b3c86eb4cf412d9eb80b6494d96d32ce90555dc8536e0fb44a884f453ef            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:10:56 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:10:56 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:10:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2a79d59371015ae6a3934419b93d54b26a3df1ffaaf145abb880ba35cf9bc5`  
		Last Modified: Mon, 26 Oct 2026 23:11:50 GMT  
		Size: 44.0 MB (43982349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10e10548799b8d6c97fa9772e5a9ef797ac7947730eff7b0a295f78ccea0e4d`  
		Last Modified: Mon, 26 Oct 2026 23:11:48 GMT  
		Size: 879.0 KB (878997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47427be014e1b56e16795db9c232862db768d221be7df012edfddaf1f34e365`  
		Last Modified: Mon, 26 Oct 2026 23:11:47 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ed0fbf4549cc62f9af6023592f8692ad233d4e2a08eedf973b5160d8e1a443`  
		Last Modified: Mon, 26 Oct 2026 23:12:01 GMT  
		Size: 759.6 MB (759585873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a57093d4214c551f02be8347b2349ef6198ff34b3fd979d96fcc7581872a55`  
		Last Modified: Mon, 26 Oct 2026 23:11:49 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39391a30856581636430eb63ebfe766cc6fb98450dc0a82864b06b041e07e704`  
		Last Modified: Mon, 26 Oct 2026 23:11:49 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eececcd84e0dc6d2f51b9f1e7cdb723bb205d9ec3ba200465d09788a7357adc6`  
		Last Modified: Mon, 26 Oct 2026 23:11:50 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfc261b39feda1334a4c848701acb34f831352cb161d828e61b2108b3d28e24`  
		Last Modified: Mon, 26 Oct 2026 23:11:50 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99688b0fade9420cd8685836d60429352f7af575e4a2806315f59c0e28cf755e`  
		Last Modified: Mon, 26 Oct 2026 23:11:51 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3bf6ae600e3335641bad563dd299141fd094f97acce78b3315ac2c690fe654`  
		Last Modified: Mon, 26 Oct 2026 23:11:52 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.10` - unknown; unknown

```console
$ docker pull couchbase@sha256:9020470a61b6f4b35fde7898a5c84063153a561aa4329fe56173a57db201762a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a5c33f200b2c3318530cdab7eae9ec10d3d552bcf2d788f02f1b3e660b9a54c`

```dockerfile
```

-	Layers:
	-	`sha256:83f0bc169758015dd5d2ca2e46144ad3b7ab14b2fe0096a411b5d511f2f8e18b`  
		Last Modified: Mon, 26 Oct 2026 23:11:48 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.10` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:f8d39032dc23a5d36e6abb46a480abc1409a2a11ba115aeae1c37f4cba8d4183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.1 MB (797104608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae44b4be60c807d9f25040575ebd8f8f13642dd9e69568e169804d021fc3e5e`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=680d6833172db7691aa0f9562aa50e044214f97cd8a785b410e828a840ce38bc            ;;          'amd64')            CB_SHA256=80938b3c86eb4cf412d9eb80b6494d96d32ce90555dc8536e0fb44a884f453ef            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:50 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:50 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:50 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511c95473871c83689ab5d50ef8fa5c689d11eed5109e8727f36cd33d5ba90f`  
		Last Modified: Wed, 11 Nov 2026 23:17:55 GMT  
		Size: 43.8 MB (43811031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978bbfce83f49df1faaa72b3c6bc5dd2453973d60085507e57227be072c9a323`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 766.7 KB (766745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08533518b49bc55b2ffb60e89ae75ae7ab0f6e67e5f7a70ce698456cd2ed63dc`  
		Last Modified: Wed, 11 Nov 2026 23:19:41 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100a0a6f188f2faab9543bb9753603209dc2ac2b90e9e71a87dc70d25504b595`  
		Last Modified: Wed, 11 Nov 2026 23:19:55 GMT  
		Size: 723.6 MB (723554587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8455acc6b078562f110240cb2eeb18a70ffcfe985fdf8d3b3cc7619de992aa3b`  
		Last Modified: Wed, 11 Nov 2026 23:19:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb68bb005664fe0ea089a0bb7d39a9d2b8dbc6bfd3f6d5f73d710e87f8c001`  
		Last Modified: Wed, 11 Nov 2026 23:19:41 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0daf5059112d479de35e96c850ef5fc310968a2354fe3d4e60ab308b8e7a21`  
		Last Modified: Wed, 11 Nov 2026 23:19:43 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3a900a0acf61aff66d0fb8b6b7c261bad03f8cb32fbaf84367c4976ed54849`  
		Last Modified: Wed, 11 Nov 2026 23:19:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b6b062ded114b141c8aaae295868a56b2a4d27ab51a25777758aebdc70b3ce`  
		Last Modified: Wed, 11 Nov 2026 23:19:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d474277637254bcd1ef0031eb447b75bebd961cd6a267d460d55ce80c80982d`  
		Last Modified: Wed, 11 Nov 2026 23:19:44 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.10` - unknown; unknown

```console
$ docker pull couchbase@sha256:2f2c186e6eb004851068c60160f89d909e595ebc389060ea513ce9e6803c6893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06b0ecdad0ede8944e7c59e300c251ba0df414fdae9f40d8c571b1f812e3a58`

```dockerfile
```

-	Layers:
	-	`sha256:8b49db52e37cb3858b31378c5b3178b4283207dc51643beb926e8d780e8db5c1`  
		Last Modified: Wed, 11 Nov 2026 23:19:41 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.11`

```console
$ docker pull couchbase@sha256:03da0aa57c9bf3944becce62f64224ef9ada3095a04e5d334c80ee74e1d3c618
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.11` - linux; amd64

```console
$ docker pull couchbase@sha256:f0a7fd3736307d75489504e65f28cd1376c13c14d9bf40ba4e4d22e065007cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **855.8 MB (855762676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c41f0449b85891eaa3cefda856c7cd391d793e640b263f217ff9d73ea261794`
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
# Mon, 26 Oct 2026 23:10:05 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:10:05 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:10:05 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:10:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11
# Mon, 26 Oct 2026 23:10:32 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:32 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=802192fbfb596eb954f8de21597d83d26e9af60ff03e911f0210e441d9be5f19            ;;          'amd64')            CB_SHA256=a9dc8eb353e7e05c22a60d31330e9712954905012dd32eb4cea0fdbfb1bdbaab            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:13 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:13 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:13 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976b8baad8beacb3f9cc8635cbc0e0dcc9887f9f9ca856776a4aafbb7e9ea1b6`  
		Last Modified: Mon, 26 Oct 2026 23:12:16 GMT  
		Size: 44.0 MB (43981585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5949c31430c981dc4c921e63b123cacc9c3d3dceee90108a156549bb7fc677db`  
		Last Modified: Mon, 26 Oct 2026 23:12:13 GMT  
		Size: 879.1 KB (879071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e4caeff076e80d70a52d781bb53ec62243f5629e371da7f24fee1cd77c5e3`  
		Last Modified: Mon, 26 Oct 2026 23:12:13 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df4dba3db04821525c7494ace243d971a6a20c8f37c7a41cc4048afa3fc4d02`  
		Last Modified: Mon, 26 Oct 2026 23:12:30 GMT  
		Size: 781.1 MB (781127422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3394c7c47dde6ba22ec5a963ca6adc1b2e10addf2dace14d31e5f483a830b181`  
		Last Modified: Mon, 26 Oct 2026 23:12:15 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d006ba03a759dd9963efe098ef976d11ee98fbcf9d0bfd6629f68a48fa8ae87`  
		Last Modified: Mon, 26 Oct 2026 23:12:15 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:034e0ee446fad12b62ab64b8ac8d0464475d2aeadbcfb859f6beca5e738154ba`  
		Last Modified: Mon, 26 Oct 2026 23:12:16 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1f17427f4f7d939e4e6979d6fbc906a8aeb6e551f5d7e61eba99309178457f`  
		Last Modified: Mon, 26 Oct 2026 23:12:16 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5101a18ce2aebb01204f5592792c9ee8fc76e4856510355b1260cbaf9a40419b`  
		Last Modified: Mon, 26 Oct 2026 23:12:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7a17be795bfca2f9eebf5b9f9839669e6c642d765c73028984021f85cee0da`  
		Last Modified: Mon, 26 Oct 2026 23:12:17 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.11` - unknown; unknown

```console
$ docker pull couchbase@sha256:479fa2ad5513629b45ccfdb6a7dd3327127824b3a3e740c875f2298ea60b2a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7e14b289385f498cc9e313cba508e62f2573a53001fe379bea639154050b8f`

```dockerfile
```

-	Layers:
	-	`sha256:39fc37fee296f4c2a6a13d0bf290fa9b40fabb6e8ada4e1f523f42c51e8e5cf7`  
		Last Modified: Mon, 26 Oct 2026 23:12:13 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.11` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ef1c1454803d13bb5b8bc84e8c06ecbb2d1a051a1556c8121310bee5913b129e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **813.8 MB (813770356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de872763a60a8d94e0434fc5087a446c315ad38de334aeb8bc19b45292511184`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11
# Wed, 11 Nov 2026 23:16:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:14 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=802192fbfb596eb954f8de21597d83d26e9af60ff03e911f0210e441d9be5f19            ;;          'amd64')            CB_SHA256=a9dc8eb353e7e05c22a60d31330e9712954905012dd32eb4cea0fdbfb1bdbaab            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:41 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:41 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:41 GMT
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
	-	`sha256:e3f3ac70bc4892c16315276c0f8a419336b596bdd6e8c850e91fac44aa5f9903`  
		Last Modified: Wed, 11 Nov 2026 23:19:32 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c87b0f6c44bf264ba7a6a47f93e0acabbcc5154c5d6e9595647e95e1dabec7c`  
		Last Modified: Wed, 11 Nov 2026 23:19:46 GMT  
		Size: 740.2 MB (740220496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e20fa2eed98073d957552f009e6a6c338940b47df1b068b75258a149024dc2`  
		Last Modified: Wed, 11 Nov 2026 23:19:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e893b5f92f7a4dc1f7a8249d5979c06974247ae084fde96d1a7243abe1d3fc1`  
		Last Modified: Wed, 11 Nov 2026 23:19:32 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b0e12ecf80381dc14da7c8a2b5a2334cb8fe36ab27e9e453a2fe0367dc45ee`  
		Last Modified: Wed, 11 Nov 2026 23:19:33 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c82f01c6156d3da728af1ff305f892b9e24e830d6727b3874ae42b8c0a0c26b`  
		Last Modified: Wed, 11 Nov 2026 23:19:33 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df3a09ca180b68910f5d4c8dedb3a18495ccf9dccec8fcdea0441dcbab12425`  
		Last Modified: Wed, 11 Nov 2026 23:19:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbde60223ea1f08750853b536f156a8d56e8742d76fc3d7b395fac2491a66317`  
		Last Modified: Wed, 11 Nov 2026 23:19:34 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.11` - unknown; unknown

```console
$ docker pull couchbase@sha256:42c1856d3c4119823f4dd0ecc47964bd8cf6303624d4cd49dbc4205a5f7a93ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2aa3cefc2478e9197260d939f829809f888764561a54d991faf39e8e7a8221`

```dockerfile
```

-	Layers:
	-	`sha256:048ee4f067d56b4996f84295840b3d8bde46d7bb980140dd50e49c6a3eda3220`  
		Last Modified: Wed, 11 Nov 2026 23:19:32 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.12`

```console
$ docker pull couchbase@sha256:0de389d001a37b42c20b9d1ae291fdccd3d43dc672e780d7829051e30b04f4dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.12` - linux; amd64

```console
$ docker pull couchbase@sha256:a3a83dcce32f472b6a14b08ed2d43bdf45061e0bef601465e3331614180f517f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.7 MB (879692902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4740d2f5316acb4f7a020a5fc58c09593fdaede855deba94a7fb24f158029d`
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
# Mon, 26 Oct 2026 23:10:03 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:10:03 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:10:03 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:10:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:36 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Mon, 26 Oct 2026 23:10:36 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:36 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:04 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:04 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:04 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048b01cb02f041ddd9b62d0782b69c030c2522691a5e7cc9707636ca2d4759dc`  
		Last Modified: Mon, 26 Oct 2026 23:12:07 GMT  
		Size: 44.0 MB (43982541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db12e7e02dfdca357bdaa83a2ef4903285cd4d469fd997d06ee361672b79f7b3`  
		Last Modified: Mon, 26 Oct 2026 23:12:05 GMT  
		Size: 879.1 KB (879065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719f8c625b273173b40926320b056727610f1297c10698e06a1e425f523b1d55`  
		Last Modified: Mon, 26 Oct 2026 23:12:05 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba38daa5b7658e32f41425614aeb93deb741720689c188216be359088c78108b`  
		Last Modified: Mon, 26 Oct 2026 23:12:21 GMT  
		Size: 805.1 MB (805056704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2aeedf0298727cd6d563a83f0d9fbecb4d2215c4ccac20c4219e0eb55b4860`  
		Last Modified: Mon, 26 Oct 2026 23:12:06 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2fdcda0d2a83e2ee5f881b1a85dc4d768e82d0fef5287b55da41de96da9205c`  
		Last Modified: Mon, 26 Oct 2026 23:12:06 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172f6490b4757a1c410a94e18e41f12f27d1509ba2c07165c69ea11c47992a9d`  
		Last Modified: Mon, 26 Oct 2026 23:12:08 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad0ca79995bfb840a4cf68f17d90773a1ffa881501262efa27b3f92c93a020b`  
		Last Modified: Mon, 26 Oct 2026 23:12:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56093d45d61f7ad2cb4513294a1f33a7f52079b65f3cff296edc58f908843ea0`  
		Last Modified: Mon, 26 Oct 2026 23:12:09 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c454fffd902fdce9354d6a613deef53b07c2e08009b60896e4b0686e465b94f`  
		Last Modified: Mon, 26 Oct 2026 23:12:09 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:d8a3c3e5b10fcbfbe8959811dd9d96ddddf7e0c9666ab330a3abfbfa9e109593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba489db1439460a8ceb2a4fe86e1a0208ed643939af318db12e421049d565b87`

```dockerfile
```

-	Layers:
	-	`sha256:0a501a36993b1915d68d89aad21fa5ab7d105fe67a1cbf180a99f47088ac3f7b`  
		Last Modified: Mon, 26 Oct 2026 23:12:05 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.12` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:b4c55228e9eccf0240b357b09f24538cebe2cea199d43a670fc1106e5076b3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.3 MB (837310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8e66a61efc5b54f174f43dbc291050c8517e6d49418cb1c32bc5c53dc88d26`
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
# Wed, 11 Nov 2026 23:15:19 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:19 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:19 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:44 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:44 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:44 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:44 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bbddbd87aa97c1c8cf17a894f57f8aa6ef39630817cf6d1fd5acc9cf452d41`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 43.8 MB (43811239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bbf7bb2d8fb1ea4c3df5ea79130dbe93301aa2ab540328e0f0c295261e3157`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 766.8 KB (766772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3772ddc35f91925b70fc5373233944b3b212aed6b69fdb8531c690ca64ad70b6`  
		Last Modified: Wed, 11 Nov 2026 23:19:36 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ee8fae89a81aac2046ecd4d815dfd02fced445e5d0ebc3872a2f4ae46df35c`  
		Last Modified: Wed, 11 Nov 2026 23:19:50 GMT  
		Size: 763.8 MB (763760503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424fe79d8906a34ab4ee7958b1df5db505d7cc7e30b68d75f7133145fd54b4fb`  
		Last Modified: Wed, 11 Nov 2026 23:19:36 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d738f7634a56e4111c630cb9e365efa53f45827e8d8f9e2391f7667e2049e2`  
		Last Modified: Wed, 11 Nov 2026 23:19:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d5a59f40033aa3ccd9a8a1fb6abdd2ef35e36f63dbd732c94f4e4ef1fcb857`  
		Last Modified: Wed, 11 Nov 2026 23:19:37 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1818baf511e7b30b51f37c368ac6c9e1da72994d62eac0170bbb1d42fee9c7`  
		Last Modified: Wed, 11 Nov 2026 23:19:37 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6348cf1f9a4a008d8f56abad17a603179f579035cb800e3035bcf1d2fdc41bd4`  
		Last Modified: Wed, 11 Nov 2026 23:19:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a33667e192bada24954918307e72930c51aa5328f815da1d0495b37dc059a6`  
		Last Modified: Wed, 11 Nov 2026 23:19:38 GMT  
		Size: 929.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:90fed953d05de462f2a627339f4a04e807a99264bc47215f1f391b3f107e43fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64589b82b4c08bdb0eb936d9ec349e57ba67b13695d9eb37ab53f4592558303f`

```dockerfile
```

-	Layers:
	-	`sha256:f22822c0f62a1e59b7626517f7363f0c23c2054974528a2a1e56dfddfbcb681a`  
		Last Modified: Wed, 11 Nov 2026 23:19:36 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.2`

```console
$ docker pull couchbase@sha256:b74813cc453acb0caa79b609b8c361921b508c10390a9c8eaab351ac8b2ed29c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.2` - linux; amd64

```console
$ docker pull couchbase@sha256:2f14ea8ce028f774a52d87deba34bd56a46435bb6ada0007a3782be6b1a00c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.9 MB (773925466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3472c1bf5ab95f86b64f807837fb2d7c9b08de5dc01f577c68d8f673651a8d`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:08:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c5697f6f2bfc21bc696f27d86e6f01b92e23ccbd3213e524c910c10d7bcab3fb            ;;          'amd64')            CB_SHA256=05fd37139aab8f3538ddfcf04eec97bd27654a5279468dce79dfad0f605bd784            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:09:11 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:09:11 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:09:11 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee209e60a27a20ea36ff21d295ce213058c63eb9a26a2304b0ea26bf4fc41b3a`  
		Last Modified: Mon, 26 Oct 2026 23:06:28 GMT  
		Size: 44.0 MB (43982216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfb4a914f88d58bdec268377a2b2cf3f573b0f5d2fbbc9c6f3c6312c9b2e3ec`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 879.1 KB (879089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308535161b243c1458f331f1ff38f2b5d0f32072ada7c942ec7fcffc79f77e5e`  
		Last Modified: Mon, 26 Oct 2026 23:10:02 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6d3216d15a73a334a979ffe5d12c62b8b1d90722df1aef4e3eb8dd018a4806`  
		Last Modified: Mon, 26 Oct 2026 23:10:13 GMT  
		Size: 699.3 MB (699289638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3024adb19428567d8f47362c663cf3d879ba105e9d210a9d3e044542d89cf2`  
		Last Modified: Mon, 26 Oct 2026 23:10:02 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2dab979ce0e0cd7a87e72d5e0e33fed3e9f35db402babcaeb037ea6c901647`  
		Last Modified: Mon, 26 Oct 2026 23:10:02 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ebea61b1ea4e4c6d64eaf631641d73a8f1af7aa24e5f8da83461c092973bd5`  
		Last Modified: Mon, 26 Oct 2026 23:10:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605607e157209931867550588899e3b39dae94d51a97306489150284e4f0cb0e`  
		Last Modified: Mon, 26 Oct 2026 23:10:03 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e53ad1bb1da48a49c89975ac501e246e12da26c7cc800b5d1b85a10d698c592`  
		Last Modified: Mon, 26 Oct 2026 23:10:03 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9a270ff2817792a43eab934b44bf20d06b04e77ac320d3260d210ff6f62c8d`  
		Last Modified: Mon, 26 Oct 2026 23:10:04 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:65055453bd4eaf053bbf8203689cc54ad340f22d01804f70ed157c8ff3420fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23cef8d2d4a8b3c4d958a55c7efcd45f0412b6573bdd659ef6c0fef6783d4021`

```dockerfile
```

-	Layers:
	-	`sha256:6f3fedebe6d853388b91fe38790e39d72d268af3a8afb84f7e9cf403cb5c75a6`  
		Last Modified: Mon, 26 Oct 2026 23:10:01 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:0b399bc666655fa6495707ffa8c9c0ca4fe03e8abdfa97c546291cd2788eebb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 MB (746946451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a9462fe35bca51481982d8bb366b6de2fcd7969ab344185e26c6b31ddd8952`
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
# Wed, 11 Nov 2026 23:15:23 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c5697f6f2bfc21bc696f27d86e6f01b92e23ccbd3213e524c910c10d7bcab3fb            ;;          'amd64')            CB_SHA256=05fd37139aab8f3538ddfcf04eec97bd27654a5279468dce79dfad0f605bd784            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:25 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:26 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bf754667680261d6862e038291b274db9d66608ab18a05f77dac8c20393498`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 43.8 MB (43810947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3256ec19d74d41f20c8cf59d3ff6ed80c064892e528b207a1ddb16350188b822`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 766.7 KB (766724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66eebb64294db36fa4019a04d302be374f7e0167c3b17f24a1d56a11b8a51499`  
		Last Modified: Wed, 11 Nov 2026 23:19:16 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4b05c884da5fd2ff9616a7b80fb596709f36032c5dfc1d42c2423234d309ba`  
		Last Modified: Wed, 11 Nov 2026 23:19:29 GMT  
		Size: 673.4 MB (673396611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aedb4fede713662094b4d58c4f2e5c157d084478f139463d9173907115b4f85`  
		Last Modified: Wed, 11 Nov 2026 23:19:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cebcb9c1d5a03e907ec9e1697a6936b5cba2539acc50ceb6f98ed435e5498d`  
		Last Modified: Wed, 11 Nov 2026 23:19:16 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368f5f3aecc2c7b3d887f0345de0f4bba78dacdc82e20a2b773f35c717541a4c`  
		Last Modified: Wed, 11 Nov 2026 23:19:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17619ef0a49b4dcc4884cf88b19cca66a1abd257ea9ef804f6399b124714c1b6`  
		Last Modified: Wed, 11 Nov 2026 23:19:18 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681b358c55f41fad20390aaeb8826aa2f4a6e09dca17bdffe92083e41d0a0772`  
		Last Modified: Wed, 11 Nov 2026 23:19:18 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9897e42394c1eb557bc6f23e8f3e73b0b705ddb9c0eeff3880ec19bb3201de0`  
		Last Modified: Wed, 11 Nov 2026 23:19:19 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:d69ef76ff636c10ed3f08b3abba8852a0f45ae51b5d8424b0c78d8c55d389357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95b3463dc9487e5614acff679cb726635e92bc2342ef3c630ab7f48d0f4a50`

```dockerfile
```

-	Layers:
	-	`sha256:3ccb641360cb28e9e91db918a5b35e1c66f10273a671306ec19fc8ae878bd925`  
		Last Modified: Wed, 11 Nov 2026 23:19:16 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.3`

```console
$ docker pull couchbase@sha256:b68bebb49d9ec5c2360336be68e6df0c56a6f825138c43a0b6da3e74b94fd7ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:346d44d1a9a079c8f8b1685a07051a5c1b62484b718d346fe6c25dc719437766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.8 MB (773826345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d747d3ebdf0cccbd7042e8d5c81f98e65b19379b97161b9ceaf5c9d18d89526`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:08:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:29 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:08:29 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:08:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8822025cc32643cdb8bdb2abd98c5d6f0d8a73f85f6ab8dd12b209aa0c5b7be`  
		Last Modified: Mon, 26 Oct 2026 23:06:10 GMT  
		Size: 44.0 MB (43982047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f62ac04a96ff1d3ab6d7b33d8d031ef488974cc9e9e48fce2e95937fe8db50`  
		Last Modified: Mon, 26 Oct 2026 23:06:08 GMT  
		Size: 879.0 KB (879046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e45c8e6376cf2dd0f1058139009e366b00008df877433a70e541cd93f0532c0`  
		Last Modified: Mon, 26 Oct 2026 23:09:20 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f23b19ba438920eac688b29423749a7e84db89526f858dedcd2255301076111`  
		Last Modified: Mon, 26 Oct 2026 23:09:34 GMT  
		Size: 699.2 MB (699190658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f097a80362ee4b72e8d59280ea899b8fe3b92147a1c5c09275a663f4d2d8568a`  
		Last Modified: Mon, 26 Oct 2026 23:09:20 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8041d7daa1452fde034024ab71c04ed0b915b68c96b9d6fff37f046c1b8cf2b3`  
		Last Modified: Mon, 26 Oct 2026 23:09:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4c6d6a42941a2a6b304aa7514edd227786ded91cba52740b178f1e53ed9664`  
		Last Modified: Mon, 26 Oct 2026 23:09:21 GMT  
		Size: 844.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8753e37b197161cc41100b18765dcf3a89498fdcbc51cdadfd90dd4e82794764`  
		Last Modified: Mon, 26 Oct 2026 23:09:21 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c678e907a562cee85c98f1f3c0c57d527b81318228b07fb67fc8efa4f732c53`  
		Last Modified: Mon, 26 Oct 2026 23:09:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966b28736cd7095861dfbdadb5a7adb983769c40813b5a1b146c638eee4c1e96`  
		Last Modified: Mon, 26 Oct 2026 23:09:22 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:7b4dad16784c7a1db8d2f35f742fe70f0a903c8238c2df33bbafac47e5793ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5983d641803d108bc5d4d16ea562aa7591aa02c3bc8330f6e515b8113990a4e0`

```dockerfile
```

-	Layers:
	-	`sha256:8ee613ce4a0672171dc29dee5a752e1b3080e63124f37f0513ae526f19d7c477`  
		Last Modified: Mon, 26 Oct 2026 23:09:20 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.3` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:f0a5858d1cfd46f8bd925eff044cee69ce1a3303f34fc6590f666b7c3c4ef724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 MB (746852004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81993098349924c1f85768df9a521ff0b416a3b322698ad48dfb41bca3475463`
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
# Wed, 11 Nov 2026 23:15:25 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:25 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:25 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:17:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:30 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:30 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:30 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:30 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:30 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279c907ecb54e5a7562776ccca1246dc0fab0793a4e234e998916e1ad8f1d0ab`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 43.8 MB (43810604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bcc06ed7ab900d6a86e5fa4dcb9d84e559e5d6e2c91e21f30df6d710edbad1`  
		Last Modified: Wed, 11 Nov 2026 23:17:33 GMT  
		Size: 766.8 KB (766804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7871968e6b9c907656aaf4bbf2aedadbcf5fe0972a8092b925a60ad1fda73241`  
		Last Modified: Wed, 11 Nov 2026 23:19:20 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aac121a5e92d6d7eebe14697a500797bf63b00758ebc2cf6f597d646eb91475`  
		Last Modified: Wed, 11 Nov 2026 23:19:33 GMT  
		Size: 673.3 MB (673302352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3b4f82c186359fa7e4377844922b7bee593788d92fb05b918a6bd0165d68d`  
		Last Modified: Wed, 11 Nov 2026 23:19:20 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234288ecd2decce2b5884c166a8479067d0f5cbd8fc8efdb466257c1d87eb57c`  
		Last Modified: Wed, 11 Nov 2026 23:19:20 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab46442db23497c83d86f6794d5b3b289fbcf6495679ca01ca1a40011e78c81f`  
		Last Modified: Wed, 11 Nov 2026 23:19:21 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4939d2c3ea660210c4ebf15f408bd5b892d21bfef890cc1f49caffd7eaadba`  
		Last Modified: Wed, 11 Nov 2026 23:19:21 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d065c749efdb433acec5685d1d73ce6cb94c8c38dfa0e309a03c2b67ec90145`  
		Last Modified: Wed, 11 Nov 2026 23:19:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0655a854a207fa13e7440f036c0ad115c70a64fdfbd30c23a5db7e2a4cde70`  
		Last Modified: Wed, 11 Nov 2026 23:19:22 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:c8a22753faa8c63ab3a87bcd8b6131ec64075b1f8b8a525dea6be3986a408367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e8ab46690274879790a560f8a13c8ac886b4904343e589bebf04b20e9b2b13`

```dockerfile
```

-	Layers:
	-	`sha256:37e973e0cd73d02c6f9170fe6733c4205bb39e6aa952985bbc653d7e7a1f8347`  
		Last Modified: Wed, 11 Nov 2026 23:19:20 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.4`

```console
$ docker pull couchbase@sha256:80a92559e263b525a5edc4a800f34199aa72e9a58dff9b2ff844d96012054620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:54a4822b629a7ca5fccdbceee01a1ccd38841a83f498fd9ce7ea145b2f5a77d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.5 MB (776518662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c5ab7a5fa2ff93e6d31baf793cdfa8787edee548491b5b5ce092ea3e879497`
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
# Mon, 26 Oct 2026 23:04:08 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:08 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:08 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:07:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=362376a07ccdc1d604ef2d48229d853bed9340dbd033abd8a0174819dfa76b6e            ;;          'amd64')            CB_SHA256=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:08:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:08:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:08:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:24 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:08:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:08:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c55b85e7ec41c0f825d71cb5bbbff11c80795cf9a6a806d3f8a75037d5eb07`  
		Last Modified: Mon, 26 Oct 2026 23:06:02 GMT  
		Size: 44.0 MB (43982229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39451413569941830e6efae8da8fb2987176b58cee786a8e13d950424739f384`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 879.1 KB (879108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3147df793a00905b6a0b64240a1a425df4597ffc00fe7dd3d6d3aa3d0653ff`  
		Last Modified: Mon, 26 Oct 2026 23:09:08 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00b1d2fa3e22d4cd03c5055b027cbde986a0c8e9387b7d389dd405fd396f65e`  
		Last Modified: Mon, 26 Oct 2026 23:09:21 GMT  
		Size: 701.9 MB (701882735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036aa2279f2bfd3da4b486ad2fef3c7d1ef50cc3b3ae5658a7ae0799c50bf4f0`  
		Last Modified: Mon, 26 Oct 2026 23:09:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6687c7a83e697abf17f0e69dc4f24d1ad7ebd1e28f1bf1e5d49180a67bc11c22`  
		Last Modified: Mon, 26 Oct 2026 23:09:08 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b404e7f121668b27312265cb32a1d41c622c964f3b07d03cdaa3dbce5e4b7ba`  
		Last Modified: Mon, 26 Oct 2026 23:09:09 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855dfded1440996e5c3cc04093ac2878b1c490f45492f57767819dda3c4ae89f`  
		Last Modified: Mon, 26 Oct 2026 23:09:09 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a95b90e3ea1831d8431ef6f1b792f20d2622f7c8c532cde75da9badb43969ec`  
		Last Modified: Mon, 26 Oct 2026 23:09:09 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d905b3ed60c910feeccafca6cce466d0186946bfcbe0c7fe010d57b2ed6671`  
		Last Modified: Mon, 26 Oct 2026 23:09:10 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.4` - unknown; unknown

```console
$ docker pull couchbase@sha256:59ff5843c7c149e173161d3d6dc502c707d60534f214fa8aeeddbfac7855ff99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654232931c077994be7f62568f11eadc276aa0539ec639f8cfcc65b98a706202`

```dockerfile
```

-	Layers:
	-	`sha256:477e47188fa6862bc93b7bf7222b99a52ae13923deb23643b9db2dd9a0aa6c34`  
		Last Modified: Mon, 26 Oct 2026 23:09:08 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.4` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:34f6c5c93383a499f8dcbba97721f3a62790dd2219ffe2a3dd8e999c3e485740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749114435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9099f9214626062fd80d58f40b0a640018f35d82583b52f7dc930c54d6dd1dce`
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
# Wed, 11 Nov 2026 23:17:59 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:17:59 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:17:59 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:17:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:18:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:18:23 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4
# Wed, 11 Nov 2026 23:18:23 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:18:23 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:18:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=362376a07ccdc1d604ef2d48229d853bed9340dbd033abd8a0174819dfa76b6e            ;;          'amd64')            CB_SHA256=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:58 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:58 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:58 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f4ef6c2b6580927200c11f92eecbb04d5c0f920f25f04759815b10283b62db`  
		Last Modified: Wed, 11 Nov 2026 23:19:50 GMT  
		Size: 43.8 MB (43811021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067510fbbea7331cdbb8ffd3c820f6b23cf6cb7f4981704a25d90860876552f0`  
		Last Modified: Wed, 11 Nov 2026 23:19:48 GMT  
		Size: 766.7 KB (766740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdd54f71fd34d67958ac17005a0a3ce2242b667f65498b967696750899df39f`  
		Last Modified: Wed, 11 Nov 2026 23:19:48 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d268fd7ed60c933a874eb1420baa0dc7a6341e8083aa601cd9fba5092af55be6`  
		Last Modified: Wed, 11 Nov 2026 23:20:03 GMT  
		Size: 675.6 MB (675564428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5ad06d7e4e1522bacb731d0c1417e7ba412940e611a90a0be862d0bae4589e`  
		Last Modified: Wed, 11 Nov 2026 23:19:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b4af9b928b4b94778c1e0e876e446728a3ea560968771a0580d5768ca0fa25`  
		Last Modified: Wed, 11 Nov 2026 23:19:50 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098ba1d81120044bffdbebeb3959b242a1dc4dc6ec1b94abc2d83d781013cd54`  
		Last Modified: Wed, 11 Nov 2026 23:19:51 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff4e62ad9b691d34795bc91d37a06dd01f0e96a35c7a7ade770399d94d0bf16`  
		Last Modified: Wed, 11 Nov 2026 23:19:51 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f22698b06c24b9d4bea09edbf53cffcdcffc07decfe1f52359d955301c07c8`  
		Last Modified: Wed, 11 Nov 2026 23:19:52 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c7c6e23cc6b797838e55d3cb50ebf0edcc2fc11eabb79ae4bc9b9534cdb3c4`  
		Last Modified: Wed, 11 Nov 2026 23:19:52 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.4` - unknown; unknown

```console
$ docker pull couchbase@sha256:09983e5ba7eafa104783d37dca5401dd2ff523067b4d302497c20e51a156b383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7d77d8934017c0b8d7f5b1ab04633c0f7bb0b5758691ba824faf18f5461efa`

```dockerfile
```

-	Layers:
	-	`sha256:3608ddebf4259c24f20e6bbf60a5a342a1650f50f19feafe2bf7f4ca2d2f2339`  
		Last Modified: Wed, 11 Nov 2026 23:19:48 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.5`

```console
$ docker pull couchbase@sha256:c526b52743b1624a52b0ae6eebd201505e0902e7267fea971287f49aef9daf64
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:6fd5b697535763cc548b1e48393b46886301f090811ec9f0dd9f47c86bcedcda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.4 MB (776377997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a118ccbc6dc82e4f1a9ee816cd9d1805e6ea8145b50036edbb972479afc4ee1`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:03:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:07:38 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:08:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=d162fb1d2e7acf151fdbf302c80f79622b7df67bf27ab85d83c40cc7e82a2ad1            ;;          'amd64')            CB_SHA256=9c2f2a01cecf862c210af5a7bfe38fd71fe087c52e1cc168119d34bf7aa79761            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:04 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:08:04 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:08:04 GMT
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
	-	`sha256:2c724df9c2888e0cdfa90323573231fc3d7df8c0b9ecea78967a58f6ad128fd4`  
		Last Modified: Mon, 26 Oct 2026 23:08:54 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f3af59e32aaf17db7eee9d4bb50bf2a17b44aedee0f0a68d83bd058a7dc407`  
		Last Modified: Mon, 26 Oct 2026 23:09:05 GMT  
		Size: 701.7 MB (701742192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed073f25c762ad8a7e17778a4e9338f03e4de66492f36ed0a10f9b9e9c6d4eaa`  
		Last Modified: Mon, 26 Oct 2026 23:08:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6618b3234d529ee6963bbad6b09c81a548cd9fbe072e66b235316222323090c4`  
		Last Modified: Mon, 26 Oct 2026 23:08:54 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47bc85ab847616ee04f9ca2be0e97490d874137ff98fd651200e3c0fd74f8b9`  
		Last Modified: Mon, 26 Oct 2026 23:08:56 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2f2d15c7266e93ef17a8cbcbc4edcf575075c3ae59efd7b3ab35fc3b988f50`  
		Last Modified: Mon, 26 Oct 2026 23:08:56 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678e70e06577ac12210a3ce111d7e87beea3daf2189351a4b6f4be0554c3119f`  
		Last Modified: Mon, 26 Oct 2026 23:08:56 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1031fc58fab5732f1d155847b997df7287aa6730d10cb0a7dc53bd0bb0b3132b`  
		Last Modified: Mon, 26 Oct 2026 23:08:57 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:1b92c50a0f7e7d99cf178729f77d3075a4901803222da4c2114caf62fdab16cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187a732e379ff9b63f04b045096137e916e1467eaeb2f8956e86c4d874d827ab`

```dockerfile
```

-	Layers:
	-	`sha256:8adf3abac7d51107b9962a431b91910e098333aff05b95ae76d3102ccbb6e96e`  
		Last Modified: Mon, 26 Oct 2026 23:08:54 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.5` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:dbffc5eb8b68103430351d3ec156e81eb5f8f4d082c68380632802fa124e0e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.0 MB (749023763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcf3276eccdf0ebebbdc4f0266ac72f2c0c2003d4b006c7591b15a2986e7cea`
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
# Wed, 11 Nov 2026 23:15:17 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:17 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:17 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:17:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=d162fb1d2e7acf151fdbf302c80f79622b7df67bf27ab85d83c40cc7e82a2ad1            ;;          'amd64')            CB_SHA256=9c2f2a01cecf862c210af5a7bfe38fd71fe087c52e1cc168119d34bf7aa79761            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:10 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:10 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:10 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:10 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1438c965094a528c753f4b752014071f64b4f28963a973278dcc9ebb43844`  
		Last Modified: Wed, 11 Nov 2026 23:17:20 GMT  
		Size: 43.8 MB (43811426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9916b11264a9c87d052385f0cb4f16082e132c389324e12baa162db7ca77517d`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 766.8 KB (766800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4c2a1ab24b7c812e9a080ac7ae0c2f99cd22cca51c996ebddf2db3ada6b067`  
		Last Modified: Wed, 11 Nov 2026 23:19:01 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9867208c1257aab801726f00f508c659699a0062936755b66aadc71f12daf3`  
		Last Modified: Wed, 11 Nov 2026 23:19:13 GMT  
		Size: 675.5 MB (675473295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2fc96e69f1b3063fe15721f300c7986e15893907830e35b77297137a1eec60`  
		Last Modified: Wed, 11 Nov 2026 23:19:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5bf378ea6f0d484d5f5be92d86845f3cefd9daac9f9b228ffe15f256be387a`  
		Last Modified: Wed, 11 Nov 2026 23:19:01 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82db451663d2b0445e208e409c52d43fc8ac064ca51bff35d7b83e20b65b03e`  
		Last Modified: Wed, 11 Nov 2026 23:19:02 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec9fdf3a1140f9a90b763062867d61c2005bdb3e4a473708348211c95f2ace8`  
		Last Modified: Wed, 11 Nov 2026 23:19:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0f272d559edb1889ddd74fbe98aa2b12f32096502e3b77b431c2951d264e7b`  
		Last Modified: Wed, 11 Nov 2026 23:19:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197ee59a0079a38407196cb84c5ddde112263e92c8d7654f0c0b024628f549eb`  
		Last Modified: Wed, 11 Nov 2026 23:19:03 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:e13689bcda83acd84d1b3dc2c40a34390bf4af671240d4043a70ba5509c5f6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81c16c6f873b40a4b213ec0bba4e7c1f6adee4e049dd5ae70ea74491822cf30`

```dockerfile
```

-	Layers:
	-	`sha256:d7bb16eeb4243221102ed136613052da7be5deb4b98341e5475018abe19e308b`  
		Last Modified: Wed, 11 Nov 2026 23:19:01 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.6`

```console
$ docker pull couchbase@sha256:b4c0745179f74cbc2be26390a560f91682018da00a5640bee2c1e5cc66448930
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.6` - linux; amd64

```console
$ docker pull couchbase@sha256:f2180f47305c47218de3aa627adecf23357966406ef9cb4ec77dda73ebed71f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.6 MB (799622848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b92fddfbb399fbf38c9e06254277bc7d0bf140a1344932388d0661cd005bc35`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:07:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:07:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=21b348be14c30e39658e9378ed62750806a20946677866d5859ac426df0e6486            ;;          'amd64')            CB_SHA256=43992488e154a87119a7ffb738de92b3364f5b1bfcbdd958e757e87762076ed7            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:07:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:07:51 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:07:52 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:07:52 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:07:52 GMT
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
	-	`sha256:2f52f3433921cf2a60c128d6e8754dc58d573838423b0aed2dea940e9a86629d`  
		Last Modified: Mon, 26 Oct 2026 23:08:42 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0ae08bbc03001ad24f054d8f7c8d2a8eb5d2d0b6e858873f37782727962ee3`  
		Last Modified: Mon, 26 Oct 2026 23:08:55 GMT  
		Size: 725.0 MB (724987296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36beb782b8be6a13667a63fdb92ff752846526f9e07656d51ed3d3588b27a7ed`  
		Last Modified: Mon, 26 Oct 2026 23:08:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ddfb127387aaef5e3839941a93654b1603d924091437513c19311faf825f26`  
		Last Modified: Mon, 26 Oct 2026 23:08:42 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ec86326eb97d8da0cc27158d607ce40feeb8bcf56a1207ea330fb501af93f8`  
		Last Modified: Mon, 26 Oct 2026 23:08:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a92765ccfd17ff1b7365ae6367ca4d97a6caa441548b99fd5f6fc127c26908`  
		Last Modified: Mon, 26 Oct 2026 23:08:44 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a26cf305fb5e0946650d690fba0f28c06d434f491b80cdda5f9c0e37d463aa`  
		Last Modified: Mon, 26 Oct 2026 23:08:44 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec5000a66184f042043a87560a3e59c51144cda720b7e29333d0a1b565fd4bd`  
		Last Modified: Mon, 26 Oct 2026 23:08:45 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.6` - unknown; unknown

```console
$ docker pull couchbase@sha256:228c2ff845266e7e3323f24a5ba4d603ebb72b6dae71f6690e1d87cd48faeb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10b2b4a1e21e53f7ecb6e50f12c67f60a9d4db8116aa8d2c7dd5ec595d68ec0`

```dockerfile
```

-	Layers:
	-	`sha256:1e1416631df39066514e33027f87fac825fdbd5db4364044b9b46050004379bc`  
		Last Modified: Mon, 26 Oct 2026 23:08:42 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.6` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:30e26ca21f3a72b1b58d3b591108c1d6c221da23857f048d84412772b06cec39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **770.0 MB (769985005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323647dec7b93fd574671f4220b648e1c04e15af8ba24ad5c723d1909332cc55`
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
# Wed, 11 Nov 2026 23:14:58 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:58 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:58 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:17:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=21b348be14c30e39658e9378ed62750806a20946677866d5859ac426df0e6486            ;;          'amd64')            CB_SHA256=43992488e154a87119a7ffb738de92b3364f5b1bfcbdd958e757e87762076ed7            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:04 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:04 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:04 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:04 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7513ece673814152fa55df119fb13abf3ed9e74a218699e23cd1507515c10288`  
		Last Modified: Wed, 11 Nov 2026 23:17:14 GMT  
		Size: 43.8 MB (43811491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44cde04225f0e4506e9d594a53332773f0960352e3321769059ce328773e729`  
		Last Modified: Wed, 11 Nov 2026 23:17:12 GMT  
		Size: 766.8 KB (766750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b579569e1c625c008f10c622853ee2b0c245025a463bb5adba9d705c2cd110`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f357ffb035498f71e9ce867afc576ff0bf4710c0399353d7c07f1dc60e7b11`  
		Last Modified: Wed, 11 Nov 2026 23:19:06 GMT  
		Size: 696.4 MB (696434529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78aa44f138b1ddf7b26c5968adf9968cdeb7d960e389f003a5f6d3fcf87afdca`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c3d9d479a15296b3e22a9f34e7810ebe7e1f3424253a6aef1f32b6c43b0463`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03e432525fb73aae1e972dbd39254002156c62ff0805e10cdda4200d39cd287`  
		Last Modified: Wed, 11 Nov 2026 23:18:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8360c95dfe87881deb80b61bf8f5d3c50305b5f1c938d8b34579ef2dda57dc80`  
		Last Modified: Wed, 11 Nov 2026 23:18:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd940af970b19b613c64365742ed5106d8562a7b3ed29a980d0758c76b63dbeb`  
		Last Modified: Wed, 11 Nov 2026 23:18:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e1eace389178b1219d6e9cd0307c36d1b2d24c77f2cb9a22839aaf220bfdc1`  
		Last Modified: Wed, 11 Nov 2026 23:18:57 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.6` - unknown; unknown

```console
$ docker pull couchbase@sha256:a62f8a84b368b335ec512a71a00cb8f887f1786b17a740eca5b3184c46b0753e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837d5ddbe0e05e5fb04055c9ee11668535cb4ae80ec1ba6ad3507f83d902c510`

```dockerfile
```

-	Layers:
	-	`sha256:967b9bfcdd30af0cab5bf518e7d38e3897dd1387ed250b839f78787d98f4c29b`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.7`

```console
$ docker pull couchbase@sha256:38f7e566095a4c98f4ecefabae0d32cd64bfad1df0d90f9457f31ade0ee936ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.7` - linux; amd64

```console
$ docker pull couchbase@sha256:d05fd8fcba3b8405a8dadc43e67cc56e6fddb5b328d7abc52321ddb48540943e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.5 MB (799464570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0706489a2816eec7726ffe076e465ff5d7a933edeabb07c4137e020cb37ab1a`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:06:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:07:25 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:07:25 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:07:25 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee209e60a27a20ea36ff21d295ce213058c63eb9a26a2304b0ea26bf4fc41b3a`  
		Last Modified: Mon, 26 Oct 2026 23:06:28 GMT  
		Size: 44.0 MB (43982216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfb4a914f88d58bdec268377a2b2cf3f573b0f5d2fbbc9c6f3c6312c9b2e3ec`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 879.1 KB (879089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7b6ec0ac53e8e38b399f17f0066bb87e68f1b877c5aae8f6018b6742f8a99d`  
		Last Modified: Mon, 26 Oct 2026 23:08:15 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdf868d0f91650bfeeaff7f34a66568564e99d8629d7b7ea3ebe6016dcdcfde`  
		Last Modified: Mon, 26 Oct 2026 23:08:31 GMT  
		Size: 724.8 MB (724828678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433e5930c5de9993e1d15cc57aea31f79fac70217a0e548f30c3726eb4a440ff`  
		Last Modified: Mon, 26 Oct 2026 23:08:16 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a4bf597cbff11aba8e436c66400385e25d20c22adcb4741133eda7bd4d0e34`  
		Last Modified: Mon, 26 Oct 2026 23:08:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be33134689b571b55e55785feb9e10ab4021fd97a01ef93d183c6a0faae914b3`  
		Last Modified: Mon, 26 Oct 2026 23:08:17 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ed3264a11792fe421499c3d9130a7b14fca692b22d0b5ad39ee80c2ddeca24`  
		Last Modified: Mon, 26 Oct 2026 23:08:17 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec4b950ba2d9e2039880331c16ac01671cb610f97807c5cd66a00ac1e305e4`  
		Last Modified: Mon, 26 Oct 2026 23:08:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71f94d284b0b9491d1c5ea1785a2220816a1e7793604bd828cff1cac330ad21`  
		Last Modified: Mon, 26 Oct 2026 23:08:18 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:ffcf93114e75b0b778668b6d3ef7f7113616931d07fa067786dad15a45a8ede2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8419707bf34899ce8812656369e770278651cea7467582616eeede235e328473`

```dockerfile
```

-	Layers:
	-	`sha256:a66cf76fd1c77d915ee6ff67dcff58caec4702bf926670e809aa2372108e1d61`  
		Last Modified: Mon, 26 Oct 2026 23:08:15 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.7` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:2ddc882b5336b7c0e5b2594ca70cf258eebde380cfa95e850e245cae3c774380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **769.8 MB (769832770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d210916beb6714d06285f8e133bf32da683c0898776b4c566a4c97b78570713`
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
# Wed, 11 Nov 2026 23:15:25 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:25 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:25 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
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
	-	`sha256:279c907ecb54e5a7562776ccca1246dc0fab0793a4e234e998916e1ad8f1d0ab`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 43.8 MB (43810604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bcc06ed7ab900d6a86e5fa4dcb9d84e559e5d6e2c91e21f30df6d710edbad1`  
		Last Modified: Wed, 11 Nov 2026 23:17:33 GMT  
		Size: 766.8 KB (766804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e292cc91e1b863ac5eb8f108a3d32cea18146ab651fb43e667ab95af33eaab98`  
		Last Modified: Wed, 11 Nov 2026 23:17:33 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9c262a9ecfd85d9d2c15698905b633bdbdd62d8a82a15197881b12656259bc`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 696.3 MB (696283120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7f951909288ba1bf77c386ee3a6b20cfc6dd301a56a64733186da207d051e4`  
		Last Modified: Wed, 11 Nov 2026 23:17:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa402059269f0148dc36f5ccc70d22532be7205c049651134b13ed3378924e8`  
		Last Modified: Wed, 11 Nov 2026 23:17:34 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5859cba38c02ce2b2804771b449b4e7c7092843dc9550db2416ed16d5d223b`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c58dd4caab6bed0f46a3d137400bc22128436b0f6e0c1b28081d751e8c81aa3`  
		Last Modified: Wed, 11 Nov 2026 23:17:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75702958d6913c0c8ca9997618bae5f6d82e57271733b2873781edc9d4d3dae8`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf83cb94ed83acd6df16b4b7e4a5c3a9cb5d04a83cc4aa265da32a1aa96b4412`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:34f5526da638db4b4162d8d85c45e656c0c4c6006ec8b7c6b56438adf5b41be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdd95e2915c43e364ab98e1bcf9060e22246071885d1bd82dc90f38674c106e`

```dockerfile
```

-	Layers:
	-	`sha256:23b256d9e26e24ba49fd1b54846e190ddb5c58fd2a4cd9c9077586f7fe640bef`  
		Last Modified: Wed, 11 Nov 2026 23:17:33 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.8`

```console
$ docker pull couchbase@sha256:9251250dc7e2bee36313aab63ff0aa30b7a133c00a8ca0caa0eab7a0de030e6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.8` - linux; amd64

```console
$ docker pull couchbase@sha256:2ac5686c1ef8b8832aeadf7d449c9e1bc1ba7742bc3945f87ac12b9c82060aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.9 MB (820854293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a056aea8f0ce8c9e775a397b41509f6d0f0c4ac32abafc5d253214a58a9587f`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:06:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:06:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=4594fe0dfe33e2674f3f800de605856bf7e2a5bb15e34f8bc44cc382bf8351a6            ;;          'amd64')            CB_SHA256=e1437c7e61aa1ab28b00604d9c1ce0e280fa4f4025f34ea3aaf6a975b8bdb3bf            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:06:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:06:50 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:06:51 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:06:51 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:06:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8822025cc32643cdb8bdb2abd98c5d6f0d8a73f85f6ab8dd12b209aa0c5b7be`  
		Last Modified: Mon, 26 Oct 2026 23:06:10 GMT  
		Size: 44.0 MB (43982047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f62ac04a96ff1d3ab6d7b33d8d031ef488974cc9e9e48fce2e95937fe8db50`  
		Last Modified: Mon, 26 Oct 2026 23:06:08 GMT  
		Size: 879.0 KB (879046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379e20aaa9a7bf2a52f3000e92ed026bccd9f5289e6c9a324a5300c3efbe7016`  
		Last Modified: Mon, 26 Oct 2026 23:07:42 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f992e02eccc73ce32d7fcb80515d4b1f6371654726ec01da09cb5670919f4f37`  
		Last Modified: Mon, 26 Oct 2026 23:07:56 GMT  
		Size: 746.2 MB (746218599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724c826fd9e8a8d7f26899dd5f8a8660650dc3885ed98c6d3ff1dbf515cd0231`  
		Last Modified: Mon, 26 Oct 2026 23:07:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a521060cecab4a588465abc635ef1dd291627d92c85770e85e07a3009a656d`  
		Last Modified: Mon, 26 Oct 2026 23:07:42 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e5e775646d03296de042fa581c248277d5f4559515317a44890673b98acd4c`  
		Last Modified: Mon, 26 Oct 2026 23:07:43 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c865f31d517e5a68dba8c7a995fe96e52bfef676944068427fadc838baad92`  
		Last Modified: Mon, 26 Oct 2026 23:07:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ec755ce569adb5fb5f6965fba602bb8aca5037de69ae2f03684059a2d62e86`  
		Last Modified: Mon, 26 Oct 2026 23:07:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ffb2af883b5e7691cade444f654ca6a8e0b5afd8fa3a8b8be1d1ae0583d89e`  
		Last Modified: Mon, 26 Oct 2026 23:07:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.8` - unknown; unknown

```console
$ docker pull couchbase@sha256:9f273ca9cba9819d98c746e28da60ecd1d77278b6027ec2f341238c5673cddce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777ef04b27c335e65aab4ee5bf4c20482afdcb2d6c24d836fe0d6e9d2d825e36`

```dockerfile
```

-	Layers:
	-	`sha256:f7190ad502f2af8596f095023bf564d2cb5c77971d28b0826d0b9ded6ad07ddf`  
		Last Modified: Mon, 26 Oct 2026 23:07:42 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.8` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ed890f7fdb1b7919daa926d70f088f8b4670b002fb4146982ce46a0d7593b489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.3 MB (787335693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ef1b80614b21a4389faacbbb764f54895ba8a49691a518725829faf0f59a6f`
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
# Wed, 11 Nov 2026 23:15:23 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=4594fe0dfe33e2674f3f800de605856bf7e2a5bb15e34f8bc44cc382bf8351a6            ;;          'amd64')            CB_SHA256=e1437c7e61aa1ab28b00604d9c1ce0e280fa4f4025f34ea3aaf6a975b8bdb3bf            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
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
	-	`sha256:e5bf754667680261d6862e038291b274db9d66608ab18a05f77dac8c20393498`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 43.8 MB (43810947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3256ec19d74d41f20c8cf59d3ff6ed80c064892e528b207a1ddb16350188b822`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 766.7 KB (766724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e41fa728ac80825341a461e86be1c361ea1c0988424c2a9cf34172f050a2e2`  
		Last Modified: Wed, 11 Nov 2026 23:17:34 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1391b1793378e95b71e51fbdca1e137e5e1b0635f82835f3ddc59e2b0a3cb20f`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 713.8 MB (713785775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc8d84d3de63189e1e0a250adbf43f9dee81df0dee089c74561f1df43f319d9`  
		Last Modified: Wed, 11 Nov 2026 23:17:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb542dacf1cb84448ec61902b472ad22286f03f41a65dc0655c8a0abfb6f84f`  
		Last Modified: Wed, 11 Nov 2026 23:17:36 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0519006e658517b29e250858ed55df86ece4e3a3e7557bd147b4a7b7ec950478`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3ced2c51294b6dc2e929afd119eee2f6f3052329558397ab0163398d053701`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75702958d6913c0c8ca9997618bae5f6d82e57271733b2873781edc9d4d3dae8`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc4b720d2322c2e4ac6474bc823daf892672313157cd3cfae09b255bd87e88a`  
		Last Modified: Wed, 11 Nov 2026 23:17:39 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.8` - unknown; unknown

```console
$ docker pull couchbase@sha256:73acca722c33cf35f975a0805246481f7a5b7778cd7880ec37ac7a46e06e6de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d2cd9e9dfaccd5a8355f7ce6161ac380d6e385373d17e1e46f39c599a14ee`

```dockerfile
```

-	Layers:
	-	`sha256:9018b5f695bf52ad6ef1bfe2bc33a2c66ba6a3f9947b1ac366c09db254d012e9`  
		Last Modified: Wed, 11 Nov 2026 23:17:34 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:7.6.9`

```console
$ docker pull couchbase@sha256:8d0384ab84b4b707a7d176652edd9445f9c3e7507f4922d0c0bfbda8b61b7553
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:7.6.9` - linux; amd64

```console
$ docker pull couchbase@sha256:fc88af8cc907e870ea85edbc45e1ce3e64004b9cb3925a8c0e1ee38c558da920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.9 MB (820879525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c041e2b35025ed07d96f24df41e171c8fe1b168364b737d5740557128e121ae`
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
# Mon, 26 Oct 2026 23:04:08 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:08 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:08 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:06:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:06:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ce070178588d34a08a792a63f11200c383b7c6d885f337101d13992850c282e5            ;;          'amd64')            CB_SHA256=51cd89e7db43bf5858d6b98e50c43e6217694d814fddabafdf5e798bf8460e43            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:06:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:06:47 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:06:48 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:06:48 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:06:48 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c55b85e7ec41c0f825d71cb5bbbff11c80795cf9a6a806d3f8a75037d5eb07`  
		Last Modified: Mon, 26 Oct 2026 23:06:02 GMT  
		Size: 44.0 MB (43982229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39451413569941830e6efae8da8fb2987176b58cee786a8e13d950424739f384`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 879.1 KB (879108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef654443cac2797f4d92b7d71fed3fb60440388c93d929f181f5a7e9553634f`  
		Last Modified: Mon, 26 Oct 2026 23:07:38 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cad68272d5e7e6a55c51cdc2ae49d411fde2fb9945857d6663c71fecf868dd`  
		Last Modified: Mon, 26 Oct 2026 23:07:51 GMT  
		Size: 746.2 MB (746243585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ba485a264961b6713a168380d5a8339189c0db21978feb0523688c16f42208`  
		Last Modified: Mon, 26 Oct 2026 23:07:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9992daa06379edd4f1c0ebbed4c31d223e6314cb3b16c2b2baddaa6f0d706e`  
		Last Modified: Mon, 26 Oct 2026 23:07:38 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e19ac8f39d44de5400958c8b935eb5487719f3a90b7e3b56eac878449a65cd8`  
		Last Modified: Mon, 26 Oct 2026 23:07:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2bb503e182a6d8f7cffbb178e359edaa61cc8568063ac301a4f851b5ede3fd`  
		Last Modified: Mon, 26 Oct 2026 23:07:40 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1330a2dcd555503eb3ace949fd9376dac59ef160bec39bb56c2de4be576efbda`  
		Last Modified: Mon, 26 Oct 2026 23:07:39 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60a915bb48bd72a82244679ac0f3a49900c9ceb61567cafc30372c43aa516fa`  
		Last Modified: Mon, 26 Oct 2026 23:07:41 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:3f79d6522683205f8386923125ebc2cfbbec6fc489c14b1b80b610d7e630134e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59df17c46a463f3a772abaa5c06b69be3e6fe46932499b2dcfd727c3069bd3fe`

```dockerfile
```

-	Layers:
	-	`sha256:41cfda69f65d321d8da60dd65d2f408cffa15a04c7c43de1d0e6ee95c4f995a5`  
		Last Modified: Mon, 26 Oct 2026 23:07:38 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:7.6.9` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:949796f9723c24e2c6ec9227f87efbe0aa18092ab6de9a526ae24f08fb8c648e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.3 MB (787326634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6674f756e8de50fdbab74d783a2863b26b4e1c1a71925991e2e1d489d66db0`
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
# Wed, 11 Nov 2026 23:15:19 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:19 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:19 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ce070178588d34a08a792a63f11200c383b7c6d885f337101d13992850c282e5            ;;          'amd64')            CB_SHA256=51cd89e7db43bf5858d6b98e50c43e6217694d814fddabafdf5e798bf8460e43            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:53 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:53 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bbddbd87aa97c1c8cf17a894f57f8aa6ef39630817cf6d1fd5acc9cf452d41`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 43.8 MB (43811239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bbf7bb2d8fb1ea4c3df5ea79130dbe93301aa2ab540328e0f0c295261e3157`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 766.8 KB (766772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54aebb86f7e3a64e8369f21143fdd7946ebdf3371c88898d155a49c18518c6fe`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6624bbfa0394d1a337345a8560812e8f1d02708d0e951fd61c90f887f7e244`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 713.8 MB (713776385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb843c807f13edb970603031bab84cd70170c0bde9f7d2b4271de43be5c7a217`  
		Last Modified: Wed, 11 Nov 2026 23:17:45 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a63e666837fb152ea235622c033c06ac225e8b6bb6598092cb3cde5ce84f843`  
		Last Modified: Wed, 11 Nov 2026 23:17:45 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d0d276160785b6918c2625f005d8096958fd1c1027ca32ab29deec7f2eadfb`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8880be1e3058c38535a04e34b38ea01037841c4308e271221061402c994b54cb`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630028d782249c3db12e8550aa4021d72ee9ce0b8a77775037f2aadcaeb614ed`  
		Last Modified: Wed, 11 Nov 2026 23:17:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f9b3bd90d76313ccb1eb297770be0a51996187a2b6808a5c9c828198913de3`  
		Last Modified: Wed, 11 Nov 2026 23:17:48 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:7.6.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:db61fcefe358de151b40cc29ed2f18d68c4fb8a9d44161a323c4ac691d8042ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b9aaa4a0ab3ee56f8e10b2aebc8e94e7787326970ff4faf663edb7434887d2`

```dockerfile
```

-	Layers:
	-	`sha256:6d1af9d9583f6cb4aef26cff6057b5a7a2c90f962aff34cbd4ed9cd76079d63a`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:8.0.0`

```console
$ docker pull couchbase@sha256:2dc15a6835b44222ff8995285b75d798cccd95f9e19386d03894c4fa2d9c1cb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:8.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:8fff44de0a0083fe46ccc87e805b6eabf2d989844eb77fb783ea91d783248292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **867.6 MB (867580039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21701ca61bd6855425f305484e9c108baec68576c7e45b5b1ed35582e357ad5c`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:03:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:05:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:06:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:06:17 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:06:17 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:06:17 GMT
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
	-	`sha256:77e0207df3ab5c91acca34e8029d3eed06b7a47b0c731a94077301bb7477764f`  
		Last Modified: Mon, 26 Oct 2026 23:07:17 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdf8bb7655e0da91a7e7bb23ad74cba86ae5ffdf1f274da2855bd00e40acc94`  
		Last Modified: Mon, 26 Oct 2026 23:07:31 GMT  
		Size: 792.9 MB (792944233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec2718ab6fac233c554761cfb885aca3a507a6ccba52f84805f562c1bd851d1`  
		Last Modified: Mon, 26 Oct 2026 23:07:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118116057b38c5400f7a6d6ea841e1121ccc1bdc199f332314029bf46c3939da`  
		Last Modified: Mon, 26 Oct 2026 23:07:17 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3695555d1d7274939434259ab7634ca484d87b4dd4f8cf5bcb51e799a3c35fbe`  
		Last Modified: Mon, 26 Oct 2026 23:07:19 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a32c53b4141e7d107b949bbfea3ddf0bb21a6b64607769a79ad5d40ccdbf647`  
		Last Modified: Mon, 26 Oct 2026 23:07:18 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38827bfdbdc8cc7298afba8afbff62308c9fd8a0274ed06c22ca3096658a0a2`  
		Last Modified: Mon, 26 Oct 2026 23:07:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80d883d41e33103bea28ea3c6c1d74a01fd20e60a634693b685d7c47619057a`  
		Last Modified: Mon, 26 Oct 2026 23:07:20 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:7f89c176a0a0d7dfb3ddbaa8981b3c376fa8585f3ee88df563a168f07d23ee2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baf3ed39cb5a1bf27349225a1f593919f367713033eb64b9fffc92bb99730f0f`

```dockerfile
```

-	Layers:
	-	`sha256:9eab5eaaa14d330c459ab6637dc5f3e40a2fb19309517fa25b27d33313396f99`  
		Last Modified: Mon, 26 Oct 2026 23:07:17 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:8.0.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:19735e8d875ce90cb879f55c72a61c239d3a2e1560a58966d818c10d99beebda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **829.2 MB (829169835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a934c2cb5ae00f55ab4d7d6583717af9d5c2b98aba9878f74deca15d9d463a`
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
# Wed, 11 Nov 2026 23:14:58 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:58 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:58 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:52 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:52 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:52 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38ffa2ff16b7c5dd000343c44d60ac9744823a845be1f4429427276db187af3`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 43.8 MB (43811215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41421a3bdcd82f66c470b7ad3c7aa3e167a9030bff8bb6d2e749723a5de9ac2`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 766.8 KB (766784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777fbe7d4779506e88dfb283d911d4cb859270f28e6f54f6748b15b9daefacaa`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196bdf23114419f24ccb2109dab2a6c66122ea649df27f531773ffe76c79c87b`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 755.6 MB (755619592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16901015d321a7be41464c4e54ce8645ad97de5ef2a9ba0c08938496ecddf1e`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7ccd1861bb731d051bc405254e915a6cf11ed5643d62ad1b46ef00b0279c55`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0c67e323f5f6b0f23103cc386cde13716ac982b8d8e1989a566088e0b793b6`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:703c2273b7dd993e1f3023ecdfae0108aa40b21d0824d0556e3a5f64d163fc0e`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e029cbd0d9aaebffad57446fc92aa8adf88a2a4b11df0c749d24bc58a73f3618`  
		Last Modified: Wed, 11 Nov 2026 23:17:48 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ce96c4acac7766d2aff32f51d37248143b38b1f279a00de7851513f65c36c0`  
		Last Modified: Wed, 11 Nov 2026 23:17:16 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:039df42df3b750f0e159ab158a839b0feb4db188fb5a4170c84fddb379f6253b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40913e261a9fa8a0a1998876e1ef543d910f4c52ed84a1f1248bc0f628ac5b6`

```dockerfile
```

-	Layers:
	-	`sha256:27f186115c40c95b08a7bf1aaf4ea7325aea5984c2032e27649aa99d1d80b76f`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:8.0.1`

```console
$ docker pull couchbase@sha256:85cc384ba6d06555ccb0c9f4d902ce9712a1137e789a7ebd3d6b45956e94cc75
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:8.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:41f944e5f1a49bebb77a0e7f8212fd8c3236e8fbea02b06d27be41c824ab1295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **890.3 MB (890314365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42aa930ca5ab6f43df070151e6af0ab4703dc6c49c7f6c3e9b7e4c48a37ef947`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=dba9dbeb2ff3928e62ebecf154353e1574e50e4e2548664ea25cb52bc2028cc7            ;;          'amd64')            CB_SHA256=194504d728e6725068a15a7e19e7b60685a3fe4c70394112e132805445174128            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:05:26 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:05:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:05:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee209e60a27a20ea36ff21d295ce213058c63eb9a26a2304b0ea26bf4fc41b3a`  
		Last Modified: Mon, 26 Oct 2026 23:06:28 GMT  
		Size: 44.0 MB (43982216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfb4a914f88d58bdec268377a2b2cf3f573b0f5d2fbbc9c6f3c6312c9b2e3ec`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 879.1 KB (879089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6920bf3e923320c6ac37bd1bb7ce0bb3ab27e55f0c32aae5e06f8793732b74e`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad021008ff85486deba18dc1e05db7a208a0f37b01e89667d5f72728616aa088`  
		Last Modified: Mon, 26 Oct 2026 23:06:41 GMT  
		Size: 815.7 MB (815678464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d0b04bb020835a74977112c91a8cca27c025bd3725a7c77a5661b3f1a3b0c5`  
		Last Modified: Mon, 26 Oct 2026 23:06:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea31428d2eff0649713df465d475d7c24cc7ab33a1bd46ca223b42b1ce98c9b`  
		Last Modified: Mon, 26 Oct 2026 23:06:28 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4769a071ed5bb4c828b718243883701c3581d7ed51e743e3d69844b30ad75ce`  
		Last Modified: Mon, 26 Oct 2026 23:06:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd34b254b5d999b8243c6f30994c076a2385e34794af1f24b40e0daf95efb315`  
		Last Modified: Mon, 26 Oct 2026 23:06:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39cd7d90e4006272f0c88a0dbb18768db4ddbd93ddbef3be8574115b745ba7f`  
		Last Modified: Mon, 26 Oct 2026 23:06:30 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22788b05203fdc93ef6e80719a59b9d098e79f03c9b262dc6af9d0e70c15c17`  
		Last Modified: Mon, 26 Oct 2026 23:06:30 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:d87d5ce55dd0d2d784d45929d1c1811e6c01ba6f47d9c794c805a2c42d09204c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a1869185183bfca2887448c65eee5312b1d27c2bff0811e2ed5663fb8b04fe`

```dockerfile
```

-	Layers:
	-	`sha256:2e41d98424a412dfc580da99ee36726c9952b0c26744df7859253ae043f8c14e`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:8.0.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:8285739446f9a029543d54f4d718d52a6af3f91e4c38379bde1c499606b7e843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **847.1 MB (847052703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83ad9bbf8125d533da492407580747fddcd25bb8d12004c490cf69ac6f2bc40`
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
# Wed, 11 Nov 2026 23:14:53 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:53 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:53 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Wed, 11 Nov 2026 23:16:16 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:16 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=dba9dbeb2ff3928e62ebecf154353e1574e50e4e2548664ea25cb52bc2028cc7            ;;          'amd64')            CB_SHA256=194504d728e6725068a15a7e19e7b60685a3fe4c70394112e132805445174128            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:55 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:55 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:55 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:55 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2ff3fabfcf08d852686f8a38c908af2c176321a0d11cf680d060f0ae1cfd0c`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 43.8 MB (43811173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85072b1eab029e3e626532c8d98a98fd24554cd2ecee8d3f526a875463f4c413`  
		Last Modified: Wed, 11 Nov 2026 23:17:55 GMT  
		Size: 766.8 KB (766789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63366d4d57cd583d138b7c0b1e4c8c6a9c33c57a2bcc4ae0434519974042a194`  
		Last Modified: Wed, 11 Nov 2026 23:17:56 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03be3fe65dfde69b5dea4ce64f05baaf8f73548732243ffe962387d1d4e43c6e`  
		Last Modified: Wed, 11 Nov 2026 23:18:11 GMT  
		Size: 773.5 MB (773502498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68c9aa06f34411ba8302e2b22bd9a512bd525124311ad4254f07c5008ab4a8e`  
		Last Modified: Wed, 11 Nov 2026 23:17:57 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b1355af7734cf9db89f66be19dd27910cc67670e972c444e67e653c368745d`  
		Last Modified: Wed, 11 Nov 2026 23:17:57 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a61a507ac6fb591c3cdee340c276c7729a1edc7a353640b09a517fa2d8536ae2`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c769d03a775571925a8844f379efa9699a16f717140a3e9c22825ca35b1ebd8d`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03540fd95f153364fddfae3360e2b73bb66e60c4bc04cf42e952cfd7c2c928a2`  
		Last Modified: Wed, 11 Nov 2026 23:17:59 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911a33d7a99b46c9637efb8deeb5d40f5c08eade91774733f840e362bc3d4b9c`  
		Last Modified: Wed, 11 Nov 2026 23:18:00 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:aca81c427c7b0b737714af2d751efe0c6d354b544142b031eea119336d716bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e67f494d12519d3300193e41e3d13204ae1364bfbcc448203709fa7f7579886`

```dockerfile
```

-	Layers:
	-	`sha256:a580bc627fc3cda69d4bf811592c17a2db874ccae13d6fce13e3d267927505e1`  
		Last Modified: Wed, 11 Nov 2026 23:17:56 GMT  
		Size: 37.7 KB (37738 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:8.0.2`

```console
$ docker pull couchbase@sha256:43654ea05f20f69ea4720c68b4bf6d3f9e92885ee11cc187480416904169bbaa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:8.0.2` - linux; amd64

```console
$ docker pull couchbase@sha256:dd8987a635a629511a1ac85c9e608c4907e2f8e4317ebbe3346707c24882fb71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **880.8 MB (880757656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7716958d03664e750ffd3a956f52937e55af7a4692b700ef4f04a2ba6a51d83`
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
# Mon, 26 Oct 2026 23:04:08 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:08 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:08 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:04:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:05:07 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:05:07 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:05:07 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c55b85e7ec41c0f825d71cb5bbbff11c80795cf9a6a806d3f8a75037d5eb07`  
		Last Modified: Mon, 26 Oct 2026 23:06:02 GMT  
		Size: 44.0 MB (43982229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39451413569941830e6efae8da8fb2987176b58cee786a8e13d950424739f384`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 879.1 KB (879108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee038e650c894e6dd7a8fb3b7a5e02fcfd8932cde23d3c67ce210e015a01973`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d5f644032c02444357e5ea1d388a6ce9f7386e9d2c853512a4d1dc6639e1dd`  
		Last Modified: Mon, 26 Oct 2026 23:06:14 GMT  
		Size: 806.1 MB (806121722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3085e6c207d7ceacf0976162b19c0a94bec78d008a206e658f99223cf42b1955`  
		Last Modified: Mon, 26 Oct 2026 23:06:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f365d78dfb767182121ac0817f4fc04b7a7ecd860f3117d44bd1e06462e5089`  
		Last Modified: Mon, 26 Oct 2026 23:06:01 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e72876fc1b6d6ffce3d5c803bb5e9bbec7585066c1afb2413603d879ab82c50`  
		Last Modified: Mon, 26 Oct 2026 23:06:03 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e37a39ec755008787072a262100e78723398d7505b5fdc661e5f8451c8aab8`  
		Last Modified: Mon, 26 Oct 2026 23:06:03 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ffc0778ffdfd2bac0e47dc68a780f17b34e855933bdaf723c447c12a9d0570`  
		Last Modified: Mon, 26 Oct 2026 23:06:04 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3a92fc68754d31be576689fedc89becbf4046b29b5278377f7b070fd52a1de`  
		Last Modified: Mon, 26 Oct 2026 23:06:04 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:b59bca89088f1d4bbd339b6f82a70f7778412cb3012e97aaa3265f351f17ca91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a38c2945a4a195a2b0be03e25d4d7011f52c99b8f4699ad53338f7f885e74a`

```dockerfile
```

-	Layers:
	-	`sha256:86d02854c686a538ecec0cc1d135baac5c50b0c910dfa2ef55d620b9cdfdd38a`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 37.6 KB (37554 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:8.0.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:83c649a36a29a6d0ae0839d09762a1eceb316eb20af855f6d0f4438897063fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.5 MB (837478340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe0dff82496290b456eb3a886f765f8173af00773ff28181770f59deeeafe5f`
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
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:53 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:53 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511c95473871c83689ab5d50ef8fa5c689d11eed5109e8727f36cd33d5ba90f`  
		Last Modified: Wed, 11 Nov 2026 23:17:55 GMT  
		Size: 43.8 MB (43811031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978bbfce83f49df1faaa72b3c6bc5dd2453973d60085507e57227be072c9a323`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 766.7 KB (766745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ef413b419bb2b8b4ef4201867fc6c96426a93a475fac115f2d38eda6fbb86`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efda4057fc072478af2a2af4159c497a1092356e569f9c3c272f4d7bef0e33a`  
		Last Modified: Wed, 11 Nov 2026 23:18:08 GMT  
		Size: 763.9 MB (763928323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1edecc43ef12bfb0a43cd17fb5880e935137b3523d99ae80cc95d2d5902d59a`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb5f26229e933dc86c33f2ce16d7c39def90c14a1a781a7ee7f2cb77de0d279`  
		Last Modified: Wed, 11 Nov 2026 23:17:54 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a7dfef89bc068dfec532d1d9fe69c7caba0058bf4973996ccf9e0ca82960c0`  
		Last Modified: Wed, 11 Nov 2026 23:17:54 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9ebcfe5bc837cb782426d2f7c07904aa27cff17621e8a5e1270ca155d656e2`  
		Last Modified: Wed, 11 Nov 2026 23:17:56 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630028d782249c3db12e8550aa4021d72ee9ce0b8a77775037f2aadcaeb614ed`  
		Last Modified: Wed, 11 Nov 2026 23:17:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e61e7ce8a11eb96e00ed819692f9e4aa9299b3e9abb2ed17f28ea2a243267d`  
		Last Modified: Wed, 11 Nov 2026 23:17:56 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:c41c422a68286e88ee47cc71a29f313abafdbba0ac9793438ea03cbccbdb5adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9d2b2696b476855ad9df058770b050e9d0dfa51e6300652e9b7b7489146081`

```dockerfile
```

-	Layers:
	-	`sha256:c55f0c47afbe7b8ba36fca1c7e7b8d39a721c8a7547a6b72c5b00a8005819830`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:8.0.3`

```console
$ docker pull couchbase@sha256:414470a835728443987e4d1e52f9b21ed6ba653f54afd850b6222c1a9c7fb7ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:8.0.3` - linux; amd64

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

### `couchbase:8.0.3` - unknown; unknown

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

### `couchbase:8.0.3` - linux; arm64 variant v8

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

### `couchbase:8.0.3` - unknown; unknown

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

## `couchbase:community-7.6.0`

```console
$ docker pull couchbase@sha256:a32ce0072d6d3313e9d8c16e54815ebe50ecff951a855da23aee851b341236e8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:ea2f4108ed57e72924b2dc00657efe0dfb932146be6f0d4c12bb7919caa47d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.8 MB (419817589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d128062b57d7d19c93f0ba3a2882204bfd58b7bc01758e1107ee4673cbf49ef5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:10:03 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:10:03 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:10:03 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:10:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=9fee2723a019157fa6b696d5bfc011440ae96347430087f67c67a73afc1a2518            ;;          'amd64')            CB_SHA256=b6b86779b16bc5c83e86220f40c8e230cf9650f0a7deb7e190997a93d9a50316            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:01 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:01 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:01 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f657021456f206e0bb86214962f2ebbc2bd3831fe90d79e751e8bc3544142285`  
		Last Modified: Mon, 26 Oct 2026 23:11:39 GMT  
		Size: 39.3 MB (39298445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea9fbc307ea723e17beaf17cb6f95201ffc3d69bc3cc41c1f4bff72173c8604`  
		Last Modified: Mon, 26 Oct 2026 23:11:37 GMT  
		Size: 927.5 KB (927460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0cb4ba51b0e45ff4c078538af66a393dfc829134cfed50f8bfe8ab3431b83a4`  
		Last Modified: Mon, 26 Oct 2026 23:11:37 GMT  
		Size: 2.0 KB (1990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119f49acd7b39f2d62945bf422f840a2ea7b5be802669f626c10698e83c1dc2e`  
		Last Modified: Mon, 26 Oct 2026 23:11:45 GMT  
		Size: 349.8 MB (349834019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13defc777c7f48ef33a9a86d1a71a4378bd6ab24d2c11509d4958c234e8a0c41`  
		Last Modified: Mon, 26 Oct 2026 23:11:38 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f8a4fa5e44516b5554d24a9d6cc64aab6913f6c5862de8b4182c42c0f8f7da`  
		Last Modified: Mon, 26 Oct 2026 23:11:38 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469962af4ac2c618473e716aee84c4337ba81199b63e5155a5117025e9f36e6b`  
		Last Modified: Mon, 26 Oct 2026 23:11:39 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fcd4b0ac3e9c48b8f35d3732da0fa867d36b319cdf8ce3de3b695d25961902`  
		Last Modified: Mon, 26 Oct 2026 23:11:40 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e0e9a4fd8830aa6de1d4f6cf60d8699c63b747b20b8ad2fc950d1880cd7b78f`  
		Last Modified: Mon, 26 Oct 2026 23:11:40 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2bd77e6f9a77bf5aeac6d613a913c22bb75852c9341b65d638da9a877bdcc9`  
		Last Modified: Mon, 26 Oct 2026 23:11:41 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:6b083d27f936ab52bc35c64f3bd1afb7ed54d81f88e40ccfc2ee1f109fbc595f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a06707eb795f379aacb99836686e30f77d50a2648e8a3b09f23d3df5f6d888`

```dockerfile
```

-	Layers:
	-	`sha256:5f5a2b697644812114aeea8fc8898e3fe9621fd509692dd1fd162846c0c9f16e`  
		Last Modified: Mon, 26 Oct 2026 23:11:37 GMT  
		Size: 37.2 KB (37209 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.6.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:431065d253c12aa613b1bb32a9cfc864c3369ae672ad68f59ec48f329508c4b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.0 MB (401001968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa0fdd8857a0f89742dcc7b89942eb6203eac9f3d097717de9598d1c5e735c91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:35 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:19:35 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:19:35 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:19:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:20:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:20:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Wed, 11 Nov 2026 23:20:27 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:20:27 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:20:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:20:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=9fee2723a019157fa6b696d5bfc011440ae96347430087f67c67a73afc1a2518            ;;          'amd64')            CB_SHA256=b6b86779b16bc5c83e86220f40c8e230cf9650f0a7deb7e190997a93d9a50316            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:21:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:21:00 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:21:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:21:00 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:21:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:21:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:21:00 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:21:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:21:00 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:21:00 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:21:00 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf76e4b15978423ab96ab73117a2cfdf7c913d502f41811c5349826653df3d7e`  
		Last Modified: Wed, 11 Nov 2026 23:21:37 GMT  
		Size: 38.8 MB (38849003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576546ec5833bcd5e065259179169100879bee307e9a822f5da755ac60454c35`  
		Last Modified: Wed, 11 Nov 2026 23:21:36 GMT  
		Size: 776.1 KB (776108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d93cc15885ed5da1a93030411ccb9d0b9a018f905693ab6e8706a516df7587`  
		Last Modified: Wed, 11 Nov 2026 23:21:36 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f080b62c72cc457c46aa412f27b6ff35e355b321441131046cdd56efae8a2bbc`  
		Last Modified: Wed, 11 Nov 2026 23:21:43 GMT  
		Size: 333.4 MB (333370261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2eeee61b7da96c54a6e6d3af21767eb322026aa80d03f575d5189fdfcb86ae5`  
		Last Modified: Wed, 11 Nov 2026 23:21:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a1fe332ba3e6e2f291f90944442abfa9486437747924282e24c1452823300a`  
		Last Modified: Wed, 11 Nov 2026 23:21:37 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a69dea5729103eab55cb6fb53831849cd28c2fe4ba1815794ffdc69a561e6ec`  
		Last Modified: Wed, 11 Nov 2026 23:21:38 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c4e134df23bd9affff62ff1ad7fc09194f147fc137e54913e99ef699d197a8a`  
		Last Modified: Wed, 11 Nov 2026 23:21:38 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998ca3f7b8e320a17b3724b2479398494f3d5f291f8931d103de643d18d7f4e9`  
		Last Modified: Wed, 11 Nov 2026 23:21:39 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ccf2f0960368495bfcdbf5805b2ec4d9f172c548d46f282eb7954d816e46761`  
		Last Modified: Wed, 11 Nov 2026 23:21:39 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:326f92fc886b1ecf6650e8dce3bc57fe095eac5dfb8bb47468f3b550ba45b094
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81901cef1a84827964b0e0b88960c721f1fb93979d399db0fdf0828952e43e13`

```dockerfile
```

-	Layers:
	-	`sha256:1f48e9c2b525bd64ee9e38db85c5716463398a9b8ad18af1d1d92201f876f093`  
		Last Modified: Wed, 11 Nov 2026 23:21:36 GMT  
		Size: 37.4 KB (37382 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-7.6.1`

```console
$ docker pull couchbase@sha256:376537a0751f3177c3079f79f7d871e9556ca9878f6377e8756c8e6d538e6438
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.6.1` - linux; amd64

```console
$ docker pull couchbase@sha256:2f9f0d72efc6f5628107122d178957359a6f0b7dc2b562dd10eda6f42e864d2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.8 MB (419831739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3330fe6bf36425e8de845a55c6df5020e9eb3a06079cad9fff6f22f5f6cd28be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:09:34 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:09:34 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:09:34 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:09:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:00 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Mon, 26 Oct 2026 23:10:00 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:00 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=abfd2a4d57c930be72d501af1e54612e06d9a73faf948df549c342252f1d3e49            ;;          'amd64')            CB_SHA256=c1e48a4175ed7f82532a1b2b858f0c2af08752ab83b4d084cb16d59f52437a82            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:10:32 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:10:32 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:10:32 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6473c32f0d43fdc1d27adcdbca38e044b79cb38264899e7e41022ced43e3f01e`  
		Last Modified: Mon, 26 Oct 2026 23:11:10 GMT  
		Size: 39.3 MB (39298272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59885b218448c2102c94878c87cca1802446946734557d2f26d77e2ff0561513`  
		Last Modified: Mon, 26 Oct 2026 23:11:08 GMT  
		Size: 927.5 KB (927484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f5d14d0f470715f87ee38588afc06355e636a42d0ab594e89b6e1b9b1d51e6`  
		Last Modified: Mon, 26 Oct 2026 23:11:08 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a7423608516853a65c7984fbff568ec886ee8c4a2f5dad542da8bdffc4e804`  
		Last Modified: Mon, 26 Oct 2026 23:11:15 GMT  
		Size: 349.8 MB (349848314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd559fc16720202700008ed7c9143ac49fafc3990ea872e8552713a3e634f96f`  
		Last Modified: Mon, 26 Oct 2026 23:11:09 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a975d90ad5280bb284681a4289e866b20cc9cfba976675ddc4a9704b4a63756`  
		Last Modified: Mon, 26 Oct 2026 23:11:10 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d611114b2ba55a21aa1b08dfe18d26cdeaa84fe2176733c64a42577f3d7cd6f`  
		Last Modified: Mon, 26 Oct 2026 23:11:11 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8be2a225e41d714c88561468ee086e683420604c93c1e6435147c27b9f3426b`  
		Last Modified: Mon, 26 Oct 2026 23:11:11 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a8a63ac445017cf350158bfc0f5f2ec3cdfa739e883dceb59c0806ac0b16b8`  
		Last Modified: Mon, 26 Oct 2026 23:11:11 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd3062c65f72109a1ff0953dbb33d40188f478e170b46525eead93689b8394d`  
		Last Modified: Mon, 26 Oct 2026 23:11:12 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:b367ec73fd45b362368aa932605c88cb31831efff3439333f7565b8af6285a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e0615e6af19232e0fb6f2c451d02d23e80ee0cf7785a67aa1644b38fc073c42`

```dockerfile
```

-	Layers:
	-	`sha256:294f83e80f6a80581f3e8fd3621f69960956eeb3d858850550733690c6995e36`  
		Last Modified: Mon, 26 Oct 2026 23:11:08 GMT  
		Size: 37.2 KB (37209 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.6.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:929532ec9499ce76eabedfe058af35bf03c75ad506401d4730bd8256a10b18c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.0 MB (401030021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53191d5f80447f32ae462935193e79e80365de602611fddd13011194052b830`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:28 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:19:28 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:19:28 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:19:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:20:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:20:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Wed, 11 Nov 2026 23:20:25 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:20:25 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:20:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=abfd2a4d57c930be72d501af1e54612e06d9a73faf948df549c342252f1d3e49            ;;          'amd64')            CB_SHA256=c1e48a4175ed7f82532a1b2b858f0c2af08752ab83b4d084cb16d59f52437a82            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-community_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:20:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:20:59 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:20:59 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:20:59 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd8756588e4bd28b716693f792dc51c640e916952bf79967a4b5426269fac2d`  
		Last Modified: Wed, 11 Nov 2026 23:21:32 GMT  
		Size: 38.8 MB (38848899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38bb21b086ed8f0ed38707a6b748a45ec8f6c580497fe7377da89bb81baea489`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 776.1 KB (776072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28c3bd45426f481e668b4a8ca3e7fd68a1446147771cb823b29a0432153e4c0`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5fbedf9711c79eb3ba16dca27a7a19f2f33534e8ddcf4e8b0d697ce1f628663`  
		Last Modified: Wed, 11 Nov 2026 23:21:37 GMT  
		Size: 333.4 MB (333398454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62bd47b3a7876df8c211f8abad19b19238a799e89adb4957208468c92e88f7d`  
		Last Modified: Wed, 11 Nov 2026 23:21:32 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e73c511091a31e3cd419de8d7912a3b1fa2ed0dfd3e7fa3630fa92ec7ce1ed`  
		Last Modified: Wed, 11 Nov 2026 23:21:31 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3092d0865c2e9bae7993a3f13976d98f8efc02731d48ce61fca8db555264b8`  
		Last Modified: Wed, 11 Nov 2026 23:21:32 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aad7ac501525345e0260aeb9e9a7eaf2da435833832a6f8c9ac12590a5651ac`  
		Last Modified: Wed, 11 Nov 2026 23:21:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50838bdbbf6e1dc8d32da4e481a32fa0893c03a0baa68f3ed2fa2d9480e981c`  
		Last Modified: Wed, 11 Nov 2026 23:21:34 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b71e6077a4d9fb522cf4d292b42cef762a4ab77a04d7c1b3017408f65f5ca4`  
		Last Modified: Wed, 11 Nov 2026 23:21:34 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:88eef793418d49320a2cc3d1fe1c3ba7ba0bc8bdfc300047e5b46566a06db41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24449668cb9894e942714ef3faef302ddbbd99db4c1e32977ab6a592fd950eef`

```dockerfile
```

-	Layers:
	-	`sha256:38234eb74906dfe30ee9ccfc1a434258343fa51a397c5dc593c07313977a0a6d`  
		Last Modified: Wed, 11 Nov 2026 23:21:30 GMT  
		Size: 37.4 KB (37382 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-7.6.2`

```console
$ docker pull couchbase@sha256:e4f828560e0e41ef7a701c3a6beb63f1bc75f62a0c6708800507f8f0c841e49d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.6.2` - linux; amd64

```console
$ docker pull couchbase@sha256:44d4691c1bfec128a391c33a4f739b817a188f5cdb2295cf1bceefc73af3363c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.9 MB (436940817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d435f0cc2f334e4c49074b9d1b43781c87cc946e4286f017a8cdf8447809a7`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:09:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c91d413632649ac9900c11137ddcf439b8b19852938e442a1c4591632d0da4c8            ;;          'amd64')            CB_SHA256=60c76f5ddc412b202a79ee927010cb0ede334cb7e6849429dd00bc0d7f1ffbcc            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:09:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:09:20 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:09:20 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:09:20 GMT
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
	-	`sha256:61406dd7ca3fc50bc0b4fe81db8ed50846154d934881ba3db7f5ef55fb23e492`  
		Last Modified: Mon, 26 Oct 2026 23:09:56 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6905250b7721e5737acc39cf18923dd94971b187947f15142bcb92c21c48446`  
		Last Modified: Mon, 26 Oct 2026 23:10:03 GMT  
		Size: 362.3 MB (362305348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412fa9e695677b708bff03322cdbef17a523a5edbc25cebe7a6fd206268b6d41`  
		Last Modified: Mon, 26 Oct 2026 23:09:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc4a78c69e271e5ddf9f87d223aa048a0a93aab2f07110044074006745cb70f`  
		Last Modified: Mon, 26 Oct 2026 23:09:56 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79363ada5027369d624d7fe30789aabdca2bdf6ce82e7ad55dd0b964d5ccd4a7`  
		Last Modified: Mon, 26 Oct 2026 23:09:57 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e8ec5317d6d4a3088b6b915e6c904e19c7bc72d83b2ac9ff1056d7dd1a538d8`  
		Last Modified: Mon, 26 Oct 2026 23:09:57 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a82d40a80dc00362d39a5429f610cf1f8cff0cd836621608845c6a07cc90e41`  
		Last Modified: Mon, 26 Oct 2026 23:09:57 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd701daa1f3526d814881548f7561276a602d2273e0dd71fc33da1558528b33e`  
		Last Modified: Mon, 26 Oct 2026 23:09:58 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:b0bb90e84655b01c7bc71168aac81b926dce0177123fe9816de13efe7521fa20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1508dea29d8c35abc59e35d6c67af523c0582522c2b9fb24603de666a2905967`

```dockerfile
```

-	Layers:
	-	`sha256:8f5d56bd5dcc01cce6aa23430597e12485b5aa7a8308154c386f81a1f643e7f8`  
		Last Modified: Mon, 26 Oct 2026 23:09:56 GMT  
		Size: 37.2 KB (37243 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.6.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:92f90de7f0f8a5bcb023b8fdfb917e0964b9af904b7947b3513f5f9e501e3c65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.1 MB (415117288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4129384e48c11e0e80d9a95eaf8b573b4ee5d7f48cadfc884a68057b9be3c92b`
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
# Wed, 11 Nov 2026 23:14:58 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:58 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:58 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c91d413632649ac9900c11137ddcf439b8b19852938e442a1c4591632d0da4c8            ;;          'amd64')            CB_SHA256=60c76f5ddc412b202a79ee927010cb0ede334cb7e6849429dd00bc0d7f1ffbcc            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-community_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:27 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:27 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38ffa2ff16b7c5dd000343c44d60ac9744823a845be1f4429427276db187af3`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 43.8 MB (43811215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41421a3bdcd82f66c470b7ad3c7aa3e167a9030bff8bb6d2e749723a5de9ac2`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 766.8 KB (766784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeff1a16c4839ea88283fac40fec641c3068a6915503178b753bb4fb69b539a4`  
		Last Modified: Wed, 11 Nov 2026 23:19:03 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d401c1011462f21ca58e0ada7362d4e3a98c49ee633ed8d2bc3d81e8c6f02ebb`  
		Last Modified: Wed, 11 Nov 2026 23:19:11 GMT  
		Size: 341.6 MB (341567117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ac5d320c7db0c816bf3998cc37c24a9926f15c8ad4ecacf06138a45215f5d4`  
		Last Modified: Wed, 11 Nov 2026 23:19:03 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:830d0519da25fc7c17007d88143190e91bb42d7a62d8dbb2df02f7da61724e82`  
		Last Modified: Wed, 11 Nov 2026 23:19:03 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27649bcb8018163fa6729de9c5005e79a144d1146a3fb7dd1ccb2dd6c53638a2`  
		Last Modified: Wed, 11 Nov 2026 23:19:04 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63271de4a252e37b6f41bf3b6a99c38d8be95c6d54837b6ae9501128cc313bf8`  
		Last Modified: Wed, 11 Nov 2026 23:19:04 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d4e4917afcc62f37ac34720e98c941fb0881975231fd924551abcb0ed0b25d`  
		Last Modified: Wed, 11 Nov 2026 23:19:04 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c6073618ca8cf413f9f9ba77d508b6960a3d0bc39bab72df9f012c34b060a4`  
		Last Modified: Wed, 11 Nov 2026 23:19:05 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:c65c6c8382555606e2035d81f4d5c4838c06d1a09626e661af31862257633b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f144d46d248b845be4dd37010d871ab73550d42e5a4082a81b5afdaa27d6db51`

```dockerfile
```

-	Layers:
	-	`sha256:db690633891011b1b8b9bee50023529825b95fcd562c9491de3ed06ecbf10fe7`  
		Last Modified: Wed, 11 Nov 2026 23:19:02 GMT  
		Size: 37.4 KB (37416 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-8.0.0`

```console
$ docker pull couchbase@sha256:a2f97704a5ff7e19fbd4911bbeeefc8f404fa8b0599d3d1551576e3850dcbfc8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-8.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:3f742f7350a90e542c813b4d13e5b0d7049bcc2f2f55aa922201dfc2833c738d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.8 MB (490844089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90cada56945182358aa707c5f1a79827e7cd0c4eee814dd45141684a1605e063`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:05:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=6c3a94bfb0f5599e1df94bcfa82b45e9b1bfc6a457d0a5186ff01e0f451df5d8            ;;          'amd64')            CB_SHA256=ef4c87749b4d724362609a11aee9624cb85eefbf141e3b5dc14804749bf0717e            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:06:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:06:18 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:06:18 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:06:18 GMT
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
	-	`sha256:59d34888b015a149d0a328855e8a193ef141bf529c6983e5a95759ff33ed0460`  
		Last Modified: Mon, 26 Oct 2026 23:07:00 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4bfe6206cc09e0a7ca9f7bfbb44062a6f779df369bbf66c52895fb0566735f`  
		Last Modified: Mon, 26 Oct 2026 23:07:08 GMT  
		Size: 416.2 MB (416208546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90514ef3420c9c62d8946f86c3d44e4046007503a9565a95d56a2ef7487cbd2`  
		Last Modified: Mon, 26 Oct 2026 23:07:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6c4850b02ae9372db067fbf1cbaaf611d7fed2334293ef87866a4da828a701`  
		Last Modified: Mon, 26 Oct 2026 23:07:00 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8532269a320a37a812e0878148f548556ba65bf776d7664cc6bedfbfef00fe4d`  
		Last Modified: Mon, 26 Oct 2026 23:07:01 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ffb621697a3efbb01a15ae30498edce5145f402b00e177bf6b4471c58aea25`  
		Last Modified: Mon, 26 Oct 2026 23:07:01 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33279fa9c9c0c814c2c513178f747cc6a9caff471f27519611e2c94d3e812cad`  
		Last Modified: Mon, 26 Oct 2026 23:07:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fad2b8afabd7e6fcebfe178f0592186b6325f30c4fcea5179dc580162b847b6f`  
		Last Modified: Mon, 26 Oct 2026 23:07:03 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:8926025ec97cbf274005036206f2adab313c04ad18eaaad5bfd9e8c1a8dab52b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:535b842262b2dcff678f8c7c0303296b6f0572d456fa62bc37c2e7244e982e86`

```dockerfile
```

-	Layers:
	-	`sha256:63fc302110127c5e23bde5e39b81149d63e16dd4840825c9ec81deebd6385e56`  
		Last Modified: Mon, 26 Oct 2026 23:07:00 GMT  
		Size: 37.2 KB (37243 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-8.0.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:f9f4751dbd6e8baadaed05826c5e6f6e00ea12601ce4c48d74f43724dba00c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.3 MB (464251838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3facfe4f6d5d784f03f221abfbb78a043c84df4d94911da5df9e2177c2d70535`
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
# Wed, 11 Nov 2026 23:15:17 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:17 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:17 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=6c3a94bfb0f5599e1df94bcfa82b45e9b1bfc6a457d0a5186ff01e0f451df5d8            ;;          'amd64')            CB_SHA256=ef4c87749b4d724362609a11aee9624cb85eefbf141e3b5dc14804749bf0717e            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-community_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:40 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:40 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1438c965094a528c753f4b752014071f64b4f28963a973278dcc9ebb43844`  
		Last Modified: Wed, 11 Nov 2026 23:17:20 GMT  
		Size: 43.8 MB (43811426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9916b11264a9c87d052385f0cb4f16082e132c389324e12baa162db7ca77517d`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 766.8 KB (766800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4406a3ded8aa5c26300cdc6e1c1d43a84ad9e00be0a7224df191f286befde16b`  
		Last Modified: Wed, 11 Nov 2026 23:17:18 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3018cecd559d90a38691c2b897e9d746a2d2098ea42d214d30d01592ecd69d86`  
		Last Modified: Wed, 11 Nov 2026 23:17:27 GMT  
		Size: 390.7 MB (390701376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3200b8e89dbff2bd49a872edb2c38cd36d64ddb69b2d766c36a2df9a51c1d965`  
		Last Modified: Wed, 11 Nov 2026 23:17:20 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ee6c18d34bd3afe02864db820119841d5ede60a95391a418393f0aefb0bd5e`  
		Last Modified: Wed, 11 Nov 2026 23:17:20 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1afc8591a877896822ebd885aaa0ccf648b9ecdc44c751378e4685e2e54c13`  
		Last Modified: Wed, 11 Nov 2026 23:17:21 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e4307f6be301f8e7869580dc3f1c2e1a3f98eefeea5b3fecb402f814b0a18c`  
		Last Modified: Wed, 11 Nov 2026 23:17:21 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ff01009d52ddeeaa79df4f075f471f20abf44fbfd96eefca60ede17bb2a60b`  
		Last Modified: Wed, 11 Nov 2026 23:17:22 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ea9213714784c7660aa92a9a8bc8fb3530388dc9e75ed2249c2304b6fb1623`  
		Last Modified: Wed, 11 Nov 2026 23:17:23 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:b4b77be9498a74e824683abe662931c2b20e681fb3abc49bd733cbb030901be3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84913e89ed1767bd2288d943720872cc0cc9ab319af04d72f27cefb68a048a29`

```dockerfile
```

-	Layers:
	-	`sha256:7de9620b3e2a4fc15cabec3476292dc4f30663586df8a81bdb5755e4df21a969`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 37.4 KB (37416 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-8.0.1`

```console
$ docker pull couchbase@sha256:2e3f61a78d4fad486f0eccf6a6fbcfe021c2678c7e2ae1bae47c72d59bff54da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-8.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:0e66612f190e252d272ef56e21b6e0e6c475dc7d18798a320ae47be768f71637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.6 MB (502649785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b314fa0db5aef8ed92160c11dbba4b95f8a66ee1701919c5af25253df83039`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:05:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ca9aa048cb12e3d89d982c3139a4d65a94f3820691435762d34d5d1117840333            ;;          'amd64')            CB_SHA256=e4dc69cb42e0e8d8de80519f18768e0b0acc683d5e1f10c609583a8f76609507            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:05:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:05:25 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:05:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:05:25 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:05:26 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:05:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:05:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8822025cc32643cdb8bdb2abd98c5d6f0d8a73f85f6ab8dd12b209aa0c5b7be`  
		Last Modified: Mon, 26 Oct 2026 23:06:10 GMT  
		Size: 44.0 MB (43982047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f62ac04a96ff1d3ab6d7b33d8d031ef488974cc9e9e48fce2e95937fe8db50`  
		Last Modified: Mon, 26 Oct 2026 23:06:08 GMT  
		Size: 879.0 KB (879046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caed3fb6a32cee33704a9537bc3275c6b8b06522fa1629ebcfed08f5bf30846a`  
		Last Modified: Mon, 26 Oct 2026 23:06:08 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433974edd4da0edc3c46182ae18b749ebce17df64323ef5016b1defa06d9050a`  
		Last Modified: Mon, 26 Oct 2026 23:06:17 GMT  
		Size: 428.0 MB (428014094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c5b671f0080b30fffe76be680f31a579f306e07bc9a69cc99cb7f07cfdd295`  
		Last Modified: Mon, 26 Oct 2026 23:06:09 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ce94b766b8298090dfcec85e08b60f66600c20f914c99398b3a086719854a3`  
		Last Modified: Mon, 26 Oct 2026 23:06:09 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad3b379914dd6eecdc47d50fd755156344ac4415ca18fd3200fd31e531b05532`  
		Last Modified: Mon, 26 Oct 2026 23:06:11 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4bb2a604daf5a6e4dcfb81b59eea11738e325f4c18cbe98ffceb87b938ed42`  
		Last Modified: Mon, 26 Oct 2026 23:06:11 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488fbc0defbb6c5e7764b2917ceea42dc12fd04ebf668eb5ba1bd7fdd4a690d8`  
		Last Modified: Mon, 26 Oct 2026 23:06:12 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb788267ece5e37272db1af8089f6df306f37b21a08de59fbe45dfbef8bf6c9`  
		Last Modified: Mon, 26 Oct 2026 23:06:12 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:d528623bb5a2cedde4848dbc4ae5479363398a12b8a60a575aa1a9e8a55871f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c42004977c57f7f74210e79e217f172af005bb8086e26f133350336dc64558`

```dockerfile
```

-	Layers:
	-	`sha256:fe5c3a6818815c4eca501c29ea74885f7b0ed445f824c68a090105cb145e8a6f`  
		Last Modified: Mon, 26 Oct 2026 23:06:08 GMT  
		Size: 37.2 KB (37243 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-8.0.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:d08d921b99f94d04e4183c11d0479ca375e4765366602a6f0c7fe79a5a4a02f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.3 MB (472335661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5eb8e9bfd9bbe62131666fe12970fa9afff935f9b581b268c3e4e531c5ff2ee`
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
# Wed, 11 Nov 2026 23:14:58 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:58 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:58 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ca9aa048cb12e3d89d982c3139a4d65a94f3820691435762d34d5d1117840333            ;;          'amd64')            CB_SHA256=e4dc69cb42e0e8d8de80519f18768e0b0acc683d5e1f10c609583a8f76609507            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:35 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:35 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-community_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:35 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7513ece673814152fa55df119fb13abf3ed9e74a218699e23cd1507515c10288`  
		Last Modified: Wed, 11 Nov 2026 23:17:14 GMT  
		Size: 43.8 MB (43811491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44cde04225f0e4506e9d594a53332773f0960352e3321769059ce328773e729`  
		Last Modified: Wed, 11 Nov 2026 23:17:12 GMT  
		Size: 766.8 KB (766750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e939b12c9c46607ab76c61d377e2dd64a3efa3872d3a3b42575cfb380333055f`  
		Last Modified: Wed, 11 Nov 2026 23:17:12 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7d314212b8f260de86562aa1e7e6f46a1db9c280e5e6d10bcda23d41d5ed84`  
		Last Modified: Wed, 11 Nov 2026 23:17:20 GMT  
		Size: 398.8 MB (398785177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31668c2c0bd2a45fbb5d5e09716312fa27b10f070d95588d1104df7115c14a9f`  
		Last Modified: Wed, 11 Nov 2026 23:17:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6d4d098268235b138c95c387e0ac42c381810e9bd1183856df973be508d712`  
		Last Modified: Wed, 11 Nov 2026 23:17:13 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12dea31464cd980beb6b4fdcf479f186554559182ee6237ffacd8a35f5bc6cf3`  
		Last Modified: Wed, 11 Nov 2026 23:17:14 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd218806563bbdd2310ca7b972b93bb43d75bf86e38705c36b913322aaf881d`  
		Last Modified: Wed, 11 Nov 2026 23:17:14 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a052def919bf73463872020b65ce948dec7c230ba9f0df32d57fc3b3b8b0b3`  
		Last Modified: Wed, 11 Nov 2026 23:17:16 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ce96c4acac7766d2aff32f51d37248143b38b1f279a00de7851513f65c36c0`  
		Last Modified: Wed, 11 Nov 2026 23:17:16 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:f75e5a3a5eda3836614b59e658ab01ed6daa9b52e14bafadf636c2cd5a7d2393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc1bc9f357ef8ad8c130bcd08526e266929dbbba5525d62281c7c0c3e73f6edf`

```dockerfile
```

-	Layers:
	-	`sha256:d56dc09e1352e9a103d461a84b52b3b312f99d9703a285819b524518c65d4bb6`  
		Last Modified: Wed, 11 Nov 2026 23:17:12 GMT  
		Size: 37.4 KB (37416 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:community-8.0.2`

```console
$ docker pull couchbase@sha256:70c34403286e4dd7f9b267557929ba412f15815e63151d0cf8de1267316024df
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-8.0.2` - linux; amd64

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

### `couchbase:community-8.0.2` - unknown; unknown

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

### `couchbase:community-8.0.2` - linux; arm64 variant v8

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

### `couchbase:community-8.0.2` - unknown; unknown

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

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:414470a835728443987e4d1e52f9b21ed6ba653f54afd850b6222c1a9c7fb7ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise` - linux; amd64

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

### `couchbase:enterprise` - unknown; unknown

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

### `couchbase:enterprise` - linux; arm64 variant v8

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

### `couchbase:enterprise` - unknown; unknown

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

## `couchbase:enterprise-7.6.0`

```console
$ docker pull couchbase@sha256:513ccbb567a66efd93b83bb92e8f9f3f36ac43851e66badafc3f2a6b3fdef544
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:fdd8a7f41bbb68a84059d77c62ec55d5d99d11416f5eda08f47c89271d516e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.0 MB (760032207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9158fc54cc453e68daf4744aa4a46c50f0fd5216af6ddcc5639f6b42c855a2b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:09:47 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:09:47 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:09:47 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:09:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:14 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Mon, 26 Oct 2026 23:10:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:14 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:01 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:01 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:01 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65ea755b4e8827048d419f2cda97a996ba60a859a249c7bff10c9b40ffbc2f4`  
		Last Modified: Mon, 26 Oct 2026 23:11:47 GMT  
		Size: 39.3 MB (39298360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663e1cb9d42e633588ac0250b512f63efd2b6e0944daebe3ae526d4d2d4f4a61`  
		Last Modified: Mon, 26 Oct 2026 23:11:45 GMT  
		Size: 927.5 KB (927545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1679a84772c6be0ed10eecac70aa6d2d970fd069a0cae63dd279c7a09a7387e8`  
		Last Modified: Mon, 26 Oct 2026 23:11:45 GMT  
		Size: 2.0 KB (1987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada5609ba8c94bc7c578239a1b51abe9dc1658512da6bfe224aa73c6bcd75eb8`  
		Last Modified: Mon, 26 Oct 2026 23:11:57 GMT  
		Size: 690.0 MB (690048636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b492e47f13ba5900853c2d92b0a7ff72f911fcbc80053b732140857fa056c27`  
		Last Modified: Mon, 26 Oct 2026 23:11:46 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95911d902a85993ffbbac9a0ce1cee1266045de07677fbeaab7883f98594e541`  
		Last Modified: Mon, 26 Oct 2026 23:11:46 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0486e6f8fd5096986d8924bd70804e1e9287c3f372fd3335560f9bba51390953`  
		Last Modified: Mon, 26 Oct 2026 23:11:47 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85bdb56b2eb173fd31507a79a1b013394aea939498c4ef5233dcf55f7d69bc1`  
		Last Modified: Mon, 26 Oct 2026 23:11:47 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e0e9a4fd8830aa6de1d4f6cf60d8699c63b747b20b8ad2fc950d1880cd7b78f`  
		Last Modified: Mon, 26 Oct 2026 23:11:40 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31566da6121046462d945c120839572cd028145d0bccbf92f974da64a2a070a2`  
		Last Modified: Mon, 26 Oct 2026 23:11:48 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:8315c27e875d6c35f3ccc39bd9804318afdf587f181bd86980aff390f95566fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1d6f474b49cf87d0d143842ade19ce8df01132605ed5fa37476d8325af5bcc`

```dockerfile
```

-	Layers:
	-	`sha256:cce166bc3ec6531d9da3f4fd68df889af12c69532a0f1030af792c6ee2532048`  
		Last Modified: Mon, 26 Oct 2026 23:11:45 GMT  
		Size: 37.5 KB (37521 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ecfa9aee874437171a5127d032f71f173d6e39a0a5be3c5bbf48b6fbc8fd9388
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.5 MB (732540901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79c9eda05ea3220bf810395d213a70ace631dd1468e0d0552206547515c0cbf2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:32 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:19:32 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:19:32 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:19:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=1512430a602c67d53886502d758bf95b25b9faab066d08292a8eb496e9c08492            ;;          'amd64')            CB_SHA256=fe94419fff0c1b9176292b44ab8715fd0e8e48872e76330cc6ec6f3fa07b3966            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-enterprise_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:21:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:21:21 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:21:21 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:21:21 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a160269b4af60dc31abeca6a2038fbeec14ba2d67366a9b122a506ff63a9e2`  
		Last Modified: Wed, 11 Nov 2026 23:22:08 GMT  
		Size: 38.8 MB (38848932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9839d0845b3e86f8d2bb2d15e72ca75821fc72fd6db76e9425a224f6e3b4e6e2`  
		Last Modified: Wed, 11 Nov 2026 23:22:06 GMT  
		Size: 776.1 KB (776070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d633ee6e348dba8182a0d6cde75ba11240ac08c0b2fa599a3fcc464c14866e`  
		Last Modified: Wed, 11 Nov 2026 23:22:06 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f98add88f401e88470ce7b0ca93fc03674feb80da16efbc48252cde7159e77`  
		Last Modified: Wed, 11 Nov 2026 23:22:19 GMT  
		Size: 664.9 MB (664909302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccfda14ff2f2be230c47e406d98d5008873dae6bf9abf417ad6f48bdc0ab22de`  
		Last Modified: Wed, 11 Nov 2026 23:22:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a78559b7c17572548377e25c5c46a5f5160393268c3d726d00607e56466c960`  
		Last Modified: Wed, 11 Nov 2026 23:22:07 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347a8beb06d54bbf1e2c72a3e28093fe3c5ccb35aab86d0a8ff21a8744393253`  
		Last Modified: Wed, 11 Nov 2026 23:22:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5159d236b3f1fe1dd4aa6ab9f073b1fec4294028534f22b544cc87ad90cd8c9d`  
		Last Modified: Wed, 11 Nov 2026 23:22:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b730eb0720eb4b74466ea0f5c66d112eb2fef36ff218c957cf6e9d7f35379251`  
		Last Modified: Wed, 11 Nov 2026 23:22:09 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5396ef83350911d5c64634019c3d8487fdc1b69df9e84527b66b299e3e193f`  
		Last Modified: Wed, 11 Nov 2026 23:22:10 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:c67bda71f5e9fa7823ba13319a59a51c1273bb2bedef61a6b961ce21676189f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31fc7b89c3f96eb049902080c8edc4d1fe88b1a8abd73a4f077692c5a26d6233`

```dockerfile
```

-	Layers:
	-	`sha256:57030781f83538e10c163019ad373f4e638b5f610488de89033ce0e1c7b77568`  
		Last Modified: Wed, 11 Nov 2026 23:22:06 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.1`

```console
$ docker pull couchbase@sha256:3a4e8a7d5434abff32b54b2d5df3f60fa4d7abf996d1967483b14fd2bef61016
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.1` - linux; amd64

```console
$ docker pull couchbase@sha256:fc46bb966494522fe9a7ecba77322cda6412fa14ef8329901d92fee493524e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **760.1 MB (760056417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f77c1534ba4a14e390ddfc8e336eca445ff42df875290e073b4e34c41cc9ea55`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:10:02 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:10:02 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:10:02 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:10:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:30 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:30 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Mon, 26 Oct 2026 23:10:30 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:30 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=785f9d1f17ce6cde779f361adf0a0ed5f0bdaa78a1a4ab1c70b289d109b59709            ;;          'amd64')            CB_SHA256=12f1a671c28f12d946b9f39fb5cf7fe7c32e51fe30e0045d423b25627367be54            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:27 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:27 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e59bab3e96f3fdf1e79425e75d8c222c0158793e8567612f7b2b69531126db`  
		Last Modified: Mon, 26 Oct 2026 23:12:19 GMT  
		Size: 39.3 MB (39298283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519fe7c978cd9b118a252e25f671cff30f19a32fbd3dcccac7f131da41f9374d`  
		Last Modified: Mon, 26 Oct 2026 23:12:18 GMT  
		Size: 927.4 KB (927434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebe6dbb416c43122a7dbc3c64477bc0476697ba7517178bcdc457f78a4b48fb`  
		Last Modified: Mon, 26 Oct 2026 23:12:17 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7896807db4fb4f5131bed105a89468d8fe3ae299c6c3ecf9c3981910ed52ef3c`  
		Last Modified: Mon, 26 Oct 2026 23:12:29 GMT  
		Size: 690.1 MB (690073032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50982d391fb2e27900864d4e6e9b9f9f902de106104fd0dc3d3a92e09ddeeb98`  
		Last Modified: Mon, 26 Oct 2026 23:12:19 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f389abb54bcb7ee90ca09ae12d1bd2dde17590757998ebe9cf45af31ccf019`  
		Last Modified: Mon, 26 Oct 2026 23:12:19 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da51ccdb40c27365cfaf668e8d2c978a993fc011b60347b26473538a16746b36`  
		Last Modified: Mon, 26 Oct 2026 23:12:20 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f3752a1d71da338185ad4c0563bda03942fb0e95c91a0319053d23f2c10d934`  
		Last Modified: Mon, 26 Oct 2026 23:12:20 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385b51ae37594e6ab81a68b902d221c794e13b1082295cbf40fe7b3c829a1871`  
		Last Modified: Mon, 26 Oct 2026 23:12:21 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e23b6fd70c8e0d2862810ed96ea5fd9d211c89842c0f283064a36ed4b71983`  
		Last Modified: Mon, 26 Oct 2026 23:12:21 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:49be250140c91a78a1fe2eb78bc256db6d016edfc81587797cc28eda0b512313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdd347013594933bb62209b9f0beb6ad7d6c4d6acd19bc976e77eeec88bbcbb`

```dockerfile
```

-	Layers:
	-	`sha256:985ebd2e7b84b52780594136935399e561f287501713e04a3e1e08badc5122e1`  
		Last Modified: Mon, 26 Oct 2026 23:12:17 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:2ccf36b9d91f1825ec9d8dd9c4c63141296daa069b3ccdecb9c8562a4d6937e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.5 MB (732549780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50699b954941be917c24337d4b22a60d06178b27230eb2d03e1f49807cede35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:19:04 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:19:04 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:19:04 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:19:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:20:26 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:20:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:20:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:21:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=785f9d1f17ce6cde779f361adf0a0ed5f0bdaa78a1a4ab1c70b289d109b59709            ;;          'amd64')            CB_SHA256=12f1a671c28f12d946b9f39fb5cf7fe7c32e51fe30e0045d423b25627367be54            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:21:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:21:25 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:21:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.1 CB_PACKAGE=couchbase-server-enterprise_7.6.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:21:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:21:26 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:21:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:21:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a458fd0a4f9346478574cfd1e40ee40b913e314ecb55bbb69091cad006a8b5`  
		Last Modified: Wed, 11 Nov 2026 23:22:18 GMT  
		Size: 38.8 MB (38848919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b089b3739451ecd96f82839a81f5171b348f2c396c5d844349882cc1e1d547`  
		Last Modified: Wed, 11 Nov 2026 23:22:16 GMT  
		Size: 776.1 KB (776107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af3184828ebbfc633be8801fd29a3d1cedcff5f5cd838fca65053a99ef84fdd`  
		Last Modified: Wed, 11 Nov 2026 23:22:16 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e106b37ff08c0e7dc868377cbaea8e82f79da1b0e3fdf24d42f7d170e6191d`  
		Last Modified: Wed, 11 Nov 2026 23:22:28 GMT  
		Size: 664.9 MB (664918157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b03fed0695768db5dce01dfe8b99d80fc3393e4645c28731e2eca8a879fdd4af`  
		Last Modified: Wed, 11 Nov 2026 23:22:17 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccff4a8650726ad92d6cf763df00d8809c34272a09124a0bf72b99de2c685a7`  
		Last Modified: Wed, 11 Nov 2026 23:22:17 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b165f583c868d0497ebc44396ac0abbda00ba1eca0ba15649e0c8c4b835aa0f`  
		Last Modified: Wed, 11 Nov 2026 23:22:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75ca7ccbf0dd6a914aa70ebad68bc6f1eff1d9a1660c5a56f8171f6ba09dead8`  
		Last Modified: Wed, 11 Nov 2026 23:22:18 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51815ce007640f88596a21f751ff32209a905fc8428bd0b96261963c4cc9dc39`  
		Last Modified: Wed, 11 Nov 2026 23:22:19 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe43a97af55627fcb25b05f0a0861c91967ea3cbb2ee8ee77f744e8b2e88422e`  
		Last Modified: Wed, 11 Nov 2026 23:22:20 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:e70a19bcc691f89b7af17d90c4278ae2571e27debe1369214d3b4bc6835fb137
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187b3a8d53dde0579ca767f154ba2d2a6111f547ddc40710f56da5846daf854a`

```dockerfile
```

-	Layers:
	-	`sha256:47240166f5ef9a56c9ecb5e94138c0c201bed6f7ea79c5c17b5843209751720b`  
		Last Modified: Wed, 11 Nov 2026 23:22:16 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.10`

```console
$ docker pull couchbase@sha256:7fd2be95e16077ab5d1c2e05f27dc694529f90ff3104b76884210109303f0a7e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.10` - linux; amd64

```console
$ docker pull couchbase@sha256:6c462520f38d401e39e87049a813ec03acd68aa1c02bc32d1325688c469d09ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **834.2 MB (834221814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4729fca531b3e1103315c24a272e177495eaa2237ec077c4f366a46dee00f37a`
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
# Mon, 26 Oct 2026 23:09:59 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:09:59 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:09:59 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:09:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:29 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=680d6833172db7691aa0f9562aa50e044214f97cd8a785b410e828a840ce38bc            ;;          'amd64')            CB_SHA256=80938b3c86eb4cf412d9eb80b6494d96d32ce90555dc8536e0fb44a884f453ef            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:10:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:10:56 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:10:56 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:10:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb2a79d59371015ae6a3934419b93d54b26a3df1ffaaf145abb880ba35cf9bc5`  
		Last Modified: Mon, 26 Oct 2026 23:11:50 GMT  
		Size: 44.0 MB (43982349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10e10548799b8d6c97fa9772e5a9ef797ac7947730eff7b0a295f78ccea0e4d`  
		Last Modified: Mon, 26 Oct 2026 23:11:48 GMT  
		Size: 879.0 KB (878997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47427be014e1b56e16795db9c232862db768d221be7df012edfddaf1f34e365`  
		Last Modified: Mon, 26 Oct 2026 23:11:47 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ed0fbf4549cc62f9af6023592f8692ad233d4e2a08eedf973b5160d8e1a443`  
		Last Modified: Mon, 26 Oct 2026 23:12:01 GMT  
		Size: 759.6 MB (759585873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a57093d4214c551f02be8347b2349ef6198ff34b3fd979d96fcc7581872a55`  
		Last Modified: Mon, 26 Oct 2026 23:11:49 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39391a30856581636430eb63ebfe766cc6fb98450dc0a82864b06b041e07e704`  
		Last Modified: Mon, 26 Oct 2026 23:11:49 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eececcd84e0dc6d2f51b9f1e7cdb723bb205d9ec3ba200465d09788a7357adc6`  
		Last Modified: Mon, 26 Oct 2026 23:11:50 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dfc261b39feda1334a4c848701acb34f831352cb161d828e61b2108b3d28e24`  
		Last Modified: Mon, 26 Oct 2026 23:11:50 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99688b0fade9420cd8685836d60429352f7af575e4a2806315f59c0e28cf755e`  
		Last Modified: Mon, 26 Oct 2026 23:11:51 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3bf6ae600e3335641bad563dd299141fd094f97acce78b3315ac2c690fe654`  
		Last Modified: Mon, 26 Oct 2026 23:11:52 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.10` - unknown; unknown

```console
$ docker pull couchbase@sha256:9020470a61b6f4b35fde7898a5c84063153a561aa4329fe56173a57db201762a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a5c33f200b2c3318530cdab7eae9ec10d3d552bcf2d788f02f1b3e660b9a54c`

```dockerfile
```

-	Layers:
	-	`sha256:83f0bc169758015dd5d2ca2e46144ad3b7ab14b2fe0096a411b5d511f2f8e18b`  
		Last Modified: Mon, 26 Oct 2026 23:11:48 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.10` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:f8d39032dc23a5d36e6abb46a480abc1409a2a11ba115aeae1c37f4cba8d4183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **797.1 MB (797104608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae44b4be60c807d9f25040575ebd8f8f13642dd9e69568e169804d021fc3e5e`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=680d6833172db7691aa0f9562aa50e044214f97cd8a785b410e828a840ce38bc            ;;          'amd64')            CB_SHA256=80938b3c86eb4cf412d9eb80b6494d96d32ce90555dc8536e0fb44a884f453ef            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.10 CB_PACKAGE=couchbase-server-enterprise_7.6.10-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:50 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:50 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:50 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511c95473871c83689ab5d50ef8fa5c689d11eed5109e8727f36cd33d5ba90f`  
		Last Modified: Wed, 11 Nov 2026 23:17:55 GMT  
		Size: 43.8 MB (43811031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978bbfce83f49df1faaa72b3c6bc5dd2453973d60085507e57227be072c9a323`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 766.7 KB (766745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08533518b49bc55b2ffb60e89ae75ae7ab0f6e67e5f7a70ce698456cd2ed63dc`  
		Last Modified: Wed, 11 Nov 2026 23:19:41 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:100a0a6f188f2faab9543bb9753603209dc2ac2b90e9e71a87dc70d25504b595`  
		Last Modified: Wed, 11 Nov 2026 23:19:55 GMT  
		Size: 723.6 MB (723554587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8455acc6b078562f110240cb2eeb18a70ffcfe985fdf8d3b3cc7619de992aa3b`  
		Last Modified: Wed, 11 Nov 2026 23:19:42 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bddb68bb005664fe0ea089a0bb7d39a9d2b8dbc6bfd3f6d5f73d710e87f8c001`  
		Last Modified: Wed, 11 Nov 2026 23:19:41 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d0daf5059112d479de35e96c850ef5fc310968a2354fe3d4e60ab308b8e7a21`  
		Last Modified: Wed, 11 Nov 2026 23:19:43 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3a900a0acf61aff66d0fb8b6b7c261bad03f8cb32fbaf84367c4976ed54849`  
		Last Modified: Wed, 11 Nov 2026 23:19:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b6b062ded114b141c8aaae295868a56b2a4d27ab51a25777758aebdc70b3ce`  
		Last Modified: Wed, 11 Nov 2026 23:19:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d474277637254bcd1ef0031eb447b75bebd961cd6a267d460d55ce80c80982d`  
		Last Modified: Wed, 11 Nov 2026 23:19:44 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.10` - unknown; unknown

```console
$ docker pull couchbase@sha256:2f2c186e6eb004851068c60160f89d909e595ebc389060ea513ce9e6803c6893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06b0ecdad0ede8944e7c59e300c251ba0df414fdae9f40d8c571b1f812e3a58`

```dockerfile
```

-	Layers:
	-	`sha256:8b49db52e37cb3858b31378c5b3178b4283207dc51643beb926e8d780e8db5c1`  
		Last Modified: Wed, 11 Nov 2026 23:19:41 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.11`

```console
$ docker pull couchbase@sha256:03da0aa57c9bf3944becce62f64224ef9ada3095a04e5d334c80ee74e1d3c618
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.11` - linux; amd64

```console
$ docker pull couchbase@sha256:f0a7fd3736307d75489504e65f28cd1376c13c14d9bf40ba4e4d22e065007cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **855.8 MB (855762676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c41f0449b85891eaa3cefda856c7cd391d793e640b263f217ff9d73ea261794`
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
# Mon, 26 Oct 2026 23:10:05 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:10:05 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:10:05 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:10:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:32 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11
# Mon, 26 Oct 2026 23:10:32 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:32 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:32 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=802192fbfb596eb954f8de21597d83d26e9af60ff03e911f0210e441d9be5f19            ;;          'amd64')            CB_SHA256=a9dc8eb353e7e05c22a60d31330e9712954905012dd32eb4cea0fdbfb1bdbaab            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:13 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:13 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:13 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:976b8baad8beacb3f9cc8635cbc0e0dcc9887f9f9ca856776a4aafbb7e9ea1b6`  
		Last Modified: Mon, 26 Oct 2026 23:12:16 GMT  
		Size: 44.0 MB (43981585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5949c31430c981dc4c921e63b123cacc9c3d3dceee90108a156549bb7fc677db`  
		Last Modified: Mon, 26 Oct 2026 23:12:13 GMT  
		Size: 879.1 KB (879071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4e4caeff076e80d70a52d781bb53ec62243f5629e371da7f24fee1cd77c5e3`  
		Last Modified: Mon, 26 Oct 2026 23:12:13 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df4dba3db04821525c7494ace243d971a6a20c8f37c7a41cc4048afa3fc4d02`  
		Last Modified: Mon, 26 Oct 2026 23:12:30 GMT  
		Size: 781.1 MB (781127422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3394c7c47dde6ba22ec5a963ca6adc1b2e10addf2dace14d31e5f483a830b181`  
		Last Modified: Mon, 26 Oct 2026 23:12:15 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d006ba03a759dd9963efe098ef976d11ee98fbcf9d0bfd6629f68a48fa8ae87`  
		Last Modified: Mon, 26 Oct 2026 23:12:15 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:034e0ee446fad12b62ab64b8ac8d0464475d2aeadbcfb859f6beca5e738154ba`  
		Last Modified: Mon, 26 Oct 2026 23:12:16 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1f17427f4f7d939e4e6979d6fbc906a8aeb6e551f5d7e61eba99309178457f`  
		Last Modified: Mon, 26 Oct 2026 23:12:16 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5101a18ce2aebb01204f5592792c9ee8fc76e4856510355b1260cbaf9a40419b`  
		Last Modified: Mon, 26 Oct 2026 23:12:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f7a17be795bfca2f9eebf5b9f9839669e6c642d765c73028984021f85cee0da`  
		Last Modified: Mon, 26 Oct 2026 23:12:17 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.11` - unknown; unknown

```console
$ docker pull couchbase@sha256:479fa2ad5513629b45ccfdb6a7dd3327127824b3a3e740c875f2298ea60b2a27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb7e14b289385f498cc9e313cba508e62f2573a53001fe379bea639154050b8f`

```dockerfile
```

-	Layers:
	-	`sha256:39fc37fee296f4c2a6a13d0bf290fa9b40fabb6e8ada4e1f523f42c51e8e5cf7`  
		Last Modified: Mon, 26 Oct 2026 23:12:13 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.11` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ef1c1454803d13bb5b8bc84e8c06ecbb2d1a051a1556c8121310bee5913b129e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **813.8 MB (813770356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de872763a60a8d94e0434fc5087a446c315ad38de334aeb8bc19b45292511184`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11
# Wed, 11 Nov 2026 23:16:14 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:14 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=802192fbfb596eb954f8de21597d83d26e9af60ff03e911f0210e441d9be5f19            ;;          'amd64')            CB_SHA256=a9dc8eb353e7e05c22a60d31330e9712954905012dd32eb4cea0fdbfb1bdbaab            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.11 CB_PACKAGE=couchbase-server-enterprise_7.6.11-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:41 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:41 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:41 GMT
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
	-	`sha256:e3f3ac70bc4892c16315276c0f8a419336b596bdd6e8c850e91fac44aa5f9903`  
		Last Modified: Wed, 11 Nov 2026 23:19:32 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c87b0f6c44bf264ba7a6a47f93e0acabbcc5154c5d6e9595647e95e1dabec7c`  
		Last Modified: Wed, 11 Nov 2026 23:19:46 GMT  
		Size: 740.2 MB (740220496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e20fa2eed98073d957552f009e6a6c338940b47df1b068b75258a149024dc2`  
		Last Modified: Wed, 11 Nov 2026 23:19:32 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e893b5f92f7a4dc1f7a8249d5979c06974247ae084fde96d1a7243abe1d3fc1`  
		Last Modified: Wed, 11 Nov 2026 23:19:32 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b0e12ecf80381dc14da7c8a2b5a2334cb8fe36ab27e9e453a2fe0367dc45ee`  
		Last Modified: Wed, 11 Nov 2026 23:19:33 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c82f01c6156d3da728af1ff305f892b9e24e830d6727b3874ae42b8c0a0c26b`  
		Last Modified: Wed, 11 Nov 2026 23:19:33 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df3a09ca180b68910f5d4c8dedb3a18495ccf9dccec8fcdea0441dcbab12425`  
		Last Modified: Wed, 11 Nov 2026 23:19:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbde60223ea1f08750853b536f156a8d56e8742d76fc3d7b395fac2491a66317`  
		Last Modified: Wed, 11 Nov 2026 23:19:34 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.11` - unknown; unknown

```console
$ docker pull couchbase@sha256:42c1856d3c4119823f4dd0ecc47964bd8cf6303624d4cd49dbc4205a5f7a93ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c2aa3cefc2478e9197260d939f829809f888764561a54d991faf39e8e7a8221`

```dockerfile
```

-	Layers:
	-	`sha256:048ee4f067d56b4996f84295840b3d8bde46d7bb980140dd50e49c6a3eda3220`  
		Last Modified: Wed, 11 Nov 2026 23:19:32 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.12`

```console
$ docker pull couchbase@sha256:0de389d001a37b42c20b9d1ae291fdccd3d43dc672e780d7829051e30b04f4dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.12` - linux; amd64

```console
$ docker pull couchbase@sha256:a3a83dcce32f472b6a14b08ed2d43bdf45061e0bef601465e3331614180f517f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.7 MB (879692902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad4740d2f5316acb4f7a020a5fc58c09593fdaede855deba94a7fb24f158029d`
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
# Mon, 26 Oct 2026 23:10:03 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:10:03 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:10:03 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:10:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:10:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:10:36 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Mon, 26 Oct 2026 23:10:36 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:10:36 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:10:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:10:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:11:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:11:04 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:11:04 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:11:04 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048b01cb02f041ddd9b62d0782b69c030c2522691a5e7cc9707636ca2d4759dc`  
		Last Modified: Mon, 26 Oct 2026 23:12:07 GMT  
		Size: 44.0 MB (43982541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db12e7e02dfdca357bdaa83a2ef4903285cd4d469fd997d06ee361672b79f7b3`  
		Last Modified: Mon, 26 Oct 2026 23:12:05 GMT  
		Size: 879.1 KB (879065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719f8c625b273173b40926320b056727610f1297c10698e06a1e425f523b1d55`  
		Last Modified: Mon, 26 Oct 2026 23:12:05 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba38daa5b7658e32f41425614aeb93deb741720689c188216be359088c78108b`  
		Last Modified: Mon, 26 Oct 2026 23:12:21 GMT  
		Size: 805.1 MB (805056704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2aeedf0298727cd6d563a83f0d9fbecb4d2215c4ccac20c4219e0eb55b4860`  
		Last Modified: Mon, 26 Oct 2026 23:12:06 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2fdcda0d2a83e2ee5f881b1a85dc4d768e82d0fef5287b55da41de96da9205c`  
		Last Modified: Mon, 26 Oct 2026 23:12:06 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172f6490b4757a1c410a94e18e41f12f27d1509ba2c07165c69ea11c47992a9d`  
		Last Modified: Mon, 26 Oct 2026 23:12:08 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad0ca79995bfb840a4cf68f17d90773a1ffa881501262efa27b3f92c93a020b`  
		Last Modified: Mon, 26 Oct 2026 23:12:08 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56093d45d61f7ad2cb4513294a1f33a7f52079b65f3cff296edc58f908843ea0`  
		Last Modified: Mon, 26 Oct 2026 23:12:09 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c454fffd902fdce9354d6a613deef53b07c2e08009b60896e4b0686e465b94f`  
		Last Modified: Mon, 26 Oct 2026 23:12:09 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:d8a3c3e5b10fcbfbe8959811dd9d96ddddf7e0c9666ab330a3abfbfa9e109593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba489db1439460a8ceb2a4fe86e1a0208ed643939af318db12e421049d565b87`

```dockerfile
```

-	Layers:
	-	`sha256:0a501a36993b1915d68d89aad21fa5ab7d105fe67a1cbf180a99f47088ac3f7b`  
		Last Modified: Mon, 26 Oct 2026 23:12:05 GMT  
		Size: 37.6 KB (37579 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.12` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:b4c55228e9eccf0240b357b09f24538cebe2cea199d43a670fc1106e5076b3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.3 MB (837310748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8e66a61efc5b54f174f43dbc291050c8517e6d49418cb1c32bc5c53dc88d26`
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
# Wed, 11 Nov 2026 23:15:19 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:19 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:19 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:05 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:43 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:44 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:44 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:44 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:44 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bbddbd87aa97c1c8cf17a894f57f8aa6ef39630817cf6d1fd5acc9cf452d41`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 43.8 MB (43811239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bbf7bb2d8fb1ea4c3df5ea79130dbe93301aa2ab540328e0f0c295261e3157`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 766.8 KB (766772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3772ddc35f91925b70fc5373233944b3b212aed6b69fdb8531c690ca64ad70b6`  
		Last Modified: Wed, 11 Nov 2026 23:19:36 GMT  
		Size: 3.7 KB (3717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ee8fae89a81aac2046ecd4d815dfd02fced445e5d0ebc3872a2f4ae46df35c`  
		Last Modified: Wed, 11 Nov 2026 23:19:50 GMT  
		Size: 763.8 MB (763760503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424fe79d8906a34ab4ee7958b1df5db505d7cc7e30b68d75f7133145fd54b4fb`  
		Last Modified: Wed, 11 Nov 2026 23:19:36 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d738f7634a56e4111c630cb9e365efa53f45827e8d8f9e2391f7667e2049e2`  
		Last Modified: Wed, 11 Nov 2026 23:19:36 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d5a59f40033aa3ccd9a8a1fb6abdd2ef35e36f63dbd732c94f4e4ef1fcb857`  
		Last Modified: Wed, 11 Nov 2026 23:19:37 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1818baf511e7b30b51f37c368ac6c9e1da72994d62eac0170bbb1d42fee9c7`  
		Last Modified: Wed, 11 Nov 2026 23:19:37 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6348cf1f9a4a008d8f56abad17a603179f579035cb800e3035bcf1d2fdc41bd4`  
		Last Modified: Wed, 11 Nov 2026 23:19:37 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a33667e192bada24954918307e72930c51aa5328f815da1d0495b37dc059a6`  
		Last Modified: Wed, 11 Nov 2026 23:19:38 GMT  
		Size: 929.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:90fed953d05de462f2a627339f4a04e807a99264bc47215f1f391b3f107e43fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64589b82b4c08bdb0eb936d9ec349e57ba67b13695d9eb37ab53f4592558303f`

```dockerfile
```

-	Layers:
	-	`sha256:f22822c0f62a1e59b7626517f7363f0c23c2054974528a2a1e56dfddfbcb681a`  
		Last Modified: Wed, 11 Nov 2026 23:19:36 GMT  
		Size: 37.8 KB (37764 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.2`

```console
$ docker pull couchbase@sha256:b74813cc453acb0caa79b609b8c361921b508c10390a9c8eaab351ac8b2ed29c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.2` - linux; amd64

```console
$ docker pull couchbase@sha256:2f14ea8ce028f774a52d87deba34bd56a46435bb6ada0007a3782be6b1a00c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.9 MB (773925466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3472c1bf5ab95f86b64f807837fb2d7c9b08de5dc01f577c68d8f673651a8d`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:08:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c5697f6f2bfc21bc696f27d86e6f01b92e23ccbd3213e524c910c10d7bcab3fb            ;;          'amd64')            CB_SHA256=05fd37139aab8f3538ddfcf04eec97bd27654a5279468dce79dfad0f605bd784            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:09:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:09:11 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:09:11 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:09:11 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee209e60a27a20ea36ff21d295ce213058c63eb9a26a2304b0ea26bf4fc41b3a`  
		Last Modified: Mon, 26 Oct 2026 23:06:28 GMT  
		Size: 44.0 MB (43982216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfb4a914f88d58bdec268377a2b2cf3f573b0f5d2fbbc9c6f3c6312c9b2e3ec`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 879.1 KB (879089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308535161b243c1458f331f1ff38f2b5d0f32072ada7c942ec7fcffc79f77e5e`  
		Last Modified: Mon, 26 Oct 2026 23:10:02 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6d3216d15a73a334a979ffe5d12c62b8b1d90722df1aef4e3eb8dd018a4806`  
		Last Modified: Mon, 26 Oct 2026 23:10:13 GMT  
		Size: 699.3 MB (699289638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3024adb19428567d8f47362c663cf3d879ba105e9d210a9d3e044542d89cf2`  
		Last Modified: Mon, 26 Oct 2026 23:10:02 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2dab979ce0e0cd7a87e72d5e0e33fed3e9f35db402babcaeb037ea6c901647`  
		Last Modified: Mon, 26 Oct 2026 23:10:02 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ebea61b1ea4e4c6d64eaf631641d73a8f1af7aa24e5f8da83461c092973bd5`  
		Last Modified: Mon, 26 Oct 2026 23:10:03 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605607e157209931867550588899e3b39dae94d51a97306489150284e4f0cb0e`  
		Last Modified: Mon, 26 Oct 2026 23:10:03 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e53ad1bb1da48a49c89975ac501e246e12da26c7cc800b5d1b85a10d698c592`  
		Last Modified: Mon, 26 Oct 2026 23:10:03 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9a270ff2817792a43eab934b44bf20d06b04e77ac320d3260d210ff6f62c8d`  
		Last Modified: Mon, 26 Oct 2026 23:10:04 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:65055453bd4eaf053bbf8203689cc54ad340f22d01804f70ed157c8ff3420fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23cef8d2d4a8b3c4d958a55c7efcd45f0412b6573bdd659ef6c0fef6783d4021`

```dockerfile
```

-	Layers:
	-	`sha256:6f3fedebe6d853388b91fe38790e39d72d268af3a8afb84f7e9cf403cb5c75a6`  
		Last Modified: Mon, 26 Oct 2026 23:10:01 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:0b399bc666655fa6495707ffa8c9c0ca4fe03e8abdfa97c546291cd2788eebb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 MB (746946451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89a9462fe35bca51481982d8bb366b6de2fcd7969ab344185e26c6b31ddd8952`
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
# Wed, 11 Nov 2026 23:15:23 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=c5697f6f2bfc21bc696f27d86e6f01b92e23ccbd3213e524c910c10d7bcab3fb            ;;          'amd64')            CB_SHA256=05fd37139aab8f3538ddfcf04eec97bd27654a5279468dce79dfad0f605bd784            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:25 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.2 CB_PACKAGE=couchbase-server-enterprise_7.6.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:26 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bf754667680261d6862e038291b274db9d66608ab18a05f77dac8c20393498`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 43.8 MB (43810947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3256ec19d74d41f20c8cf59d3ff6ed80c064892e528b207a1ddb16350188b822`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 766.7 KB (766724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66eebb64294db36fa4019a04d302be374f7e0167c3b17f24a1d56a11b8a51499`  
		Last Modified: Wed, 11 Nov 2026 23:19:16 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4b05c884da5fd2ff9616a7b80fb596709f36032c5dfc1d42c2423234d309ba`  
		Last Modified: Wed, 11 Nov 2026 23:19:29 GMT  
		Size: 673.4 MB (673396611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aedb4fede713662094b4d58c4f2e5c157d084478f139463d9173907115b4f85`  
		Last Modified: Wed, 11 Nov 2026 23:19:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9cebcb9c1d5a03e907ec9e1697a6936b5cba2539acc50ceb6f98ed435e5498d`  
		Last Modified: Wed, 11 Nov 2026 23:19:16 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368f5f3aecc2c7b3d887f0345de0f4bba78dacdc82e20a2b773f35c717541a4c`  
		Last Modified: Wed, 11 Nov 2026 23:19:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17619ef0a49b4dcc4884cf88b19cca66a1abd257ea9ef804f6399b124714c1b6`  
		Last Modified: Wed, 11 Nov 2026 23:19:18 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681b358c55f41fad20390aaeb8826aa2f4a6e09dca17bdffe92083e41d0a0772`  
		Last Modified: Wed, 11 Nov 2026 23:19:18 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9897e42394c1eb557bc6f23e8f3e73b0b705ddb9c0eeff3880ec19bb3201de0`  
		Last Modified: Wed, 11 Nov 2026 23:19:19 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:d69ef76ff636c10ed3f08b3abba8852a0f45ae51b5d8424b0c78d8c55d389357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c95b3463dc9487e5614acff679cb726635e92bc2342ef3c630ab7f48d0f4a50`

```dockerfile
```

-	Layers:
	-	`sha256:3ccb641360cb28e9e91db918a5b35e1c66f10273a671306ec19fc8ae878bd925`  
		Last Modified: Wed, 11 Nov 2026 23:19:16 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.3`

```console
$ docker pull couchbase@sha256:b68bebb49d9ec5c2360336be68e6df0c56a6f825138c43a0b6da3e74b94fd7ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:346d44d1a9a079c8f8b1685a07051a5c1b62484b718d346fe6c25dc719437766
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **773.8 MB (773826345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d747d3ebdf0cccbd7042e8d5c81f98e65b19379b97161b9ceaf5c9d18d89526`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:08:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:08:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:29 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:08:29 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:08:29 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8822025cc32643cdb8bdb2abd98c5d6f0d8a73f85f6ab8dd12b209aa0c5b7be`  
		Last Modified: Mon, 26 Oct 2026 23:06:10 GMT  
		Size: 44.0 MB (43982047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f62ac04a96ff1d3ab6d7b33d8d031ef488974cc9e9e48fce2e95937fe8db50`  
		Last Modified: Mon, 26 Oct 2026 23:06:08 GMT  
		Size: 879.0 KB (879046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e45c8e6376cf2dd0f1058139009e366b00008df877433a70e541cd93f0532c0`  
		Last Modified: Mon, 26 Oct 2026 23:09:20 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f23b19ba438920eac688b29423749a7e84db89526f858dedcd2255301076111`  
		Last Modified: Mon, 26 Oct 2026 23:09:34 GMT  
		Size: 699.2 MB (699190658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f097a80362ee4b72e8d59280ea899b8fe3b92147a1c5c09275a663f4d2d8568a`  
		Last Modified: Mon, 26 Oct 2026 23:09:20 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8041d7daa1452fde034024ab71c04ed0b915b68c96b9d6fff37f046c1b8cf2b3`  
		Last Modified: Mon, 26 Oct 2026 23:09:20 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4c6d6a42941a2a6b304aa7514edd227786ded91cba52740b178f1e53ed9664`  
		Last Modified: Mon, 26 Oct 2026 23:09:21 GMT  
		Size: 844.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8753e37b197161cc41100b18765dcf3a89498fdcbc51cdadfd90dd4e82794764`  
		Last Modified: Mon, 26 Oct 2026 23:09:21 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c678e907a562cee85c98f1f3c0c57d527b81318228b07fb67fc8efa4f732c53`  
		Last Modified: Mon, 26 Oct 2026 23:09:21 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966b28736cd7095861dfbdadb5a7adb983769c40813b5a1b146c638eee4c1e96`  
		Last Modified: Mon, 26 Oct 2026 23:09:22 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:7b4dad16784c7a1db8d2f35f742fe70f0a903c8238c2df33bbafac47e5793ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5983d641803d108bc5d4d16ea562aa7591aa02c3bc8330f6e515b8113990a4e0`

```dockerfile
```

-	Layers:
	-	`sha256:8ee613ce4a0672171dc29dee5a752e1b3080e63124f37f0513ae526f19d7c477`  
		Last Modified: Mon, 26 Oct 2026 23:09:20 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.3` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:f0a5858d1cfd46f8bd925eff044cee69ce1a3303f34fc6590f666b7c3c4ef724
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **746.9 MB (746852004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81993098349924c1f85768df9a521ff0b416a3b322698ad48dfb41bca3475463`
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
# Wed, 11 Nov 2026 23:15:25 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:25 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:25 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:17:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:30 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:30 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:30 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:30 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:30 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279c907ecb54e5a7562776ccca1246dc0fab0793a4e234e998916e1ad8f1d0ab`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 43.8 MB (43810604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bcc06ed7ab900d6a86e5fa4dcb9d84e559e5d6e2c91e21f30df6d710edbad1`  
		Last Modified: Wed, 11 Nov 2026 23:17:33 GMT  
		Size: 766.8 KB (766804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7871968e6b9c907656aaf4bbf2aedadbcf5fe0972a8092b925a60ad1fda73241`  
		Last Modified: Wed, 11 Nov 2026 23:19:20 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aac121a5e92d6d7eebe14697a500797bf63b00758ebc2cf6f597d646eb91475`  
		Last Modified: Wed, 11 Nov 2026 23:19:33 GMT  
		Size: 673.3 MB (673302352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c3b4f82c186359fa7e4377844922b7bee593788d92fb05b918a6bd0165d68d`  
		Last Modified: Wed, 11 Nov 2026 23:19:20 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234288ecd2decce2b5884c166a8479067d0f5cbd8fc8efdb466257c1d87eb57c`  
		Last Modified: Wed, 11 Nov 2026 23:19:20 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab46442db23497c83d86f6794d5b3b289fbcf6495679ca01ca1a40011e78c81f`  
		Last Modified: Wed, 11 Nov 2026 23:19:21 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4939d2c3ea660210c4ebf15f408bd5b892d21bfef890cc1f49caffd7eaadba`  
		Last Modified: Wed, 11 Nov 2026 23:19:21 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d065c749efdb433acec5685d1d73ce6cb94c8c38dfa0e309a03c2b67ec90145`  
		Last Modified: Wed, 11 Nov 2026 23:19:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0655a854a207fa13e7440f036c0ad115c70a64fdfbd30c23a5db7e2a4cde70`  
		Last Modified: Wed, 11 Nov 2026 23:19:22 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:c8a22753faa8c63ab3a87bcd8b6131ec64075b1f8b8a525dea6be3986a408367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e8ab46690274879790a560f8a13c8ac886b4904343e589bebf04b20e9b2b13`

```dockerfile
```

-	Layers:
	-	`sha256:37e973e0cd73d02c6f9170fe6733c4205bb39e6aa952985bbc653d7e7a1f8347`  
		Last Modified: Wed, 11 Nov 2026 23:19:20 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.4`

```console
$ docker pull couchbase@sha256:80a92559e263b525a5edc4a800f34199aa72e9a58dff9b2ff844d96012054620
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:54a4822b629a7ca5fccdbceee01a1ccd38841a83f498fd9ce7ea145b2f5a77d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.5 MB (776518662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c5ab7a5fa2ff93e6d31baf793cdfa8787edee548491b5b5ce092ea3e879497`
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
# Mon, 26 Oct 2026 23:04:08 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:08 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:08 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:07:57 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=362376a07ccdc1d604ef2d48229d853bed9340dbd033abd8a0174819dfa76b6e            ;;          'amd64')            CB_SHA256=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:08:23 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:08:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:08:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:08:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:08:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:24 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:08:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:08:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c55b85e7ec41c0f825d71cb5bbbff11c80795cf9a6a806d3f8a75037d5eb07`  
		Last Modified: Mon, 26 Oct 2026 23:06:02 GMT  
		Size: 44.0 MB (43982229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39451413569941830e6efae8da8fb2987176b58cee786a8e13d950424739f384`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 879.1 KB (879108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3147df793a00905b6a0b64240a1a425df4597ffc00fe7dd3d6d3aa3d0653ff`  
		Last Modified: Mon, 26 Oct 2026 23:09:08 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00b1d2fa3e22d4cd03c5055b027cbde986a0c8e9387b7d389dd405fd396f65e`  
		Last Modified: Mon, 26 Oct 2026 23:09:21 GMT  
		Size: 701.9 MB (701882735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036aa2279f2bfd3da4b486ad2fef3c7d1ef50cc3b3ae5658a7ae0799c50bf4f0`  
		Last Modified: Mon, 26 Oct 2026 23:09:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6687c7a83e697abf17f0e69dc4f24d1ad7ebd1e28f1bf1e5d49180a67bc11c22`  
		Last Modified: Mon, 26 Oct 2026 23:09:08 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b404e7f121668b27312265cb32a1d41c622c964f3b07d03cdaa3dbce5e4b7ba`  
		Last Modified: Mon, 26 Oct 2026 23:09:09 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:855dfded1440996e5c3cc04093ac2878b1c490f45492f57767819dda3c4ae89f`  
		Last Modified: Mon, 26 Oct 2026 23:09:09 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a95b90e3ea1831d8431ef6f1b792f20d2622f7c8c532cde75da9badb43969ec`  
		Last Modified: Mon, 26 Oct 2026 23:09:09 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d905b3ed60c910feeccafca6cce466d0186946bfcbe0c7fe010d57b2ed6671`  
		Last Modified: Mon, 26 Oct 2026 23:09:10 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.4` - unknown; unknown

```console
$ docker pull couchbase@sha256:59ff5843c7c149e173161d3d6dc502c707d60534f214fa8aeeddbfac7855ff99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654232931c077994be7f62568f11eadc276aa0539ec639f8cfcc65b98a706202`

```dockerfile
```

-	Layers:
	-	`sha256:477e47188fa6862bc93b7bf7222b99a52ae13923deb23643b9db2dd9a0aa6c34`  
		Last Modified: Mon, 26 Oct 2026 23:09:08 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.4` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:34f6c5c93383a499f8dcbba97721f3a62790dd2219ffe2a3dd8e999c3e485740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.1 MB (749114435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9099f9214626062fd80d58f40b0a640018f35d82583b52f7dc930c54d6dd1dce`
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
# Wed, 11 Nov 2026 23:17:59 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:17:59 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:17:59 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:17:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:18:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:18:23 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4
# Wed, 11 Nov 2026 23:18:23 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:18:23 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:18:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:18:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=362376a07ccdc1d604ef2d48229d853bed9340dbd033abd8a0174819dfa76b6e            ;;          'amd64')            CB_SHA256=9616bba1b213231493b4d17ed677f0dc26575e0d7f09234e6d4a6e0f6b1358ad            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.4 CB_PACKAGE=couchbase-server-enterprise_7.6.4-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:58 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:58 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:58 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f4ef6c2b6580927200c11f92eecbb04d5c0f920f25f04759815b10283b62db`  
		Last Modified: Wed, 11 Nov 2026 23:19:50 GMT  
		Size: 43.8 MB (43811021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067510fbbea7331cdbb8ffd3c820f6b23cf6cb7f4981704a25d90860876552f0`  
		Last Modified: Wed, 11 Nov 2026 23:19:48 GMT  
		Size: 766.7 KB (766740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdd54f71fd34d67958ac17005a0a3ce2242b667f65498b967696750899df39f`  
		Last Modified: Wed, 11 Nov 2026 23:19:48 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d268fd7ed60c933a874eb1420baa0dc7a6341e8083aa601cd9fba5092af55be6`  
		Last Modified: Wed, 11 Nov 2026 23:20:03 GMT  
		Size: 675.6 MB (675564428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5ad06d7e4e1522bacb731d0c1417e7ba412940e611a90a0be862d0bae4589e`  
		Last Modified: Wed, 11 Nov 2026 23:19:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b4af9b928b4b94778c1e0e876e446728a3ea560968771a0580d5768ca0fa25`  
		Last Modified: Wed, 11 Nov 2026 23:19:50 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098ba1d81120044bffdbebeb3959b242a1dc4dc6ec1b94abc2d83d781013cd54`  
		Last Modified: Wed, 11 Nov 2026 23:19:51 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff4e62ad9b691d34795bc91d37a06dd01f0e96a35c7a7ade770399d94d0bf16`  
		Last Modified: Wed, 11 Nov 2026 23:19:51 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f22698b06c24b9d4bea09edbf53cffcdcffc07decfe1f52359d955301c07c8`  
		Last Modified: Wed, 11 Nov 2026 23:19:52 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c7c6e23cc6b797838e55d3cb50ebf0edcc2fc11eabb79ae4bc9b9534cdb3c4`  
		Last Modified: Wed, 11 Nov 2026 23:19:52 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.4` - unknown; unknown

```console
$ docker pull couchbase@sha256:09983e5ba7eafa104783d37dca5401dd2ff523067b4d302497c20e51a156b383
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7d77d8934017c0b8d7f5b1ab04633c0f7bb0b5758691ba824faf18f5461efa`

```dockerfile
```

-	Layers:
	-	`sha256:3608ddebf4259c24f20e6bbf60a5a342a1650f50f19feafe2bf7f4ca2d2f2339`  
		Last Modified: Wed, 11 Nov 2026 23:19:48 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.5`

```console
$ docker pull couchbase@sha256:c526b52743b1624a52b0ae6eebd201505e0902e7267fea971287f49aef9daf64
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.5` - linux; amd64

```console
$ docker pull couchbase@sha256:6fd5b697535763cc548b1e48393b46886301f090811ec9f0dd9f47c86bcedcda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **776.4 MB (776377997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a118ccbc6dc82e4f1a9ee816cd9d1805e6ea8145b50036edbb972479afc4ee1`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:03:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:07:38 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:08:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=d162fb1d2e7acf151fdbf302c80f79622b7df67bf27ab85d83c40cc7e82a2ad1            ;;          'amd64')            CB_SHA256=9c2f2a01cecf862c210af5a7bfe38fd71fe087c52e1cc168119d34bf7aa79761            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:08:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:08:04 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:08:04 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:08:04 GMT
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
	-	`sha256:2c724df9c2888e0cdfa90323573231fc3d7df8c0b9ecea78967a58f6ad128fd4`  
		Last Modified: Mon, 26 Oct 2026 23:08:54 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f3af59e32aaf17db7eee9d4bb50bf2a17b44aedee0f0a68d83bd058a7dc407`  
		Last Modified: Mon, 26 Oct 2026 23:09:05 GMT  
		Size: 701.7 MB (701742192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed073f25c762ad8a7e17778a4e9338f03e4de66492f36ed0a10f9b9e9c6d4eaa`  
		Last Modified: Mon, 26 Oct 2026 23:08:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6618b3234d529ee6963bbad6b09c81a548cd9fbe072e66b235316222323090c4`  
		Last Modified: Mon, 26 Oct 2026 23:08:54 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47bc85ab847616ee04f9ca2be0e97490d874137ff98fd651200e3c0fd74f8b9`  
		Last Modified: Mon, 26 Oct 2026 23:08:56 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2f2d15c7266e93ef17a8cbcbc4edcf575075c3ae59efd7b3ab35fc3b988f50`  
		Last Modified: Mon, 26 Oct 2026 23:08:56 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678e70e06577ac12210a3ce111d7e87beea3daf2189351a4b6f4be0554c3119f`  
		Last Modified: Mon, 26 Oct 2026 23:08:56 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1031fc58fab5732f1d155847b997df7287aa6730d10cb0a7dc53bd0bb0b3132b`  
		Last Modified: Mon, 26 Oct 2026 23:08:57 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:1b92c50a0f7e7d99cf178729f77d3075a4901803222da4c2114caf62fdab16cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187a732e379ff9b63f04b045096137e916e1467eaeb2f8956e86c4d874d827ab`

```dockerfile
```

-	Layers:
	-	`sha256:8adf3abac7d51107b9962a431b91910e098333aff05b95ae76d3102ccbb6e96e`  
		Last Modified: Mon, 26 Oct 2026 23:08:54 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.5` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:dbffc5eb8b68103430351d3ec156e81eb5f8f4d082c68380632802fa124e0e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **749.0 MB (749023763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efcf3276eccdf0ebebbdc4f0266ac72f2c0c2003d4b006c7591b15a2986e7cea`
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
# Wed, 11 Nov 2026 23:15:17 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:17 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:17 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:17:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=d162fb1d2e7acf151fdbf302c80f79622b7df67bf27ab85d83c40cc7e82a2ad1            ;;          'amd64')            CB_SHA256=9c2f2a01cecf862c210af5a7bfe38fd71fe087c52e1cc168119d34bf7aa79761            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:09 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.5 CB_PACKAGE=couchbase-server-enterprise_7.6.5-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:10 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:10 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:10 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:10 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e1438c965094a528c753f4b752014071f64b4f28963a973278dcc9ebb43844`  
		Last Modified: Wed, 11 Nov 2026 23:17:20 GMT  
		Size: 43.8 MB (43811426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9916b11264a9c87d052385f0cb4f16082e132c389324e12baa162db7ca77517d`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 766.8 KB (766800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4c2a1ab24b7c812e9a080ac7ae0c2f99cd22cca51c996ebddf2db3ada6b067`  
		Last Modified: Wed, 11 Nov 2026 23:19:01 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9867208c1257aab801726f00f508c659699a0062936755b66aadc71f12daf3`  
		Last Modified: Wed, 11 Nov 2026 23:19:13 GMT  
		Size: 675.5 MB (675473295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc2fc96e69f1b3063fe15721f300c7986e15893907830e35b77297137a1eec60`  
		Last Modified: Wed, 11 Nov 2026 23:19:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5bf378ea6f0d484d5f5be92d86845f3cefd9daac9f9b228ffe15f256be387a`  
		Last Modified: Wed, 11 Nov 2026 23:19:01 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82db451663d2b0445e208e409c52d43fc8ac064ca51bff35d7b83e20b65b03e`  
		Last Modified: Wed, 11 Nov 2026 23:19:02 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec9fdf3a1140f9a90b763062867d61c2005bdb3e4a473708348211c95f2ace8`  
		Last Modified: Wed, 11 Nov 2026 23:19:02 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0f272d559edb1889ddd74fbe98aa2b12f32096502e3b77b431c2951d264e7b`  
		Last Modified: Wed, 11 Nov 2026 23:19:02 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197ee59a0079a38407196cb84c5ddde112263e92c8d7654f0c0b024628f549eb`  
		Last Modified: Wed, 11 Nov 2026 23:19:03 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.5` - unknown; unknown

```console
$ docker pull couchbase@sha256:e13689bcda83acd84d1b3dc2c40a34390bf4af671240d4043a70ba5509c5f6a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81c16c6f873b40a4b213ec0bba4e7c1f6adee4e049dd5ae70ea74491822cf30`

```dockerfile
```

-	Layers:
	-	`sha256:d7bb16eeb4243221102ed136613052da7be5deb4b98341e5475018abe19e308b`  
		Last Modified: Wed, 11 Nov 2026 23:19:01 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.6`

```console
$ docker pull couchbase@sha256:b4c0745179f74cbc2be26390a560f91682018da00a5640bee2c1e5cc66448930
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.6` - linux; amd64

```console
$ docker pull couchbase@sha256:f2180f47305c47218de3aa627adecf23357966406ef9cb4ec77dda73ebed71f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.6 MB (799622848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b92fddfbb399fbf38c9e06254277bc7d0bf140a1344932388d0661cd005bc35`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:36 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:07:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:07:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=21b348be14c30e39658e9378ed62750806a20946677866d5859ac426df0e6486            ;;          'amd64')            CB_SHA256=43992488e154a87119a7ffb738de92b3364f5b1bfcbdd958e757e87762076ed7            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:07:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:07:51 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:07:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:07:52 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:07:52 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:07:52 GMT
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
	-	`sha256:2f52f3433921cf2a60c128d6e8754dc58d573838423b0aed2dea940e9a86629d`  
		Last Modified: Mon, 26 Oct 2026 23:08:42 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0ae08bbc03001ad24f054d8f7c8d2a8eb5d2d0b6e858873f37782727962ee3`  
		Last Modified: Mon, 26 Oct 2026 23:08:55 GMT  
		Size: 725.0 MB (724987296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36beb782b8be6a13667a63fdb92ff752846526f9e07656d51ed3d3588b27a7ed`  
		Last Modified: Mon, 26 Oct 2026 23:08:42 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ddfb127387aaef5e3839941a93654b1603d924091437513c19311faf825f26`  
		Last Modified: Mon, 26 Oct 2026 23:08:42 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ec86326eb97d8da0cc27158d607ce40feeb8bcf56a1207ea330fb501af93f8`  
		Last Modified: Mon, 26 Oct 2026 23:08:43 GMT  
		Size: 854.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1a92765ccfd17ff1b7365ae6367ca4d97a6caa441548b99fd5f6fc127c26908`  
		Last Modified: Mon, 26 Oct 2026 23:08:44 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a26cf305fb5e0946650d690fba0f28c06d434f491b80cdda5f9c0e37d463aa`  
		Last Modified: Mon, 26 Oct 2026 23:08:44 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec5000a66184f042043a87560a3e59c51144cda720b7e29333d0a1b565fd4bd`  
		Last Modified: Mon, 26 Oct 2026 23:08:45 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.6` - unknown; unknown

```console
$ docker pull couchbase@sha256:228c2ff845266e7e3323f24a5ba4d603ebb72b6dae71f6690e1d87cd48faeb1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10b2b4a1e21e53f7ecb6e50f12c67f60a9d4db8116aa8d2c7dd5ec595d68ec0`

```dockerfile
```

-	Layers:
	-	`sha256:1e1416631df39066514e33027f87fac825fdbd5db4364044b9b46050004379bc`  
		Last Modified: Mon, 26 Oct 2026 23:08:42 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.6` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:30e26ca21f3a72b1b58d3b591108c1d6c221da23857f048d84412772b06cec39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **770.0 MB (769985005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:323647dec7b93fd574671f4220b648e1c04e15af8ba24ad5c723d1909332cc55`
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
# Wed, 11 Nov 2026 23:14:58 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:58 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:58 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:13 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:13 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:17:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=21b348be14c30e39658e9378ed62750806a20946677866d5859ac426df0e6486            ;;          'amd64')            CB_SHA256=43992488e154a87119a7ffb738de92b3364f5b1bfcbdd958e757e87762076ed7            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:18:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:18:04 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.6 CB_PACKAGE=couchbase-server-enterprise_7.6.6-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:18:04 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:18:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:18:04 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:18:04 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:18:04 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7513ece673814152fa55df119fb13abf3ed9e74a218699e23cd1507515c10288`  
		Last Modified: Wed, 11 Nov 2026 23:17:14 GMT  
		Size: 43.8 MB (43811491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44cde04225f0e4506e9d594a53332773f0960352e3321769059ce328773e729`  
		Last Modified: Wed, 11 Nov 2026 23:17:12 GMT  
		Size: 766.8 KB (766750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b579569e1c625c008f10c622853ee2b0c245025a463bb5adba9d705c2cd110`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f357ffb035498f71e9ce867afc576ff0bf4710c0399353d7c07f1dc60e7b11`  
		Last Modified: Wed, 11 Nov 2026 23:19:06 GMT  
		Size: 696.4 MB (696434529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78aa44f138b1ddf7b26c5968adf9968cdeb7d960e389f003a5f6d3fcf87afdca`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c3d9d479a15296b3e22a9f34e7810ebe7e1f3424253a6aef1f32b6c43b0463`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03e432525fb73aae1e972dbd39254002156c62ff0805e10cdda4200d39cd287`  
		Last Modified: Wed, 11 Nov 2026 23:18:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8360c95dfe87881deb80b61bf8f5d3c50305b5f1c938d8b34579ef2dda57dc80`  
		Last Modified: Wed, 11 Nov 2026 23:18:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd940af970b19b613c64365742ed5106d8562a7b3ed29a980d0758c76b63dbeb`  
		Last Modified: Wed, 11 Nov 2026 23:18:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e1eace389178b1219d6e9cd0307c36d1b2d24c77f2cb9a22839aaf220bfdc1`  
		Last Modified: Wed, 11 Nov 2026 23:18:57 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.6` - unknown; unknown

```console
$ docker pull couchbase@sha256:a62f8a84b368b335ec512a71a00cb8f887f1786b17a740eca5b3184c46b0753e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837d5ddbe0e05e5fb04055c9ee11668535cb4ae80ec1ba6ad3507f83d902c510`

```dockerfile
```

-	Layers:
	-	`sha256:967b9bfcdd30af0cab5bf518e7d38e3897dd1387ed250b839f78787d98f4c29b`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.7`

```console
$ docker pull couchbase@sha256:38f7e566095a4c98f4ecefabae0d32cd64bfad1df0d90f9457f31ade0ee936ea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.7` - linux; amd64

```console
$ docker pull couchbase@sha256:d05fd8fcba3b8405a8dadc43e67cc56e6fddb5b328d7abc52321ddb48540943e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.5 MB (799464570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0706489a2816eec7726ffe076e465ff5d7a933edeabb07c4137e020cb37ab1a`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:06:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:07:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:07:25 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:07:25 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:07:25 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee209e60a27a20ea36ff21d295ce213058c63eb9a26a2304b0ea26bf4fc41b3a`  
		Last Modified: Mon, 26 Oct 2026 23:06:28 GMT  
		Size: 44.0 MB (43982216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfb4a914f88d58bdec268377a2b2cf3f573b0f5d2fbbc9c6f3c6312c9b2e3ec`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 879.1 KB (879089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab7b6ec0ac53e8e38b399f17f0066bb87e68f1b877c5aae8f6018b6742f8a99d`  
		Last Modified: Mon, 26 Oct 2026 23:08:15 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcdf868d0f91650bfeeaff7f34a66568564e99d8629d7b7ea3ebe6016dcdcfde`  
		Last Modified: Mon, 26 Oct 2026 23:08:31 GMT  
		Size: 724.8 MB (724828678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433e5930c5de9993e1d15cc57aea31f79fac70217a0e548f30c3726eb4a440ff`  
		Last Modified: Mon, 26 Oct 2026 23:08:16 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a4bf597cbff11aba8e436c66400385e25d20c22adcb4741133eda7bd4d0e34`  
		Last Modified: Mon, 26 Oct 2026 23:08:15 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be33134689b571b55e55785feb9e10ab4021fd97a01ef93d183c6a0faae914b3`  
		Last Modified: Mon, 26 Oct 2026 23:08:17 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ed3264a11792fe421499c3d9130a7b14fca692b22d0b5ad39ee80c2ddeca24`  
		Last Modified: Mon, 26 Oct 2026 23:08:17 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec4b950ba2d9e2039880331c16ac01671cb610f97807c5cd66a00ac1e305e4`  
		Last Modified: Mon, 26 Oct 2026 23:08:17 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71f94d284b0b9491d1c5ea1785a2220816a1e7793604bd828cff1cac330ad21`  
		Last Modified: Mon, 26 Oct 2026 23:08:18 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:ffcf93114e75b0b778668b6d3ef7f7113616931d07fa067786dad15a45a8ede2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8419707bf34899ce8812656369e770278651cea7467582616eeede235e328473`

```dockerfile
```

-	Layers:
	-	`sha256:a66cf76fd1c77d915ee6ff67dcff58caec4702bf926670e809aa2372108e1d61`  
		Last Modified: Mon, 26 Oct 2026 23:08:15 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.7` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:2ddc882b5336b7c0e5b2594ca70cf258eebde380cfa95e850e245cae3c774380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **769.8 MB (769832770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d210916beb6714d06285f8e133bf32da683c0898776b4c566a4c97b78570713`
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
# Wed, 11 Nov 2026 23:15:25 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:25 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:25 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:25 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
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
	-	`sha256:279c907ecb54e5a7562776ccca1246dc0fab0793a4e234e998916e1ad8f1d0ab`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 43.8 MB (43810604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bcc06ed7ab900d6a86e5fa4dcb9d84e559e5d6e2c91e21f30df6d710edbad1`  
		Last Modified: Wed, 11 Nov 2026 23:17:33 GMT  
		Size: 766.8 KB (766804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e292cc91e1b863ac5eb8f108a3d32cea18146ab651fb43e667ab95af33eaab98`  
		Last Modified: Wed, 11 Nov 2026 23:17:33 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a9c262a9ecfd85d9d2c15698905b633bdbdd62d8a82a15197881b12656259bc`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 696.3 MB (696283120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7f951909288ba1bf77c386ee3a6b20cfc6dd301a56a64733186da207d051e4`  
		Last Modified: Wed, 11 Nov 2026 23:17:34 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa402059269f0148dc36f5ccc70d22532be7205c049651134b13ed3378924e8`  
		Last Modified: Wed, 11 Nov 2026 23:17:34 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5859cba38c02ce2b2804771b449b4e7c7092843dc9550db2416ed16d5d223b`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c58dd4caab6bed0f46a3d137400bc22128436b0f6e0c1b28081d751e8c81aa3`  
		Last Modified: Wed, 11 Nov 2026 23:17:36 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75702958d6913c0c8ca9997618bae5f6d82e57271733b2873781edc9d4d3dae8`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf83cb94ed83acd6df16b4b7e4a5c3a9cb5d04a83cc4aa265da32a1aa96b4412`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:34f5526da638db4b4162d8d85c45e656c0c4c6006ec8b7c6b56438adf5b41be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cdd95e2915c43e364ab98e1bcf9060e22246071885d1bd82dc90f38674c106e`

```dockerfile
```

-	Layers:
	-	`sha256:23b256d9e26e24ba49fd1b54846e190ddb5c58fd2a4cd9c9077586f7fe640bef`  
		Last Modified: Wed, 11 Nov 2026 23:17:33 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.8`

```console
$ docker pull couchbase@sha256:9251250dc7e2bee36313aab63ff0aa30b7a133c00a8ca0caa0eab7a0de030e6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.8` - linux; amd64

```console
$ docker pull couchbase@sha256:2ac5686c1ef8b8832aeadf7d449c9e1bc1ba7742bc3945f87ac12b9c82060aa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.9 MB (820854293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a056aea8f0ce8c9e775a397b41509f6d0f0c4ac32abafc5d253214a58a9587f`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:06:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:06:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=4594fe0dfe33e2674f3f800de605856bf7e2a5bb15e34f8bc44cc382bf8351a6            ;;          'amd64')            CB_SHA256=e1437c7e61aa1ab28b00604d9c1ce0e280fa4f4025f34ea3aaf6a975b8bdb3bf            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:06:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:06:50 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:06:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:06:51 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:06:51 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:06:51 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8822025cc32643cdb8bdb2abd98c5d6f0d8a73f85f6ab8dd12b209aa0c5b7be`  
		Last Modified: Mon, 26 Oct 2026 23:06:10 GMT  
		Size: 44.0 MB (43982047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f62ac04a96ff1d3ab6d7b33d8d031ef488974cc9e9e48fce2e95937fe8db50`  
		Last Modified: Mon, 26 Oct 2026 23:06:08 GMT  
		Size: 879.0 KB (879046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379e20aaa9a7bf2a52f3000e92ed026bccd9f5289e6c9a324a5300c3efbe7016`  
		Last Modified: Mon, 26 Oct 2026 23:07:42 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f992e02eccc73ce32d7fcb80515d4b1f6371654726ec01da09cb5670919f4f37`  
		Last Modified: Mon, 26 Oct 2026 23:07:56 GMT  
		Size: 746.2 MB (746218599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724c826fd9e8a8d7f26899dd5f8a8660650dc3885ed98c6d3ff1dbf515cd0231`  
		Last Modified: Mon, 26 Oct 2026 23:07:42 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a521060cecab4a588465abc635ef1dd291627d92c85770e85e07a3009a656d`  
		Last Modified: Mon, 26 Oct 2026 23:07:42 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e5e775646d03296de042fa581c248277d5f4559515317a44890673b98acd4c`  
		Last Modified: Mon, 26 Oct 2026 23:07:43 GMT  
		Size: 852.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c865f31d517e5a68dba8c7a995fe96e52bfef676944068427fadc838baad92`  
		Last Modified: Mon, 26 Oct 2026 23:07:43 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65ec755ce569adb5fb5f6965fba602bb8aca5037de69ae2f03684059a2d62e86`  
		Last Modified: Mon, 26 Oct 2026 23:07:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ffb2af883b5e7691cade444f654ca6a8e0b5afd8fa3a8b8be1d1ae0583d89e`  
		Last Modified: Mon, 26 Oct 2026 23:07:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.8` - unknown; unknown

```console
$ docker pull couchbase@sha256:9f273ca9cba9819d98c746e28da60ecd1d77278b6027ec2f341238c5673cddce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777ef04b27c335e65aab4ee5bf4c20482afdcb2d6c24d836fe0d6e9d2d825e36`

```dockerfile
```

-	Layers:
	-	`sha256:f7190ad502f2af8596f095023bf564d2cb5c77971d28b0826d0b9ded6ad07ddf`  
		Last Modified: Mon, 26 Oct 2026 23:07:42 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.8` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:ed890f7fdb1b7919daa926d70f088f8b4670b002fb4146982ce46a0d7593b489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.3 MB (787335693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ef1b80614b21a4389faacbbb764f54895ba8a49691a518725829faf0f59a6f`
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
# Wed, 11 Nov 2026 23:15:23 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:23 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:23 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=4594fe0dfe33e2674f3f800de605856bf7e2a5bb15e34f8bc44cc382bf8351a6            ;;          'amd64')            CB_SHA256=e1437c7e61aa1ab28b00604d9c1ce0e280fa4f4025f34ea3aaf6a975b8bdb3bf            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.8 CB_PACKAGE=couchbase-server-enterprise_7.6.8-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
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
	-	`sha256:e5bf754667680261d6862e038291b274db9d66608ab18a05f77dac8c20393498`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 43.8 MB (43810947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3256ec19d74d41f20c8cf59d3ff6ed80c064892e528b207a1ddb16350188b822`  
		Last Modified: Wed, 11 Nov 2026 23:17:35 GMT  
		Size: 766.7 KB (766724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e41fa728ac80825341a461e86be1c361ea1c0988424c2a9cf34172f050a2e2`  
		Last Modified: Wed, 11 Nov 2026 23:17:34 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1391b1793378e95b71e51fbdca1e137e5e1b0635f82835f3ddc59e2b0a3cb20f`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 713.8 MB (713785775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc8d84d3de63189e1e0a250adbf43f9dee81df0dee089c74561f1df43f319d9`  
		Last Modified: Wed, 11 Nov 2026 23:17:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb542dacf1cb84448ec61902b472ad22286f03f41a65dc0655c8a0abfb6f84f`  
		Last Modified: Wed, 11 Nov 2026 23:17:36 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0519006e658517b29e250858ed55df86ece4e3a3e7557bd147b4a7b7ec950478`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3ced2c51294b6dc2e929afd119eee2f6f3052329558397ab0163398d053701`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75702958d6913c0c8ca9997618bae5f6d82e57271733b2873781edc9d4d3dae8`  
		Last Modified: Wed, 11 Nov 2026 23:17:37 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc4b720d2322c2e4ac6474bc823daf892672313157cd3cfae09b255bd87e88a`  
		Last Modified: Wed, 11 Nov 2026 23:17:39 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.8` - unknown; unknown

```console
$ docker pull couchbase@sha256:73acca722c33cf35f975a0805246481f7a5b7778cd7880ec37ac7a46e06e6de7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591d2cd9e9dfaccd5a8355f7ce6161ac380d6e385373d17e1e46f39c599a14ee`

```dockerfile
```

-	Layers:
	-	`sha256:9018b5f695bf52ad6ef1bfe2bc33a2c66ba6a3f9947b1ac366c09db254d012e9`  
		Last Modified: Wed, 11 Nov 2026 23:17:34 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-7.6.9`

```console
$ docker pull couchbase@sha256:8d0384ab84b4b707a7d176652edd9445f9c3e7507f4922d0c0bfbda8b61b7553
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.9` - linux; amd64

```console
$ docker pull couchbase@sha256:fc88af8cc907e870ea85edbc45e1ce3e64004b9cb3925a8c0e1ee38c558da920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **820.9 MB (820879525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c041e2b35025ed07d96f24df41e171c8fe1b168364b737d5740557128e121ae`
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
# Mon, 26 Oct 2026 23:04:08 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:08 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:08 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:06:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:06:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ce070178588d34a08a792a63f11200c383b7c6d885f337101d13992850c282e5            ;;          'amd64')            CB_SHA256=51cd89e7db43bf5858d6b98e50c43e6217694d814fddabafdf5e798bf8460e43            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:06:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:06:47 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:06:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:06:48 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:06:48 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:06:48 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c55b85e7ec41c0f825d71cb5bbbff11c80795cf9a6a806d3f8a75037d5eb07`  
		Last Modified: Mon, 26 Oct 2026 23:06:02 GMT  
		Size: 44.0 MB (43982229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39451413569941830e6efae8da8fb2987176b58cee786a8e13d950424739f384`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 879.1 KB (879108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef654443cac2797f4d92b7d71fed3fb60440388c93d929f181f5a7e9553634f`  
		Last Modified: Mon, 26 Oct 2026 23:07:38 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cad68272d5e7e6a55c51cdc2ae49d411fde2fb9945857d6663c71fecf868dd`  
		Last Modified: Mon, 26 Oct 2026 23:07:51 GMT  
		Size: 746.2 MB (746243585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41ba485a264961b6713a168380d5a8339189c0db21978feb0523688c16f42208`  
		Last Modified: Mon, 26 Oct 2026 23:07:38 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9992daa06379edd4f1c0ebbed4c31d223e6314cb3b16c2b2baddaa6f0d706e`  
		Last Modified: Mon, 26 Oct 2026 23:07:38 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e19ac8f39d44de5400958c8b935eb5487719f3a90b7e3b56eac878449a65cd8`  
		Last Modified: Mon, 26 Oct 2026 23:07:39 GMT  
		Size: 853.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a2bb503e182a6d8f7cffbb178e359edaa61cc8568063ac301a4f851b5ede3fd`  
		Last Modified: Mon, 26 Oct 2026 23:07:40 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1330a2dcd555503eb3ace949fd9376dac59ef160bec39bb56c2de4be576efbda`  
		Last Modified: Mon, 26 Oct 2026 23:07:39 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60a915bb48bd72a82244679ac0f3a49900c9ceb61567cafc30372c43aa516fa`  
		Last Modified: Mon, 26 Oct 2026 23:07:41 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:3f79d6522683205f8386923125ebc2cfbbec6fc489c14b1b80b610d7e630134e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59df17c46a463f3a772abaa5c06b69be3e6fe46932499b2dcfd727c3069bd3fe`

```dockerfile
```

-	Layers:
	-	`sha256:41cfda69f65d321d8da60dd65d2f408cffa15a04c7c43de1d0e6ee95c4f995a5`  
		Last Modified: Mon, 26 Oct 2026 23:07:38 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.9` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:949796f9723c24e2c6ec9227f87efbe0aa18092ab6de9a526ae24f08fb8c648e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **787.3 MB (787326634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6674f756e8de50fdbab74d783a2863b26b4e1c1a71925991e2e1d489d66db0`
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
# Wed, 11 Nov 2026 23:15:19 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:15:19 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:15:19 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:15:19 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=ce070178588d34a08a792a63f11200c383b7c6d885f337101d13992850c282e5            ;;          'amd64')            CB_SHA256=51cd89e7db43bf5858d6b98e50c43e6217694d814fddabafdf5e798bf8460e43            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.9 CB_PACKAGE=couchbase-server-enterprise_7.6.9-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:53 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:53 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bbddbd87aa97c1c8cf17a894f57f8aa6ef39630817cf6d1fd5acc9cf452d41`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 43.8 MB (43811239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bbf7bb2d8fb1ea4c3df5ea79130dbe93301aa2ab540328e0f0c295261e3157`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 766.8 KB (766772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54aebb86f7e3a64e8369f21143fdd7946ebdf3371c88898d155a49c18518c6fe`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6624bbfa0394d1a337345a8560812e8f1d02708d0e951fd61c90f887f7e244`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 713.8 MB (713776385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb843c807f13edb970603031bab84cd70170c0bde9f7d2b4271de43be5c7a217`  
		Last Modified: Wed, 11 Nov 2026 23:17:45 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a63e666837fb152ea235622c033c06ac225e8b6bb6598092cb3cde5ce84f843`  
		Last Modified: Wed, 11 Nov 2026 23:17:45 GMT  
		Size: 816.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d0d276160785b6918c2625f005d8096958fd1c1027ca32ab29deec7f2eadfb`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8880be1e3058c38535a04e34b38ea01037841c4308e271221061402c994b54cb`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630028d782249c3db12e8550aa4021d72ee9ce0b8a77775037f2aadcaeb614ed`  
		Last Modified: Wed, 11 Nov 2026 23:17:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f9b3bd90d76313ccb1eb297770be0a51996187a2b6808a5c9c828198913de3`  
		Last Modified: Wed, 11 Nov 2026 23:17:48 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.9` - unknown; unknown

```console
$ docker pull couchbase@sha256:db61fcefe358de151b40cc29ed2f18d68c4fb8a9d44161a323c4ac691d8042ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6b9aaa4a0ab3ee56f8e10b2aebc8e94e7787326970ff4faf663edb7434887d2`

```dockerfile
```

-	Layers:
	-	`sha256:6d1af9d9583f6cb4aef26cff6057b5a7a2c90f962aff34cbd4ed9cd76079d63a`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-8.0.0`

```console
$ docker pull couchbase@sha256:2dc15a6835b44222ff8995285b75d798cccd95f9e19386d03894c4fa2d9c1cb7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:8fff44de0a0083fe46ccc87e805b6eabf2d989844eb77fb783ea91d783248292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **867.6 MB (867580039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21701ca61bd6855425f305484e9c108baec68576c7e45b5b1ed35582e357ad5c`
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
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:03:56 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:03:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:05:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:06:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:06:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:06:17 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:06:17 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:06:17 GMT
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
	-	`sha256:77e0207df3ab5c91acca34e8029d3eed06b7a47b0c731a94077301bb7477764f`  
		Last Modified: Mon, 26 Oct 2026 23:07:17 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdf8bb7655e0da91a7e7bb23ad74cba86ae5ffdf1f274da2855bd00e40acc94`  
		Last Modified: Mon, 26 Oct 2026 23:07:31 GMT  
		Size: 792.9 MB (792944233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec2718ab6fac233c554761cfb885aca3a507a6ccba52f84805f562c1bd851d1`  
		Last Modified: Mon, 26 Oct 2026 23:07:17 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:118116057b38c5400f7a6d6ea841e1121ccc1bdc199f332314029bf46c3939da`  
		Last Modified: Mon, 26 Oct 2026 23:07:17 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3695555d1d7274939434259ab7634ca484d87b4dd4f8cf5bcb51e799a3c35fbe`  
		Last Modified: Mon, 26 Oct 2026 23:07:19 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a32c53b4141e7d107b949bbfea3ddf0bb21a6b64607769a79ad5d40ccdbf647`  
		Last Modified: Mon, 26 Oct 2026 23:07:18 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38827bfdbdc8cc7298afba8afbff62308c9fd8a0274ed06c22ca3096658a0a2`  
		Last Modified: Mon, 26 Oct 2026 23:07:19 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80d883d41e33103bea28ea3c6c1d74a01fd20e60a634693b685d7c47619057a`  
		Last Modified: Mon, 26 Oct 2026 23:07:20 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:7f89c176a0a0d7dfb3ddbaa8981b3c376fa8585f3ee88df563a168f07d23ee2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baf3ed39cb5a1bf27349225a1f593919f367713033eb64b9fffc92bb99730f0f`

```dockerfile
```

-	Layers:
	-	`sha256:9eab5eaaa14d330c459ab6637dc5f3e40a2fb19309517fa25b27d33313396f99`  
		Last Modified: Mon, 26 Oct 2026 23:07:17 GMT  
		Size: 37.6 KB (37556 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-8.0.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:19735e8d875ce90cb879f55c72a61c239d3a2e1560a58966d818c10d99beebda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **829.2 MB (829169835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a934c2cb5ae00f55ab4d7d6583717af9d5c2b98aba9878f74deca15d9d463a`
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
# Wed, 11 Nov 2026 23:14:58 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:58 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:58 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:52 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:52 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:52 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38ffa2ff16b7c5dd000343c44d60ac9744823a845be1f4429427276db187af3`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 43.8 MB (43811215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41421a3bdcd82f66c470b7ad3c7aa3e167a9030bff8bb6d2e749723a5de9ac2`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 766.8 KB (766784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777fbe7d4779506e88dfb283d911d4cb859270f28e6f54f6748b15b9daefacaa`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 3.7 KB (3720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196bdf23114419f24ccb2109dab2a6c66122ea649df27f531773ffe76c79c87b`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 755.6 MB (755619592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16901015d321a7be41464c4e54ce8645ad97de5ef2a9ba0c08938496ecddf1e`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7ccd1861bb731d051bc405254e915a6cf11ed5643d62ad1b46ef00b0279c55`  
		Last Modified: Wed, 11 Nov 2026 23:17:46 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0c67e323f5f6b0f23103cc386cde13716ac982b8d8e1989a566088e0b793b6`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:703c2273b7dd993e1f3023ecdfae0108aa40b21d0824d0556e3a5f64d163fc0e`  
		Last Modified: Wed, 11 Nov 2026 23:17:47 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e029cbd0d9aaebffad57446fc92aa8adf88a2a4b11df0c749d24bc58a73f3618`  
		Last Modified: Wed, 11 Nov 2026 23:17:48 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ce96c4acac7766d2aff32f51d37248143b38b1f279a00de7851513f65c36c0`  
		Last Modified: Wed, 11 Nov 2026 23:17:16 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:039df42df3b750f0e159ab158a839b0feb4db188fb5a4170c84fddb379f6253b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40913e261a9fa8a0a1998876e1ef543d910f4c52ed84a1f1248bc0f628ac5b6`

```dockerfile
```

-	Layers:
	-	`sha256:27f186115c40c95b08a7bf1aaf4ea7325aea5984c2032e27649aa99d1d80b76f`  
		Last Modified: Wed, 11 Nov 2026 23:17:44 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-8.0.1`

```console
$ docker pull couchbase@sha256:85cc384ba6d06555ccb0c9f4d902ce9712a1137e789a7ebd3d6b45956e94cc75
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:41f944e5f1a49bebb77a0e7f8212fd8c3236e8fbea02b06d27be41c824ab1295
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **890.3 MB (890314365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42aa930ca5ab6f43df070151e6af0ab4703dc6c49c7f6c3e9b7e4c48a37ef947`
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
# Mon, 26 Oct 2026 23:04:26 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:58 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:04:58 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=dba9dbeb2ff3928e62ebecf154353e1574e50e4e2548664ea25cb52bc2028cc7            ;;          'amd64')            CB_SHA256=194504d728e6725068a15a7e19e7b60685a3fe4c70394112e132805445174128            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:05:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:05:26 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:05:26 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:05:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee209e60a27a20ea36ff21d295ce213058c63eb9a26a2304b0ea26bf4fc41b3a`  
		Last Modified: Mon, 26 Oct 2026 23:06:28 GMT  
		Size: 44.0 MB (43982216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfb4a914f88d58bdec268377a2b2cf3f573b0f5d2fbbc9c6f3c6312c9b2e3ec`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 879.1 KB (879089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6920bf3e923320c6ac37bd1bb7ce0bb3ab27e55f0c32aae5e06f8793732b74e`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad021008ff85486deba18dc1e05db7a208a0f37b01e89667d5f72728616aa088`  
		Last Modified: Mon, 26 Oct 2026 23:06:41 GMT  
		Size: 815.7 MB (815678464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d0b04bb020835a74977112c91a8cca27c025bd3725a7c77a5661b3f1a3b0c5`  
		Last Modified: Mon, 26 Oct 2026 23:06:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea31428d2eff0649713df465d475d7c24cc7ab33a1bd46ca223b42b1ce98c9b`  
		Last Modified: Mon, 26 Oct 2026 23:06:28 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4769a071ed5bb4c828b718243883701c3581d7ed51e743e3d69844b30ad75ce`  
		Last Modified: Mon, 26 Oct 2026 23:06:29 GMT  
		Size: 850.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd34b254b5d999b8243c6f30994c076a2385e34794af1f24b40e0daf95efb315`  
		Last Modified: Mon, 26 Oct 2026 23:06:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c39cd7d90e4006272f0c88a0dbb18768db4ddbd93ddbef3be8574115b745ba7f`  
		Last Modified: Mon, 26 Oct 2026 23:06:30 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22788b05203fdc93ef6e80719a59b9d098e79f03c9b262dc6af9d0e70c15c17`  
		Last Modified: Mon, 26 Oct 2026 23:06:30 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:d87d5ce55dd0d2d784d45929d1c1811e6c01ba6f47d9c794c805a2c42d09204c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a1869185183bfca2887448c65eee5312b1d27c2bff0811e2ed5663fb8b04fe`

```dockerfile
```

-	Layers:
	-	`sha256:2e41d98424a412dfc580da99ee36726c9952b0c26744df7859253ae043f8c14e`  
		Last Modified: Mon, 26 Oct 2026 23:06:26 GMT  
		Size: 37.6 KB (37555 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-8.0.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:8285739446f9a029543d54f4d718d52a6af3f91e4c38379bde1c499606b7e843
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **847.1 MB (847052703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83ad9bbf8125d533da492407580747fddcd25bb8d12004c490cf69ac6f2bc40`
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
# Wed, 11 Nov 2026 23:14:53 GMT
LABEL maintainer=docker@couchbase.com
# Wed, 11 Nov 2026 23:14:53 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Wed, 11 Nov 2026 23:14:53 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 11 Nov 2026 23:14:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Wed, 11 Nov 2026 23:16:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Wed, 11 Nov 2026 23:16:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1
# Wed, 11 Nov 2026 23:16:16 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:16 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=dba9dbeb2ff3928e62ebecf154353e1574e50e4e2548664ea25cb52bc2028cc7            ;;          'amd64')            CB_SHA256=194504d728e6725068a15a7e19e7b60685a3fe4c70394112e132805445174128            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:54 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.1 CB_PACKAGE=couchbase-server-enterprise_8.0.1-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:55 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:55 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:55 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:55 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab2ff3fabfcf08d852686f8a38c908af2c176321a0d11cf680d060f0ae1cfd0c`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 43.8 MB (43811173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85072b1eab029e3e626532c8d98a98fd24554cd2ecee8d3f526a875463f4c413`  
		Last Modified: Wed, 11 Nov 2026 23:17:55 GMT  
		Size: 766.8 KB (766789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63366d4d57cd583d138b7c0b1e4c8c6a9c33c57a2bcc4ae0434519974042a194`  
		Last Modified: Wed, 11 Nov 2026 23:17:56 GMT  
		Size: 3.7 KB (3722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03be3fe65dfde69b5dea4ce64f05baaf8f73548732243ffe962387d1d4e43c6e`  
		Last Modified: Wed, 11 Nov 2026 23:18:11 GMT  
		Size: 773.5 MB (773502498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68c9aa06f34411ba8302e2b22bd9a512bd525124311ad4254f07c5008ab4a8e`  
		Last Modified: Wed, 11 Nov 2026 23:17:57 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b1355af7734cf9db89f66be19dd27910cc67670e972c444e67e653c368745d`  
		Last Modified: Wed, 11 Nov 2026 23:17:57 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a61a507ac6fb591c3cdee340c276c7729a1edc7a353640b09a517fa2d8536ae2`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c769d03a775571925a8844f379efa9699a16f717140a3e9c22825ca35b1ebd8d`  
		Last Modified: Wed, 11 Nov 2026 23:17:58 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03540fd95f153364fddfae3360e2b73bb66e60c4bc04cf42e952cfd7c2c928a2`  
		Last Modified: Wed, 11 Nov 2026 23:17:59 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911a33d7a99b46c9637efb8deeb5d40f5c08eade91774733f840e362bc3d4b9c`  
		Last Modified: Wed, 11 Nov 2026 23:18:00 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.1` - unknown; unknown

```console
$ docker pull couchbase@sha256:aca81c427c7b0b737714af2d751efe0c6d354b544142b031eea119336d716bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e67f494d12519d3300193e41e3d13204ae1364bfbcc448203709fa7f7579886`

```dockerfile
```

-	Layers:
	-	`sha256:a580bc627fc3cda69d4bf811592c17a2db874ccae13d6fce13e3d267927505e1`  
		Last Modified: Wed, 11 Nov 2026 23:17:56 GMT  
		Size: 37.7 KB (37738 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-8.0.2`

```console
$ docker pull couchbase@sha256:43654ea05f20f69ea4720c68b4bf6d3f9e92885ee11cc187480416904169bbaa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.2` - linux; amd64

```console
$ docker pull couchbase@sha256:dd8987a635a629511a1ac85c9e608c4907e2f8e4317ebbe3346707c24882fb71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **880.8 MB (880757656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7716958d03664e750ffd3a956f52937e55af7a4692b700ef4f04a2ba6a51d83`
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
# Mon, 26 Oct 2026 23:04:08 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 26 Oct 2026 23:04:08 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 26 Oct 2026 23:04:08 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 26 Oct 2026 23:04:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Mon, 26 Oct 2026 23:04:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 26 Oct 2026 23:04:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 26 Oct 2026 23:04:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
COPY scripts/entrypoint.sh / # buildkit
# Mon, 26 Oct 2026 23:05:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 26 Oct 2026 23:05:07 GMT
CMD ["couchbase-server"]
# Mon, 26 Oct 2026 23:05:07 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Mon, 26 Oct 2026 23:05:07 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c55b85e7ec41c0f825d71cb5bbbff11c80795cf9a6a806d3f8a75037d5eb07`  
		Last Modified: Mon, 26 Oct 2026 23:06:02 GMT  
		Size: 44.0 MB (43982229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39451413569941830e6efae8da8fb2987176b58cee786a8e13d950424739f384`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 879.1 KB (879108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee038e650c894e6dd7a8fb3b7a5e02fcfd8932cde23d3c67ce210e015a01973`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 3.7 KB (3718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d5f644032c02444357e5ea1d388a6ce9f7386e9d2c853512a4d1dc6639e1dd`  
		Last Modified: Mon, 26 Oct 2026 23:06:14 GMT  
		Size: 806.1 MB (806121722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3085e6c207d7ceacf0976162b19c0a94bec78d008a206e658f99223cf42b1955`  
		Last Modified: Mon, 26 Oct 2026 23:06:01 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f365d78dfb767182121ac0817f4fc04b7a7ecd860f3117d44bd1e06462e5089`  
		Last Modified: Mon, 26 Oct 2026 23:06:01 GMT  
		Size: 819.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e72876fc1b6d6ffce3d5c803bb5e9bbec7585066c1afb2413603d879ab82c50`  
		Last Modified: Mon, 26 Oct 2026 23:06:03 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e37a39ec755008787072a262100e78723398d7505b5fdc661e5f8451c8aab8`  
		Last Modified: Mon, 26 Oct 2026 23:06:03 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ffc0778ffdfd2bac0e47dc68a780f17b34e855933bdaf723c447c12a9d0570`  
		Last Modified: Mon, 26 Oct 2026 23:06:04 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa3a92fc68754d31be576689fedc89becbf4046b29b5278377f7b070fd52a1de`  
		Last Modified: Mon, 26 Oct 2026 23:06:04 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:b59bca89088f1d4bbd339b6f82a70f7778412cb3012e97aaa3265f351f17ca91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a38c2945a4a195a2b0be03e25d4d7011f52c99b8f4699ad53338f7f885e74a`

```dockerfile
```

-	Layers:
	-	`sha256:86d02854c686a538ecec0cc1d135baac5c50b0c910dfa2ef55d620b9cdfdd38a`  
		Last Modified: Mon, 26 Oct 2026 23:06:00 GMT  
		Size: 37.6 KB (37554 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-8.0.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:83c649a36a29a6d0ae0839d09762a1eceb316eb20af855f6d0f4438897063fd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **837.5 MB (837478340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe0dff82496290b456eb3a886f765f8173af00773ff28181770f59deeeafe5f`
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
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb
# Wed, 11 Nov 2026 23:16:15 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 11 Nov 2026 23:16:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 11 Nov 2026 23:16:15 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=12eb71693ff0258c02ad4995e4ea591be3f1553fc73b8ba3fc5681dff0d0ba7c            ;;          'amd64')            CB_SHA256=d08569edff129295eaf4faebc9d2c98b5d152226c88e5e7e8a1550965d7567f0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.2 CB_PACKAGE=couchbase-server-enterprise_8.0.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
COPY scripts/entrypoint.sh / # buildkit
# Wed, 11 Nov 2026 23:16:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Nov 2026 23:16:53 GMT
CMD ["couchbase-server"]
# Wed, 11 Nov 2026 23:16:53 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Wed, 11 Nov 2026 23:16:53 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511c95473871c83689ab5d50ef8fa5c689d11eed5109e8727f36cd33d5ba90f`  
		Last Modified: Wed, 11 Nov 2026 23:17:55 GMT  
		Size: 43.8 MB (43811031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978bbfce83f49df1faaa72b3c6bc5dd2453973d60085507e57227be072c9a323`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 766.7 KB (766745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6ef413b419bb2b8b4ef4201867fc6c96426a93a475fac115f2d38eda6fbb86`  
		Last Modified: Wed, 11 Nov 2026 23:17:19 GMT  
		Size: 3.7 KB (3721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efda4057fc072478af2a2af4159c497a1092356e569f9c3c272f4d7bef0e33a`  
		Last Modified: Wed, 11 Nov 2026 23:18:08 GMT  
		Size: 763.9 MB (763928323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1edecc43ef12bfb0a43cd17fb5880e935137b3523d99ae80cc95d2d5902d59a`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb5f26229e933dc86c33f2ce16d7c39def90c14a1a781a7ee7f2cb77de0d279`  
		Last Modified: Wed, 11 Nov 2026 23:17:54 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a7dfef89bc068dfec532d1d9fe69c7caba0058bf4973996ccf9e0ca82960c0`  
		Last Modified: Wed, 11 Nov 2026 23:17:54 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9ebcfe5bc837cb782426d2f7c07904aa27cff17621e8a5e1270ca155d656e2`  
		Last Modified: Wed, 11 Nov 2026 23:17:56 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630028d782249c3db12e8550aa4021d72ee9ce0b8a77775037f2aadcaeb614ed`  
		Last Modified: Wed, 11 Nov 2026 23:17:48 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e61e7ce8a11eb96e00ed819692f9e4aa9299b3e9abb2ed17f28ea2a243267d`  
		Last Modified: Wed, 11 Nov 2026 23:17:56 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:c41c422a68286e88ee47cc71a29f313abafdbba0ac9793438ea03cbccbdb5adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be9d2b2696b476855ad9df058770b050e9d0dfa51e6300652e9b7b7489146081`

```dockerfile
```

-	Layers:
	-	`sha256:c55f0c47afbe7b8ba36fca1c7e7b8d39a721c8a7547a6b72c5b00a8005819830`  
		Last Modified: Wed, 11 Nov 2026 23:17:53 GMT  
		Size: 37.7 KB (37741 bytes)  
		MIME: application/vnd.in-toto+json

## `couchbase:enterprise-8.0.3`

```console
$ docker pull couchbase@sha256:414470a835728443987e4d1e52f9b21ed6ba653f54afd850b6222c1a9c7fb7ac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.3` - linux; amd64

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

### `couchbase:enterprise-8.0.3` - unknown; unknown

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

### `couchbase:enterprise-8.0.3` - linux; arm64 variant v8

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

### `couchbase:enterprise-8.0.3` - unknown; unknown

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
