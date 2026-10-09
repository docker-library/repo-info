## `neo4j:enterprise-ubi10`

```console
$ docker pull neo4j@sha256:0f2ca70217abe1e314521b7591fbb394622a4935318206721dfc62d42081431a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:c9ee16f0583ecf3969513a4b6711cb33d128b37e9c81fb6bd99b490e8b83e4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.3 MB (600337414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6ecae985b23e2ae6713418c9affdc6b9b26faa376e25dabc94fb33c15946b7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:29:44 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:29:44 GMT
ENV container oci
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:ddc630cb027274e98af97a1af6083c7b263b7cb019f3df1cfe8e4c98672cda82 in /      
# Thu, 08 Oct 2026 07:29:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:29:45 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:1fa5b8bc3bea37c9dd5b7f56283b2a920b53a13a06588e0df1136508b541f21f in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:29:45 GMT
COPY dir:1fa5b8bc3bea37c9dd5b7f56283b2a920b53a13a06588e0df1136508b541f21f in /root/buildinfo/      
# Thu, 08 Oct 2026 07:29:45 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:29:25Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:29:25Z" "architecture"="x86_64" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:29:25Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 21:54:20 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:54:20 GMT
ENV NEO4J_SHA256=59b7cfdc7749cc06ddef816b5d0037f4b09649f2cec54ad78f9d2cff47245a44 NEO4J_TARBALL=neo4j-enterprise-2026.09.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 08 Oct 2026 21:54:20 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
# Thu, 08 Oct 2026 21:54:20 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 08 Oct 2026 21:54:42 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Thu, 08 Oct 2026 21:54:42 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:54:42 GMT
WORKDIR /var/lib/neo4j
# Thu, 08 Oct 2026 21:54:42 GMT
VOLUME [/data /logs]
# Thu, 08 Oct 2026 21:54:42 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 08 Oct 2026 21:54:42 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 08 Oct 2026 21:54:42 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:710627c3bbd291aa98b69cb89112ad2293928540481a1386e0ff674eb782c88c`  
		Last Modified: Thu, 08 Oct 2026 08:18:51 GMT  
		Size: 34.9 MB (34937054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b887d71ca2c81e78590922fcb35c7fe4ea30f5e4f365b87367afaa8702b8d7`  
		Last Modified: Thu, 08 Oct 2026 21:55:11 GMT  
		Size: 100.8 MB (100793143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f39dcdc739857789a05a4bb13c82639ed32ba241316ce94351d7238a0b3dd3`  
		Last Modified: Thu, 08 Oct 2026 21:55:07 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf97b3c8effa270e3ecdcdd06d0f7865de504b755b0dd011d811d2589ce31ac1`  
		Last Modified: Thu, 08 Oct 2026 21:55:17 GMT  
		Size: 464.6 MB (464597167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:9c4aab47661d1e386a14c09a45874b8946309c703d413758f3d95afb82813dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2099839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6552d825d279608f9e212ebe79b2766e2ad5a9fa6804c7efd695fa3da5e83633`

```dockerfile
```

-	Layers:
	-	`sha256:527c4d4cf9a83d66ad6b4b3ec74132bcec974bb44209e991d2a3ad8d2744fe8e`  
		Last Modified: Thu, 08 Oct 2026 21:55:07 GMT  
		Size: 2.1 MB (2079436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e540a56684c3f8d058f1a3b207ac854ba9c1809c7567c81549f294afca0b9e27`  
		Last Modified: Thu, 08 Oct 2026 21:55:07 GMT  
		Size: 20.4 KB (20403 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:2508e0dbd76296316c9af191cc552b2f9a1ee3d1b8d7900c11c7cb4a856174b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.2 MB (597164959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89ce61c2cd3cc76ffd6df69928a8b4bb394929462ef890962b112742dbfb51a0`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.openshift.expose-services=""
# Thu, 08 Oct 2026 07:31:33 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 08 Oct 2026 07:31:33 GMT
ENV container oci
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:3b693ee56c8e02a0c8e6ed8f8171cc2234846abd348b9639ea706b42112670bc in /      
# Thu, 08 Oct 2026 07:31:34 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 08 Oct 2026 07:31:34 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:680f884ce4f44b383a8b4383e602fd99d7e00d1f627ba9ceb02434c83b3c1cb0 in /usr/share/buildinfo/      
# Thu, 08 Oct 2026 07:31:34 GMT
COPY dir:680f884ce4f44b383a8b4383e602fd99d7e00d1f627ba9ceb02434c83b3c1cb0 in /root/buildinfo/      
# Thu, 08 Oct 2026 07:31:34 GMT
LABEL "org.opencontainers.image.created"="2026-10-08T07:31:12Z" "org.opencontainers.image.revision"="15b051dbd9dfffc387e455857eb5a01665969eb9" "build-date"="2026-10-08T07:31:12Z" "architecture"="aarch64" "vcs-ref"="15b051dbd9dfffc387e455857eb5a01665969eb9" "vcs-type"="git" "release"="1791444377"org.opencontainers.image.created=2026-10-08T07:31:12Z,org.opencontainers.image.revision=15b051dbd9dfffc387e455857eb5a01665969eb9
# Thu, 08 Oct 2026 22:46:23 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 22:46:23 GMT
ENV NEO4J_SHA256=59b7cfdc7749cc06ddef816b5d0037f4b09649f2cec54ad78f9d2cff47245a44 NEO4J_TARBALL=neo4j-enterprise-2026.09.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 08 Oct 2026 22:46:23 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
# Thu, 08 Oct 2026 22:46:23 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 08 Oct 2026 22:46:33 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Thu, 08 Oct 2026 22:46:33 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 22:46:33 GMT
WORKDIR /var/lib/neo4j
# Thu, 08 Oct 2026 22:46:33 GMT
VOLUME [/data /logs]
# Thu, 08 Oct 2026 22:46:33 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 08 Oct 2026 22:46:33 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 08 Oct 2026 22:46:33 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:8b2c25e4bec99a21d5c99e83343d0b1d76d3c026b29b0092e0f6b68de46679a2`  
		Last Modified: Thu, 08 Oct 2026 08:20:50 GMT  
		Size: 33.1 MB (33126510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669ff861ac6829479935d63ece1a3b7a837149a71f9dff4a104b830b7f77114b`  
		Last Modified: Thu, 08 Oct 2026 22:47:07 GMT  
		Size: 99.4 MB (99431348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7867e410cd57b31e7a875c8333317b7851a44bfc01e4d7562969a7062d4782`  
		Last Modified: Thu, 08 Oct 2026 22:47:03 GMT  
		Size: 10.0 KB (10022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5adeae9fb515b04f4d8093348797c1fe52b32321c10974d343d90753f0d4be4f`  
		Last Modified: Thu, 08 Oct 2026 22:47:13 GMT  
		Size: 464.6 MB (464597047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:c748e7e3423be1814bd1581c9f25a40dfc5891d2d0eeb816587e7f469cfd4660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2099204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce4e4ece200e39fb24634b933c755167f5b61e9ee48c97b2a52f494ade118163`

```dockerfile
```

-	Layers:
	-	`sha256:f7df9aa8b61a253303e5aae949d045a0f9ea412f7f88e7ef5e72708eb335dae0`  
		Last Modified: Thu, 08 Oct 2026 22:47:03 GMT  
		Size: 2.1 MB (2078692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66fee57ec6e8425c153f6fcc4b06cb935bf1f41c6cf9484e16aaeb2e7096f0e2`  
		Last Modified: Thu, 08 Oct 2026 22:47:03 GMT  
		Size: 20.5 KB (20512 bytes)  
		MIME: application/vnd.in-toto+json
