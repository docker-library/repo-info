## `couchbase:enterprise-7.6.12`

```console
$ docker pull couchbase@sha256:624071ef8f7b954b300769565dcf9ffd98f4f5e341b6ec73aa0916ba26362a25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-7.6.12` - linux; amd64

```console
$ docker pull couchbase@sha256:c4e4e5d886fa1efc6d7b1c2ada2032e184ba83342958e00f600bc7778d15305b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **891.0 MB (890969727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667ea55661685a5fb03c0a0e25f3b905f0d40527d61c2c835419a6213a614752`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 30 Jul 2026 18:47:47 GMT
LABEL maintainer=docker@couchbase.com
# Thu, 30 Jul 2026 18:47:47 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Thu, 30 Jul 2026 18:47:47 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 30 Jul 2026 18:47:47 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Thu, 30 Jul 2026 18:48:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Thu, 30 Jul 2026 18:48:20 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Thu, 30 Jul 2026 18:48:20 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Thu, 30 Jul 2026 18:48:20 GMT
ARG CB_SKIP_CHECKSUM=false
# Thu, 30 Jul 2026 18:48:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 30 Jul 2026 18:48:20 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Thu, 30 Jul 2026 18:48:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 30 Jul 2026 18:48:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Thu, 30 Jul 2026 18:48:49 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Thu, 30 Jul 2026 18:48:49 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Thu, 30 Jul 2026 18:48:49 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 18:48:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Thu, 30 Jul 2026 18:48:50 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Thu, 30 Jul 2026 18:48:50 GMT
COPY scripts/entrypoint.sh / # buildkit
# Thu, 30 Jul 2026 18:48:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 30 Jul 2026 18:48:50 GMT
CMD ["couchbase-server"]
# Thu, 30 Jul 2026 18:48:50 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Thu, 30 Jul 2026 18:48:50 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369eede9680b82173fa111838774ae0279527467a5d977cee581ea4f5797c24c`  
		Last Modified: Thu, 30 Jul 2026 18:49:52 GMT  
		Size: 46.4 MB (46355313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e6de6ece9a77220c2d20e1f8ff062dd632a5a59c83375e1539590bf2b3af16`  
		Last Modified: Thu, 30 Jul 2026 18:49:50 GMT  
		Size: 9.8 MB (9815001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a960d2a8ec47b1b25444d5c093f60127d5ab14cc0a2e5d829d92b137dddf3a`  
		Last Modified: Thu, 30 Jul 2026 18:49:50 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ce208e0f95b000a453ae63c900a5ff94e86d0ed8d54cdb5e91f01954130919`  
		Last Modified: Thu, 30 Jul 2026 18:50:09 GMT  
		Size: 805.1 MB (805056821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df14f2bf66a6a643ecc8c5e81eae3d18553b5b708d08d20e438b607149a2427`  
		Last Modified: Thu, 30 Jul 2026 18:49:51 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddec96731ef4a016bcdc154efe8e0ddeb7370aa24cd69e712f309bdc6bdca0f5`  
		Last Modified: Thu, 30 Jul 2026 18:49:52 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208dc35d6522e66701bafa1838d7cf5d8176428873dfac92eacaa4aaf5ff6dbb`  
		Last Modified: Thu, 30 Jul 2026 18:49:54 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa525fd4645e7b32cc2efc7caa322c6e329a876ea3548962bdf86801d5dd6964`  
		Last Modified: Thu, 30 Jul 2026 18:49:53 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0bbafc34bb6de1de93d3d31795adf55952effe48f938f1915690b3f116ac22`  
		Last Modified: Thu, 30 Jul 2026 18:49:54 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086eec7b8cb57399bbd9f853d628ebd86893211d43331f5d35c8a51661fa28bb`  
		Last Modified: Thu, 30 Jul 2026 18:49:55 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:a2407dc97e8c885f89fac8d3fd31b79886fded455179a859caef08a20ec24a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 KB (37589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3420360a3860cb511cb583a94acabe7e28f3063a12b21533d28861d39ac332b`

```dockerfile
```

-	Layers:
	-	`sha256:333451dd314ce0604ae41d06b651690f3a5b57599bbd9f08b2c61e25d83a276a`  
		Last Modified: Thu, 30 Jul 2026 18:49:50 GMT  
		Size: 37.6 KB (37589 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-7.6.12` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:5bfe3dac7dcc6e7aa9aae2f6c24c6590f631fe16c5d7c47cc15a591a454170a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **848.1 MB (848084354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0ee7b204b476a6c850bfa55daadcb8331bfc7209f74eef539163ddd02bf116`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 30 Jul 2026 18:47:35 GMT
LABEL maintainer=docker@couchbase.com
# Thu, 30 Jul 2026 18:47:35 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Thu, 30 Jul 2026 18:47:35 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 30 Jul 2026 18:47:35 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata tzdata-legacy       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Thu, 30 Jul 2026 18:48:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Thu, 30 Jul 2026 18:48:10 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12
# Thu, 30 Jul 2026 18:48:10 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb
# Thu, 30 Jul 2026 18:48:10 GMT
ARG CB_SKIP_CHECKSUM=false
# Thu, 30 Jul 2026 18:48:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 30 Jul 2026 18:48:10 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=7de69c73fa17069f9e08be2e1f620d8134d40c7f5c9e951f96738cb364fb7534            ;;          'amd64')            CB_SHA256=48ed0f0f402233054409e6de45dcd3c7f7adcf16074c97e549ed739acd731521            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/7.6.12 CB_PACKAGE=couchbase-server-enterprise_7.6.12-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
COPY scripts/entrypoint.sh / # buildkit
# Thu, 30 Jul 2026 18:48:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 30 Jul 2026 18:48:40 GMT
CMD ["couchbase-server"]
# Thu, 30 Jul 2026 18:48:40 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Thu, 30 Jul 2026 18:48:40 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873b5ff8b2ded38ccd6a265c60d77a5775a76df6e04f63a2842edc375077f7d0`  
		Last Modified: Thu, 30 Jul 2026 18:49:42 GMT  
		Size: 46.0 MB (45999022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e912c5a9b0f2a08c45a7e4cdc338d24f282ebfa467ec1eadf3353269f06c073`  
		Last Modified: Thu, 30 Jul 2026 18:49:41 GMT  
		Size: 9.4 MB (9433403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d16517e5b1471635a2286e92d7b3a505f4a40a860c1f71c332093668e0c44c`  
		Last Modified: Thu, 30 Jul 2026 18:49:40 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f51e85c05f06016e75698060699be3a52cc875ef9a0595f4a9bc447a1bad4c`  
		Last Modified: Thu, 30 Jul 2026 18:49:53 GMT  
		Size: 763.8 MB (763760760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e98c7aa0df910abef7620f99df9247876745720d3ed68c268c08e993b9d4baf2`  
		Last Modified: Thu, 30 Jul 2026 18:49:41 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e866d40ffdef8233eb3cd580c931bf63825db7daf83accbd70404954ff1983d`  
		Last Modified: Thu, 30 Jul 2026 18:49:42 GMT  
		Size: 818.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bb519fc9ccb04d13234115ffa1e3da2264bbb964b273b3308554f16c5777bd`  
		Last Modified: Thu, 30 Jul 2026 18:49:42 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804f4d1c227b5f160e7b00897e075a739aacad17659aac6f7e85c24782ef752a`  
		Last Modified: Thu, 30 Jul 2026 18:49:44 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:454fcc25807aaaa8152cfe59427891a06a8260c60911b553ebad105b058b7b52`  
		Last Modified: Thu, 30 Jul 2026 18:49:44 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3930b7dbbae352f89e6d01fa66e7baaadf71cf23827aed5960f4e4b41bcbdfc9`  
		Last Modified: Thu, 30 Jul 2026 18:49:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-7.6.12` - unknown; unknown

```console
$ docker pull couchbase@sha256:7613ead89ef2cd05c0d84631ca3364ca196f72b524ba4eb913a6b4b085155ec6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.8 KB (37774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453d15d649e75a22c2a181adbd6e7288fc6b1a01d163a2c2fee28700260f84e7`

```dockerfile
```

-	Layers:
	-	`sha256:603bd0d509301654c2deb68d18db2de036c7cb248b7946b64226f3d136b5096e`  
		Last Modified: Thu, 30 Jul 2026 18:49:40 GMT  
		Size: 37.8 KB (37774 bytes)  
		MIME: application/vnd.in-toto+json
