## `couchbase:enterprise-7.6.3`

```console
$ docker pull couchbase@sha256:1c5db9e8458fff23610ce523fe80a1ee5d04c9d8aa57217a5db6496d40d8c251
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.3` - linux; amd64

```console
$ docker pull couchbase@sha256:46aa6c06319720aaae9b4752fd772b629b2e56af7e9612f946862c596606cb54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **769.1 MB (769114029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4469331bbfe9d5d3778752047819a222c6b3cc79d733577836a06f91af575ce2`
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
# Tue, 18 Aug 2026 01:11:18 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:11:18 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:11:18 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:11:18 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:11:43 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:11:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Tue, 18 Aug 2026 01:11:43 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:11:43 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:11:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:11:44 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:12:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:12:37 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:12:37 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:12:37 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e5ed9ea1f667cbddebd4275d0132148db12a5302d1e686f621c8ed99fc9f4a`  
		Last Modified: Tue, 18 Aug 2026 01:13:30 GMT  
		Size: 39.3 MB (39262402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcf97c5bd6ed8ffbf5ee5f85154624ad552bd9005b2f36765f62c1b1db4d511`  
		Last Modified: Tue, 18 Aug 2026 01:13:28 GMT  
		Size: 926.9 KB (926929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8208c27d92283212fff024dc0ee62a95f6c6b332fc19f43d6f0a5d680c1bd6c`  
		Last Modified: Tue, 18 Aug 2026 01:13:28 GMT  
		Size: 2.0 KB (2018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f032d1e28e8e42765f4ada1c3b15ce477ef4327d193f0a39ed5135dbc161b851`  
		Last Modified: Tue, 18 Aug 2026 01:13:42 GMT  
		Size: 699.2 MB (699182549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a0397da12a61f7b6879149d33ae780d5eb7ccab8cd467f4d9b460fdc7ace07`  
		Last Modified: Tue, 18 Aug 2026 01:13:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35caf2a877667687c81e7747f321f88a86fc997b8195130f20ccf8236981161`  
		Last Modified: Tue, 18 Aug 2026 01:13:29 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de722d140b4b82d464d5a5a6fdf3d8ca6af72a1b14b9b90ab8370774ad32150d`  
		Last Modified: Tue, 18 Aug 2026 01:13:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3730d63584f6b4e13c149820c93d64edb7ae8232fb831c8c06ba6be7b923140b`  
		Last Modified: Tue, 18 Aug 2026 01:13:30 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce4f58287cba5dd50c4ca3d0d370e8ffa57db56da3843666d6c840591a47b73f`  
		Last Modified: Tue, 18 Aug 2026 01:13:32 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6be25d78f2f38dcd56c19dd0da5fd18f3b217e33caada4baf5fc05ad1f9fbe0b`  
		Last Modified: Tue, 18 Aug 2026 01:13:32 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:f2b78dcbce69f476047b6e3e90a33fa709dd790e39738cb896d8e4bfd66bfa75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87dd4b31fb765e740d0f579848262508c70a1fd84520fd5e3ef6430075a03bd4`

```dockerfile
```

-	Layers:
	-	`sha256:d1786c246c2b28283bb71445b6935df8661b8d4f2939c28b72fbef5af24f34a6`  
		Last Modified: Tue, 18 Aug 2026 01:13:28 GMT  
		Size: 35.8 KB (35773 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.3` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:342687870382f9ab47a081368a81c48c432673159f6459478eb9a8b36003f398
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **740.5 MB (740537937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:518108226e4404c55b8445e1664b1ea489aacaf81c2ddc603d352af464d01208`
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
# Tue, 18 Aug 2026 01:10:26 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:10:26 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:10:26 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:10:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:10:52 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:10:52 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3
# Tue, 18 Aug 2026 01:10:52 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:10:52 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:10:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:10:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=24c783f316cb6cb368da2a80d657a652b1efb4d03e30b8ea540481008cf68191            ;;          'amd64')            CB_SHA256=882df2178c657ddbfdc7e532d32252ee5367403b0472aec2699433634a98b88c            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.3 CB_PACKAGE=couchbase-server-enterprise_7.6.3-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:11:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:11:55 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:11:55 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:11:55 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1463a6444aa0540d0934c9797fc9d54f9104155e3a5ae9a0a9512e088cce03d9`  
		Last Modified: Tue, 18 Aug 2026 01:12:48 GMT  
		Size: 38.8 MB (38841464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42593125a1ee6418d137450610b86b3ac92e81fafd3b896ac933124b6271a668`  
		Last Modified: Tue, 18 Aug 2026 01:12:46 GMT  
		Size: 775.5 KB (775466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95274f78cff0ab468361c4ce764c3ed89d08324e52f99e2dfbce16c88a297f14`  
		Last Modified: Tue, 18 Aug 2026 01:12:46 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e8221b90bb24db7ecd4ca48c7388e75e09155d2d9397eab48b351775f44104b`  
		Last Modified: Tue, 18 Aug 2026 01:12:59 GMT  
		Size: 673.3 MB (673295372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5042fc6f788870a56719a7b2021b356d5a1149620400c8a16f5ad3449b8dca85`  
		Last Modified: Tue, 18 Aug 2026 01:12:47 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:141595e1bb7a50abd54410df6645eca4dec8ed9dc01b9dab163fcf584a02b635`  
		Last Modified: Tue, 18 Aug 2026 01:12:48 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b3b1fac779115f3f67a5974eeca7477a68fb726ac1c3b725426d4651cc4f46`  
		Last Modified: Tue, 18 Aug 2026 01:12:49 GMT  
		Size: 846.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce203827a79436657c66b214bf0cbb98cacf81a74114a5cb69f00ad164b8ef3`  
		Last Modified: Tue, 18 Aug 2026 01:12:49 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2c02f70ae684a110c1e482198d26b7a46049a8967b96df368eebcb76c9235b`  
		Last Modified: Tue, 18 Aug 2026 01:12:50 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9205f108c9ad1026af2b696013ef254fb4ee2d00e71ea548ee7d08b414474f38`  
		Last Modified: Tue, 18 Aug 2026 01:12:50 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.3` - unknown; unknown

```console
$ docker pull couchbase@sha256:e3244aaefaaff482f336a7813beed84d52d1c2710c1a8bd9dd57eae833d05ded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3f92ab9adce26ab3404a99d8e4f7e2484f5d2000126dae24f7a63208494cff`

```dockerfile
```

-	Layers:
	-	`sha256:2a2d89442c236308edd7b3771877abef89e36672e1166b7bbab306e67fb7368e`  
		Last Modified: Tue, 18 Aug 2026 01:12:46 GMT  
		Size: 36.0 KB (35958 bytes)  
		MIME: application/vnd.in-toto+json
