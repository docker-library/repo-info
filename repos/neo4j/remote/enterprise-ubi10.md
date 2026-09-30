## `neo4j:enterprise-ubi10`

```console
$ docker pull neo4j@sha256:207554e161a2b24c2f3546e57afbe5ec77924540bb1989306ec556f2a2174504
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:dd2eaf4f889fdec45268db59a86a3417f6acaaebd90deb2dec4ff9a0ee5563c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.4 MB (600357993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d681c3a2f89f8b8c59d8326b21d870502654037cde16bc9753cc3c8403defff4`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:29:37 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 30 Sep 2026 07:29:37 GMT
ENV container oci
# Wed, 30 Sep 2026 07:29:37 GMT
COPY dir:4a2cf22f81e21a519a6037814395930006f66c73a33185c9b0909804097cd2e4 in /      
# Wed, 30 Sep 2026 07:29:37 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:29:37 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:29:37 GMT
COPY dir:0d19287003ab6c5bc6c6b54da180c6fbf0ccb471f51ab32ebe520362ec6a6019 in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:29:37 GMT
COPY dir:0d19287003ab6c5bc6c6b54da180c6fbf0ccb471f51ab32ebe520362ec6a6019 in /root/buildinfo/      
# Wed, 30 Sep 2026 07:29:38 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:29:16Z" "org.opencontainers.image.revision"="c36f95f6d717ca86d583acb486458c81a7d871c6" "build-date"="2026-09-30T07:29:16Z" "architecture"="x86_64" "vcs-ref"="c36f95f6d717ca86d583acb486458c81a7d871c6" "vcs-type"="git" "release"="1790753097"org.opencontainers.image.created=2026-09-30T07:29:16Z,org.opencontainers.image.revision=c36f95f6d717ca86d583acb486458c81a7d871c6
# Wed, 30 Sep 2026 21:06:50 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:06:50 GMT
ENV NEO4J_SHA256=59b7cfdc7749cc06ddef816b5d0037f4b09649f2cec54ad78f9d2cff47245a44 NEO4J_TARBALL=neo4j-enterprise-2026.09.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 30 Sep 2026 21:06:50 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
# Wed, 30 Sep 2026 21:06:50 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 30 Sep 2026 21:06:59 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 30 Sep 2026 21:06:59 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:06:59 GMT
WORKDIR /var/lib/neo4j
# Wed, 30 Sep 2026 21:06:59 GMT
VOLUME [/data /logs]
# Wed, 30 Sep 2026 21:06:59 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 30 Sep 2026 21:06:59 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:06:59 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:391b2dfdd020c8a0be6ba9e27ed254ed8409bfbb569f3be31217c8d2a65c66a2`  
		Last Modified: Wed, 30 Sep 2026 08:26:27 GMT  
		Size: 35.0 MB (34957293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d042c60468362389290d1431b9b93981e585121158ec2f9c615540924cd1f9a0`  
		Last Modified: Wed, 30 Sep 2026 21:07:30 GMT  
		Size: 100.8 MB (100793739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182dbe94b5cf9857bf31aa9920bf8c2efe585beaeab7a971a81cb1f036a7be86`  
		Last Modified: Wed, 30 Sep 2026 21:07:25 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999d9bae4ba9eaf30d655d63408c62ea7e2656b45286c106c694690b16e20192`  
		Last Modified: Wed, 30 Sep 2026 21:07:36 GMT  
		Size: 464.6 MB (464596908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:7299617aa5ff1f4869e90703b1578597f90b6721a742f9f9365fa41c83d8b92c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2099831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ecec15058a4db0e00264a371015ccb148019d42ee1e86da8b037b1aca49b2b7`

```dockerfile
```

-	Layers:
	-	`sha256:04071655728798982ba81ccb6aa2dabbce9f990ed6750ae8c0aaf56c8eceab8f`  
		Last Modified: Wed, 30 Sep 2026 21:07:25 GMT  
		Size: 2.1 MB (2079428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29d796f23aa4b7256d4f7678a3fd964dacda47729024bd64b49e17faf5dbc4c3`  
		Last Modified: Wed, 30 Sep 2026 21:07:25 GMT  
		Size: 20.4 KB (20403 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:ca1287418cc990ece6baab96e7f40a622869ab84ee9960556e4b6aa367190264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.2 MB (597187465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a268a5eec5e4dc931016f37b8693b56b73117ab2a551eae0d1e93545b17e3fb2`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 30 Sep 2026 07:33:03 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:33:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 30 Sep 2026 07:33:04 GMT
ENV container oci
# Wed, 30 Sep 2026 07:33:04 GMT
COPY dir:b23f1b0ddd9fd279c62ecc0b943b4a2c96946a2d2af1d1cdd1b530a4ba2459be in /      
# Wed, 30 Sep 2026 07:33:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:33:04 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:33:05 GMT
COPY dir:9cf1644e306c2a468e0c35a6515097d5f26998903ca48be5c88c30b23982ef21 in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:33:05 GMT
COPY dir:9cf1644e306c2a468e0c35a6515097d5f26998903ca48be5c88c30b23982ef21 in /root/buildinfo/      
# Wed, 30 Sep 2026 07:33:05 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:32:43Z" "org.opencontainers.image.revision"="c36f95f6d717ca86d583acb486458c81a7d871c6" "build-date"="2026-09-30T07:32:43Z" "architecture"="aarch64" "vcs-ref"="c36f95f6d717ca86d583acb486458c81a7d871c6" "vcs-type"="git" "release"="1790753097"org.opencontainers.image.created=2026-09-30T07:32:43Z,org.opencontainers.image.revision=c36f95f6d717ca86d583acb486458c81a7d871c6
# Wed, 30 Sep 2026 21:05:07 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:05:08 GMT
ENV NEO4J_SHA256=59b7cfdc7749cc06ddef816b5d0037f4b09649f2cec54ad78f9d2cff47245a44 NEO4J_TARBALL=neo4j-enterprise-2026.09.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 30 Sep 2026 21:05:08 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
# Wed, 30 Sep 2026 21:05:08 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 30 Sep 2026 21:05:18 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 30 Sep 2026 21:05:18 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:05:18 GMT
WORKDIR /var/lib/neo4j
# Wed, 30 Sep 2026 21:05:18 GMT
VOLUME [/data /logs]
# Wed, 30 Sep 2026 21:05:18 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 30 Sep 2026 21:05:18 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:05:18 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:9ecd9154d0ac1d3014d65a9a6871a8c0c64a22ac6d5a9235ede1bb14d47cbb9c`  
		Last Modified: Wed, 30 Sep 2026 09:02:01 GMT  
		Size: 33.2 MB (33151204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f7e0b811d77ebd770bfada63bedd79bf6989bcdbd2a2d723004bbfa0ef020e`  
		Last Modified: Wed, 30 Sep 2026 21:05:51 GMT  
		Size: 99.4 MB (99429162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0a6692a374a8fd2215171999eeba5fe2e3f767a61c0ceb8bbfa691dc823691`  
		Last Modified: Wed, 30 Sep 2026 21:05:47 GMT  
		Size: 10.0 KB (10023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fddeada40f9d98af105242aead359963c9496cc4bd42e7e99cba7f5d104ccd2`  
		Last Modified: Wed, 30 Sep 2026 21:05:58 GMT  
		Size: 464.6 MB (464597044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:47aa5a073486970724dae75b2f567a60c382415324cf9f2e3a1b4710dce40f10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2099195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f82b77a28cd789ecbb64ea8b36b6fdbacfdbe037ab8f565f9834151bd710cdd`

```dockerfile
```

-	Layers:
	-	`sha256:5fe81c670a1f7bf3929bcca9c1c181b6a1967e167d69f244800a0e1d90a0830b`  
		Last Modified: Wed, 30 Sep 2026 21:05:47 GMT  
		Size: 2.1 MB (2078684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8148064c2bc51d865b2e17acb1e17c4c42467690d89f85d5969257803f3bfaa2`  
		Last Modified: Wed, 30 Sep 2026 21:05:47 GMT  
		Size: 20.5 KB (20511 bytes)  
		MIME: application/vnd.in-toto+json
