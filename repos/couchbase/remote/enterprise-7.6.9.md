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
