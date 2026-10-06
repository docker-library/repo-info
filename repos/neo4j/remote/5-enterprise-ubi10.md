## `neo4j:5-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:9ea478c418d6a8803b4c6c78a426ce51554bbf70586221588590f4b0bf21969f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:138d3d8253a4f383b6e06ee230164c3834be964855e3d6239d0349194d78cce4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.4 MB (639371441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce571614d329cbc058d2729622dbd65537766d7ed3ee2a4f50641383da8c0145`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:52:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:52:49 GMT
ENV container oci
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:f34bac4cb5386fae5c688b9edc1b823fe38f4dd16d1c362f8163660dba6cbcaa in /      
# Tue, 06 Oct 2026 06:52:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:52:50 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:a955a0c99bb51e4c1fd6c1c97d380d39455977317b0ff795e31df9ed150f19a8 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:52:50 GMT
COPY dir:a955a0c99bb51e4c1fd6c1c97d380d39455977317b0ff795e31df9ed150f19a8 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:52:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:52:27Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:52:27Z" "architecture"="x86_64" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:52:27Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 22:01:03 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 22:01:03 GMT
ENV NEO4J_SHA256=191b06ef05643360a8cb326e48222fc0a9d857085082d88a7a32076222167fd3 NEO4J_TARBALL=neo4j-enterprise-5.26.31-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 06 Oct 2026 22:01:03 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
# Tue, 06 Oct 2026 22:01:03 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 06 Oct 2026 22:01:13 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 06 Oct 2026 22:01:13 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 22:01:13 GMT
WORKDIR /var/lib/neo4j
# Tue, 06 Oct 2026 22:01:13 GMT
VOLUME [/data /logs]
# Tue, 06 Oct 2026 22:01:13 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 06 Oct 2026 22:01:13 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 22:01:13 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:9244a62486f52ea78c7c9bffc8936622a69a982b1ed177ee04ddfae80f9a2f94`  
		Last Modified: Tue, 06 Oct 2026 07:58:50 GMT  
		Size: 35.0 MB (34955692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11ad24ce6f591a032d27201ecf8d131f8341e22f082c7bf9376fad0adc4763e`  
		Last Modified: Tue, 06 Oct 2026 22:01:46 GMT  
		Size: 86.3 MB (86292268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7afc80aeda88692d3ebbd58e695541ccecff378b869dd291c6731ce79ac476`  
		Last Modified: Tue, 06 Oct 2026 22:01:43 GMT  
		Size: 10.1 KB (10061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e256ca25ce2143f6a005fe49888f05216ffa09faec996ce02e406fe4ea501c30`  
		Last Modified: Tue, 06 Oct 2026 22:01:53 GMT  
		Size: 518.1 MB (518113388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:508bfdeab1fa7d49994a5f4f99b611d362105378ed042c9750539c8ee33130ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1992824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4852b0d51f5fdec69f860192ec627c2a514b121988bfff4505f6afe906bf6d5b`

```dockerfile
```

-	Layers:
	-	`sha256:bb3225a50879acdfb42005a8d1572110bffedc283663c34757d6213e7023f0f1`  
		Last Modified: Tue, 06 Oct 2026 22:01:43 GMT  
		Size: 2.0 MB (1972772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:922bd4c794f9ce19cf25671ed73193be1cd835301222dc20b5d6969749096399`  
		Last Modified: Tue, 06 Oct 2026 22:01:43 GMT  
		Size: 20.1 KB (20052 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:21db8622bb6118e905d6b569b533d7417fdf2550872b8a98ed7df4fb4467f519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.5 MB (636468175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ac06ab7f77826a425d172fb368ee180f64f529350fa3b0514cde9387eb4083b`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 06:54:51 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 06 Oct 2026 06:54:51 GMT
ENV container oci
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:5d724641a5e7af80919f5b39a516d4561f65b3b7352fbda320935cbb5242688a in /      
# Tue, 06 Oct 2026 06:54:52 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 06:54:52 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:00864b7e610d3da6756b5cf1b37de86187c773ede7d568403a72c9370ca645e1 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 06:54:52 GMT
COPY dir:00864b7e610d3da6756b5cf1b37de86187c773ede7d568403a72c9370ca645e1 in /root/buildinfo/      
# Tue, 06 Oct 2026 06:54:52 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T06:54:30Z" "org.opencontainers.image.revision"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "build-date"="2026-10-06T06:54:30Z" "architecture"="aarch64" "vcs-ref"="d1f7fb92ac172a567c570c6de12bd9d216ea5c92" "vcs-type"="git" "release"="1791269426"org.opencontainers.image.created=2026-10-06T06:54:30Z,org.opencontainers.image.revision=d1f7fb92ac172a567c570c6de12bd9d216ea5c92
# Tue, 06 Oct 2026 21:57:54 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:57:54 GMT
ENV NEO4J_SHA256=191b06ef05643360a8cb326e48222fc0a9d857085082d88a7a32076222167fd3 NEO4J_TARBALL=neo4j-enterprise-5.26.31-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 06 Oct 2026 21:57:54 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
# Tue, 06 Oct 2026 21:57:54 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 06 Oct 2026 21:58:05 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 06 Oct 2026 21:58:05 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:58:05 GMT
WORKDIR /var/lib/neo4j
# Tue, 06 Oct 2026 21:58:05 GMT
VOLUME [/data /logs]
# Tue, 06 Oct 2026 21:58:05 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 06 Oct 2026 21:58:05 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 06 Oct 2026 21:58:05 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:8bbad36d7459a5946aefb1e837706ffa90447344493f010df72763ae29ef2507`  
		Last Modified: Tue, 06 Oct 2026 07:58:54 GMT  
		Size: 33.1 MB (33124268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:540f52321df567a5aef0a0a38868ac3676cab5cd212cd46cb3aa4828b0bf9040`  
		Last Modified: Tue, 06 Oct 2026 21:58:37 GMT  
		Size: 85.2 MB (85220509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273f79ba928760909a72ce67e090c0f9dfd763c59ca92b7d0806cc71313648de`  
		Last Modified: Tue, 06 Oct 2026 21:58:34 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb38b56b73ebf69b64dcc108c1140e69c4616d838f01c7c8cf0ea99201f1383`  
		Last Modified: Tue, 06 Oct 2026 21:58:45 GMT  
		Size: 518.1 MB (518113303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:1db175c413ce4cbfdd83b8bf7a437ce1e09f0fabc32124a81039574db0727f23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1992173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2279711b487508a2078e8d09ebab62e0602fe1eb7a42718710c855c682aaaf21`

```dockerfile
```

-	Layers:
	-	`sha256:b689161a9ea08d5b37dab44113087cd1ed8717cf5bd529468d717f3766574c85`  
		Last Modified: Tue, 06 Oct 2026 21:58:34 GMT  
		Size: 2.0 MB (1972019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49c1736b9cd031e1684985cbf6f0759d4076427ac68bc32f11c88a14bfed520e`  
		Last Modified: Tue, 06 Oct 2026 21:58:34 GMT  
		Size: 20.2 KB (20154 bytes)  
		MIME: application/vnd.in-toto+json
