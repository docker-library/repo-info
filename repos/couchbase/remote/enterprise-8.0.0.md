## `couchbase:enterprise-8.0.0`

```console
$ docker pull couchbase@sha256:e72938c76179febeb53f670529f468d42014d705dcd63bc92f45d717fc560614
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `couchbase:enterprise-8.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:dd261232e0b6886d0a265f4ab8daf95344980a07873175a48723aa81f61d8c43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **867.4 MB (867368498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1de785ba822ec60cb0bb88b0c03d3913df8c46549a0bccdaf21468e2a9ecf891`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:39 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 19:11:39 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 19:11:39 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 19:11:39 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 19:12:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 19:12:03 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Tue, 18 Aug 2026 19:12:03 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 19:12:03 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 19:12:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 19:12:03 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:12:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:12:45 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 19:12:45 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 19:12:45 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66662bc7f6fca6180b05b41a30b45c89a12d823a53c412d7a30e318b7d4ba83b`  
		Last Modified: Tue, 18 Aug 2026 19:13:47 GMT  
		Size: 43.8 MB (43787489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edd827393a67d3209f422a6be4c33ed80ea1f01b23f7768e2831b91b5d4f820`  
		Last Modified: Tue, 18 Aug 2026 19:13:45 GMT  
		Size: 878.2 KB (878171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f20628f0040f4d76076ca7a2ab9c72710ccf94d90abfb10d8887c917c18a38`  
		Last Modified: Tue, 18 Aug 2026 19:13:45 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3830fe3eaa17653055ec6a35468400bd49f6d6e08edcdf60a9c87c4e4139f77e`  
		Last Modified: Tue, 18 Aug 2026 19:14:00 GMT  
		Size: 792.9 MB (792943044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9114ef8e706e7e6499d2423e6ab0005be4d8930b42ba74fcc331b887ec958e94`  
		Last Modified: Tue, 18 Aug 2026 19:13:47 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e40b18600c6ec443c92378d152a44c0943dd5767671b17074af1ac0fe7fa94de`  
		Last Modified: Tue, 18 Aug 2026 19:13:47 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed0edcba145e8358dda8c59a512032bc19a1df8fc01ce399ea8c67732029bdd`  
		Last Modified: Tue, 18 Aug 2026 19:13:48 GMT  
		Size: 845.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e83b3445fde972f088d53564d20262ce2c92dc35344b449f4506a0e471cca0`  
		Last Modified: Tue, 18 Aug 2026 19:13:48 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c65762d1103767bf0fa3e53af2df56ef12a5094c03790dfc09e97d65b41bf4`  
		Last Modified: Tue, 18 Aug 2026 19:13:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6452af91ea17b4fe98375ed5c31aa4d6a4ab9acf97e3065fde18014bd13df1`  
		Last Modified: Tue, 18 Aug 2026 19:13:49 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:c8ea1e9281f2b5fb4f8e5d185521a9d0d4fd08bc7a15de53df04ab662b1611f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 KB (37522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e5cab5a8ae4933feee4d061d382dd20dc2dd28e6312f1a131377feec49c83d1`

```dockerfile
```

-	Layers:
	-	`sha256:6d4b90731bead0776b74cd3464d927a7ee635b0e581b2f0ffc2de6c429c0aa9a`  
		Last Modified: Tue, 18 Aug 2026 19:13:45 GMT  
		Size: 37.5 KB (37522 bytes)  
		MIME: application/vnd.in-toto+json

### `couchbase:enterprise-8.0.0` - linux; arm64 variant v8

```console
$ docker pull couchbase@sha256:865ba52bb4d5d2db3b343e0ddc0b3b7088ea3dfc40a641a83d708ad35c8ef670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **828.9 MB (828892278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0779ac652677ce407088855356f0f93ecc38d9f4955b1e0dd4f73bfc2e630ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:11:28 GMT
LABEL maintainer=docker@couchbase.com
# Tue, 18 Aug 2026 19:11:28 GMT
ARG UPDATE_COMMAND=apt-get update -y -q
# Tue, 18 Aug 2026 19:11:28 GMT
ARG CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 18 Aug 2026 19:11:28 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && ${UPDATE_COMMAND}     && apt-get install -y -q wget tzdata       lsof lshw sysstat net-tools numactl bzip2     && ${CLEANUP_COMMAND} # buildkit
# Tue, 18 Aug 2026 19:11:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN set -x     && apt-get update     && apt-get install -y gcc git make     && cd /usr/src     && git clone https://github.com/couchbasedeps/runit     && cd runit     && git checkout edb631449d89d5b452a5992c6ffaa1e384fea697     && ./package/compile     && cp ./command/* /sbin/     && apt-get purge -y --autoremove gcc git make     && apt-get clean     && rm -rf /var/lib/apt/lists/* /usr/src/runit # buildkit
# Tue, 18 Aug 2026 19:11:53 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0
# Tue, 18 Aug 2026 19:11:53 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb
# Tue, 18 Aug 2026 19:11:53 GMT
ARG CB_SKIP_CHECKSUM=false
# Tue, 18 Aug 2026 19:11:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 18 Aug 2026 19:11:53 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && if getent group 1000 >/dev/null; then           existing_group=$(getent group 1000 | cut -d: -f1);           groupmod --new-name couchbase "${existing_group}";        else           groupadd -g 1000 couchbase;        fi     && if getent passwd 1000 >/dev/null; then           existing_user=$(getent passwd 1000 | cut -d: -f1);           usermod --login couchbase -d /home/couchbase -m -g couchbase -s /bin/sh "${existing_user}";        else           useradd couchbase -u 1000 -g couchbase -M -s /bin/sh;        fi # buildkit
# Tue, 18 Aug 2026 19:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ${UPDATE_COMMAND}     && export INSTALL_DONT_START_SERVER=1     && dpkgArch="$(dpkg --print-architecture)"     && case "${dpkgArch}" in          'arm64')            CB_SHA256=cd5879dbc2a3b5776e19fd8e340727376c9aa38be01bdc1c710e538a68d8f7ad            ;;          'amd64')            CB_SHA256=5cf4f59906fa378b42ea58c3268febe222a1723387d472a853c6a0e4542df0e0            ;;        esac     && CB_PACKAGE=$(echo ${CB_PACKAGE} | sed -e "s/@@ARCH@@/${dpkgArch}/")     && wget -N --no-verbose $CB_RELEASE_URL/$CB_PACKAGE     && { ${CB_SKIP_CHECKSUM} || echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - ; }     && apt-get install -y ./$CB_PACKAGE     && rm -f ./$CB_PACKAGE     && ${CLEANUP_COMMAND}     && rm -rf /tmp/* /var/tmp/* # buildkit
# Tue, 18 Aug 2026 19:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN sed -i -e '1 s/$/\/docker/' /opt/couchbase/VARIANT.txt # buildkit
# Tue, 18 Aug 2026 19:12:36 GMT
COPY scripts/run /etc/service/couchbase-server/run # buildkit
# Tue, 18 Aug 2026 19:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && mkdir -p /etc/service/couchbase-server/supervise     && chown -R couchbase:couchbase                 /etc/service                 /etc/service/couchbase-server/supervise # buildkit
# Tue, 18 Aug 2026 19:12:36 GMT
COPY scripts/dummy.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 19:12:36 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -x     && ln -s dummy.sh /usr/local/bin/iptables-save     && ln -s dummy.sh /usr/local/bin/lvdisplay     && ln -s dummy.sh /usr/local/bin/vgdisplay     && ln -s dummy.sh /usr/local/bin/pvdisplay # buildkit
# Tue, 18 Aug 2026 19:12:37 GMT
# ARGS: UPDATE_COMMAND=apt-get update -y -q CLEANUP_COMMAND=rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* CB_RELEASE_URL=https://packages.couchbase.com/releases/8.0.0 CB_PACKAGE=couchbase-server-enterprise_8.0.0-linux_@@ARCH@@.deb CB_SKIP_CHECKSUM=false
RUN set -ex     &&  if [ ! -e /opt/couchbase/bin/curl.real ]; then             ${UPDATE_COMMAND};             apt-get install -y chrpath;             chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl;             apt-get remove -y chrpath;             apt-get autoremove -y;             ${CLEANUP_COMMAND};         fi # buildkit
# Tue, 18 Aug 2026 19:12:37 GMT
COPY scripts/entrypoint.sh / # buildkit
# Tue, 18 Aug 2026 19:12:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Aug 2026 19:12:37 GMT
CMD ["couchbase-server"]
# Tue, 18 Aug 2026 19:12:37 GMT
EXPOSE map[11207/tcp:{} 11210/tcp:{} 11280/tcp:{} 18091/tcp:{} 18092/tcp:{} 18093/tcp:{} 18094/tcp:{} 18095/tcp:{} 18096/tcp:{} 18097/tcp:{} 8091/tcp:{} 8092/tcp:{} 8093/tcp:{} 8094/tcp:{} 8095/tcp:{} 8096/tcp:{} 8097/tcp:{} 9123/tcp:{}]
# Tue, 18 Aug 2026 19:12:37 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b437a9edd88574194b61bc4f37174a1f1e1e3d60a66b18617b2f73adaa65ab52`  
		Last Modified: Tue, 18 Aug 2026 19:13:31 GMT  
		Size: 43.6 MB (43614639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c40213b8dedb1b752eb1fea20ac806ee4e793d5f6d5a2c5176017a1ae3641824`  
		Last Modified: Tue, 18 Aug 2026 19:13:29 GMT  
		Size: 765.4 KB (765365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82053c7bf0020685f5111dac8ef6d5f109cceae83e667c32b0498111d2aec46`  
		Last Modified: Tue, 18 Aug 2026 19:13:29 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd1be0fc8b57daa2bba30d64026c776e3c3f9e523fca1d039c05da7fdac4f01c`  
		Last Modified: Tue, 18 Aug 2026 19:13:44 GMT  
		Size: 755.6 MB (755618052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565d7a14b0ec4ae8fe8412259ccfab5edf8f16f91e9ebec7909a262bb37a4e23`  
		Last Modified: Tue, 18 Aug 2026 19:13:30 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98eb5a8f053b0ddd1767ceb609d57c158315362b82682e80e44469a1bfc6682c`  
		Last Modified: Tue, 18 Aug 2026 19:13:31 GMT  
		Size: 817.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b00fe1e3dfc23dff27c74d1d81bc55f40b05336c0a53b2fa0da9a13e39a81002`  
		Last Modified: Tue, 18 Aug 2026 19:13:32 GMT  
		Size: 848.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a30ed46732f45d0973d28f1fe1b7e2a9a6c2752e5dc774260cb908dcc956e14`  
		Last Modified: Tue, 18 Aug 2026 19:13:32 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343c7bda64060780f94f15fc17d3d2cae5b216b809a2e219296e9179c2c7e6e8`  
		Last Modified: Tue, 18 Aug 2026 19:13:33 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22850abfadfe748253f0e527792910d6bbcae8168e8a452f1ed08c6489fa2d44`  
		Last Modified: Tue, 18 Aug 2026 19:13:33 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `couchbase:enterprise-8.0.0` - unknown; unknown

```console
$ docker pull couchbase@sha256:6ca653b2fe5c654d5d683d3a5ccab3830ba0914c378b66c0d92072fb1e3d872a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 KB (37707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60709acaac19b75bb06aa149d923483bab03f5cf9fbb6ba701c12b527e28e90f`

```dockerfile
```

-	Layers:
	-	`sha256:4825930e75482691ca0c8825af2eb896feb5a47683e4a91cd94c8760538dca10`  
		Last Modified: Tue, 18 Aug 2026 19:13:29 GMT  
		Size: 37.7 KB (37707 bytes)  
		MIME: application/vnd.in-toto+json
