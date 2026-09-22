## `neo4j:enterprise-ubi10`

```console
$ docker pull neo4j@sha256:3de9983124e99b10c103a357b6379e2d223417417e556b6b366cc23e79edb850
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:557e9cd486010077f054756c6ee2037b0da26f09b042affc51e2f1b66f60db16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.3 MB (600336510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92e6fd337e33aa1ed7343837f978f9f50d09f7f3a9ecef1aaa5eba88aff6f26`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:21:02 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:21:02 GMT
ENV container oci
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:21cef458533fac690c798cfa3b3e5958e280e4511a75d89de7a743be02a08382 in /      
# Tue, 15 Sep 2026 07:21:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:21:02 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:ef66525f31f34b461a1091c522dc4a2eae7c85b57a795b4dd467ec5654b1d180 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:21:02 GMT
COPY dir:ef66525f31f34b461a1091c522dc4a2eae7c85b57a795b4dd467ec5654b1d180 in /root/buildinfo/      
# Tue, 15 Sep 2026 07:21:03 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:20:44Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:20:44Z" "architecture"="x86_64" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:20:44Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Mon, 21 Sep 2026 21:40:33 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 21 Sep 2026 21:40:33 GMT
ENV NEO4J_SHA256=59b7cfdc7749cc06ddef816b5d0037f4b09649f2cec54ad78f9d2cff47245a44 NEO4J_TARBALL=neo4j-enterprise-2026.09.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 21 Sep 2026 21:40:33 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
# Mon, 21 Sep 2026 21:40:33 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 21 Sep 2026 21:40:42 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 21 Sep 2026 21:40:42 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 21:40:42 GMT
WORKDIR /var/lib/neo4j
# Mon, 21 Sep 2026 21:40:42 GMT
VOLUME [/data /logs]
# Mon, 21 Sep 2026 21:40:42 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 21 Sep 2026 21:40:42 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 21 Sep 2026 21:40:42 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:b2a0a2287149cc416166ed23549eb27c7c85bb290f7f72720084c62240c18942`  
		Last Modified: Tue, 15 Sep 2026 08:55:08 GMT  
		Size: 34.9 MB (34945197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680f7ed378fe09c6ffba88dd829516026e25fa87210b9dab8b12ca631407176d`  
		Last Modified: Mon, 21 Sep 2026 21:41:12 GMT  
		Size: 100.8 MB (100784230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde5e99284892cd13ad2083a6711216f1f28ee0929108e1bc727cd34a09c808a`  
		Last Modified: Mon, 21 Sep 2026 21:41:09 GMT  
		Size: 10.0 KB (10020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf88d029f73a9a1f38102bb1aa135b70d3c80099e255d2efc960eb8fe9d48a8e`  
		Last Modified: Mon, 21 Sep 2026 21:41:18 GMT  
		Size: 464.6 MB (464597031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:b408e75dc56e5d04ffe0e677a440e46e7c74537afc41ae05043cb6b1f13e4c16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2099814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:387579aed0ff8dc9cc77afd79d7ab7e0321c1c7e49c5f9bb6507127fa2a0d350`

```dockerfile
```

-	Layers:
	-	`sha256:91188b159d772fda392258c3d5c6f52a3503746fff1e7f6ed6a20da822f100e1`  
		Last Modified: Mon, 21 Sep 2026 21:41:09 GMT  
		Size: 2.1 MB (2079412 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a209fe518e35661f76ff89fc635cc47175a84fa0af69e4a60a3daf76046b8036`  
		Last Modified: Mon, 21 Sep 2026 21:41:09 GMT  
		Size: 20.4 KB (20402 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:52f1c366a64195b018e1ef04102aa70901f7fd9ef99ef7fd138b4cf113731e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.2 MB (597181598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45b9475776e22a230180e793e17c6618f2e3b87d0f3b0bc1d8eacdb898fc07b7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 07:23:41 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 15 Sep 2026 07:23:41 GMT
ENV container oci
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:0845143fbed957104ab911522be3d0b6d3786a7c091384a3b77e4182364ea680 in /      
# Tue, 15 Sep 2026 07:23:42 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 07:23:42 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:6f027d514aa0d332f638ab89347dc08b3f3268364d11eb6c4c523f18d39132e3 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 07:23:42 GMT
COPY dir:6f027d514aa0d332f638ab89347dc08b3f3268364d11eb6c4c523f18d39132e3 in /root/buildinfo/      
# Tue, 15 Sep 2026 07:23:42 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T07:23:13Z" "org.opencontainers.image.revision"="c25cacc858803712e72276693173f29b561e6f08" "build-date"="2026-09-15T07:23:13Z" "architecture"="aarch64" "vcs-ref"="c25cacc858803712e72276693173f29b561e6f08" "vcs-type"="git" "release"="1789456728"org.opencontainers.image.created=2026-09-15T07:23:13Z,org.opencontainers.image.revision=c25cacc858803712e72276693173f29b561e6f08
# Mon, 21 Sep 2026 21:40:41 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Mon, 21 Sep 2026 21:40:41 GMT
ENV NEO4J_SHA256=59b7cfdc7749cc06ddef816b5d0037f4b09649f2cec54ad78f9d2cff47245a44 NEO4J_TARBALL=neo4j-enterprise-2026.09.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Mon, 21 Sep 2026 21:40:41 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
# Mon, 21 Sep 2026 21:40:41 GMT
COPY ./local-package/* /startup/ # buildkit
# Mon, 21 Sep 2026 21:40:50 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.09.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Mon, 21 Sep 2026 21:40:50 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 21:40:50 GMT
WORKDIR /var/lib/neo4j
# Mon, 21 Sep 2026 21:40:50 GMT
VOLUME [/data /logs]
# Mon, 21 Sep 2026 21:40:50 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Mon, 21 Sep 2026 21:40:50 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Mon, 21 Sep 2026 21:40:50 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:bc840691d14453cf4b8d9c57d899d7ea0d7fa6dae3fcee6dbcaa685e0c31d009`  
		Last Modified: Tue, 15 Sep 2026 08:55:06 GMT  
		Size: 33.1 MB (33144625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc72d21aed5de70b6ad41ebf4be4d426714fc64a1e8ad26c030b657b911cfe7a`  
		Last Modified: Mon, 21 Sep 2026 21:41:23 GMT  
		Size: 99.4 MB (99429873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073ef6b89e8b7dcb52b46dc0f20d4c5620df583d50f6d713643d86bd220b5d11`  
		Last Modified: Mon, 21 Sep 2026 21:41:20 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25a9f8656952c982890e063d2432da016221fccdb5e185dc0a2ad8fcf56bd9d0`  
		Last Modified: Mon, 21 Sep 2026 21:41:29 GMT  
		Size: 464.6 MB (464597047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:575a72ab7aa846f38000cf584c2248f8608f6ef736669bb9485a9585ade8bbdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2099180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1655b3ba635ca444669e109c460f7de5f4772d52209038e0eeed564337d8e0d`

```dockerfile
```

-	Layers:
	-	`sha256:cd2e63d8eeb26e7a123df142f93fd97fa04fa841b991c6e79512ea144862fccd`  
		Last Modified: Mon, 21 Sep 2026 21:41:20 GMT  
		Size: 2.1 MB (2078668 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13651ebd74faf44566e1043948c2b5ad8409c6af7b668b189513fb990ed9964a`  
		Last Modified: Mon, 21 Sep 2026 21:41:19 GMT  
		Size: 20.5 KB (20512 bytes)  
		MIME: application/vnd.in-toto+json
