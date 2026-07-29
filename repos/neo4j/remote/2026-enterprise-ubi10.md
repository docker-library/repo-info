## `neo4j:2026-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:642bf905c50c3b8ecbcaac9a16b189adb667704e0fc8598979add9cf61bda6ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:2026-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:177054cde121b38de93a65c785b27d0f1eeb0c584b0e23f01ec49c316447748e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.4 MB (549407039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb3e35e7ad999120829a55b1a57a82d517bf8b295a29758cde46b620644ab72`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 05:14:08 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 28 Jul 2026 05:14:08 GMT
ENV container oci
# Tue, 28 Jul 2026 05:14:08 GMT
COPY dir:2660f24c99a21c8fbdf2eef42fdc067b198648db7087b79da02c6a5501524197 in /      
# Tue, 28 Jul 2026 05:14:08 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 05:14:08 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 05:14:08 GMT
COPY dir:c71878da94da1da4c3877f61146510f0e249a51efc562da73488c28dc0e5eb15 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 05:14:09 GMT
COPY dir:c71878da94da1da4c3877f61146510f0e249a51efc562da73488c28dc0e5eb15 in /root/buildinfo/      
# Tue, 28 Jul 2026 05:14:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T05:13:50Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-28T05:13:50Z" "architecture"="x86_64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785215492"org.opencontainers.image.created=2026-07-28T05:13:50Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Wed, 29 Jul 2026 18:29:38 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:29:38 GMT
ENV NEO4J_SHA256=659c0b51430f32d9461b3b9cb4e459b1df064f393cb2db0f7fce3858a9092b6e NEO4J_TARBALL=neo4j-enterprise-2026.06.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 29 Jul 2026 18:29:38 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
# Wed, 29 Jul 2026 18:29:38 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 29 Jul 2026 18:29:47 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 29 Jul 2026 18:29:47 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:29:47 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Jul 2026 18:29:47 GMT
VOLUME [/data /logs]
# Wed, 29 Jul 2026 18:29:47 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 29 Jul 2026 18:29:47 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:29:47 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:a68f9599a736775f6a58a4febb5d9ab1d587e4e8a335cc1834e4e3b069a1bc2f`  
		Last Modified: Tue, 28 Jul 2026 05:44:24 GMT  
		Size: 34.9 MB (34900503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f79267fc57f424aa36803153b113eada191faea43a5f54bc965d93b31804636`  
		Last Modified: Wed, 29 Jul 2026 18:30:17 GMT  
		Size: 100.7 MB (100701896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c099c1f4c6da7d9d89d7a0d4b4e012592a0ac3b1557f35f0dadb11513d08b21`  
		Last Modified: Wed, 29 Jul 2026 18:30:13 GMT  
		Size: 10.0 KB (10021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b667116ff9debfd63e5f361e36dbcfe7869e07ade2fa857bad7874307c1c8de`  
		Last Modified: Wed, 29 Jul 2026 18:30:22 GMT  
		Size: 413.8 MB (413794587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:497745dbdf219000797b1369111b66e0385ce81bc2aba2af51665b4b037b13ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2071335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c087293d6aa559e711eeb5744953ea76ba81a26a84263b953efb1ce33f9795`

```dockerfile
```

-	Layers:
	-	`sha256:ff9aa5b4a67eaf486cd3da772cfe12bab490e4f79ae597fb7026254b95cf0a1a`  
		Last Modified: Wed, 29 Jul 2026 18:30:13 GMT  
		Size: 2.1 MB (2050932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ff3640a60299fe99ae9618d13f67d63a7cf4596cd414fac5a64b3e555a15965`  
		Last Modified: Wed, 29 Jul 2026 18:30:13 GMT  
		Size: 20.4 KB (20403 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:2026-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:4839993199bf4d01c7a82417a9268834bf041f3fc04b5610a50442d4f1ea85fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **546.2 MB (546234371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b4b39baf1f65749ee087c755377ec431429382d0c563bdd2721d55511340ae7`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 05:16:21 GMT
LABEL io.openshift.tags="minimal rhel10"
# Tue, 28 Jul 2026 05:16:21 GMT
ENV container oci
# Tue, 28 Jul 2026 05:16:22 GMT
COPY dir:feeae698a2cdcc058529d61ea1753b22f105e57d494ee0931cff3c4acd8a5bbc in /      
# Tue, 28 Jul 2026 05:16:22 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 05:16:22 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 05:16:22 GMT
COPY dir:6f6f971baaa8db0add4d5d0565f015d36fcbb2fdfa35113b426e43fa2a6d648d in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 05:16:22 GMT
COPY dir:6f6f971baaa8db0add4d5d0565f015d36fcbb2fdfa35113b426e43fa2a6d648d in /root/buildinfo/      
# Tue, 28 Jul 2026 05:16:22 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T05:15:59Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-28T05:15:59Z" "architecture"="aarch64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785215492"org.opencontainers.image.created=2026-07-28T05:15:59Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Wed, 29 Jul 2026 18:29:00 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:29:00 GMT
ENV NEO4J_SHA256=659c0b51430f32d9461b3b9cb4e459b1df064f393cb2db0f7fce3858a9092b6e NEO4J_TARBALL=neo4j-enterprise-2026.06.0-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 29 Jul 2026 18:29:00 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
# Wed, 29 Jul 2026 18:29:00 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 29 Jul 2026 18:29:21 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-2026.06.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 29 Jul 2026 18:29:21 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:29:21 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Jul 2026 18:29:21 GMT
VOLUME [/data /logs]
# Wed, 29 Jul 2026 18:29:21 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 29 Jul 2026 18:29:21 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:29:21 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:def8f788978f89d65db64f5249dcadc5ea43cb317a81150e842ddc2a8a2fc4e5`  
		Last Modified: Tue, 28 Jul 2026 06:18:00 GMT  
		Size: 33.1 MB (33060051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa04dd273a1b1cb39083d043c2c51dee3b38b010a358af2d6c4ec0c1284854f2`  
		Last Modified: Wed, 29 Jul 2026 18:29:52 GMT  
		Size: 99.4 MB (99369682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba4617e83177189dd4b1377b5aaa6750313c83c8ee74c1e563d67eaf894da55`  
		Last Modified: Wed, 29 Jul 2026 18:29:27 GMT  
		Size: 10.0 KB (10018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a8260be74ad6423738bcdfbf3c892e93b008dbb70fc49ea5f09960ac17c392`  
		Last Modified: Wed, 29 Jul 2026 18:29:57 GMT  
		Size: 413.8 MB (413794588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:2026-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:ae79fb1975e9d64b26401753abda78f72be69d02a120e9cc9b59f6886faabce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2070700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e4d9ab5e210c0fc427d4ea75bf5244240c10f60112c276a579a73d7cc3fea1`

```dockerfile
```

-	Layers:
	-	`sha256:6d479fa498b6a36b24bca8d3e7cb70b4d325d6ec702bf761f1f54e36a40a5cfc`  
		Last Modified: Wed, 29 Jul 2026 18:29:48 GMT  
		Size: 2.1 MB (2050188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ecc6c200d3362490072e6d66a9b63373af4e2d4aa958629fa4a9ec3bec886594`  
		Last Modified: Wed, 29 Jul 2026 18:29:48 GMT  
		Size: 20.5 KB (20512 bytes)  
		MIME: application/vnd.in-toto+json
