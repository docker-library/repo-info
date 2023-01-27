## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:56f04fabae8978fb63b8ec06391e3e4b3758e09fa7f17505268614000d92c4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:3064c94ca45e48bd94d081782da8b7d712d961ff459f33da0534bcf9d135952f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.3 MB (600284315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:559cdb9c6807fa4ee34eac15b0fdf35d115f42ef4adaf6902e87bfdcf4bdbee8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:11:50 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 09 Dec 2022 06:11:50 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 09 Dec 2022 06:11:50 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 06:12:09 GMT
# ARGS: CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2 runit     && ${CLEANUP_COMMAND}
# Fri, 09 Dec 2022 06:12:10 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3
# Fri, 09 Dec 2022 06:12:10 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb
# Fri, 09 Dec 2022 06:12:10 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 09 Dec 2022 06:12:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 09 Dec 2022 06:12:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 09 Dec 2022 06:13:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=bdc1ffbd5a0eca07a554856a92eb0b5930b457c1d13fca9a2a93ef91a5d88156            ;;          'amd64')            CB_SHA256=bd8c808771cb46e563c173f60e0723c32351a6453f6ece2d4fa440e0d2dcdfd3            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 06:13:24 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Fri, 09 Dec 2022 06:13:24 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Fri, 09 Dec 2022 06:13:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Fri, 09 Dec 2022 06:13:25 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 09 Dec 2022 06:13:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 09 Dec 2022 06:13:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Fri, 09 Dec 2022 06:13:26 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Fri, 09 Dec 2022 06:13:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 06:13:27 GMT
CMD ["couchbase-server"]
# Fri, 09 Dec 2022 06:13:27 GMT
EXPOSE 11207 11210 11280 18091 18092 18093 18094 18095 18096 18097 8091 8092 8093 8094 8095 8096 8097 9123
# Fri, 09 Dec 2022 06:13:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a266fa58ec7bd5adffaae9152c63d27666a9a1ce40e9ecf1e9c12cc2eef31848`  
		Last Modified: Fri, 09 Dec 2022 06:20:54 GMT  
		Size: 6.2 MB (6216914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc8d46454adbfbdcb994fe9d9f1c7d6e8e1d37e6918cbc112af575d0cf3d01f`  
		Last Modified: Fri, 09 Dec 2022 06:20:53 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44754c05135823eaf05c145582b0ddebc847feda00b06f1e65477ae4438d5020`  
		Last Modified: Fri, 09 Dec 2022 06:21:49 GMT  
		Size: 565.5 MB (565486149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d342ecfc270ccdf584b64ec70c5684b0574126cfdfd3075f2511822ab86f9b9`  
		Last Modified: Fri, 09 Dec 2022 06:20:53 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9380cb7210167a3a9fdc6debc83049ab040fd68836e34e332753bb1c5bf17915`  
		Last Modified: Fri, 09 Dec 2022 06:20:51 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caad3eac80248ae4c29f4ac0df7f1a5fe8366fd94727f9d268bc3e53648099c9`  
		Last Modified: Fri, 09 Dec 2022 06:20:51 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78b39e356f4c68a5ff9cb5050ad1705dd772d7b6a33209a7d8760bbdd09fec47`  
		Last Modified: Fri, 09 Dec 2022 06:20:51 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27751d7bf16a3e06a7e318ccbefb5532a0a2925bb867656deab24a8b4baee8f5`  
		Last Modified: Fri, 09 Dec 2022 06:20:51 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af9661e349c87ff6153bf7a63d8faf66cf8403c66249b008163cde437f029bea`  
		Last Modified: Fri, 09 Dec 2022 06:20:51 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `couchbase:enterprise` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:2a887b03b91a5dd5187e9057a384e277dfaef6c5b9f8b72684b91a2efd754958
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **574.4 MB (574394881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:234760fa0b1b6a412dd2490e768ad9bb01e2063ce8098a207fe568e873599db2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 02:07:52 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 09 Dec 2022 02:07:52 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Fri, 09 Dec 2022 02:07:53 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 02:08:25 GMT
# ARGS: CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2 runit     && ${CLEANUP_COMMAND}
# Fri, 09 Dec 2022 02:08:25 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3
# Fri, 09 Dec 2022 02:08:25 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb
# Fri, 09 Dec 2022 02:08:25 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 09 Dec 2022 02:08:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 09 Dec 2022 02:08:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 09 Dec 2022 02:09:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=bdc1ffbd5a0eca07a554856a92eb0b5930b457c1d13fca9a2a93ef91a5d88156            ;;          'amd64')            CB_SHA256=bd8c808771cb46e563c173f60e0723c32351a6453f6ece2d4fa440e0d2dcdfd3            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 02:09:24 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Fri, 09 Dec 2022 02:09:25 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Fri, 09 Dec 2022 02:09:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Fri, 09 Dec 2022 02:09:25 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 09 Dec 2022 02:09:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 09 Dec 2022 02:09:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.1.3-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.3 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Fri, 09 Dec 2022 02:09:26 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Fri, 09 Dec 2022 02:09:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 02:09:26 GMT
CMD ["couchbase-server"]
# Fri, 09 Dec 2022 02:09:26 GMT
EXPOSE 11207 11210 11280 18091 18092 18093 18094 18095 18096 18097 8091 8092 8093 8094 8095 8096 8097 9123
# Fri, 09 Dec 2022 02:09:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b554a12364ddbdb4ec4dc9e667c733d12968931fbc453bbc8136538f64a39f9`  
		Last Modified: Fri, 09 Dec 2022 02:10:32 GMT  
		Size: 6.0 MB (6040010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7acccb1dfeb7de2ba294be1c2d6f70731d2e2ca0dc20b467d058e27503f4df26`  
		Last Modified: Fri, 09 Dec 2022 02:10:31 GMT  
		Size: 1.8 KB (1840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29492eec7fb1671f2b738de4c090ed137fe3cbb087f53e75bf614887ab3e463e`  
		Last Modified: Fri, 09 Dec 2022 02:11:11 GMT  
		Size: 541.2 MB (541157335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5af3f0a08fe5141bd217da347c3723ba8e02949b80ce6ac156bce52a5d7bfe1`  
		Last Modified: Fri, 09 Dec 2022 02:10:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40833fef2e95b1efaa499a37642138a4086366f291b257c131d066f1e94152e7`  
		Last Modified: Fri, 09 Dec 2022 02:10:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e881b52c1f49bf03d862e44ff2a22212eabc038d0d196fa407e3d42c53427f`  
		Last Modified: Fri, 09 Dec 2022 02:10:29 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731135b837edb22a19d9743193924d6dca7447fea794f4701345f6d611122461`  
		Last Modified: Fri, 09 Dec 2022 02:10:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc0acc71049809578607349f2b7e8aff1bafe53bb33a153fff9d50035fe37f9`  
		Last Modified: Fri, 09 Dec 2022 02:10:29 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ae3280eda57608cb86b0d5e6e681585a5b8b96cc76f60a4c7324021030a6b10`  
		Last Modified: Fri, 09 Dec 2022 02:10:29 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
