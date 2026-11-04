## `neo4j:enterprise-ubi10`

```console
$ docker pull neo4j@sha256:e61f51b4421fd9ba481b06d62007919524dbbbe146d971fb6488f5b29b31db10
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:424dc858f516ab8a781591f84be7789136ed3ac5b508722c187d7d2db0e1e136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.2 MB (577160942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a918d660677ecc73bc17abe5ec17cd134759eed9539eb805c52f479f093a27df`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 18:01:07 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 02 Nov 2026 18:01:08 GMT
ENV container oci
# Mon, 02 Nov 2026 18:01:08 GMT
COPY dir:3b289561d928b0e39f6fec71dda37b654d96dcc611d360342265dac478d8a53a in /      
# Mon, 02 Nov 2026 18:01:08 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 18:01:08 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 18:01:09 GMT
COPY dir:00cabec19e29ce2b7d72051ab958e5e95551c22d29f7f83ad81b460eac205372 in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 18:01:09 GMT
COPY dir:00cabec19e29ce2b7d72051ab958e5e95551c22d29f7f83ad81b460eac205372 in /root/buildinfo/      
# Mon, 02 Nov 2026 18:01:09 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T18:00:47Z" "org.opencontainers.image.revision"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "build-date"="2026-11-02T18:00:47Z" "architecture"="x86_64" "vcs-ref"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "vcs-type"="git" "release"="1793642335"org.opencontainers.image.created=2026-11-02T18:00:47Z,org.opencontainers.image.revision=f738e88b7bb7caf108d5a65ce6eaa0f284c32f73
# Tue, 03 Nov 2026 22:23:26 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 22:23:26 GMT
ENV NEO4J_SHA256=96c6404dad2ac8728fbd147458441091ea8c444b9eb22aadde1209d3b4b23aa7 NEO4J_TARBALL=neo4j-enterprise-2026.10.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 03 Nov 2026 22:23:26 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
# Tue, 03 Nov 2026 22:23:26 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 03 Nov 2026 22:23:35 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 03 Nov 2026 22:23:35 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:23:35 GMT
WORKDIR /var/lib/neo4j
# Tue, 03 Nov 2026 22:23:35 GMT
VOLUME [/data /logs]
# Tue, 03 Nov 2026 22:23:35 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 03 Nov 2026 22:23:35 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:23:35 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:41b5e888b5cdf3bececf953aef8cd8fe7aa0906db6e2fc8c7d43e8c2df221312`  
		Last Modified: Mon, 02 Nov 2026 20:01:04 GMT  
		Size: 34.9 MB (34932323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c709a0d896a33263a57e2c10bc798e450ad73a07ebf83609f08625856b3e31`  
		Last Modified: Tue, 03 Nov 2026 22:24:05 GMT  
		Size: 100.8 MB (100755657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b473e788502ec6e831fcd8b079ea5f69af2dd7ac6807733ca95f85a81e2a99e`  
		Last Modified: Tue, 03 Nov 2026 22:23:59 GMT  
		Size: 10.0 KB (10039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eab99eae0ad687ff0ecf1e76eeecee26b8b64f29a83573cb050fafe17fc61a1`  
		Last Modified: Tue, 03 Nov 2026 22:24:15 GMT  
		Size: 441.5 MB (441462891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:de3681255f6f754da9f9e345726c5120a16810ac4be0fe1013fd0e1050448f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2089602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b71dca96f4cba1c7d2b1fdc9f3030bace75028fa1937f363cdb67a9fb9284aaf`

```dockerfile
```

-	Layers:
	-	`sha256:d0945ad2fdaaa1dccc60eaab0de5e3395385ed1ad21c485bc07f2fde49baf96d`  
		Last Modified: Tue, 03 Nov 2026 22:24:00 GMT  
		Size: 2.1 MB (2069199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7fab6ec0869299a4ff22511be2e6370a2c7f5d8c1640a3d42c04f66b6586ddc`  
		Last Modified: Tue, 03 Nov 2026 22:24:00 GMT  
		Size: 20.4 KB (20403 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:560e81a393a85b02e1e6b2e8ef2aefcf402302e627345168c8fb0bc38407754d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **574.0 MB (573959155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c20e682f90de98d2f58a59f14d52d273d561b042847f36564c76b5901ecec96b`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 02 Nov 2026 18:04:14 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 02 Nov 2026 18:04:14 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 02 Nov 2026 18:04:15 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 02 Nov 2026 18:04:15 GMT
ENV container oci
# Mon, 02 Nov 2026 18:04:16 GMT
COPY dir:f218a9631b2a14dfb2ca7c90b0ec1a1a08c90cfc301b523317dd02dac03baf96 in /      
# Mon, 02 Nov 2026 18:04:17 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 02 Nov 2026 18:04:17 GMT
CMD ["/bin/bash"]
# Mon, 02 Nov 2026 18:04:17 GMT
COPY dir:696d2774a063be8311b033d8912e81272872852b73c805769cbb8125af26d0ce in /usr/share/buildinfo/      
# Mon, 02 Nov 2026 18:04:17 GMT
COPY dir:696d2774a063be8311b033d8912e81272872852b73c805769cbb8125af26d0ce in /root/buildinfo/      
# Mon, 02 Nov 2026 18:04:18 GMT
LABEL "org.opencontainers.image.created"="2026-11-02T18:03:47Z" "org.opencontainers.image.revision"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "build-date"="2026-11-02T18:03:47Z" "architecture"="aarch64" "vcs-ref"="f738e88b7bb7caf108d5a65ce6eaa0f284c32f73" "vcs-type"="git" "release"="1793642335"org.opencontainers.image.created=2026-11-02T18:03:47Z,org.opencontainers.image.revision=f738e88b7bb7caf108d5a65ce6eaa0f284c32f73
# Tue, 03 Nov 2026 22:23:32 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 22:23:32 GMT
ENV NEO4J_SHA256=96c6404dad2ac8728fbd147458441091ea8c444b9eb22aadde1209d3b4b23aa7 NEO4J_TARBALL=neo4j-enterprise-2026.10.1-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 03 Nov 2026 22:23:32 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
# Tue, 03 Nov 2026 22:23:32 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 03 Nov 2026 22:23:41 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.10.1-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 03 Nov 2026 22:23:41 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:23:41 GMT
WORKDIR /var/lib/neo4j
# Tue, 03 Nov 2026 22:23:41 GMT
VOLUME [/data /logs]
# Tue, 03 Nov 2026 22:23:41 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 03 Nov 2026 22:23:41 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:23:41 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:0a29e805bdd2af84f1a4ce0c655432a7dc19376bc217d026acedf7aa8894fd15`  
		Last Modified: Mon, 02 Nov 2026 20:01:05 GMT  
		Size: 33.1 MB (33070916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b58a90f85857257ef7eeb8d24ca917e843ce52c9320c1ac796eebe197712153`  
		Last Modified: Tue, 03 Nov 2026 22:24:15 GMT  
		Size: 99.4 MB (99415295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab81fe8727a4e6a20c64336cc7ac99dfb31a05d6a3fff798615c4e7e9893683`  
		Last Modified: Tue, 03 Nov 2026 22:24:10 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbabb66a9a685d1c190290b9f40e19167a84f79bb8a0cf43207b99e0778e1e22`  
		Last Modified: Tue, 03 Nov 2026 22:24:20 GMT  
		Size: 441.5 MB (441462871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:84455ec0129d4280178994492a25bfcb70b383962047d12eb9240fd9e6fc2cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2088967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2434a627b2bfc9be66b4271ac7504e35a8fa6479653b289332ad6ca7cf0c40e`

```dockerfile
```

-	Layers:
	-	`sha256:5021b6d95c9beaee6528becf7a5b9fc7fa94a3c18d69e1e97f853795d4800133`  
		Last Modified: Tue, 03 Nov 2026 22:24:10 GMT  
		Size: 2.1 MB (2068455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b00d254c1bcdfc0895f34389559525868c8b3dcb65af84e52e86da67c07c2bb`  
		Last Modified: Tue, 03 Nov 2026 22:24:10 GMT  
		Size: 20.5 KB (20512 bytes)  
		MIME: application/vnd.in-toto+json
