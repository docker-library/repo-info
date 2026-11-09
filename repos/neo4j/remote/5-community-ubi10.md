## `neo4j:5-community-ubi10`

```console
$ docker pull neo4j@sha256:1d3b6bf255790fdee0759ba7379584d844faf2b7739882692d03ca1c9d1c342c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:b54bf68488ce1e3785b25faa086a20934b95eeaba9e94a2aa3a329080594cb4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260737429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6b77d89e5c3e27006f07dc7ea33881a5ceb603eafd8810fd935bcba7d7e647`
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
# Mon, 09 Nov 2026 20:25:07 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 09 Nov 2026 20:25:07 GMT
ENV NEO4J_SHA256=db8f7ab2eab05109c87d8bb2096e14100532e5701a76d56257f06301569b6c26 NEO4J_TARBALL=neo4j-community-5.26.33-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:07 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.33-unix.tar.gz
# Mon, 09 Nov 2026 20:25:07 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:25:10 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.33-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 09 Nov 2026 20:25:10 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:25:10 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:25:10 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:25:10 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:25:10 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:25:10 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:b0218091bf1acf0117c078cab67cd8be28c27f65609cc1af616ea6886997ebab`  
		Last Modified: Thu, 05 Nov 2026 09:20:39 GMT  
		Size: 34.9 MB (34932248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee6ae2cf954c8f082da64090a2f66b4a830d87a017b494f4159926a3f712581`  
		Last Modified: Mon, 09 Nov 2026 20:25:30 GMT  
		Size: 86.4 MB (86431710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629ac7ca6948a1e18d46d41d9e09bdaa4b7932c18522296c3461691b9f75fe91`  
		Last Modified: Mon, 09 Nov 2026 20:25:27 GMT  
		Size: 10.1 KB (10073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a575d8f6b91912cb1aa1b4e4350ce6396527105104a45044dc4e4b7f693f47`  
		Last Modified: Mon, 09 Nov 2026 20:25:31 GMT  
		Size: 139.4 MB (139363366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:98dd92a820c4d4e63c302253d9e8c9e38a91cc6452c02043fbea248b905f7f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 MB (1614939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f4431b41a4bbd12b47c1f6160e6218210cb1683c7b55668bdac0e1a07546dfc`

```dockerfile
```

-	Layers:
	-	`sha256:3c3381f3e488bb1edc7d4f9f627b400869409114ab1d52ec1b40d0fc07979227`  
		Last Modified: Mon, 09 Nov 2026 20:25:27 GMT  
		Size: 1.6 MB (1593990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a84316fc624fae15ed939c682b2a8b1e95213af33352453c5ba93b21d0028f04`  
		Last Modified: Mon, 09 Nov 2026 20:25:27 GMT  
		Size: 20.9 KB (20949 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:a3924d50422c347cb553341ecce90d1b27b20f1e9f45c4f9fb732e269b123bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257793731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add471c2e7afa5f68bc12b0ece8c5b050dea96d77c5e55839794c79be5e86dc9`
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
# Mon, 09 Nov 2026 20:25:56 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 09 Nov 2026 20:25:56 GMT
ENV NEO4J_SHA256=db8f7ab2eab05109c87d8bb2096e14100532e5701a76d56257f06301569b6c26 NEO4J_TARBALL=neo4j-community-5.26.33-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 09 Nov 2026 20:25:56 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.33-unix.tar.gz
# Mon, 09 Nov 2026 20:25:56 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 09 Nov 2026 20:25:58 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.33-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 09 Nov 2026 20:25:58 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:25:58 GMT
WORKDIR /var/lib/neo4j
# Mon, 09 Nov 2026 20:25:58 GMT
VOLUME [/data /logs]
# Mon, 09 Nov 2026 20:25:58 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 09 Nov 2026 20:25:58 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 09 Nov 2026 20:25:58 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:7aee463747d818b9fbc2248922298e0ccf21bdb30d3990b9ca3eec1000343059`  
		Last Modified: Thu, 05 Nov 2026 09:38:32 GMT  
		Size: 33.1 MB (33070630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f98859b783c319e0003f749487a1b5f554cee8a8642626ab68e459afafac824c`  
		Last Modified: Mon, 09 Nov 2026 20:26:18 GMT  
		Size: 85.3 MB (85349636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04e44a5b2ce4552a43bbf98f439fbd547bc67208cde8d845ae6260f36f9c90a`  
		Last Modified: Mon, 09 Nov 2026 20:26:16 GMT  
		Size: 10.1 KB (10073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d914d32e4a977cdd9b55bfc177b874858385dd9cf861157dd7409d7fc47619`  
		Last Modified: Mon, 09 Nov 2026 20:26:20 GMT  
		Size: 139.4 MB (139363360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:1377c60630951b27aab916e2aea5acd959b39ccc6ca7c31eabfbddb244976eb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 MB (1614359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2685df63f39369bee7504e5c47cc9b8d8a9cb01a3cc7c66f1d598d61e44b063d`

```dockerfile
```

-	Layers:
	-	`sha256:a5587a6e8dd31a91dc4d2b04c509741c660abcd88fd855261c619a7c039d4b8f`  
		Last Modified: Mon, 09 Nov 2026 20:26:16 GMT  
		Size: 1.6 MB (1593273 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd630621744b4f4baa9590ce97bb3ae24db46bd0925d8fef1796bc1d2a4bffe3`  
		Last Modified: Mon, 09 Nov 2026 20:26:15 GMT  
		Size: 21.1 KB (21086 bytes)  
		MIME: application/vnd.in-toto+json
