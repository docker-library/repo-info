## `neo4j:ubi10`

```console
$ docker pull neo4j@sha256:46e0989e25982cef58ff8147a6f3e841ecaa6f62647903b84fdb670bfaabecff
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:3060be66fa9d30149f51befc7cb7bd2fbde75fbd7ddf696a2c74c89d618a0cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.9 MB (381874441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:936211997cd06f74ff6605092c948886d7938daaba32642467cbeee3808c4a75`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:34:34 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:34:34 GMT
ENV container oci
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:3fc2149cba1aae646de340c6940fc0331b4ca2629dd609c7c1400ec115ce9c6e in /      
# Thu, 05 Nov 2026 07:34:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:34:35 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:34:35 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
COPY dir:4e6d61acac5151d768954527c7c38c6ff552deec8d1877e12657822d3387682c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:34:36 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:34:13Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:34:13Z" "architecture"="x86_64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:34:13Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Mon, 09 Nov 2026 20:25:08 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 09 Nov 2026 20:25:08 GMT
ENV NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:08 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Mon, 09 Nov 2026 20:25:08 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:25:13 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 09 Nov 2026 20:25:13 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:25:13 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:25:13 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:25:13 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:25:13 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:25:13 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:b0218091bf1acf0117c078cab67cd8be28c27f65609cc1af616ea6886997ebab`  
		Last Modified: Thu, 05 Nov 2026 09:20:39 GMT  
		Size: 34.9 MB (34932248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb9903b2748a9a022fbd6fe5e00969963cde987982bd5035e3697b03bd8d2b5`  
		Last Modified: Mon, 09 Nov 2026 20:25:39 GMT  
		Size: 100.8 MB (100756673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4747146325f95e66581e0e3c5c23c7668beadf55fb16f5233d7547c9ae8de49`  
		Last Modified: Mon, 09 Nov 2026 20:25:35 GMT  
		Size: 10.0 KB (10039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0002a3119fd364c30e81c596a5feda00b07fc2025e59098c6a392db8218259`  
		Last Modified: Mon, 09 Nov 2026 20:25:42 GMT  
		Size: 246.2 MB (246175449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:1a00a6a251c3aeee98ee28bb6a3e9c08bb6f2f10a6ae074a60b0afc516857f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1749423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:010b67c6c3c004d3f725299128be54547307e2ce04370f4a298bbed29a0fd395`

```dockerfile
```

-	Layers:
	-	`sha256:475ed28e280da72d27153a89a25b8f2a04b73f8677b738b270a184137607a6f3`  
		Last Modified: Mon, 09 Nov 2026 20:25:36 GMT  
		Size: 1.7 MB (1727816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5e7f2e2e19d5709a87527992a88e05ff2d1ed2af89df00333cbd88259cc98e9`  
		Last Modified: Mon, 09 Nov 2026 20:25:35 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:b2886f0ffcc1919fdde7f4d33568a1793ae9019d9d052cfebd20b8222108dc83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.7 MB (378672617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c241617cdcd3662798e6bc7fbc36f8379279c017d35b97c80e3d1bbb91f5437`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:12 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:38:13 GMT
LABEL io.openshift.tags="minimal rhel10"
# Thu, 05 Nov 2026 07:38:13 GMT
ENV container oci
# Thu, 05 Nov 2026 07:38:14 GMT
COPY dir:089f13b60ac5a6f3bf2df00bfd8d6b35f10e4772d781538a85ad7aaebf293498 in /      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:38:15 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:38:15 GMT
COPY dir:699a403b7779230891a676ebf5796e52df215eef6e8dd13c3f34836659e0116f in /root/buildinfo/      
# Thu, 05 Nov 2026 07:38:16 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:37:45Z" "org.opencontainers.image.revision"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "build-date"="2026-11-05T07:37:45Z" "architecture"="aarch64" "vcs-ref"="b9bbdf653af86c0fd2544624603a25fdbec1e3db" "vcs-type"="git" "release"="1793863917"org.opencontainers.image.created=2026-11-05T07:37:45Z,org.opencontainers.image.revision=b9bbdf653af86c0fd2544624603a25fdbec1e3db
# Mon, 09 Nov 2026 20:25:25 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 09 Nov 2026 20:25:25 GMT
ENV NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:25 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Mon, 09 Nov 2026 20:25:25 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:25:29 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 09 Nov 2026 20:25:29 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:25:29 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:25:29 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:25:29 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:25:29 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:25:29 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:7aee463747d818b9fbc2248922298e0ccf21bdb30d3990b9ca3eec1000343059`  
		Last Modified: Thu, 05 Nov 2026 09:38:32 GMT  
		Size: 33.1 MB (33070630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95b6c9160240de85ba71ce52756efb0a64081fe0f5daf2a556212756ece820d`  
		Last Modified: Mon, 09 Nov 2026 20:25:55 GMT  
		Size: 99.4 MB (99416450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b38a4ad62ba59a0378ea67e16e5825021bb953756e13c45406e68e57264d57f`  
		Last Modified: Mon, 09 Nov 2026 20:25:51 GMT  
		Size: 10.0 KB (10041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf83a029373e5ce48795508622a13ef978f2bc455b784ffbb909835dbac683cb`  
		Last Modified: Mon, 09 Nov 2026 20:25:57 GMT  
		Size: 246.2 MB (246175464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:ea8d4ba949a804711f339b2336f91ff4be8c592cbafa975a2ae7fedce250d11e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.7 MB (1748884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b16620315df48d90124a8079e8959c9124d06a10f3bdc7f41e11b639e193c06f`

```dockerfile
```

-	Layers:
	-	`sha256:1e8d83aebd64aed4f84fb536d7b0b4793fc20ff92b735127d3c441ace1e3cff1`  
		Last Modified: Mon, 09 Nov 2026 20:25:51 GMT  
		Size: 1.7 MB (1727120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e6556ead504b12bdc224afceeec822a97f17fa2d3023a66c5c6bb823ecb14aa0`  
		Last Modified: Mon, 09 Nov 2026 20:25:51 GMT  
		Size: 21.8 KB (21764 bytes)  
		MIME: application/vnd.in-toto+json
