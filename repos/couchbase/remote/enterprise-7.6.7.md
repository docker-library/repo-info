## `couchbase:enterprise-7.6.7`

```console
$ docker pull couchbase@sha256:445f57ffe73fcc08c86853e7ffd1c18bed6c911265da4f14beb9f7c2d2d99115
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.7` - linux; amd64

```console
$ docker pull couchbase@sha256:9c31478b84f630acb366c66dc12bb53b987b4aeb780c8430497a27140d8b6c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **799.3 MB (799253310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96a7129147972cc6903ce137256594f6e219282070825220c59a7dbfc606def`
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
# Tue, 18 Aug 2026 19:11:40 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 19:11:40 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 19:11:40 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 19:11:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 19:12:02 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 19:12:02 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Tue, 18 Aug 2026 19:12:02 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 19:12:02 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 19:12:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 19:12:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 19:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 19:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 19:12:26 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 19:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 19:12:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 19:12:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 19:12:27 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:12:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:12:27 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 19:12:27 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 19:12:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9959f3273f87c2bd0d346b137c248a5a7eba0347a19f67406095925ccabddb3`  
		Last Modified: Tue, 18 Aug 2026 19:13:19 GMT  
		Size: 43.8 MB (43787315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4cc1571d09d78f4df6e458ef18c59a26a5278f0f29ab224d31a1f5dcc656f9`  
		Last Modified: Tue, 18 Aug 2026 19:13:18 GMT  
		Size: 878.1 KB (878138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7b50e81334a721bc79b74884e10840dc1b56d044c3ec72fef89f6cbc570148`  
		Last Modified: Tue, 18 Aug 2026 19:13:17 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09216dba98af3358891ab640b7b2d55292b8e374724441083581b650bbbe8321`  
		Last Modified: Tue, 18 Aug 2026 19:13:32 GMT  
		Size: 724.8 MB (724828058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa158932e9d1f35ef3dad09e79e72d70c2547147811b230c9bafcc96493d5deb`  
		Last Modified: Tue, 18 Aug 2026 19:13:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b775867d16881f288cf13892055634b9df72131e2ead122f38bb365d6aeb39e`  
		Last Modified: Tue, 18 Aug 2026 19:13:19 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa30a42a9fcad06d2952f5fb09f16695012322f05e1bc9dbfd87d3f9b4a1c10`  
		Last Modified: Tue, 18 Aug 2026 19:13:20 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a43c7660df3e0381e57e2e82fbd594da08a8c36329b26ba176993f6ef3b36a8`  
		Last Modified: Tue, 18 Aug 2026 19:13:21 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ad85074beb0cb1c96b75d332534079b30f3cbc3c1bca319a581273119e7a3b`  
		Last Modified: Tue, 18 Aug 2026 19:13:22 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc18aa85e0b5ef23bd72eb7f564fd989c09959a04363456726f0e25fe51c9d2f`  
		Last Modified: Tue, 18 Aug 2026 19:13:22 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:52ca7367bb9e29759b1178cd811aea74f5923fcdea0e77e6ca09074ea62cb4b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd89caa3bae06ad786c946b3fc1ff9393e4dac4553a9c0bacd7e569ea6e64fe`

```dockerfile
```

-	Layers:
	-	`sha256:2445713f27179318d40ca79bd383ad89eacd5afc91d69d63f35d621373c9215b`  
		Last Modified: Tue, 18 Aug 2026 19:13:17 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.7` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:583c6bdfc2012c140ba378e4870254fe4644ddb566852f546120d531597d9011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **769.6 MB (769556612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a9279f51b533032f76acda9703b3b4d633ecab4e95d13f7f54f9a213418b253`
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
# Tue, 18 Aug 2026 19:11:42 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 19:11:42 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 19:11:42 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 19:11:42 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 19:12:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 19:12:06 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7
# Tue, 18 Aug 2026 19:12:06 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 19:12:06 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 19:12:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 19:12:06 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 19:12:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=8baaddc8bedc7223db7995514996d87388b23fe6f39fecac7008ee8800be64f7            ;;          'amd64')            CB_SHA256=7bd09a72ec12c4dde2b78cf5354db814b58a9723ba3ba95b370d5d2320807a94            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 19:12:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 19:12:47 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 19:12:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 19:12:47 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:12:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 19:12:48 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.7 CB_PACKAGE=couchbase-server-enterprise_7.6.7-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 19:12:48 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:12:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:12:48 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 19:12:48 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 19:12:48 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85a9962d41129685fb98f456aab5c955088be3ae5629314d336aa7e7c6751c93`  
		Last Modified: Tue, 18 Aug 2026 19:13:40 GMT  
		Size: 43.6 MB (43614814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2ecc5b21d4ae20c2f515960e4a8915de0ce78f1896922bd7eaa1be0e81b818`  
		Last Modified: Tue, 18 Aug 2026 19:13:39 GMT  
		Size: 765.3 KB (765321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13aa554142d1f215c3e93b840ec81fc159ec441cd5c258bf677fdd15881af3e7`  
		Last Modified: Tue, 18 Aug 2026 19:13:39 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93bec162bba484e94d01f3dc77daf5d638628095107dd3f815ab0afa41e5c513`  
		Last Modified: Tue, 18 Aug 2026 19:13:51 GMT  
		Size: 696.3 MB (696282251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5ec7bb9a01d5ea3470e4fed35d4e70e0d0847e5608eaaad24f3904bc4610d8`  
		Last Modified: Tue, 18 Aug 2026 19:13:40 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517770befefa5d949e24697f0ac0a63b41a4cfc110a6c240ce678d49cd1f7491`  
		Last Modified: Tue, 18 Aug 2026 19:13:40 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4506bed03462aed0f73a5c72754ad41dde2793a6aef55f01c33b98f48333774e`  
		Last Modified: Tue, 18 Aug 2026 19:13:41 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f578d2cbb495967bf71331eb4ad300fae1ef91d2f7ffe40d35e094b47f75118`  
		Last Modified: Tue, 18 Aug 2026 19:13:42 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1136b325cc2896101a71ce1cae172b60f24da4e190671eee69a438a6ac1cb64e`  
		Last Modified: Tue, 18 Aug 2026 19:13:42 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1a9ef1ab524b548c8f0d1815ef62c862ffe30d302d5e9c1c12df2efb1bdfb0`  
		Last Modified: Tue, 18 Aug 2026 19:13:43 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.7` - unknown; unknown

```console
$ docker pull couchbase@sha256:e3e6e310c91fbe344e39e9ab960ca4e0ec77efd74d12e635eb6da7bf1e76a74b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3becd63df2bcbb241be0d7d164aac7317e5261d953d58eea582ae46c180f34`

```dockerfile
```

-	Layers:
	-	`sha256:865c386dbd85b47023df64898b122a101204b5bffd387f5de9ba2d7e642e939b`  
		Last Modified: Tue, 18 Aug 2026 19:13:39 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json
