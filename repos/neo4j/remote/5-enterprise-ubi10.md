## `neo4j:5-enterprise-ubi10`

```console
$ docker pull neo4j@sha256:74a0bd63e179b66ed9002e6b90c15425c908fb0f565ec38c84cdfd92e369c180
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `neo4j:5-enterprise-ubi10` - linux; amd64

```console
$ docker pull neo4j@sha256:b7886c524dae86d45190c9c9d38f90994d7c1ee2f0548b5d69e43d0c704911d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.4 MB (639367125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:982a954752863367963c834fe502f3e7b2805262cffe11054e28c0b8c665c9ea`
-	Entrypoint: `["tini","-g","--","\/startup\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.component="ubi10-minimal-container"       name="ubi10/ubi-minimal"       version="10.2"       cpe="cpe:/o:redhat:enterprise_linux:10.2"       distribution-scope="public"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 10."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 10 Minimal"
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.expose-services=""
# Wed, 07 Oct 2026 04:15:04 GMT
LABEL io.openshift.tags="minimal rhel10"
# Wed, 07 Oct 2026 04:15:04 GMT
ENV container oci
# Wed, 07 Oct 2026 04:15:04 GMT
COPY dir:7c2bbbb7f5210f15511c07d2c4001d7fe8f4d068648bb2a4ad6d3eda0100bdce in /      
# Wed, 07 Oct 2026 04:15:04 GMT
COPY file:5de33b5fc08b00635bccf9134a18978dba13e2250aa51838f9969515a3957847 in /etc/yum.repos.d/.      
# Wed, 07 Oct 2026 04:15:04 GMT
CMD ["/bin/bash"]
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /usr/share/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
COPY dir:407ad97fdfee3ba60490bbe869c7329b5a73e055c7aead0683d992350fef8781 in /root/buildinfo/      
# Wed, 07 Oct 2026 04:15:05 GMT
LABEL "org.opencontainers.image.created"="2026-10-07T04:14:06Z" "org.opencontainers.image.revision"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "build-date"="2026-10-07T04:14:06Z" "architecture"="x86_64" "vcs-ref"="b83a27d213c66aa5d7fbbd815fc09a0b8816c676" "vcs-type"="git" "release"="1791346265"org.opencontainers.image.created=2026-10-07T04:14:06Z,org.opencontainers.image.revision=b83a27d213c66aa5d7fbbd815fc09a0b8816c676
# Wed, 07 Oct 2026 22:09:09 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:09:09 GMT
ENV NEO4J_SHA256=191b06ef05643360a8cb326e48222fc0a9d857085082d88a7a32076222167fd3 NEO4J_TARBALL=neo4j-enterprise-5.26.31-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 07 Oct 2026 22:09:09 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
# Wed, 07 Oct 2026 22:09:09 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 07 Oct 2026 22:09:19 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 07 Oct 2026 22:09:19 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:09:19 GMT
WORKDIR /var/lib/neo4j
# Wed, 07 Oct 2026 22:09:19 GMT
VOLUME [/data /logs]
# Wed, 07 Oct 2026 22:09:19 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 07 Oct 2026 22:09:19 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 07 Oct 2026 22:09:19 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:7622e8b6ee5965126c68b18861709ea82ce88ca92ffc0ce29f05c5a215e20b96`  
		Last Modified: Wed, 07 Oct 2026 06:14:48 GMT  
		Size: 35.0 MB (34950412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10246be24f3af25ceff011c0d2809192126103af4fecc9d0c1974ded64d4010a`  
		Last Modified: Wed, 07 Oct 2026 22:09:49 GMT  
		Size: 86.3 MB (86293222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55437916ad00452376d2fe5e46a3c079347697819d0d9547d64d384f7904757c`  
		Last Modified: Wed, 07 Oct 2026 22:09:45 GMT  
		Size: 10.1 KB (10061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2892ea329c7f57c7c605649d9636c63deae7cc4cdd4eba0d58aa6895eb136deb`  
		Last Modified: Wed, 07 Oct 2026 22:09:56 GMT  
		Size: 518.1 MB (518113398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:56f67edde08b9c942fd78b1f6eeae228f6892d112ae8dbe848ab2d6331a6fab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1992833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7298e796d2c98da7a182fabb5cfd6167fd67c767a93611a861e191c512bcdb`

```dockerfile
```

-	Layers:
	-	`sha256:03dee5b72320a0d5cffc9d882605873d292f7ec948755781339ce78b50a54434`  
		Last Modified: Wed, 07 Oct 2026 22:09:46 GMT  
		Size: 2.0 MB (1972780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1e17fa7618e5f130360f38fbbb71924b98c7e8187527acb7168d2a931f9624f`  
		Last Modified: Wed, 07 Oct 2026 22:09:45 GMT  
		Size: 20.1 KB (20053 bytes)  
		MIME: application/vnd.in-toto+json

### `neo4j:5-enterprise-ubi10` - linux; arm64 variant v8

```console
$ docker pull neo4j@sha256:18f7e385e492ed7acc6fe7cf6d5cfcca506d2461b9b441046c747c80475fbb40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.5 MB (636534611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:356712fc74efe4348e75076d3269e09c13355f03449475425567aa5f5c92b4e9`
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
# Wed, 07 Oct 2026 22:08:53 GMT
RUN set -eux;     arch="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${arch}" in         'x86_64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini";             tini_sha="93dcc18adc78c65a028a84799ecf8ad40c936fdfc5f2a57b1acda5a8117fa82c";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-x86_64";             suexec_sha="675e7b454ad96e7631029f0b71c9ad5a6c23b553a8952ed528de1e591ca7cef0";             ;;         'aarch64')             tini_url="https://github.com/krallin/tini/releases/download/v0.19.0/tini-arm64";             tini_sha="07952557df20bfd2a95f9bef198b445e006171969499a1d361bd9e6f8e5e0e81";             suexec_url="https://github.com/ncopa/su-exec/releases/download/v0.3/su-exec-static-v0.3-arm64";             suexec_sha="a08773d4af76a30371f8d1c93e86e8ac2b0379c9e75dce9d694c5059b0544909";             ;;         *) echo >&2 "Neo4j does not currently have a docker image for architecture $arch"; exit 1 ;;     esac;     microdnf install -y --nodocs         findutils         gnupg         gzip         hostname         java-21-openjdk-headless         jq         procps         tar         wget         which;     wget -q ${tini_url} -O /usr/bin/tini;     wget -q ${tini_url}.asc -O tini.asc;     echo "${tini_sha}"  /usr/bin/tini | sha256sum -c --strict --quiet;     chmod a+x /usr/bin/tini;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys         595E85A6B1B4779EA4DAAEC70B588DFF0527A9B7         B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify tini.asc /usr/bin/tini;     wget -q ${suexec_url} -O /usr/bin/su-exec;     echo "${suexec_sha}" /usr/bin/su-exec | sha256sum -c;     chmod +x /usr/bin/su-exec;     gpgconf --kill all;     rm -rf "$GNUPGHOME" /tini.asc;     microdnf clean all # buildkit
# Wed, 07 Oct 2026 22:08:53 GMT
ENV NEO4J_SHA256=191b06ef05643360a8cb326e48222fc0a9d857085082d88a7a32076222167fd3 NEO4J_TARBALL=neo4j-enterprise-5.26.31-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j LANG=C.UTF-8
# Wed, 07 Oct 2026 22:08:53 GMT
ARG NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
# Wed, 07 Oct 2026 22:08:53 GMT
COPY ./local-package/* /startup/ # buildkit
# Wed, 07 Oct 2026 22:09:04 GMT
# ARGS: NEO4J_URI=https://dist.neo4j.org/neo4j-enterprise-5.26.31-unix.tar.gz
RUN set -eux;     groupadd --gid 7474 --system neo4j && useradd --uid 7474 --system --no-create-home --home "${NEO4J_HOME}" --gid neo4j neo4j;     curl --fail --silent --show-error --location --remote-name ${NEO4J_URI};     echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -c --strict --quiet;     tar --extract --file ${NEO4J_TARBALL} --directory /var/lib;     mv /var/lib/neo4j-* "${NEO4J_HOME}";     rm ${NEO4J_TARBALL};     sed -i 's/Package Type:.*/Package Type: docker ubi10/' $NEO4J_HOME/packaging_info;     mv /startup/neo4j-admin-report.sh "${NEO4J_HOME}"/bin/neo4j-admin-report;     mv "${NEO4J_HOME}"/data /data;     mv "${NEO4J_HOME}"/logs /logs;     chown -R neo4j:neo4j /data;     chmod -R 777 /data;     chown -R neo4j:neo4j /logs;     chmod -R 777 /logs;     chown -R neo4j:neo4j "${NEO4J_HOME}";     chmod -R 777 "${NEO4J_HOME}";     chmod -R 755 "${NEO4J_HOME}/bin";     ln -s /data "${NEO4J_HOME}"/data;     ln -s /logs "${NEO4J_HOME}"/logs # buildkit
# Wed, 07 Oct 2026 22:09:04 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 22:09:04 GMT
WORKDIR /var/lib/neo4j
# Wed, 07 Oct 2026 22:09:04 GMT
VOLUME [/data /logs]
# Wed, 07 Oct 2026 22:09:04 GMT
EXPOSE map[7473/tcp:{} 7474/tcp:{} 7687/tcp:{}]
# Wed, 07 Oct 2026 22:09:04 GMT
ENTRYPOINT ["tini" "-g" "--" "/startup/docker-entrypoint.sh"]
# Wed, 07 Oct 2026 22:09:04 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:a74897f26d06e9dd89c15728fca5ccd6144a0eb4a8a988677b35be5ef16025a2`  
		Last Modified: Wed, 07 Oct 2026 06:15:00 GMT  
		Size: 33.2 MB (33194468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7387ca2f413e67854254888afc119c186f4923f26188de03c68ee30899ef2a9f`  
		Last Modified: Wed, 07 Oct 2026 22:09:38 GMT  
		Size: 85.2 MB (85216670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce32af8f1c3cae7ac63358fce985598301b2e09ab46236533ed90ea343c88675`  
		Last Modified: Wed, 07 Oct 2026 22:09:34 GMT  
		Size: 10.1 KB (10062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cdb835300f38cacffaebc3c248e0315459babde8ad12c581b82778fc7378c8d`  
		Last Modified: Wed, 07 Oct 2026 22:09:48 GMT  
		Size: 518.1 MB (518113379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `neo4j:5-enterprise-ubi10` - unknown; unknown

```console
$ docker pull neo4j@sha256:b79fa997da5338f764cf16e8906f31033da12bd883a8a90200a11cca8298e6a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 MB (1992181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51a79d3aba909d74eb1fbcc7cf3c1309f4eed044afce2e59917d515edb1ce718`

```dockerfile
```

-	Layers:
	-	`sha256:c90affb77ac7ec3dbb66d3757c12324fbf2721cadf1f252802cdd2a9e2c02c7b`  
		Last Modified: Wed, 07 Oct 2026 22:09:34 GMT  
		Size: 2.0 MB (1972027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a9254c0442e2a9fd69ebabc9f74e8e5b6aae5fdd6e8df8d00da074ed32059c9`  
		Last Modified: Wed, 07 Oct 2026 22:09:34 GMT  
		Size: 20.2 KB (20154 bytes)  
		MIME: application/vnd.in-toto+json
