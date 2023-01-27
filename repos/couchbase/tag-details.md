<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:6.6.6`](#couchbase666)
-	[`couchbase:7.0.5`](#couchbase705)
-	[`couchbase:7.1.3`](#couchbase713)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-6.6.0`](#couchbasecommunity-660)
-	[`couchbase:community-7.0.2`](#couchbasecommunity-702)
-	[`couchbase:community-7.1.1`](#couchbasecommunity-711)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-6.6.6`](#couchbaseenterprise-666)
-	[`couchbase:enterprise-7.0.5`](#couchbaseenterprise-705)
-	[`couchbase:enterprise-7.1.3`](#couchbaseenterprise-713)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:6.6.6`

```console
$ docker pull couchbase@sha256:cf8deb38b0b632441e16c22593c43df62c27df5dab01fd0e73d9072deb93aa50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `couchbase:6.6.6` - linux; amd64

```console
$ docker pull couchbase@sha256:1e3b21e6cc598410414d745759678dbc4977c692b1320081aee12eea1f26e45d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531947220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc671a73b9ef4bce8e5cad8290d4659ed38ac864638d1176a5a25c69f42f3632`
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
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_PACKAGE_NAME=couchbase-server
# Tue, 24 Jan 2023 02:25:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 24 Jan 2023 02:25:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 24 Jan 2023 02:26:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && dpkg --unpack ./$CB_PACKAGE     && sed -i -e '/Best heuristic/ a \ \ \ \ [ -d /run/systemd/system ] && return 1; return 0' /opt/couchbase/bin/install/systemd-ctl     && dpkg --configure couchbase-server     && apt-get install -yf     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Tue, 24 Jan 2023 02:26:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Tue, 24 Jan 2023 02:26:17 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Tue, 24 Jan 2023 02:26:18 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Tue, 24 Jan 2023 02:26:18 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Tue, 24 Jan 2023 02:26:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 24 Jan 2023 02:26:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Tue, 24 Jan 2023 02:26:19 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Tue, 24 Jan 2023 02:26:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2023 02:26:20 GMT
CMD ["couchbase-server"]
# Tue, 24 Jan 2023 02:26:20 GMT
EXPOSE 11207 11210 11280 18091 18092 18093 18094 18095 18096 18097 8091 8092 8093 8094 8095 8096 8097 9123
# Tue, 24 Jan 2023 02:26:20 GMT
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
	-	`sha256:008f8de70082427486d822c45955d4aa1e2606b49e918976181cb342f73e02d7`  
		Last Modified: Tue, 24 Jan 2023 02:26:55 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be7e9719a702d6df074ab0d815a5a219b7be0f0d320d6e25ce78b05d87f73ac`  
		Last Modified: Tue, 24 Jan 2023 02:27:44 GMT  
		Size: 497.1 MB (497149031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2aa0598c016c6abfa601029669360a706b949b405b891be3c33b9644c6a019`  
		Last Modified: Tue, 24 Jan 2023 02:26:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7119dc16b797a61163b23c06cc46bd078d8a89efcbec2e8a0eaea86513e02a`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58324b7a7ffa29decedcf450601b201214156f24aef648783f20039dc15e11f4`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5cbb9186c37e98bbb05a0fdaf14b671951580022fe708294aae81c2ee2bbcd`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afd2929e21bde09b8f0f90fe78fad0f85d22e39066a54b879322cbbebdbaf5`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02edf20d94a6a4e98966a53283248b91963a15b1ffae47db15d0210c28d668d2`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:7.0.5`

```console
$ docker pull couchbase@sha256:fc79c8bf2c56418292ea01e8b17aaf36b4ca679870268ad1e60f189dbf356001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `couchbase:7.0.5` - linux; amd64

```console
$ docker pull couchbase@sha256:6d5da6048bb0412c7e26c4ba14b3f4ce9ccc3f1824cf13d8b1b04ce86e9825c7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.6 MB (616629262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca44ca47058d35e5be35540d1c31c40a14f37b3bc5f561358ede4ce6677aa1be`
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
# Wed, 14 Dec 2022 20:19:40 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5
# Wed, 14 Dec 2022 20:19:40 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb
# Wed, 14 Dec 2022 20:19:40 GMT
ARG CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea
# Wed, 14 Dec 2022 20:19:40 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 14 Dec 2022 20:19:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 14 Dec 2022 20:19:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 14 Dec 2022 20:20:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Wed, 14 Dec 2022 20:21:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Wed, 14 Dec 2022 20:21:01 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Wed, 14 Dec 2022 20:21:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Wed, 14 Dec 2022 20:21:01 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 14 Dec 2022 20:21:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 14 Dec 2022 20:21:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Wed, 14 Dec 2022 20:21:03 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Wed, 14 Dec 2022 20:21:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2022 20:21:03 GMT
CMD ["couchbase-server"]
# Wed, 14 Dec 2022 20:21:03 GMT
EXPOSE 11207 11210 11280 18091 18092 18093 18094 18095 18096 18097 8091 8092 8093 8094 8095 8096 8097 9123
# Wed, 14 Dec 2022 20:21:03 GMT
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
	-	`sha256:13e6c230b12c8e63be8dab8fb41544275abe695dd85179f9ee85789d298f3355`  
		Last Modified: Wed, 14 Dec 2022 20:21:43 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b53e53a2453b9faeb2158f0d7f3ab12c652ab99c72de3420adae267f079ad2d`  
		Last Modified: Wed, 14 Dec 2022 20:22:43 GMT  
		Size: 581.8 MB (581831082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e427b17b1d5bfeea5e7129367d360788d5463c6dca9d7fb662f2f0c22d33ab74`  
		Last Modified: Wed, 14 Dec 2022 20:21:43 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd52bf1a572313d52a21cdb759dbb5854c4d7fe9979eee00ba5e1b5085fb3292`  
		Last Modified: Wed, 14 Dec 2022 20:21:41 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39de5dc45cce33ada409fdddcff88822a6ca48ed5fa379843002af82e7fdc97`  
		Last Modified: Wed, 14 Dec 2022 20:21:41 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26227dd081bd51ae65f52e49ccbf6a3690e409eac603ed1afeb10d4a0039111`  
		Last Modified: Wed, 14 Dec 2022 20:21:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354fb2d59cc41ea192031b46e6ab04235af80b401759bb2c6a6b99811e2c8d36`  
		Last Modified: Wed, 14 Dec 2022 20:21:41 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263504d9bfbeed0ef0e83353f16bd29b55fa7399eb1110553b563c2b635a013b`  
		Last Modified: Wed, 14 Dec 2022 20:21:41 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:7.1.3`

```console
$ docker pull couchbase@sha256:56f04fabae8978fb63b8ec06391e3e4b3758e09fa7f17505268614000d92c4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `couchbase:7.1.3` - linux; amd64

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

### `couchbase:7.1.3` - linux; arm64 variant v8

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

## `couchbase:community`

```console
$ docker pull couchbase@sha256:c5f2d319d82e11b8517fff77a72e3fb5565cbf96c718c6ef18886bb937300142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:5d476fd170eddec39c96b03c7a8073be8d7d29075c3dceb71efdc88661337b90
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.6 MB (346597227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b36b07479c4b99185987626711397afe79ad80e072cc76264a8cbbac5aeaa9`
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
# Fri, 09 Dec 2022 06:13:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1
# Fri, 09 Dec 2022 06:13:43 GMT
ARG CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb
# Fri, 09 Dec 2022 06:13:43 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 09 Dec 2022 06:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 09 Dec 2022 06:13:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 09 Dec 2022 06:14:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=275a0bb41d81920e9948fc05f736eef753179f698a04609eb8fe617d0fe55b8b            ;;          'amd64')            CB_SHA256=2fa47dc00f6d85aad5298149bb52450cc98c2c1e18eb54ab8ed45346c24a9403            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 06:14:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Fri, 09 Dec 2022 06:14:22 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Fri, 09 Dec 2022 06:14:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Fri, 09 Dec 2022 06:14:23 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 09 Dec 2022 06:14:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 09 Dec 2022 06:14:24 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Fri, 09 Dec 2022 06:14:24 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Fri, 09 Dec 2022 06:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 06:14:24 GMT
CMD ["couchbase-server"]
# Fri, 09 Dec 2022 06:14:24 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Fri, 09 Dec 2022 06:14:24 GMT
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
	-	`sha256:ba2d612740f8cc3dc3762bd46365a2e507092297b7cb0a7d852368f2de682fc3`  
		Last Modified: Fri, 09 Dec 2022 06:22:08 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2943f9f908682b9bf40e0c994c3f3ff8051caab31f5deaf928cb40615b006adb`  
		Last Modified: Fri, 09 Dec 2022 06:22:46 GMT  
		Size: 311.8 MB (311799064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c215ff8471326f2e9babace4fd99a3bc8228d0f5f951725310db5cbed5731de`  
		Last Modified: Fri, 09 Dec 2022 06:22:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f138d3ea352ec105c5190dad50324a53fdbf0ebae959a8c882fb51d2ecc1fca`  
		Last Modified: Fri, 09 Dec 2022 06:22:07 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54570ed2b802cd42b37031c2515e9f35fdad0ac655c72d15b45429b5951bfb4a`  
		Last Modified: Fri, 09 Dec 2022 06:22:06 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b11e5b4adc07b7b7e1138067e65d8fff92f7b5eef190c5099f80987a88f50b`  
		Last Modified: Fri, 09 Dec 2022 06:22:07 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc317b3c63d6b15bcecff252501b9ad0ff094bc93778f6b0db8836ca3254e89`  
		Last Modified: Fri, 09 Dec 2022 06:22:06 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9993f2b56962808915fa5c4cc9ddb4f465b6d85d1007d88ba42c4bdec76ec5f0`  
		Last Modified: Fri, 09 Dec 2022 06:22:07 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `couchbase:community` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:1517ede8683414c73d5f7e11da5924ab385b9102ee0476f09adabf31584067ce
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327263244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f66d8d0a59e32dd26beaccc50a2c43c6b6cefad146b2607e450f24cf104552c`
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
# Fri, 09 Dec 2022 02:09:30 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1
# Fri, 09 Dec 2022 02:09:30 GMT
ARG CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb
# Fri, 09 Dec 2022 02:09:30 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 09 Dec 2022 02:09:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 09 Dec 2022 02:09:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 09 Dec 2022 02:10:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=275a0bb41d81920e9948fc05f736eef753179f698a04609eb8fe617d0fe55b8b            ;;          'amd64')            CB_SHA256=2fa47dc00f6d85aad5298149bb52450cc98c2c1e18eb54ab8ed45346c24a9403            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 02:10:08 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Fri, 09 Dec 2022 02:10:08 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Fri, 09 Dec 2022 02:10:09 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Fri, 09 Dec 2022 02:10:09 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 09 Dec 2022 02:10:09 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 09 Dec 2022 02:10:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Fri, 09 Dec 2022 02:10:10 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Fri, 09 Dec 2022 02:10:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 02:10:10 GMT
CMD ["couchbase-server"]
# Fri, 09 Dec 2022 02:10:10 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Fri, 09 Dec 2022 02:10:10 GMT
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
	-	`sha256:f810cf49043115d5ac97b2670b280e6e4748de0e88182a82e53551261e6885fd`  
		Last Modified: Fri, 09 Dec 2022 02:11:26 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e899276e438d313636af6afe5ecfe96e64a5b55b8c544d23c682e0b77ab906`  
		Last Modified: Fri, 09 Dec 2022 02:11:53 GMT  
		Size: 294.0 MB (294025694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0524fc854e0b3b65f0256a228aa259a16185063160dc8a166e4bf2c6fd88f6`  
		Last Modified: Fri, 09 Dec 2022 02:11:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498eb49e5bd600aecd784bd4fbdbaf285ee35657b9b380a45e90f009a4be9e24`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bd3b9fd720db37ee8a72b4bef6f2e8f14a70ef38aee97b6c7f8bc8456e43ad`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fa675c4bfd73a2497126c62e41d05aa641761d975e5ae9c13f6b02dabf9b3e`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07abd8e157df5181bfb0c5c98f21e087640e2b4991a764a0418b6b09611f49`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ede7e2a8a7dd39423e3a2218554d2c822262902c20dd1216379d766ab3482c`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-6.6.0`

```console
$ docker pull couchbase@sha256:3d3a3d8ffb7462a5a3885807f79b288493f036f4316d55a6a5f997ad22dab853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `couchbase:community-6.6.0` - linux; amd64

```console
$ docker pull couchbase@sha256:1db31135f99f02d43c1f48838530c4c0751398db394cc768923a9e46fcc83799
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.5 MB (352518456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee746b929b03bab7d4cd634ad19bcabf99d7d116f51af5f709519476de048991`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:20:09 GMT
LABEL maintainer=docker@couchbase.com
# Mon, 02 Jan 2023 19:20:10 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Mon, 02 Jan 2023 19:20:10 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Mon, 02 Jan 2023 19:20:27 GMT
# ARGS: CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2 runit     && ${CLEANUP_COMMAND}
# Mon, 02 Jan 2023 19:20:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0
# Mon, 02 Jan 2023 19:20:27 GMT
ARG CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb
# Mon, 02 Jan 2023 19:20:27 GMT
ARG CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559
# Mon, 02 Jan 2023 19:20:27 GMT
ARG CB_SKIP_CHECKSUM=false
# Mon, 02 Jan 2023 19:20:28 GMT
ARG CB_PACKAGE_NAME=couchbase-server-community
# Mon, 02 Jan 2023 19:20:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Mon, 02 Jan 2023 19:20:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Mon, 02 Jan 2023 19:21:04 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && dpkg --unpack ./$CB_PACKAGE     && sed -i -e '/Best heuristic/ a \ \ \ \ [ -d /run/systemd/system ] && return 1; return 0' /opt/couchbase/bin/install/systemd-ctl     && dpkg --configure couchbase-server-community     && apt-get install -yf     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Mon, 02 Jan 2023 19:21:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Mon, 02 Jan 2023 19:21:07 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Mon, 02 Jan 2023 19:21:07 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Mon, 02 Jan 2023 19:21:07 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Mon, 02 Jan 2023 19:21:08 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Mon, 02 Jan 2023 19:21:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.6.0-ubuntu18.04_amd64.deb CB_PACKAGE_NAME=couchbase-server-community CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.0 CB_SHA256=9b196cd7be81d7d6b179838e9d30164fdb7a1f27e96678e61e24e9fe5c93f559 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Mon, 02 Jan 2023 19:21:17 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Mon, 02 Jan 2023 19:21:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 02 Jan 2023 19:21:17 GMT
CMD ["couchbase-server"]
# Mon, 02 Jan 2023 19:21:17 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Mon, 02 Jan 2023 19:21:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b315c2c325e34ce3df1afdd6d5161f37a4bc8d59894b733af83c2f47c46174ab`  
		Last Modified: Mon, 02 Jan 2023 19:21:56 GMT  
		Size: 5.6 MB (5606150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a6b1bd96e24945c0d2f1ea2e949dec83f0c1c05edaffdedad08cab3432bc`  
		Last Modified: Mon, 02 Jan 2023 19:21:55 GMT  
		Size: 2.0 KB (1964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:101457229f431545e17f3a69ed2d8a7c3ae65eaca7b7a1a3a7701ea88cba4064`  
		Last Modified: Mon, 02 Jan 2023 19:22:30 GMT  
		Size: 319.8 MB (319763061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9606b803dd91070cc4b59e239e187e6883bc9720a68bda9d173c3e2c0b47f8`  
		Last Modified: Mon, 02 Jan 2023 19:21:55 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db058941af45adc5401af7a15dee7db9e6e19050035b2cd57bb8ddb4adccd104`  
		Last Modified: Mon, 02 Jan 2023 19:21:55 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b9695fe151ae1d5ea32f18a5f037a8ddf53a942ea5dcb508441f0c9e7aac45`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3267999616397b30e31bcd821ed707c9a912258b2321dd25b1f9cba3361d71`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e094b4de8d624f4d8b61835f072a25f7bf3119cf88cbc70844e8ea4cbca005`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269faa715a322f276347e7aee704742b2ca135477fafe6d3902847235a3b6ec2`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 433.3 KB (433306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367b05a0a3fdb561862d4a4bc4bc98c043c7adcae87804c7d7ebd75373f2be3`  
		Last Modified: Mon, 02 Jan 2023 19:21:53 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-7.0.2`

```console
$ docker pull couchbase@sha256:117db66547ac8402e53bb91f2d79f0b3c21100fe9ce7af7793d4bc62bd7de9c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `couchbase:community-7.0.2` - linux; amd64

```console
$ docker pull couchbase@sha256:0e628fa89231b2cb292d86720eefc58c56c2bb40dde52e3620cb24b58f1e6511
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.0 MB (428996804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe610c624e1caa3094e685005fda2d81f55376c8990c67c28e1fc0e0c6598a9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Fri, 09 Dec 2022 06:11:50 GMT
LABEL maintainer=docker@couchbase.com
# Fri, 09 Dec 2022 06:16:19 GMT
RUN set -x &&     apt-get update &&     apt-get install -yq runit wget chrpath tzdata     lsof lshw sysstat net-tools numactl bzip2 &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 06:16:20 GMT
RUN if [ ! -x /usr/sbin/runsvdir-start ]; then         cp -a /etc/runit/2 /usr/sbin/runsvdir-start;     fi
# Fri, 09 Dec 2022 06:16:20 GMT
ARG CB_VERSION=7.0.2
# Fri, 09 Dec 2022 06:16:20 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.2
# Fri, 09 Dec 2022 06:16:20 GMT
ARG CB_PACKAGE=couchbase-server-community_7.0.2-ubuntu20.04_amd64.deb
# Fri, 09 Dec 2022 06:16:20 GMT
ARG CB_SHA256=f935dcad5c04b553a3c56d782c8d9cb782cbd1cf88878a425ba5f9d45d08120e
# Fri, 09 Dec 2022 06:16:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 09 Dec 2022 06:16:21 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.0.2-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.2 CB_SHA256=f935dcad5c04b553a3c56d782c8d9cb782cbd1cf88878a425ba5f9d45d08120e CB_VERSION=7.0.2
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 09 Dec 2022 06:17:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.0.2-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.2 CB_SHA256=f935dcad5c04b553a3c56d782c8d9cb782cbd1cf88878a425ba5f9d45d08120e CB_VERSION=7.0.2
RUN set -x &&     export INSTALL_DONT_START_SERVER=1 &&     wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     apt-get update &&     apt-get install -y ./$CB_PACKAGE &&     rm -f ./$CB_PACKAGE &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 06:17:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.0.2-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.2 CB_SHA256=f935dcad5c04b553a3c56d782c8d9cb782cbd1cf88878a425ba5f9d45d08120e CB_VERSION=7.0.2
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Fri, 09 Dec 2022 06:17:14 GMT
COPY file:cf9c7c8a9eda8a5fefcaa60d67181024b8a07b30eb318d4c9591b33a95ca6680 in /etc/service/couchbase-server/run 
# Fri, 09 Dec 2022 06:17:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.0.2-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.2 CB_SHA256=f935dcad5c04b553a3c56d782c8d9cb782cbd1cf88878a425ba5f9d45d08120e CB_VERSION=7.0.2
RUN mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Fri, 09 Dec 2022 06:17:14 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 09 Dec 2022 06:17:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.0.2-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.2 CB_SHA256=f935dcad5c04b553a3c56d782c8d9cb782cbd1cf88878a425ba5f9d45d08120e CB_VERSION=7.0.2
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 09 Dec 2022 06:17:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.0.2-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.2 CB_SHA256=f935dcad5c04b553a3c56d782c8d9cb782cbd1cf88878a425ba5f9d45d08120e CB_VERSION=7.0.2
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 09 Dec 2022 06:17:16 GMT
COPY file:d816a67f62bfba76d2812cefbe92252afa13f3852775c3e68599df7741e90cb7 in / 
# Fri, 09 Dec 2022 06:17:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 06:17:16 GMT
CMD ["couchbase-server"]
# Fri, 09 Dec 2022 06:17:16 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Fri, 09 Dec 2022 06:17:16 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15bb048b6af53d354f34244323b5965919aabded9a83047d92472735cdd4ae`  
		Last Modified: Fri, 09 Dec 2022 06:24:13 GMT  
		Size: 6.2 MB (6223788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fa454a2c44d7f2ecae551c980ed8163dce62a80ef2d7177b17f03f41e33cac`  
		Last Modified: Fri, 09 Dec 2022 06:24:11 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54632bb0ceb671d7c6f94e6577ea5b61a17e7326ce0c48cb4f30ddaa94cb61e`  
		Last Modified: Fri, 09 Dec 2022 06:24:11 GMT  
		Size: 1.8 KB (1832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de7cd0ece6a0ebb17ced889b83a11e7f8eaa8f99f8d7616dd3e7ce21287c1d9`  
		Last Modified: Fri, 09 Dec 2022 06:24:58 GMT  
		Size: 394.1 MB (394062155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e55a8fd2037703f7db0e9f22bf717e8e7eb74d36fcae228674fc76da00e5050`  
		Last Modified: Fri, 09 Dec 2022 06:24:11 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5077f7c6e628af20e5213418a9dc6c3907618c533e47e5fd72ccc69d4e3cbbbf`  
		Last Modified: Fri, 09 Dec 2022 06:24:10 GMT  
		Size: 600.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b429645972c3aa1122deacc4499abed909ce4fe23261a27c66e9fa24aa7c6d5`  
		Last Modified: Fri, 09 Dec 2022 06:24:09 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e41d3e77be650d301b4ecbe0e24c6c6598ac6725ff5f1a24cc72b60499d9ce`  
		Last Modified: Fri, 09 Dec 2022 06:24:09 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc23e87376d71899b91ae5ecb873447087fb942ac213b932d1188abaadcf95c`  
		Last Modified: Fri, 09 Dec 2022 06:24:09 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3eaae30012a217797e70b740867a1f9a57605ddebeefa24658456e6599059d`  
		Last Modified: Fri, 09 Dec 2022 06:24:09 GMT  
		Size: 129.5 KB (129505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316097a2c8b7ecc616cbf0da1c650386c55cf56a2abfbe5c701526c2c1d8a6e6`  
		Last Modified: Fri, 09 Dec 2022 06:24:09 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-7.1.1`

```console
$ docker pull couchbase@sha256:c5f2d319d82e11b8517fff77a72e3fb5565cbf96c718c6ef18886bb937300142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `couchbase:community-7.1.1` - linux; amd64

```console
$ docker pull couchbase@sha256:5d476fd170eddec39c96b03c7a8073be8d7d29075c3dceb71efdc88661337b90
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.6 MB (346597227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0b36b07479c4b99185987626711397afe79ad80e072cc76264a8cbbac5aeaa9`
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
# Fri, 09 Dec 2022 06:13:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1
# Fri, 09 Dec 2022 06:13:43 GMT
ARG CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb
# Fri, 09 Dec 2022 06:13:43 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 09 Dec 2022 06:13:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 09 Dec 2022 06:13:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 09 Dec 2022 06:14:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=275a0bb41d81920e9948fc05f736eef753179f698a04609eb8fe617d0fe55b8b            ;;          'amd64')            CB_SHA256=2fa47dc00f6d85aad5298149bb52450cc98c2c1e18eb54ab8ed45346c24a9403            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 06:14:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Fri, 09 Dec 2022 06:14:22 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Fri, 09 Dec 2022 06:14:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Fri, 09 Dec 2022 06:14:23 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 09 Dec 2022 06:14:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 09 Dec 2022 06:14:24 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Fri, 09 Dec 2022 06:14:24 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Fri, 09 Dec 2022 06:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 06:14:24 GMT
CMD ["couchbase-server"]
# Fri, 09 Dec 2022 06:14:24 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Fri, 09 Dec 2022 06:14:24 GMT
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
	-	`sha256:ba2d612740f8cc3dc3762bd46365a2e507092297b7cb0a7d852368f2de682fc3`  
		Last Modified: Fri, 09 Dec 2022 06:22:08 GMT  
		Size: 1.8 KB (1838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2943f9f908682b9bf40e0c994c3f3ff8051caab31f5deaf928cb40615b006adb`  
		Last Modified: Fri, 09 Dec 2022 06:22:46 GMT  
		Size: 311.8 MB (311799064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c215ff8471326f2e9babace4fd99a3bc8228d0f5f951725310db5cbed5731de`  
		Last Modified: Fri, 09 Dec 2022 06:22:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f138d3ea352ec105c5190dad50324a53fdbf0ebae959a8c882fb51d2ecc1fca`  
		Last Modified: Fri, 09 Dec 2022 06:22:07 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54570ed2b802cd42b37031c2515e9f35fdad0ac655c72d15b45429b5951bfb4a`  
		Last Modified: Fri, 09 Dec 2022 06:22:06 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b11e5b4adc07b7b7e1138067e65d8fff92f7b5eef190c5099f80987a88f50b`  
		Last Modified: Fri, 09 Dec 2022 06:22:07 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccc317b3c63d6b15bcecff252501b9ad0ff094bc93778f6b0db8836ca3254e89`  
		Last Modified: Fri, 09 Dec 2022 06:22:06 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9993f2b56962808915fa5c4cc9ddb4f465b6d85d1007d88ba42c4bdec76ec5f0`  
		Last Modified: Fri, 09 Dec 2022 06:22:07 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `couchbase:community-7.1.1` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:1517ede8683414c73d5f7e11da5924ab385b9102ee0476f09adabf31584067ce
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **327.3 MB (327263244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f66d8d0a59e32dd26beaccc50a2c43c6b6cefad146b2607e450f24cf104552c`
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
# Fri, 09 Dec 2022 02:09:30 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1
# Fri, 09 Dec 2022 02:09:30 GMT
ARG CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb
# Fri, 09 Dec 2022 02:09:30 GMT
ARG CB_SKIP_CHECKSUM=false
# Fri, 09 Dec 2022 02:09:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 09 Dec 2022 02:09:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 09 Dec 2022 02:10:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=275a0bb41d81920e9948fc05f736eef753179f698a04609eb8fe617d0fe55b8b            ;;          'amd64')            CB_SHA256=2fa47dc00f6d85aad5298149bb52450cc98c2c1e18eb54ab8ed45346c24a9403            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Fri, 09 Dec 2022 02:10:08 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Fri, 09 Dec 2022 02:10:08 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Fri, 09 Dec 2022 02:10:09 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Fri, 09 Dec 2022 02:10:09 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 09 Dec 2022 02:10:09 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 09 Dec 2022 02:10:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_7.1.1-linux_@@ARCH@@.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.1.1 CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Fri, 09 Dec 2022 02:10:10 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Fri, 09 Dec 2022 02:10:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 09 Dec 2022 02:10:10 GMT
CMD ["couchbase-server"]
# Fri, 09 Dec 2022 02:10:10 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Fri, 09 Dec 2022 02:10:10 GMT
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
	-	`sha256:f810cf49043115d5ac97b2670b280e6e4748de0e88182a82e53551261e6885fd`  
		Last Modified: Fri, 09 Dec 2022 02:11:26 GMT  
		Size: 1.8 KB (1839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3e899276e438d313636af6afe5ecfe96e64a5b55b8c544d23c682e0b77ab906`  
		Last Modified: Fri, 09 Dec 2022 02:11:53 GMT  
		Size: 294.0 MB (294025694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0524fc854e0b3b65f0256a228aa259a16185063160dc8a166e4bf2c6fd88f6`  
		Last Modified: Fri, 09 Dec 2022 02:11:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498eb49e5bd600aecd784bd4fbdbaf285ee35657b9b380a45e90f009a4be9e24`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bd3b9fd720db37ee8a72b4bef6f2e8f14a70ef38aee97b6c7f8bc8456e43ad`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fa675c4bfd73a2497126c62e41d05aa641761d975e5ae9c13f6b02dabf9b3e`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d07abd8e157df5181bfb0c5c98f21e087640e2b4991a764a0418b6b09611f49`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ede7e2a8a7dd39423e3a2218554d2c822262902c20dd1216379d766ab3482c`  
		Last Modified: Fri, 09 Dec 2022 02:11:25 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `couchbase:enterprise-6.6.6`

```console
$ docker pull couchbase@sha256:cf8deb38b0b632441e16c22593c43df62c27df5dab01fd0e73d9072deb93aa50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `couchbase:enterprise-6.6.6` - linux; amd64

```console
$ docker pull couchbase@sha256:1e3b21e6cc598410414d745759678dbc4977c692b1320081aee12eea1f26e45d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531947220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc671a73b9ef4bce8e5cad8290d4659ed38ac864638d1176a5a25c69f42f3632`
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
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 24 Jan 2023 02:25:09 GMT
ARG CB_PACKAGE_NAME=couchbase-server
# Tue, 24 Jan 2023 02:25:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 24 Jan 2023 02:25:10 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 24 Jan 2023 02:26:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && dpkg --unpack ./$CB_PACKAGE     && sed -i -e '/Best heuristic/ a \ \ \ \ [ -d /run/systemd/system ] && return 1; return 0' /opt/couchbase/bin/install/systemd-ctl     && dpkg --configure couchbase-server     && apt-get install -yf     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Tue, 24 Jan 2023 02:26:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Tue, 24 Jan 2023 02:26:17 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Tue, 24 Jan 2023 02:26:18 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Tue, 24 Jan 2023 02:26:18 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Tue, 24 Jan 2023 02:26:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 24 Jan 2023 02:26:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.6.6-ubuntu20.04_amd64.deb CB_PACKAGE_NAME=couchbase-server CB_RELEASE_URL=https://packages.couchbase.com/releases/6.6.6 CB_SHA256=db7ec6e2d121ab77ca84a2e02b1617d8e5c92fe83b6fedd15ff618d45c0c89aa CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Tue, 24 Jan 2023 02:26:19 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Tue, 24 Jan 2023 02:26:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Jan 2023 02:26:20 GMT
CMD ["couchbase-server"]
# Tue, 24 Jan 2023 02:26:20 GMT
EXPOSE 11207 11210 11280 18091 18092 18093 18094 18095 18096 18097 8091 8092 8093 8094 8095 8096 8097 9123
# Tue, 24 Jan 2023 02:26:20 GMT
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
	-	`sha256:008f8de70082427486d822c45955d4aa1e2606b49e918976181cb342f73e02d7`  
		Last Modified: Tue, 24 Jan 2023 02:26:55 GMT  
		Size: 1.8 KB (1843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be7e9719a702d6df074ab0d815a5a219b7be0f0d320d6e25ce78b05d87f73ac`  
		Last Modified: Tue, 24 Jan 2023 02:27:44 GMT  
		Size: 497.1 MB (497149031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2aa0598c016c6abfa601029669360a706b949b405b891be3c33b9644c6a019`  
		Last Modified: Tue, 24 Jan 2023 02:26:55 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7119dc16b797a61163b23c06cc46bd078d8a89efcbec2e8a0eaea86513e02a`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 750.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58324b7a7ffa29decedcf450601b201214156f24aef648783f20039dc15e11f4`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 284.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5cbb9186c37e98bbb05a0fdaf14b671951580022fe708294aae81c2ee2bbcd`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afd2929e21bde09b8f0f90fe78fad0f85d22e39066a54b879322cbbebdbaf5`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02edf20d94a6a4e98966a53283248b91963a15b1ffae47db15d0210c28d668d2`  
		Last Modified: Tue, 24 Jan 2023 02:26:53 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-7.0.5`

```console
$ docker pull couchbase@sha256:fc79c8bf2c56418292ea01e8b17aaf36b4ca679870268ad1e60f189dbf356001
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `couchbase:enterprise-7.0.5` - linux; amd64

```console
$ docker pull couchbase@sha256:6d5da6048bb0412c7e26c4ba14b3f4ce9ccc3f1824cf13d8b1b04ce86e9825c7
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.6 MB (616629262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca44ca47058d35e5be35540d1c31c40a14f37b3bc5f561358ede4ce6677aa1be`
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
# Wed, 14 Dec 2022 20:19:40 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5
# Wed, 14 Dec 2022 20:19:40 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb
# Wed, 14 Dec 2022 20:19:40 GMT
ARG CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea
# Wed, 14 Dec 2022 20:19:40 GMT
ARG CB_SKIP_CHECKSUM=false
# Wed, 14 Dec 2022 20:19:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 14 Dec 2022 20:19:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 14 Dec 2022 20:20:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && export INSTALL_DONT_START_SERVER=1     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && ${UPDATE_COMMAND}     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/*
# Wed, 14 Dec 2022 20:21:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt
# Wed, 14 Dec 2022 20:21:01 GMT
COPY file:018fa38d92aa0a4679f57c2d43b5c14547b2c603cab6ec7fd3240af5545472b5 in /etc/service/couchbase-server/run 
# Wed, 14 Dec 2022 20:21:01 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && mkdir -p /etc/runit/runsvdir/default/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/runit/runsvdir/default/couchbase-server/supervise
# Wed, 14 Dec 2022 20:21:01 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 14 Dec 2022 20:21:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 14 Dec 2022 20:21:02 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_7.0.5-ubuntu20.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases/7.0.5 CB_SHA256=9a5ea4e5ec6e9af81b39d1e04b135fd5e8ce13a64cd9c8d587fe3e906c17cdea CB_SKIP_CHECKSUM=false CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* UPDATE_COMMAND=apt-get update -y -q
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi
# Wed, 14 Dec 2022 20:21:03 GMT
COPY file:6e5292e89c7124e038a0d80ea3b942bff1ed578e67a07e764b041ea95b129aa3 in / 
# Wed, 14 Dec 2022 20:21:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Dec 2022 20:21:03 GMT
CMD ["couchbase-server"]
# Wed, 14 Dec 2022 20:21:03 GMT
EXPOSE 11207 11210 11280 18091 18092 18093 18094 18095 18096 18097 8091 8092 8093 8094 8095 8096 8097 9123
# Wed, 14 Dec 2022 20:21:03 GMT
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
	-	`sha256:13e6c230b12c8e63be8dab8fb41544275abe695dd85179f9ee85789d298f3355`  
		Last Modified: Wed, 14 Dec 2022 20:21:43 GMT  
		Size: 1.8 KB (1837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b53e53a2453b9faeb2158f0d7f3ab12c652ab99c72de3420adae267f079ad2d`  
		Last Modified: Wed, 14 Dec 2022 20:22:43 GMT  
		Size: 581.8 MB (581831082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e427b17b1d5bfeea5e7129367d360788d5463c6dca9d7fb662f2f0c22d33ab74`  
		Last Modified: Wed, 14 Dec 2022 20:21:43 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd52bf1a572313d52a21cdb759dbb5854c4d7fe9979eee00ba5e1b5085fb3292`  
		Last Modified: Wed, 14 Dec 2022 20:21:41 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39de5dc45cce33ada409fdddcff88822a6ca48ed5fa379843002af82e7fdc97`  
		Last Modified: Wed, 14 Dec 2022 20:21:41 GMT  
		Size: 283.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26227dd081bd51ae65f52e49ccbf6a3690e409eac603ed1afeb10d4a0039111`  
		Last Modified: Wed, 14 Dec 2022 20:21:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:354fb2d59cc41ea192031b46e6ab04235af80b401759bb2c6a6b99811e2c8d36`  
		Last Modified: Wed, 14 Dec 2022 20:21:41 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:263504d9bfbeed0ef0e83353f16bd29b55fa7399eb1110553b563c2b635a013b`  
		Last Modified: Wed, 14 Dec 2022 20:21:41 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-7.1.3`

```console
$ docker pull couchbase@sha256:56f04fabae8978fb63b8ec06391e3e4b3758e09fa7f17505268614000d92c4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `couchbase:enterprise-7.1.3` - linux; amd64

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

### `couchbase:enterprise-7.1.3` - linux; arm64 variant v8

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

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:56f04fabae8978fb63b8ec06391e3e4b3758e09fa7f17505268614000d92c4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `couchbase:latest` - linux; amd64

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

### `couchbase:latest` - linux; arm64 variant v8

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
