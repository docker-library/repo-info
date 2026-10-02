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
