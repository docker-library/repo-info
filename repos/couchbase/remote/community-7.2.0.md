## `couchbase:community-7.2.0`

```console
$ docker pull couchbase@sha256:09df597dd819d2e8d5720364e7b6f6a303650f37efef98c010168c9be27929dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.2.0` - linux; amd64

```console
$ docker pull couchbase@sha256:4286d896b2ba43fd0e920f3108bceb39e46817521d58fb89cd1b407489bc8064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.0 MB (392007844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec49d8e612abb7d0960048b9a05f339f382a0f83f13fda0e37a2498a31af3488`
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
# Tue, 18 Aug 2026 01:11:00 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:11:00 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:11:00 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:11:00 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:11:31 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:11:31 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0
# Tue, 18 Aug 2026 01:11:31 GMT
ARG CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:11:31 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:11:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:14:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:14:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=0877ec5c4109992fc2186ecf6153d7f30a24be7f6559133c855ecff77b9b2363            ;;          'amd64')            CB_SHA256=6c07122d9e28c0679c012cba73c28df76a74424cf206fedf42c7e18fa640b6b1            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:14:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:14:34 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:14:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:14:34 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:14:34 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:14:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:14:35 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:14:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:14:35 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:14:35 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:14:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb11c2e1286a001d6a476fc8965641b9bb10171f5fdd7aaf4403b443bc6d724`  
		Last Modified: Tue, 18 Aug 2026 01:13:44 GMT  
		Size: 39.3 MB (39261673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c65972525d0a2b46262a9ad2414db7a256b3d7894fa0ca3138114c164554146`  
		Last Modified: Tue, 18 Aug 2026 01:13:43 GMT  
		Size: 927.0 KB (927021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb0ea0a899b3246a92816c1959cabdcebd8bac0fb5dc245c333cdfdea995706`  
		Last Modified: Tue, 18 Aug 2026 01:15:06 GMT  
		Size: 2.0 KB (1994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6212c7f194e7ddf622a6ca3b5339a115bd80b0feeba8771e8178b578b8912f`  
		Last Modified: Tue, 18 Aug 2026 01:15:12 GMT  
		Size: 322.1 MB (322077026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0301371c8f867413fa4f6a750a9e7a444c5520a8655f6783674d389451c483`  
		Last Modified: Tue, 18 Aug 2026 01:15:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d68c25eb7ff5758033162e3b22e807a9a29e3cc78ac7534264705a3fb171933`  
		Last Modified: Tue, 18 Aug 2026 01:15:06 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8107339a69db4af7a30a415205ef468fcd113eda5d65747035b408eb07f3d0`  
		Last Modified: Tue, 18 Aug 2026 01:15:07 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ffca7ac356576613fdb0776f591741e34d893cc80565d96830d051917e2cbb2`  
		Last Modified: Tue, 18 Aug 2026 01:15:07 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eeab751e9029e242a826c103324f029c263dae7cc525b1ccac7b3c55a52a7ec`  
		Last Modified: Tue, 18 Aug 2026 01:15:07 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ae781559ce32a5122f8b3f8328fead09f79be4eca1438122a567145ffbb49b`  
		Last Modified: Tue, 18 Aug 2026 01:15:09 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.2.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:29a6a0fda6fac486422d104ee1df06110b2fdcc295fd442feb3e8f05f43f3e13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5e368c866a26d9c12529fbbf448a4aac5405ef1fd00e19f11992ae311f6a3a`

```dockerfile
```

-	Layers:
	-	`sha256:346853fe9cfbacee32b7530b7929bd3401bf8eee9b1b15ffd51151e3e2ec7e04`  
		Last Modified: Tue, 18 Aug 2026 01:15:06 GMT  
		Size: 37.2 KB (37209 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.2.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:e78bc6bad999951146e484bcb6ca76f38cc21bb6f0efb1dd53b3f5fadb341403
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.4 MB (369367953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4de2e37d58b39f909a2a8f3d39afd5819984ade81c1d2242617c22e16e7ff6d4`
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
# Tue, 18 Aug 2026 01:11:27 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:11:27 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:11:27 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:11:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:11:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:11:52 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0
# Tue, 18 Aug 2026 01:11:52 GMT
ARG CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:11:52 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:11:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:13:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:14:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=0877ec5c4109992fc2186ecf6153d7f30a24be7f6559133c855ecff77b9b2363            ;;          'amd64')            CB_SHA256=6c07122d9e28c0679c012cba73c28df76a74424cf206fedf42c7e18fa640b6b1            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:14:23 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:14:24 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:14:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:14:24 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:14:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:14:24 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.0 CB_PACKAGE=couchbase-server-community_7.2.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:14:24 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:14:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:14:24 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:14:24 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:14:24 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c9c4788934a5676b0d23b38a2e2094fc8d15aceb59d8b8dfba94fc77c19d56`  
		Last Modified: Tue, 18 Aug 2026 01:13:32 GMT  
		Size: 38.8 MB (38841351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2fd98938f0db6754951e10f0026f66657b6a9e153f011fd758f5a2894a99d3`  
		Last Modified: Tue, 18 Aug 2026 01:13:30 GMT  
		Size: 775.4 KB (775444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191bf3b8ba307dcbf23049d18b30c9df53ed1ae7cb6c2f42b98578a2cbbbc58d`  
		Last Modified: Tue, 18 Aug 2026 01:14:54 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7935316a4c8bbf15afdca0bf2fb009f173a30a58d6b638064f7ba6425c035094`  
		Last Modified: Tue, 18 Aug 2026 01:15:00 GMT  
		Size: 302.1 MB (302125526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf2697aeb1696062d213d4286b0d8d29fc221fea62b0f3660a3eb20fdea249b`  
		Last Modified: Tue, 18 Aug 2026 01:14:54 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279b9b04ceeb837a54eaf16735c6a64b59694ef39d775306cd05324a60f99a1e`  
		Last Modified: Tue, 18 Aug 2026 01:14:54 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb450155183374683e34a5fa737da910bd77c13ef79f0275e860f1e5a8569ed`  
		Last Modified: Tue, 18 Aug 2026 01:14:55 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2726ec4f6edc3c2be37fd58b1e6c1fb1c9048758fd529e1adcb034448aec19`  
		Last Modified: Tue, 18 Aug 2026 01:14:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de546a52ffe05e1f67302e15bcc1e902cda0c9ae4104b7f90b6aa0d0b84ef1e3`  
		Last Modified: Tue, 18 Aug 2026 01:14:55 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7039e8b8a2cef30f990997cde0a4f0181c143ae0cc7333b191de55c334f0f21`  
		Last Modified: Tue, 18 Aug 2026 01:14:57 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.2.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:b7131ff5e24aeb863104c9a5f14c2dcea872101db733e4f7af8acebb452d5c15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a5109501f3fc2d94e6494c53843a00f027ead86a1bea20205fe4b577a4ec3b`

```dockerfile
```

-	Layers:
	-	`sha256:2bd6db0816ba6bc2f83307bdd52767c8e67a162c31a394250a47e287af61e34e`  
		Last Modified: Tue, 18 Aug 2026 01:14:54 GMT  
		Size: 37.4 KB (37382 bytes)  
		MIME: application/vnd.in-toto+json
