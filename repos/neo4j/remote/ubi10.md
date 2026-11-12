## `neo4j:ubi10`

```console
$ docker pull neo4j@sha256:1ba5f44a2e2c7aba20b14af6a44010720380ea8de8b8c12c17cb2036a699b59a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:18b01ee498f6f392c591e385b7ef14b7f3f693ab5edd3228b4430d84cb08b40e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.0 MB (381974603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9047fb4834736e567d4b725169e520ec02cb460a68041d67c2423cf0da183b0d`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:30:29 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:30:29 GMT
ENV container oci
# Wed, 04 Nov 2026 23:30:30 GMT
COPY dir:4d560116149d68c45acaa63b56ff293dcae47fabcda8ad6571764b0825e47e6e in /      
# Wed, 04 Nov 2026 23:30:30 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:30:30 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:30:31 GMT
COPY dir:bbba34ab9bdf461e4067b9dfcb1aad81c9c3962e23b001e64947a0a66c8f0a05 in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:30:31 GMT
COPY dir:bbba34ab9bdf461e4067b9dfcb1aad81c9c3962e23b001e64947a0a66c8f0a05 in /root/buildinfo/      
# Wed, 04 Nov 2026 23:30:31 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:30:06Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:30:06Z" "architecture"="x86_64" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:30:06Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:51:57 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:51:57 GMT
ENV NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 11 Nov 2026 22:51:57 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Wed, 11 Nov 2026 22:51:57 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 11 Nov 2026 22:52:09 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 11 Nov 2026 22:52:09 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:52:09 GMT
WORKDIR /var/lib/neo4j
# Wed, 11 Nov 2026 22:52:09 GMT
VOLUME [/data /logs]
# Wed, 11 Nov 2026 22:52:09 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 11 Nov 2026 22:52:09 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:52:09 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:b678bad408ae33518fc2717ea9f3a0b3756774b7413325a1b7450af23c75bef9`  
		Last Modified: Wed, 11 Nov 2026 05:41:47 GMT  
		Size: 35.0 MB (34986613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54178f41bc0f42f26ce33aff1465c2a3ef834bc98ecac307bdf287f2afd6317`  
		Last Modified: Wed, 11 Nov 2026 22:52:35 GMT  
		Size: 100.8 MB (100802482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1437a63321af7b776c41b6db45b7ed14f8159e02e580f78d85afb36d2d3d898d`  
		Last Modified: Wed, 11 Nov 2026 22:52:30 GMT  
		Size: 10.0 KB (10042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d7fd614ad0eca604a3df5c5171f16a35096487137d69037ccd53504ba275a4`  
		Last Modified: Wed, 11 Nov 2026 22:52:37 GMT  
		Size: 246.2 MB (246175434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:0f7a4aeb8e4758605dc9ee80c28b952a50deb8eefcbf459cdf6cbecce7c434c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1750640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47760cd37aef5994865697aa5fb15278d2777ac03bd49b0bab30e8208f2f1430`

```dockerfile
```

-	Layers:
	-	`sha256:d7187506e83802643a41da868ec24e4973ff98a1938e9a724e0b559d0ae74398`  
		Last Modified: Wed, 11 Nov 2026 22:52:31 GMT  
		Size: 1.7 MB (1729034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4375f28908d730fefdfd36bd6cea67ae2c13af8d0231a0cfce62f25d2b00afbb`  
		Last Modified: Wed, 11 Nov 2026 22:52:30 GMT  
		Size: 21.6 KB (21606 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:faa3ebdadcc749ac0ccd373b3b6fdfc2e2ea7ee5b33d464dceb0e43e86bbb5d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.7 MB (378689744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11ca59ae1f8c6d16a5831c2587cd2ed45b8ccd3d8c067fc3258774a5ca79a69a`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 04 Nov 2026 23:32:59 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.3"       cpe="cpe:/o:redhat:enterprise_linux:10.3"       distribution-scope="public"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.openshift.expose-services=""
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 04 Nov 2026 23:33:00 GMT
LABEL compose-id="RHEL-10.3-updates-20261104.2"
# Wed, 04 Nov 2026 23:33:00 GMT
ENV container oci
# Wed, 04 Nov 2026 23:33:01 GMT
COPY dir:00dfc6e48ac5d871b75ee77968140e118f5bfdd254e76e400fe5bc8327903cc7 in /      
# Wed, 04 Nov 2026 23:33:02 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 04 Nov 2026 23:33:02 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 23:33:02 GMT
COPY dir:09d1c8b8d9e999b3fc5ed6d1285e597b23e8ff69aefeac9bd5c5c8826b05d8df in /usr/share/buildinfo/      
# Wed, 04 Nov 2026 23:33:03 GMT
COPY dir:09d1c8b8d9e999b3fc5ed6d1285e597b23e8ff69aefeac9bd5c5c8826b05d8df in /root/buildinfo/      
# Wed, 04 Nov 2026 23:33:03 GMT
LABEL "org.opencontainers.image.created"="2026-11-04T23:32:32Z" "org.opencontainers.image.revision"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "build-date"="2026-11-04T23:32:32Z" "architecture"="aarch64" "vcs-ref"="b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6" "vcs-type"="git" "release"="1793834883"org.opencontainers.image.created=2026-11-04T23:32:32Z,org.opencontainers.image.revision=b26e7a26c2aeb0102f0b482d43b8d7c4f772a5c6
# Wed, 11 Nov 2026 22:11:22 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-25-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 11 Nov 2026 22:11:22 GMT
ENV NEO4J_SHA256=fcbccee832175fd8b873ca7d8228dbde4cb5cce43f9053833cc7517dc4dd6f31 NEO4J_TARBALL=neo4j-community-2026.10.2-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 11 Nov 2026 22:11:22 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
# Wed, 11 Nov 2026 22:11:22 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 11 Nov 2026 22:11:28 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-community-2026.10.2-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 11 Nov 2026 22:11:28 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 22:11:28 GMT
WORKDIR /var/lib/neo4j
# Wed, 11 Nov 2026 22:11:28 GMT
VOLUME [/data /logs]
# Wed, 11 Nov 2026 22:11:28 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 11 Nov 2026 22:11:28 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 11 Nov 2026 22:11:28 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:be0565b917b07cbdde393c02afeb603fae99c9ecaaabb5caf02a1f90e2f13b13`  
		Last Modified: Wed, 11 Nov 2026 06:31:36 GMT  
		Size: 33.0 MB (33046604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fe371b1c56ed057244fc270555bd8e864f1017b1cb0b96318cbdf6f4d1084a`  
		Last Modified: Wed, 11 Nov 2026 22:11:52 GMT  
		Size: 99.5 MB (99457663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc6042a715b303abe78a8133cfa4e613c826e9218e535860c098ae26c803dbd`  
		Last Modified: Wed, 11 Nov 2026 22:11:48 GMT  
		Size: 10.0 KB (10043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5d3daba311d6a95fca6300f25f89291b20f8046a30ca97363bf497ded7b5b2`  
		Last Modified: Wed, 11 Nov 2026 22:11:55 GMT  
		Size: 246.2 MB (246175402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:6e472cc088c578c52481395dffdee2edd47feedab71c4ff93725fa8cf588ee1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.8 MB (1750101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675a2b34570ea788001e69e5afa789f765b02169857be968d302aa97d6d978b9`

```dockerfile
```

-	Layers:
	-	`sha256:1572a8612806feb175d9b8efa8ccf20a5a0e22f94954c559002a1c2b14432dec`  
		Last Modified: Wed, 11 Nov 2026 22:11:49 GMT  
		Size: 1.7 MB (1728338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf604938813900128857f0d1c0024c2a04f1ee049b35ed4451a8f936851df838`  
		Last Modified: Wed, 11 Nov 2026 22:11:48 GMT  
		Size: 21.8 KB (21763 bytes)  
		MIME: application/vnd.in-toto+json
