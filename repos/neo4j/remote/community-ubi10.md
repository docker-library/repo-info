## `neo4j:community-ubi10`

```console
$ docker pull neo4j@sha256:3ff7f77de90ca41f472f2e745b57eb1a21d847fc2a56bd5f2a8e1efb68639a4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:community-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:56cad381e0cf3ada200917fa50554f8b636590a8cb1c759171efb65bd18245e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.3 MB (394250420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3522423447d1cf19d40d7250fdd0fa2d27053d7842df777da95589a303e4bdaa`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:46:35 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:46:35 GMT
ENV container oci
# Wed, 29 Jul 2026 13:46:35 GMT
COPY dir:8b54f62a83609f7ca7db35de99b97ad887016d7d343f267970f635c2bcfb9878 in /      
# Wed, 29 Jul 2026 13:46:35 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:46:35 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:46:36 GMT
COPY dir:a2f8f5692e4a30fca4b2fd34555df94b325e49a14060efd4825b60aed3fdb4a9 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:46:36 GMT
COPY dir:a2f8f5692e4a30fca4b2fd34555df94b325e49a14060efd4825b60aed3fdb4a9 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:46:36 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:46:17Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:46:17Z" "architecture"="x86_64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:46:17Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:15:28 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:15:28 GMT
ENV NEO4J_SHA256=1dcf62e7e8035e71732b86532b9f8e3219ce8956bd06940d5a0024696727192a NEO4J_TARBALL=neo4j-community-2026.06.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 31 Jul 2026 00:15:28 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
# Fri, 31 Jul 2026 00:15:28 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 31 Jul 2026 00:15:41 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Fri, 31 Jul 2026 00:15:41 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:15:41 GMT
WORKDIR /var/lib/neo4j
# Fri, 31 Jul 2026 00:15:41 GMT
VOLUME [/data /logs]
# Fri, 31 Jul 2026 00:15:41 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 31 Jul 2026 00:15:41 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:15:41 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ddfe294a9804613156d3672398df770ff04349398a4be9dea00a32464465ed11`  
		Last Modified: Wed, 29 Jul 2026 14:40:41 GMT  
		Size: 34.9 MB (34900220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ca241a50b3f3dd516b0186605f3dcb668d9cd22128346976c621f125bb32ae8`  
		Last Modified: Fri, 31 Jul 2026 00:16:06 GMT  
		Size: 100.7 MB (100701781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf048e04731742146846e28618136becd7bdddae5e0509f1e242669d898db282`  
		Last Modified: Fri, 31 Jul 2026 00:16:03 GMT  
		Size: 10.0 KB (10017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a841161933886cfda0d16317a8a6b1a3f87104b44d9c9fbb59cf2bd5f3d960c`  
		Last Modified: Fri, 31 Jul 2026 00:16:09 GMT  
		Size: 258.6 MB (258638370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:6a29aa50913bdb08ca581c10a7ecf89408c370d019962521251811053ec42732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1760889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a952fcdb17d580a70ccc4d806ffc562c935ba532926816f0746bede440094d20`

```dockerfile
```

-	Layers:
	-	`sha256:fa54a3c7049de3668045edb140ab2d03cd227c4287edbd3149337f3e1d1d9c37`  
		Last Modified: Fri, 31 Jul 2026 00:16:03 GMT  
		Size: 1.7 MB (1739282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36c1ae47472d00d6e4f179f6afe43c29d2e562324f8f5acc54488a5d9a4d9bf4`  
		Last Modified: Fri, 31 Jul 2026 00:16:02 GMT  
		Size: 21.6 KB (21607 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:community-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:f39ffc8b91bf82333dd56f251a0ca574282ecb6efbef189c9078f9fd0371495b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.1 MB (391078433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b06c9d1055439b5fb45ced0e8d883f6fdce7451e30eb111872bca9a21489f3a`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 13:49:53 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 29 Jul 2026 13:49:53 GMT
ENV container oci
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:6494f0a7f26288c5d33733a2fc6cb0725994b3f7d21bbebda5c614e2d2e0b030 in /      
# Wed, 29 Jul 2026 13:49:54 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 13:49:54 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:fec0a214d0310fdf953bc240b28235ee5011fef40c975541e9dcd78832e7e9c9 in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 13:49:54 GMT
COPY dir:fec0a214d0310fdf953bc240b28235ee5011fef40c975541e9dcd78832e7e9c9 in /root/buildinfo/      
# Wed, 29 Jul 2026 13:49:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T13:49:30Z" "org.opencontainers.image.revision"="f473c706206356d94dd0dd94948a1be8c065fc47" "build-date"="2026-07-29T13:49:30Z" "architecture"="aarch64" "vcs-ref"="f473c706206356d94dd0dd94948a1be8c065fc47" "vcs-type"="git" "release"="1785332632"org.opencontainers.image.created=2026-07-29T13:49:30Z,org.opencontainers.image.revision=f473c706206356d94dd0dd94948a1be8c065fc47
# Fri, 31 Jul 2026 00:18:29 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 00:18:29 GMT
ENV NEO4J_SHA256=1dcf62e7e8035e71732b86532b9f8e3219ce8956bd06940d5a0024696727192a NEO4J_TARBALL=neo4j-community-2026.06.0-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Fri, 31 Jul 2026 00:18:29 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
# Fri, 31 Jul 2026 00:18:29 GMT
COPY ./local-package/* /startup/ # buildkit
# Fri, 31 Jul 2026 00:18:35 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.06.0-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Fri, 31 Jul 2026 00:18:35 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 00:18:35 GMT
WORKDIR /var/lib/neo4j
# Fri, 31 Jul 2026 00:18:35 GMT
VOLUME [/data /logs]
# Fri, 31 Jul 2026 00:18:35 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Fri, 31 Jul 2026 00:18:35 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:18:35 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:4993068ac9f96458b90955f8347fdb41bb56d5cdbecf98080b50a406705a5ad7`  
		Last Modified: Wed, 29 Jul 2026 14:40:40 GMT  
		Size: 33.1 MB (33059937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95afbf03d714da6a01f7b4c8b84c2b5af105df615006e1c2f651aba314174dca`  
		Last Modified: Fri, 31 Jul 2026 00:18:59 GMT  
		Size: 99.4 MB (99370043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b41893f7d43305090b262489769fac17b3c2f6308ea715d9a6bff078e26bad`  
		Last Modified: Fri, 31 Jul 2026 00:18:55 GMT  
		Size: 10.0 KB (10019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1165ac543cbc7a9d78f606b3ba2b9d5324c93cab9b3d71f391b5da292986f149`  
		Last Modified: Fri, 31 Jul 2026 00:19:02 GMT  
		Size: 258.6 MB (258638402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:community-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:1e5f754f1de202cd00641f632f4b1b4875be8eb15118441a96be041a85e94486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1760350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd828f66d390f9c6e2b8f44a13c08cd1c2147c79d978061a0a3cc5e8b84260c`

```dockerfile
```

-	Layers:
	-	`sha256:4d12f4ecedc3563635128cafd943e2a5aef945449fa12abddd7eee9396acc852`  
		Last Modified: Fri, 31 Jul 2026 00:18:55 GMT  
		Size: 1.7 MB (1738586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8bd1838dfebe9ee656dac6d8e8367b6c69788e1d3721c3a64a158b1d4b0b2cf`  
		Last Modified: Fri, 31 Jul 2026 00:18:55 GMT  
		Size: 21.8 KB (21764 bytes)  
		MIME: application/vnd.in-toto+json
