## `couchbase:community-7.6.0`

```console
$ docker pull couchbase@sha256:02a84b6034b9e6ab52c8adc6887432e33198f12837cc5daaf49475c16a35773f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:1014604d3728f87176dbf48ec892b0d711bda9282e59ac2a99e31d3a8cc93d81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.8 MB (419764277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88d45c2945d8594e7a39c437460f2fd241f0fc57a667124f97d67dd1ee8bcebe`
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
# Tue, 18 Aug 2026 01:11:56 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:11:56 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:11:56 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:11:56 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:12:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:12:24 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Tue, 18 Aug 2026 01:12:24 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:12:24 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:12:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:12:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:12:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=9fee2723a019157fa6b696d5bfc011440ae96347430087f67c67a73afc1a2518            ;;          'amd64')            CB_SHA256=b6b86779b16bc5c83e86220f40c8e230cf9650f0a7deb7e190997a93d9a50316            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:12:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:12:59 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:12:59 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:12:59 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:13:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:13:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:13:00 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:13:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:13:00 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:13:00 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:13:00 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a26e18a1d795ad653365fbe50b1247b230c25a326f489553300f4803c8594a6`  
		Last Modified: Tue, 18 Aug 2026 01:13:38 GMT  
		Size: 39.3 MB (39261465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865135a094ead70d6b8fab9b7f05a3668cd4c06ff434db8cf9a0226e429527a3`  
		Last Modified: Tue, 18 Aug 2026 01:13:36 GMT  
		Size: 927.0 KB (926996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611afd68db42c75b426f30710c2f455ec20f269195dd8cf713943a73a4a640e5`  
		Last Modified: Tue, 18 Aug 2026 01:13:36 GMT  
		Size: 2.0 KB (1989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56815c9bb86d980f5f1aab09e08a0a3296aee6f601d219497e424bf4e00e97a9`  
		Last Modified: Tue, 18 Aug 2026 01:13:43 GMT  
		Size: 349.8 MB (349833694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f275889b60c0274092280fd511819f482a265c34a7a371332630cb091031f5d6`  
		Last Modified: Tue, 18 Aug 2026 01:13:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191dc96c7e51f417bf553a7426619909377fbacd30b774e4c06cc2d83e8fe7dc`  
		Last Modified: Tue, 18 Aug 2026 01:13:37 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814a6e6735baf914e245d35656e591fdf903443d18e171694cc8bbaf9df712b4`  
		Last Modified: Tue, 18 Aug 2026 01:13:38 GMT  
		Size: 849.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df8dac786e0ab373d07a6fc406a65c97d84d9f468e4439c2227008faaa6b645`  
		Last Modified: Tue, 18 Aug 2026 01:13:38 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcdf51f7e8f767314ce146917fd2f8de751f6a24b41616c009fd758f58c4a3b`  
		Last Modified: Tue, 18 Aug 2026 01:13:39 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2afde8756e427a9a964ed2aa6cd187fd7a3a13c0dfa3481b42c7d7b65ed72f8e`  
		Last Modified: Tue, 18 Aug 2026 01:13:40 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:77645693d9b2e5e952b93c870a500ad2ea78226a2e57b21baf61bb1bb579dd94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bffbc18207dbc1c978750ee8498879b9cfb8897ff54c7da73a46922f580aba5d`

```dockerfile
```

-	Layers:
	-	`sha256:b91e7bd5f94dacb090206779e14552affa56245b5dfaf072bb2e7c8a392b8420`  
		Last Modified: Tue, 18 Aug 2026 01:13:36 GMT  
		Size: 37.2 KB (37209 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.6.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:726399881df89f04e88bfff5acc0e8d574ec7a39f58c7db49393a0e025e06fde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.6 MB (400612336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6e7d50e1b21b8ea478605ac1008e8143e6d94b799fa3f875ee31f87b003549`
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
# Tue, 18 Aug 2026 01:12:08 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:12:08 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:12:08 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:12:08 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:12:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:12:39 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0
# Tue, 18 Aug 2026 01:12:39 GMT
ARG CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:12:39 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:12:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:12:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=9fee2723a019157fa6b696d5bfc011440ae96347430087f67c67a73afc1a2518            ;;          'amd64')            CB_SHA256=b6b86779b16bc5c83e86220f40c8e230cf9650f0a7deb7e190997a93d9a50316            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:13:14 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.0 CB_PACKAGE=couchbase-server-community_7.6.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
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
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76aea6f0e9acedb52b4b1f733d80057ab93dbae87b751a0102064f82122fa31`  
		Last Modified: Tue, 18 Aug 2026 01:13:52 GMT  
		Size: 38.8 MB (38841421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e772f8281f08f32254986eef62a0e29fb9fd364568c5d818a0e56ec6b59a8821`  
		Last Modified: Tue, 18 Aug 2026 01:13:50 GMT  
		Size: 775.5 KB (775496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12643c8bb48a34a71fd204fc817e3ff4a7d4819e83d8f8bc45f4c5700f327981`  
		Last Modified: Tue, 18 Aug 2026 01:13:50 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fd61a121b3fa2c472f2b85aeccc97f028b8aa433fccd36bd6d2c80a0d95f9f`  
		Last Modified: Tue, 18 Aug 2026 01:13:57 GMT  
		Size: 333.4 MB (333369782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d4275f6a219ae7855952937cd34788633f445c44e183c38ced10bf087e1c5e3`  
		Last Modified: Tue, 18 Aug 2026 01:13:51 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be14ae9c15a02d0c37d948492ed61e39175b809d5f53b0ed5b4938d9a9a299b`  
		Last Modified: Tue, 18 Aug 2026 01:13:51 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c52bdad54c4a62a4607903dde6ae5d06185dde25d3e575173ffe27f367aa433`  
		Last Modified: Tue, 18 Aug 2026 01:13:52 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0889c750ac19f17af34342f34e4ec99aca4689f7a7a51dfd1b4d772cbdd10d`  
		Last Modified: Tue, 18 Aug 2026 01:13:52 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bebadae50aa5165da17debb60cd8b9b1569e0b537d1f7e8fd454b71deb4afb`  
		Last Modified: Tue, 18 Aug 2026 01:13:53 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d939eac28f48cc6e5ff31d6d84e09f8981aa5fb96cf39d3104f6c2e810d4d488`  
		Last Modified: Tue, 18 Aug 2026 01:13:53 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.6.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:b9114785a10024ee65d54605ae78eae5d41728b81b163ee181940265de0829ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef971d8f08685aaca16920a537e1d138265446924ea55261af8ce8b1869fdd73`

```dockerfile
```

-	Layers:
	-	`sha256:7bcefb35520e612c99c52f21a82a7d391c03580b2013db7fef4dacb1a6a8ae32`  
		Last Modified: Tue, 18 Aug 2026 01:13:50 GMT  
		Size: 37.4 KB (37382 bytes)  
		MIME: application/vnd.in-toto+json
