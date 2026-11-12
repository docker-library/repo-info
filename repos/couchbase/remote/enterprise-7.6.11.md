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
