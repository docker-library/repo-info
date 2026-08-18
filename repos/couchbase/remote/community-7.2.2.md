## `couchbase:community-7.2.2`

```console
$ docker pull couchbase@sha256:5ee201354b444373fcb9b90a0dd5d29d820a181c2cd67249103ad4425442c9ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:community-7.2.2` - linux; amd64

```console
$ docker pull couchbase@sha256:0e03eeb116b6df35f5e946ec203f256e2062dc2addd955a2b5b8fb5cf290c681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.5 MB (396502420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:922fbca33314af3b086a06324281519e8e5c024608daeb1037e5a3b21388048c`
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
# Tue, 18 Aug 2026 01:10:54 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:10:54 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:10:54 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:10:54 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:11:29 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:11:29 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2
# Tue, 18 Aug 2026 01:11:29 GMT
ARG CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:11:29 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:11:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:13:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:14:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=15e8e8185882210ea02ad83e3667714cce16293afad29506adf07131d684f2db            ;;          'amd64')            CB_SHA256=71bd7359e07810726c3f2735e71aa2a41e6da0865407d407bd666a3d123fa5dc            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:14:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:14:26 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:14:26 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:14:26 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:14:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:14:27 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:14:27 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:14:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:14:27 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:14:27 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:14:27 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2cc3aac19a9d7f23e87ad58262ed28bf6c03c7224209c2fca5e8cfae0447a51`  
		Last Modified: Tue, 18 Aug 2026 01:13:32 GMT  
		Size: 39.3 MB (39262374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3878e021be351d36fb851e840f0f4aeebf2cc7c728aaa1561d87e309c8f6635`  
		Last Modified: Tue, 18 Aug 2026 01:13:30 GMT  
		Size: 927.0 KB (927035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e07c9471919fe0b6152a2ab02f2493b7992ed11402ff443f1ceabb9c3800b6`  
		Last Modified: Tue, 18 Aug 2026 01:15:03 GMT  
		Size: 2.0 KB (1991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de892c5442be81482331b2bc6e21a864b0e228ec72b7b66080471b7b24d78eba`  
		Last Modified: Tue, 18 Aug 2026 01:15:12 GMT  
		Size: 326.6 MB (326570889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ee5acfd2252d9e93502a31b42ce39de770dbd0b26709bd9d5b007e77ecd19c`  
		Last Modified: Tue, 18 Aug 2026 01:15:03 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4ba319f4ee84991c5ec5020af44bb9f7bd3f89d7e746411e3cc22fee0bedeb`  
		Last Modified: Tue, 18 Aug 2026 01:15:03 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f198c0002fe32c01cc21abcef6f70f354211635de885bc61226c55f587587a26`  
		Last Modified: Tue, 18 Aug 2026 01:15:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d794ecbad524056603239295958040d356d1ee318b2128f4a540db85df410691`  
		Last Modified: Tue, 18 Aug 2026 01:15:04 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53938a2c558d9f6ae631dee0e8d032c7ce0158cd138e9e5bbd20398d0a633ec9`  
		Last Modified: Tue, 18 Aug 2026 01:15:04 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7039e8b8a2cef30f990997cde0a4f0181c143ae0cc7333b191de55c334f0f21`  
		Last Modified: Tue, 18 Aug 2026 01:14:57 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.2.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:1c35d6bfa003c66fbafa03ca6646399de196ce27906a384bafe07c38dae8b908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3f2d0982a4b51c1952d18e928aec44b20999db00d4a30863cdc54753bda20ce`

```dockerfile
```

-	Layers:
	-	`sha256:0191f351a5b375074c55847efcc22fe2c97734603c31f08c93c1e4bd96a31e43`  
		Last Modified: Tue, 18 Aug 2026 01:15:03 GMT  
		Size: 37.2 KB (37209 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:community-7.2.2` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:d8dc09d23daf3e0e82b808729b1964976a4bd8938658a801296a776895dcbb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.0 MB (371980702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77c1e2e754ddd798b690c18df41559405b6274d93430e1b6f9df6daf672dab9f`
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
# Tue, 18 Aug 2026 01:11:51 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 01:11:51 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 01:11:51 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 01:11:51 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 01:12:16 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 01:12:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2
# Tue, 18 Aug 2026 01:12:16 GMT
ARG CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 01:12:16 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 01:12:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 01:13:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=15e8e8185882210ea02ad83e3667714cce16293afad29506adf07131d684f2db            ;;          'amd64')            CB_SHA256=71bd7359e07810726c3f2735e71aa2a41e6da0865407d407bd666a3d123fa5dc            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.2.2 CB_PACKAGE=couchbase-server-community_7.2.2-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 01:14:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 01:14:09 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 01:14:09 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 01:14:09 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5c5cecf40538002fdc9cf3f5e4128d4c65909019eeb36de335ae54afa0fe79`  
		Last Modified: Tue, 18 Aug 2026 01:13:23 GMT  
		Size: 38.8 MB (38841567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68c9b935bee9e16e61174cfad083648c78bfeb23cf5c10b26ee623599ae87dd`  
		Last Modified: Tue, 18 Aug 2026 01:13:22 GMT  
		Size: 775.5 KB (775514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b702d4ac02bfed90506bd9ca93a56ccf98e6ec0b0e69960baeb324794ccbf48`  
		Last Modified: Tue, 18 Aug 2026 01:14:39 GMT  
		Size: 2.0 KB (1996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9d946a7218a7e89d5d10122a8d7bf99cc4774dbd313858f0232a297bcbcfe3`  
		Last Modified: Tue, 18 Aug 2026 01:14:45 GMT  
		Size: 304.7 MB (304737982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fefe574c86796f0fd5258ab81e8308aa74b0951d8ce5727618727a284ad4a94`  
		Last Modified: Tue, 18 Aug 2026 01:14:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d367ffbf5a28b33f668b529b2b4f0fa6613abec45ce18e3ef407051562ab3e`  
		Last Modified: Tue, 18 Aug 2026 01:14:39 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dff4648e3f225c276eafd6de1287ccad55376c400356e67815b633db7a1e2493`  
		Last Modified: Tue, 18 Aug 2026 01:14:40 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b037d0120302452c9b886f77d41788d4882a27996ae39fd9d2f3868dadfa7b3f`  
		Last Modified: Tue, 18 Aug 2026 01:14:40 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d151e604da4de416cae55c3569028f95af3ac139e4da8b40f5a4518e276b8d`  
		Last Modified: Tue, 18 Aug 2026 01:14:40 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da88ca48a2830d3f27ccf5d13be7f71eaa2c02d7d5ff68d5d648fc68c8141d5d`  
		Last Modified: Tue, 18 Aug 2026 01:14:42 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:community-7.2.2` - unknown; unknown

```console
$ docker pull couchbase@sha256:a99577ff45968bdeb395e0329a0aa04e7a6b70aaaa89efa78f40c25ccd75f1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f39855c428d64c7cfcb099e43a10e0b90c93d1c4121611d7d881781a7c4b17`

```dockerfile
```

-	Layers:
	-	`sha256:b79b65de483c0a995860efe206c55514e04a42a47621e11cdf0b1e807714239d`  
		Last Modified: Tue, 18 Aug 2026 01:14:39 GMT  
		Size: 37.4 KB (37382 bytes)  
		MIME: application/vnd.in-toto+json
