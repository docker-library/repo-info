## `neo4j:ubi10`

```console
$ docker pull neo4j@sha256:ff4e43550df822ea51cec1f17c7af0bf6fab0baa82a460a6ab03c122f60ed7ba
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:2a4c714764009c3d5a46e02f56013c0e5341da6188db34f5678c71ba8c76e51e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.9 MB (404851544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2022dddbdf5694b9bec884758db1882419f60a0384035bb6953c0db4be7a7379`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:04:44 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:04:44 GMT
ENV container oci
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:876d55a6afad3c650d61c0b66072339064fd4222217a3606856925173e6b4f5d in /      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:04:45 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
COPY dir:f690a7926d4d1793e3444aefd940484afd5d12be6d84f392fc895c8a06b3b693 in /root/buildinfo/      
# Wed, 09 Sep 2026 08:04:45 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:04:26Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:04:26Z" "architecture"="x86_64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:04:26Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Fri, 11 Sep 2026 22:31:43 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Fri, 11 Sep 2026 22:31:43 GMT
ENV NEO4J_SHA256=6e4bb155a4bd02a8a7a7e83a56aca70df1cd5d90ff4dd94b540f20f49f000084 NEO4J_TARBALL=neo4j-community-2026.08.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 11 Sep 2026 22:31:43 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.08.1-unix.tar.gz
# Fri, 11 Sep 2026 22:31:43 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 11 Sep 2026 22:31:49 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.08.1-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Fri, 11 Sep 2026 22:31:49 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Sep 2026 22:31:49 GMT
WORKDIR /var/lib/neo4j
# Fri, 11 Sep 2026 22:31:49 GMT
VOLUME [/data /logs]
# Fri, 11 Sep 2026 22:31:49 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 11 Sep 2026 22:31:49 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 11 Sep 2026 22:31:49 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:1abc6d29de37a94354a7ff1ac7ec241d10a16dabadf22aaa8ea915e748300f18`  
		Last Modified: Wed, 09 Sep 2026 09:16:41 GMT  
		Size: 34.9 MB (34908248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52474b4fd5472568be8c3efa1edb1823a60bd807f869fa80df41ecc4530768c1`  
		Last Modified: Fri, 11 Sep 2026 22:32:13 GMT  
		Size: 100.8 MB (100786791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:134d23ad6fcbda2576c54a23a520fb8da82c70b4901ad98928e502bed56e4de1`  
		Last Modified: Fri, 11 Sep 2026 22:32:09 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e8a46aba4910fbfc6a8909763bf75812e9fd09861841d45ef1d8e881cc425a`  
		Last Modified: Fri, 11 Sep 2026 22:32:15 GMT  
		Size: 269.1 MB (269146452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:42b1136376d9e992a6663c82b308aad82ddcb9eef8a212c5ff04af0c2ebfe38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:578e1b3b833d8591aef3450fb727f902008749aad6609fdbd8006c4489c2d0c8`

```dockerfile
```

-	Layers:
	-	`sha256:b5be53c9797216e0b75fcaf33a0b3f3fb005fa36b8de15b33e73e91fe571d6ef`  
		Last Modified: Fri, 11 Sep 2026 22:32:09 GMT  
		Size: 1.7 MB (1734224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77549a149dfe179221b1bd343550cebbd578a7628dbdf2a7187c060b5113d3a8`  
		Last Modified: Fri, 11 Sep 2026 22:32:09 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:b6ccd53420799608e8706c59bea77a40711ffd3300b240d0c75407846e6c4ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **401.7 MB (401703399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd0e5cdbadb4e6dcb9b2126a9039a5a91bd41164e3e391ff32f44c327d6d1d04`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.expose-services=""
# Wed, 09 Sep 2026 08:06:49 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 09 Sep 2026 08:06:49 GMT
ENV container oci
# Wed, 09 Sep 2026 08:06:50 GMT
COPY dir:57d486e1a6b8b6e97fc97c129774bb79b4e36c15fecc3af363e179377116c60e in /      
# Wed, 09 Sep 2026 08:06:50 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 09 Sep 2026 08:06:50 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /usr/share/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
COPY dir:6ee5715f8cb3dbeb466566f7a46f579cfcaf91ec3ea74ce59c0412cc9823eb1e in /root/buildinfo/      
# Wed, 09 Sep 2026 08:06:51 GMT
LABEL "org.opencontainers.image.created"="2026-09-09T08:06:27Z" "org.opencontainers.image.revision"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "build-date"="2026-09-09T08:06:27Z" "architecture"="aarch64" "vcs-ref"="6f0a7fe9019ce54888ba398cc0415651fcba8b7a" "vcs-type"="git" "release"="1788940913"org.opencontainers.image.created=2026-09-09T08:06:27Z,org.opencontainers.image.revision=6f0a7fe9019ce54888ba398cc0415651fcba8b7a
# Fri, 11 Sep 2026 22:31:12 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Fri, 11 Sep 2026 22:31:12 GMT
ENV NEO4J_SHA256=6e4bb155a4bd02a8a7a7e83a56aca70df1cd5d90ff4dd94b540f20f49f000084 NEO4J_TARBALL=neo4j-community-2026.08.1-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 11 Sep 2026 22:31:12 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.08.1-unix.tar.gz
# Fri, 11 Sep 2026 22:31:12 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 11 Sep 2026 22:31:17 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.08.1-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Fri, 11 Sep 2026 22:31:17 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 Sep 2026 22:31:17 GMT
WORKDIR /var/lib/neo4j
# Fri, 11 Sep 2026 22:31:17 GMT
VOLUME [/data /logs]
# Fri, 11 Sep 2026 22:31:17 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 11 Sep 2026 22:31:17 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 11 Sep 2026 22:31:17 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:8fd75ffc9e9e12cc305a8d45a9be20f6f7f4be59d1a88a8ba04e45d5fe6b4e10`  
		Last Modified: Wed, 09 Sep 2026 09:16:40 GMT  
		Size: 33.1 MB (33117333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a668f76b9a98f138a35dedac7e0d6052768220977bdbee2ad9ae2c83f20a6cc`  
		Last Modified: Fri, 11 Sep 2026 22:31:43 GMT  
		Size: 99.4 MB (99429615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b955852c83c0cdb4734b65e10451fdeef65771db6e9e9da4442adff95c4b4491`  
		Last Modified: Fri, 11 Sep 2026 22:31:39 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1486d28b1dedc9711920f427398495337666c03c70913d35c411db0654c4fda0`  
		Last Modified: Fri, 11 Sep 2026 22:31:46 GMT  
		Size: 269.1 MB (269146401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:b266f7176c94a1cc24b361e12ee19c26a2228d208a0768688da00af2129ccba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1755292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17c26cddaf73c9d99d5e3b9d3781ffd1fd30d0b385cdf8ab48c70da990a4ba4e`

```dockerfile
```

-	Layers:
	-	`sha256:d29bcf5e7b78a2837a41d55867b1d82003e1344ddb06b039eb032a0bc45495a5`  
		Last Modified: Fri, 11 Sep 2026 22:31:39 GMT  
		Size: 1.7 MB (1733528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eb6988b051cdcc092b89da2a417c6461ad20cf947fb2a6310246f5ee96bafb4`  
		Last Modified: Fri, 11 Sep 2026 22:31:39 GMT  
		Size: 21.8 KB (21764 bytes)  
		MIME: application/vnd.in-toto+json
