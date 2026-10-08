## `neo4j:2026-community-ubi10`

```console
$ docker pull neo4j@sha256:8bfed7e7dcb4ab3ba7dc61970df65562f5ebc3fe21c35b032d095fc838d43d2b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:ed39b2988b2b5b9afcc5c36a2ca27136a69809a83fc9de0cc143bc6ad1c873a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.4 MB (410379665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6134fc8d728f22a1d89509817552c58f64212d90574f7f4128d42437410d96f4`
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
# Thu, 08 Oct 2026 21:54:21 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Thu, 08 Oct 2026 21:54:21 GMT
ENV NEO4J_SHA256=cdaa0905d9a533bbbc474d239c268f69978982eb5ca3177666c04c9792d1c399 NEO4J_TARBALL=neo4j-community-2026.09.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Thu, 08 Oct 2026 21:54:21 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
# Thu, 08 Oct 2026 21:54:21 GMT
COPY ./local-package/* /startup/ # buildkit
# Thu, 08 Oct 2026 21:54:26 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Thu, 08 Oct 2026 21:54:26 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 21:54:26 GMT
WORKDIR /var/lib/neo4j
# Thu, 08 Oct 2026 21:54:26 GMT
VOLUME [/data /logs]
# Thu, 08 Oct 2026 21:54:26 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Thu, 08 Oct 2026 21:54:26 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Thu, 08 Oct 2026 21:54:26 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:710627c3bbd291aa98b69cb89112ad2293928540481a1386e0ff674eb782c88c`  
		Last Modified: Thu, 08 Oct 2026 08:18:51 GMT  
		Size: 34.9 MB (34937054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae6283362d04d03fcd5045cd13c0bf837b15ee32c05a0ecc33bba4ecc50e222`  
		Last Modified: Thu, 08 Oct 2026 21:54:54 GMT  
		Size: 100.8 MB (100793106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:579b60075b4b48d12f5008d7b5e93e2d506644c928729a9b14f04b0662d0ec86`  
		Last Modified: Thu, 08 Oct 2026 21:54:48 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6dd2c0736ba6a1f92826ad9d2937f752543de158500462d53c2e321fe65cf6`  
		Last Modified: Thu, 08 Oct 2026 21:54:58 GMT  
		Size: 274.6 MB (274639455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:bd011c1399e72ae3bfd8f2345983a0a40f35a0028d776ab4f4ab7d5219f60b22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1765493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76471f543f111087bb60133b8095004dff920858cbdf398f14e3dd8e220cbacf`

```dockerfile
```

-	Layers:
	-	`sha256:10f3890dddf6d9f93f5c74bab3fcf2fd3f69d7019d2cd9b43c4a52623b02bf8e`  
		Last Modified: Thu, 08 Oct 2026 21:54:48 GMT  
		Size: 1.7 MB (1743886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2523eb8392a0c36f27da84d650b31d2796b2efa3305e142e8a64158f070ac2e6`  
		Last Modified: Thu, 08 Oct 2026 21:54:48 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:aa70ede610bdd30941768b468f8ac40d977c0bd53750a61ffdb58b663df6eb59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.3 MB (407274376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da71b7f2c09ba19addedae4418294b2600b56c9cddbeecd42d3ed8339f6bb82`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:40 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:40 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:40 GMT
COPY dir:2ef2e4e2a6b41f232e640f18c3dc5f15c442e4e4c8f84bc19a7a6f7ec341c008 in /      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:41 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
COPY dir:7d8ee866f219e38f99beeeb1052b5481e3231b5660350d1710f9a43847d257bd in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:41 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:15:20Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:15:20Z" "architecture"="aarch64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:15:20Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:08:46 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:08:46 GMT
ENV NEO4J_SHA256=cdaa0905d9a533bbbc474d239c268f69978982eb5ca3177666c04c9792d1c399 NEO4J_TARBALL=neo4j-community-2026.09.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 07 Oct 2026 22:08:46 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
# Wed, 07 Oct 2026 22:08:46 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 07 Oct 2026 22:08:52 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 07 Oct 2026 22:08:52 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:08:52 GMT
WORKDIR /var/lib/neo4j
# Wed, 07 Oct 2026 22:08:52 GMT
VOLUME [/data /logs]
# Wed, 07 Oct 2026 22:08:52 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 07 Oct 2026 22:08:52 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 07 Oct 2026 22:08:52 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:a74897f26d06e9dd89c15728fca5ccd6144a0eb4a8a988677b35be5ef16025a2`  
		Last Modified: Wed, 07 Oct 2026 06:15:00 GMT  
		Size: 33.2 MB (33194468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c62cc6a748551237d2d29ec51aa93558a6de104637f2d488008cecf19298c3`  
		Last Modified: Wed, 07 Oct 2026 22:09:18 GMT  
		Size: 99.4 MB (99430427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1503c8d3805e31710f3fc0e6829643a770ece6a1d6c9f632bc381eb004f0ae6d`  
		Last Modified: Wed, 07 Oct 2026 22:09:14 GMT  
		Size: 10.0 KB (10022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f13780090e0da17819ff7194d46839f97ae8a7964930d2f342dc7dc1048e1a5`  
		Last Modified: Wed, 07 Oct 2026 22:09:21 GMT  
		Size: 274.6 MB (274639427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:bc57ec80efd366186cbd1837a8481495fa904173eb7962343f992656d424243d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1764953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262428514900e6db02da300a4e446dc715161ff719607b110df7a25095ec6f1d`

```dockerfile
```

-	Layers:
	-	`sha256:77e2288effd78b2362b329339f564645c35dc643aa27d68e97731650902c20d6`  
		Last Modified: Wed, 07 Oct 2026 22:09:14 GMT  
		Size: 1.7 MB (1743190 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8625c16b236b11bea1c37a1ba2a55f67aa20e9293ea20aca0f0bc41c9663dcbb`  
		Last Modified: Wed, 07 Oct 2026 22:09:14 GMT  
		Size: 21.8 KB (21763 bytes)  
		MIME: application/vnd.in-toto+json
