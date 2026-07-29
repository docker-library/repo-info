## `neo4j:5-community-ubi10`

```console
$ docker pull neo4j@sha256:2ed150c31bce91d63e629907dcb8550848462959881fb9bfca0dea46f6fe7411
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:2c503848c1859a52fb232e36e73e74e38667ed5ea27cd52381dc269f4016dfef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278005521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1106d11ac74c41139d96fd11fe0cf307d60e80106e5aa97f4e3ca017229e35bf`
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
# Wed, 29 Jul 2026 18:29:50 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:29:50 GMT
ENV NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 29 Jul 2026 18:29:50 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Wed, 29 Jul 2026 18:29:50 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 29 Jul 2026 18:29:53 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 29 Jul 2026 18:29:53 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:29:53 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Jul 2026 18:29:53 GMT
VOLUME [/data /logs]
# Wed, 29 Jul 2026 18:29:53 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 29 Jul 2026 18:29:53 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:29:53 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:a68f9599a736775f6a58a4febb5d9ab1d587e4e8a335cc1834e4e3b069a1bc2f`  
		Last Modified: Tue, 28 Jul 2026 05:44:24 GMT  
		Size: 34.9 MB (34900503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a975b3b0c2a46e3dc3c4538ad8e73dd247b96849e832d126d0dd76eb63d0e951`  
		Last Modified: Wed, 29 Jul 2026 18:30:14 GMT  
		Size: 86.2 MB (86233429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1be47416d49af41fa959754c0fc51fe884ef84ab5613ebd4528dd2a318c6b8e`  
		Last Modified: Wed, 29 Jul 2026 18:30:11 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a34e5049af51a5c5f4a35d42477fd13606deb19e5971df4d3fac0651a37b857`  
		Last Modified: Wed, 29 Jul 2026 18:30:15 GMT  
		Size: 156.9 MB (156861495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:c631a0bc72705ae5ba4c76ae6b65163f8dd70f2f80fd56cbc05270c35b952bf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 MB (1635094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d31ba540347f5be4c0427b436cae653a9382fc432f2f9387d3f15259ad3f245`

```dockerfile
```

-	Layers:
	-	`sha256:b8e35ae27adb6d27c2340bac96e57ca284fbc70580d7e6b67ae1fdba504f3cd2`  
		Last Modified: Wed, 29 Jul 2026 18:30:10 GMT  
		Size: 1.6 MB (1614145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9660f1d49c503ff68cf73604496d22f4c692fe628dd6075856fc1dda7bf54838`  
		Last Modified: Wed, 29 Jul 2026 18:30:10 GMT  
		Size: 20.9 KB (20949 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:2bb79e584edb0c997770a233c8182bc4d8d2ccdbf99b998fce473586a1c33884
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.1 MB (275091420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6e032d59c4aaaaad8cd22d7e01dad53cc0be62f9363741c917aec06ec64fd6`
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
# Wed, 29 Jul 2026 18:29:16 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:29:16 GMT
ENV NEO4J_SHA256=9d4064cdd87627cae376a741c893848c4faa3c4fb980362b6dae541c203e8072 NEO4J_TARBALL=neo4j-community-5.26.28-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 29 Jul 2026 18:29:16 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
# Wed, 29 Jul 2026 18:29:16 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 29 Jul 2026 18:29:19 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-5.26.28-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 29 Jul 2026 18:29:19 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:29:19 GMT
WORKDIR /var/lib/neo4j
# Wed, 29 Jul 2026 18:29:19 GMT
VOLUME [/data /logs]
# Wed, 29 Jul 2026 18:29:19 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 29 Jul 2026 18:29:19 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:29:19 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:def8f788978f89d65db64f5249dcadc5ea43cb317a81150e842ddc2a8a2fc4e5`  
		Last Modified: Tue, 28 Jul 2026 06:18:00 GMT  
		Size: 33.1 MB (33060051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8225db38b42a335f540c806127e94dab1c2eed7a4fcbbefeb651954e758c6a`  
		Last Modified: Wed, 29 Jul 2026 18:29:39 GMT  
		Size: 85.2 MB (85159692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddcabe7733104368dbb043eddce1f8a33b3765907359a15e112a13e4319d39ed`  
		Last Modified: Wed, 29 Jul 2026 18:29:36 GMT  
		Size: 10.1 KB (10063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de55096dc4b47c23cbcd31028580583f6f8ef16329a105281d7ae3a52da33977`  
		Last Modified: Wed, 29 Jul 2026 18:29:40 GMT  
		Size: 156.9 MB (156861582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:473f327fab2aead50ece7ab5e834cdd3b4ae176b02032aa9d9aaa35b2270ae6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.6 MB (1634514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25284a93af534d70df7ee33ec35f41fdb1f1d7678a5dd07f9b499b86c6835f5`

```dockerfile
```

-	Layers:
	-	`sha256:ba90ab71a9c5fa52e308227a49d1c34eb425dbb649254eb35c616b8d8d79545d`  
		Last Modified: Wed, 29 Jul 2026 18:29:36 GMT  
		Size: 1.6 MB (1613428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4f99a1eb2717c4cdb6e4a27980bd07de64e08ad5ce9e8776db731e5387abcac`  
		Last Modified: Wed, 29 Jul 2026 18:29:36 GMT  
		Size: 21.1 KB (21086 bytes)  
		MIME: application/vnd.in-toto+json
