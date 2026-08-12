## `neo4j:2026-community-ubi10`

```console
$ docker pull neo4j@sha256:be744f311102002c2c49105af072e318efce1331413ee21a67209c13def2e92e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:d3b1e0c862d2c3d029b4ed3b7931a84fce1c2dd88e0c1495dd15d3d65a663e6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.9 MB (397852221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:750e2ee109eb7edbfb526c74fae619e1d6fa53efb85b05eff59fba3d78010b82`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:51:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:51:29 GMT
ENV container oci
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:7a04abc64e369dd32456066306b8fddc9c1e490ec0cf51450d2d195a7ad5c1e9 in /      
# Mon, 10 Aug 2026 21:51:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:51:30 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:0b22cdacfd54d8b903ea695d9151f1ccb890483ff9ca8176faa3c586cf67071d in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:51:30 GMT
COPY dir:0b22cdacfd54d8b903ea695d9151f1ccb890483ff9ca8176faa3c586cf67071d in /root/buildinfo/      
# Mon, 10 Aug 2026 21:51:30 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:51:06Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:51:06Z" "architecture"="x86_64" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:51:06Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 17:52:47 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 17:52:47 GMT
ENV NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 11 Aug 2026 17:52:47 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Tue, 11 Aug 2026 17:52:47 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 11 Aug 2026 17:53:01 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 11 Aug 2026 17:53:01 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 17:53:01 GMT
WORKDIR /var/lib/neo4j
# Tue, 11 Aug 2026 17:53:01 GMT
VOLUME [/data /logs]
# Tue, 11 Aug 2026 17:53:01 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 11 Aug 2026 17:53:01 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 11 Aug 2026 17:53:01 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:57ad07d2cd224920b88126949754e7f4ce28cf93f6845916da07c959c6d98f1d`  
		Last Modified: Tue, 11 Aug 2026 00:19:13 GMT  
		Size: 34.9 MB (34906619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362493b63233ffcef69e31bab79c98d9332aa6b4fc572729aa2c4fa1838de8d0`  
		Last Modified: Tue, 11 Aug 2026 17:53:27 GMT  
		Size: 100.7 MB (100715336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e225833786e9f316773e66616353ef17bcd130c2cde65280a367fbfca41236`  
		Last Modified: Tue, 11 Aug 2026 17:53:18 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c3aeb4d874f197ccc993341b57da65f1fb658f352c2296496f11684f9409f2`  
		Last Modified: Tue, 11 Aug 2026 17:53:30 GMT  
		Size: 262.2 MB (262220214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:0e188c7ae1ccbeb2a0dd5747454f111c4aa2893d41b56e4d8d4955a8e53947df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1758927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63830990afb3c1169db5a203470e108a5e1925dc82a38b047199075157424063`

```dockerfile
```

-	Layers:
	-	`sha256:ac404b7fb663e491cc95ec0e181ce1f5afdd749d24b80aad703b15872289eb48`  
		Last Modified: Tue, 11 Aug 2026 17:53:23 GMT  
		Size: 1.7 MB (1737320 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e71b1848da1ebc8cff8c9442a003541849cbb405a6e09c1067a6ac7e736ae71c`  
		Last Modified: Tue, 11 Aug 2026 17:53:23 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:08ded2a22f46fefd5abec0909833b5d10aae5ca9fb0d4758a9c72474861b6b84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.7 MB (394733895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c82a38260abfc4400d828955333f2ca33f4e1c7eda877699489329597f4ebc5b`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.openshift.expose-services=""
# Mon, 10 Aug 2026 21:53:25 GMT
LABEL io.openshift.tags="minimal rhel10"
# Mon, 10 Aug 2026 21:53:25 GMT
ENV container oci
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9b127e1be7f03495b8968f9753237fa3e68b28fbfc2ca0a6affa6cd45dc58ba9 in /      
# Mon, 10 Aug 2026 21:53:26 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Mon, 10 Aug 2026 21:53:26 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9ab660a0e21475a7f5a194ebb4173ccfdc8efc453ad00cf084e289cfef69ef69 in /usr/share/buildinfo/      
# Mon, 10 Aug 2026 21:53:26 GMT
COPY dir:9ab660a0e21475a7f5a194ebb4173ccfdc8efc453ad00cf084e289cfef69ef69 in /root/buildinfo/      
# Mon, 10 Aug 2026 21:53:26 GMT
LABEL "org.opencontainers.image.created"="2026-08-10T21:53:05Z" "org.opencontainers.image.revision"="f79522b6176b2c2293398c933c4f7a44008ab395" "build-date"="2026-08-10T21:53:05Z" "architecture"="aarch64" "vcs-ref"="f79522b6176b2c2293398c933c4f7a44008ab395" "vcs-type"="git" "release"="1786398535"org.opencontainers.image.created=2026-08-10T21:53:05Z,org.opencontainers.image.revision=f79522b6176b2c2293398c933c4f7a44008ab395
# Tue, 11 Aug 2026 19:08:15 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Tue, 11 Aug 2026 19:08:15 GMT
ENV NEO4J_SHA256=fbb3a11705cdbc87953242e3667dad37cd39f8d1e1168faa642c01a2fd1d144d NEO4J_TARBALL=neo4j-community-2026.07.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Tue, 11 Aug 2026 19:08:15 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
# Tue, 11 Aug 2026 19:08:15 GMT
COPY ./local-package/* /startup/ # buildkit
# Tue, 11 Aug 2026 19:08:21 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.07.1-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Tue, 11 Aug 2026 19:08:21 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Aug 2026 19:08:21 GMT
WORKDIR /var/lib/neo4j
# Tue, 11 Aug 2026 19:08:21 GMT
VOLUME [/data /logs]
# Tue, 11 Aug 2026 19:08:21 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Tue, 11 Aug 2026 19:08:21 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Tue, 11 Aug 2026 19:08:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6ad2b21e4232c6d46ffbc015ce8e9bfb1643a196de1763d432d925693df6f338`  
		Last Modified: Tue, 11 Aug 2026 00:19:28 GMT  
		Size: 33.1 MB (33117757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ecd2b6db83667df461676e29a39181f42e1bc894fe6e43dbe96aef1b3a27810`  
		Last Modified: Tue, 11 Aug 2026 19:08:45 GMT  
		Size: 99.4 MB (99385897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2568a263e0ca4c619b9026a19abdb200e75b13c9c8a40e66c8841355bfb820`  
		Last Modified: Tue, 11 Aug 2026 19:08:42 GMT  
		Size: 10.0 KB (10022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf67e2b24ef7b8c2619de5ebdaad7e02795441bcde7af1c66414c6327d600b7`  
		Last Modified: Tue, 11 Aug 2026 19:08:48 GMT  
		Size: 262.2 MB (262220187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:c1425a18fdd3699a2dc54f6539640d4d208801e3453a88ce3ff31d7f4c5349ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1758388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1b0ef5b93a7941d4d128ee0145a2e9a7f4378e5889be356ff8d1b395b26330c`

```dockerfile
```

-	Layers:
	-	`sha256:884ed413e043477f5dc39337b0e5ec6c23b39bc7fd34f575e51b80483a725918`  
		Last Modified: Tue, 11 Aug 2026 19:08:42 GMT  
		Size: 1.7 MB (1736624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6a9512b2b3155477a960bc80e376240e8f8531c77d7c05f658636bb9239a33b`  
		Last Modified: Tue, 11 Aug 2026 19:08:42 GMT  
		Size: 21.8 KB (21764 bytes)  
		MIME: application/vnd.in-toto+json
