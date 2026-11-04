## `neo4j:2026-community-ubi10`

```console
$ docker pull neo4j@sha256:f79ca976d4b4f8fb022484c3bcfeb3358a5f94b7a1ad579f28bdfe7694172e0d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:dd9402efa3243f5ac49a419b3971db4613505f4560ecd4cbddc8f8241321998c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.1 MB (382113111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e5e83160c01b28a652f571f51bc2d4e1a6f344ca89313aff4c4a7fd8e3f7c0`
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
# Tue, 03 Nov 2026 22:23:20 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 22:23:20 GMT
ENV NEO4J_SHA256=afcf4986d47d13dd908427d301d5a9278b2ec7d615a12bb40e22087c7e133e78 NEO4J_TARBALL=neo4j-community-2026.10.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 03 Nov 2026 22:23:20 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
# Tue, 03 Nov 2026 22:23:20 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 03 Nov 2026 22:23:24 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 03 Nov 2026 22:23:24 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:23:25 GMT
WORKDIR /var/lib/neo4j
# Tue, 03 Nov 2026 22:23:25 GMT
VOLUME [/data /logs]
# Tue, 03 Nov 2026 22:23:25 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 03 Nov 2026 22:23:25 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:23:25 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:41b5e888b5cdf3bececf953aef8cd8fe7aa0906db6e2fc8c7d43e8c2df221312`  
		Last Modified: Mon, 02 Nov 2026 20:01:04 GMT  
		Size: 34.9 MB (34932323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:080fed925c6d05c94088c0d869b69995a10e116d30c457d4b62eb7b5c5ce0845`  
		Last Modified: Tue, 03 Nov 2026 22:23:48 GMT  
		Size: 100.8 MB (100755642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629169280e287d17daeca54fafb04a3d78a6b251e1541bb91a0d4fd4b4fb7b79`  
		Last Modified: Tue, 03 Nov 2026 22:23:44 GMT  
		Size: 10.0 KB (10040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139beb1572fb591d9dbd65d0c581a50a951140b93c48520edcfda6a070547f20`  
		Last Modified: Tue, 03 Nov 2026 22:23:51 GMT  
		Size: 246.4 MB (246415074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:965b77759ec5397f3ca90e0557dc669b7f7c5a7c9466cddced7482e722eef7b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1749971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ed1aaa357401ce575daba5223c6c0c060d8b59bc834671d84a3cfc59c5099c`

```dockerfile
```

-	Layers:
	-	`sha256:21232e5d779812733d34ddde49582cfb94510df709e21c6b09af9ca623a1c838`  
		Last Modified: Tue, 03 Nov 2026 22:23:45 GMT  
		Size: 1.7 MB (1728364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be8462d2fd48bf4db8e095194508f707e8fae537e130fd3dabf5d60d8ee1d8c3`  
		Last Modified: Tue, 03 Nov 2026 22:23:44 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:c3bc39b40ced23c58863ee2398e60ab04e28543148614d98faa146fad3f66f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.9 MB (378911287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef3818f65c3b72debc2b68dadd8e9bac8bf46fb9af9623ae3a3a31778da6e6a9`
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
# Tue, 03 Nov 2026 22:23:29 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 03 Nov 2026 22:23:29 GMT
ENV NEO4J_SHA256=afcf4986d47d13dd908427d301d5a9278b2ec7d615a12bb40e22087c7e133e78 NEO4J_TARBALL=neo4j-community-2026.10.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 03 Nov 2026 22:23:29 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
# Tue, 03 Nov 2026 22:23:29 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 03 Nov 2026 22:23:34 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.1-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 03 Nov 2026 22:23:34 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 22:23:34 GMT
WORKDIR /var/lib/neo4j
# Tue, 03 Nov 2026 22:23:34 GMT
VOLUME [/data /logs]
# Tue, 03 Nov 2026 22:23:34 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 03 Nov 2026 22:23:34 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 03 Nov 2026 22:23:34 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:0a29e805bdd2af84f1a4ce0c655432a7dc19376bc217d026acedf7aa8894fd15`  
		Last Modified: Mon, 02 Nov 2026 20:01:05 GMT  
		Size: 33.1 MB (33070916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4b99c7852578bd5dddf09106a180591ea4aa1ceba0bd433c216a6d8b981351`  
		Last Modified: Tue, 03 Nov 2026 22:23:58 GMT  
		Size: 99.4 MB (99415186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7ce1b0eade6f7ba11e2ab9c5497672e9461250594dbe5f2072bf4fa3ea8a73`  
		Last Modified: Tue, 03 Nov 2026 22:23:55 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5288e20269231a1426e5b2d8ae2fb6d045093748ecd4c2a3aae2fc64b0abe4`  
		Last Modified: Tue, 03 Nov 2026 22:24:01 GMT  
		Size: 246.4 MB (246415112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:2e831f36652f93059ffc8f575bc429c583b2199dcb26a6541a944a6e37811a35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1749432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1cd305c5bdec82fa11b0a791864e34b983d1888afdd8787142b9c17dbd6d1fb`

```dockerfile
```

-	Layers:
	-	`sha256:461801ba943fe0fdb26c4b149e43862567ce10d3a20fad83fe44d1f3a3d009dd`  
		Last Modified: Tue, 03 Nov 2026 22:23:55 GMT  
		Size: 1.7 MB (1727668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30d3417b48460cf0f04a0d15bea7d6fee1d41dd348b714a62c8c459e304cbcec`  
		Last Modified: Tue, 03 Nov 2026 22:23:55 GMT  
		Size: 21.8 KB (21764 bytes)  
		MIME: application/vnd.in-toto+json
