## `neo4j:5-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:b5fd904811a2b24760e6ce24ca45d1a271274c9e629476ccd8b9adfe5b981953
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:a592596b6ebf70733437b68ec125fecc6226c0452fd835c8e0243f178b7fee38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.4 MB (639374081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db9e701b16170084a0138cc2fa6fd3460e3fb4ae42855d22f4f1d0d8fa2a4279`
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
# Wed, 30 Sep 2026 21:06:34 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:06:34 GMT
ENV NEO4J_SHA256=191b06ef05643360a8cb326e48222fc0a9d857085082d88a7a32076222167fd3 NEO4J_TARBALL=neo4j-enterprise-5.26.31-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 30 Sep 2026 21:06:34 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
# Wed, 30 Sep 2026 21:06:34 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 30 Sep 2026 21:06:45 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 30 Sep 2026 21:06:45 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:06:45 GMT
WORKDIR /var/lib/neo4j
# Wed, 30 Sep 2026 21:06:45 GMT
VOLUME [/data /logs]
# Wed, 30 Sep 2026 21:06:45 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 30 Sep 2026 21:06:45 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:06:45 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:391b2dfdd020c8a0be6ba9e27ed254ed8409bfbb569f3be31217c8d2a65c66a2`  
		Last Modified: Wed, 30 Sep 2026 08:26:27 GMT  
		Size: 35.0 MB (34957293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11599e457fe2c14eb273c753e4c153a6618351ed74a97c162e8aad0f61907ddd`  
		Last Modified: Wed, 30 Sep 2026 21:07:17 GMT  
		Size: 86.3 MB (86293307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62133ee71775ecbdf032109c5f8c965373a584ce62ffac43d494ae93ab41b86`  
		Last Modified: Wed, 30 Sep 2026 21:07:13 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eccf1c665bab45b4ea6dcddff9551de8c327e66d3b6d25f21370cab89ddfbdd`  
		Last Modified: Wed, 30 Sep 2026 21:07:27 GMT  
		Size: 518.1 MB (518113386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:698a73921deb6ddecb53fddc8c01dc078781b9640242f20f502168f0179d34e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1992825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddac8059aa5e0703c3c5fcfd18fe52ab0a6d770d9ea5f4a7b4d948c82248b348`

```dockerfile
```

-	Layers:
	-	`sha256:4e84f3294abf9059d72ca0e5ddcd15e5728846ba94f4f623eae4f6156bc59e79`  
		Last Modified: Wed, 30 Sep 2026 21:07:14 GMT  
		Size: 2.0 MB (1972772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c69e281c8600c718a3c0ba1548501caa4f6497630c4828b2107e2b715d3d7b7`  
		Last Modified: Wed, 30 Sep 2026 21:07:13 GMT  
		Size: 20.1 KB (20053 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:93295a90e24d42354449e7fcd173d96f5c6d9ce1089ce548a39bb0f5257fe2c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.5 MB (636491141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46cd885767ffd6bf1905746e8d46511794981d61ccedc59334bdfd1187371d7a`
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
# Wed, 30 Sep 2026 21:05:41 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 30 Sep 2026 21:05:41 GMT
ENV NEO4J_SHA256=191b06ef05643360a8cb326e48222fc0a9d857085082d88a7a32076222167fd3 NEO4J_TARBALL=neo4j-enterprise-5.26.31-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 30 Sep 2026 21:05:41 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
# Wed, 30 Sep 2026 21:05:41 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 30 Sep 2026 21:05:52 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 30 Sep 2026 21:05:52 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 30 Sep 2026 21:05:52 GMT
WORKDIR /var/lib/neo4j
# Wed, 30 Sep 2026 21:05:52 GMT
VOLUME [/data /logs]
# Wed, 30 Sep 2026 21:05:52 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 30 Sep 2026 21:05:52 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 30 Sep 2026 21:05:52 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:9ecd9154d0ac1d3014d65a9a6871a8c0c64a22ac6d5a9235ede1bb14d47cbb9c`  
		Last Modified: Wed, 30 Sep 2026 09:02:01 GMT  
		Size: 33.2 MB (33151204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:389113e7de33f50817b2f6fbccab6b4925d2588ee6d09898a4a6a7ee825d600a`  
		Last Modified: Wed, 30 Sep 2026 21:06:25 GMT  
		Size: 85.2 MB (85216530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba22ef9aaf6b2ea1fc26c75647627c50e2ea84e04846a6fc25e125e7579dcac`  
		Last Modified: Wed, 30 Sep 2026 21:06:21 GMT  
		Size: 10.1 KB (10060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9149cc3617cb4cbbf3be898477790b7e38a38025ef2e28d0e86f13bdb6ea255`  
		Last Modified: Wed, 30 Sep 2026 21:06:34 GMT  
		Size: 518.1 MB (518113315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:9e92441b4515d177f775b69bd3675ada1a6ab9ab26f988fbb20f0eedb9d35a79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1992172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900408bb59a7938eabe6b058fbb16b42fae3e564405f6fbf72eee79d20ea84dc`

```dockerfile
```

-	Layers:
	-	`sha256:d3e0d8bdc45a163edcf45a7e173514392adfa62ee8422cdcdab544b9c4382629`  
		Last Modified: Wed, 30 Sep 2026 21:06:22 GMT  
		Size: 2.0 MB (1972019 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c500cec5490a5decd0c2b94a02d704f5c7e1577a07f85f9937b7c20479643d1`  
		Last Modified: Wed, 30 Sep 2026 21:06:21 GMT  
		Size: 20.2 KB (20153 bytes)  
		MIME: application/vnd.in-toto+json
