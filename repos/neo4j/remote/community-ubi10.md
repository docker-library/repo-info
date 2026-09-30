## `neo4j:community-ubi10`

```console
$ docker pull neo4j@sha256:2179fe83c6c90b8c7bb2822929970ac152e6b1386a3fc9ad9b3b8a7320ace7b6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:303a77cfe5e74142e8732468d3a1381559c8619158a1cdd88e86de15efcb490f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.4 MB (410400538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ae2c2d1d86c82a59c8d12d499877a1c3fb13d4d9c423f40815950d5375481c`
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
# Wed, 30 Sep 2026 21:06:15 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:06:15 GMT
ENV NEO4J_SHA256=cdaa0905d9a533bbbc474d239c268f69978982eb5ca3177666c04c9792d1c399 NEO4J_TARBALL=neo4j-community-2026.09.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 30 Sep 2026 21:06:15 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
# Wed, 30 Sep 2026 21:06:15 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 30 Sep 2026 21:06:20 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 30 Sep 2026 21:06:20 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:06:20 GMT
WORKDIR /var/lib/neo4j
# Wed, 30 Sep 2026 21:06:20 GMT
VOLUME [/data /logs]
# Wed, 30 Sep 2026 21:06:20 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 30 Sep 2026 21:06:20 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:06:20 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:391b2dfdd020c8a0be6ba9e27ed254ed8409bfbb569f3be31217c8d2a65c66a2`  
		Last Modified: Wed, 30 Sep 2026 08:26:27 GMT  
		Size: 35.0 MB (34957293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:877874e53dc504025ec786155d54b00e7c63e225a2bbe9888fbaea3b72785500`  
		Last Modified: Wed, 30 Sep 2026 21:06:45 GMT  
		Size: 100.8 MB (100793838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf4d6081d3dece0ead0c565dd571ae0749b1912ef26fa6fb05a9d9bcef75b77c`  
		Last Modified: Wed, 30 Sep 2026 21:06:41 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc1d1cf6e31a9fe4e0e2e1cf950e6fdfdcb6f4ac0087915167aa78504953a77`  
		Last Modified: Wed, 30 Sep 2026 21:06:48 GMT  
		Size: 274.6 MB (274639354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:137b09751ef228a90e371db44bd550a0699a206dc16556e53b32fc0f4c613bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1765485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a134138520aaa266798ee7297873aad4e27add4aeb05044075aee0a5459449f4`

```dockerfile
```

-	Layers:
	-	`sha256:03b84c22e0b5ded54e29af8cca287c53e87814b8eb1e77033699f87ee21a754d`  
		Last Modified: Wed, 30 Sep 2026 21:06:41 GMT  
		Size: 1.7 MB (1743878 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3d81723e5b120eb7a308c9f6de262100fe768f192d8c9bf16e0d3c275b283b1`  
		Last Modified: Wed, 30 Sep 2026 21:06:40 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:53cf8c08f574329426b5a7bc4f074998a134645b48973cc784cd6eb1908498b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.2 MB (407229818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab3c2d2968199c95f9fa9a87ce6e834e228096bb952ada47eee4b48c95bedbb6`
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
# Wed, 30 Sep 2026 21:04:57 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:04:57 GMT
ENV NEO4J_SHA256=cdaa0905d9a533bbbc474d239c268f69978982eb5ca3177666c04c9792d1c399 NEO4J_TARBALL=neo4j-community-2026.09.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 30 Sep 2026 21:04:57 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
# Wed, 30 Sep 2026 21:04:57 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 30 Sep 2026 21:05:03 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 30 Sep 2026 21:05:03 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:05:03 GMT
WORKDIR /var/lib/neo4j
# Wed, 30 Sep 2026 21:05:03 GMT
VOLUME [/data /logs]
# Wed, 30 Sep 2026 21:05:03 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 30 Sep 2026 21:05:03 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:05:03 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:9ecd9154d0ac1d3014d65a9a6871a8c0c64a22ac6d5a9235ede1bb14d47cbb9c`  
		Last Modified: Wed, 30 Sep 2026 09:02:01 GMT  
		Size: 33.2 MB (33151204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4bee7f465dd9d118979869f917d3e042634ee9f7de065416d3bb4a133537ba6`  
		Last Modified: Wed, 30 Sep 2026 21:05:30 GMT  
		Size: 99.4 MB (99429135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59602ffd66793baf41be88c3d9bb6bb94dc637ecc86d555ebdbf06ce8dc7751`  
		Last Modified: Wed, 30 Sep 2026 21:05:24 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9195127c413642db550526c3815d28f1428a2d0c51bd3aaa32c7ca619b10a328`  
		Last Modified: Wed, 30 Sep 2026 21:05:34 GMT  
		Size: 274.6 MB (274639427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:18976f210a6a3e5ce1f6046478754decbacc0e6acdebbda67887c6022af73bfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cbab74a6c68e1e946585513f98b79fbf04ae75e8ed6df429c26ddf4d7549c06`

```dockerfile
```

-	Layers:
	-	`sha256:7ae095891fb0aa0f21f5c0230f751023f60c7ba2be4c72cf6cfdd58c60cfeca3`  
		Last Modified: Wed, 30 Sep 2026 21:05:24 GMT  
		Size: 1.7 MB (1743182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bcfd8c5028086e85a07ad30d57e502ea66e04daa7cfce7bd0fecec136fbc0273`  
		Last Modified: Wed, 30 Sep 2026 21:05:24 GMT  
		Size: 21.8 KB (21764 bytes)  
		MIME: application/vnd.in-toto+json
