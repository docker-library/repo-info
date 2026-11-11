## `percona:psmdb-8.3.13`

```console
$ docker pull percona@sha256:59510c905231ab3ba334e70770abc2ba2ca82f73c5a198c499d39d81515d484f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3.13` - linux; amd64

```console
$ docker pull percona@sha256:c6b2c575379eac2bf8674abe3cb8ba222a56b2ef445bd1b3d8617b7d54f80611
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.7 MB (393672181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c20c29513d027941e211801198fe3d823ffc6e71139fb011524afaa238474023`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:04 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.expose-services=""
# Mon, 09 Nov 2026 01:08:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 09 Nov 2026 01:08:05 GMT
ENV container oci
# Mon, 09 Nov 2026 01:08:06 GMT
COPY dir:9eb7fe1483abb86fafcd0fbf84cfecbc7c9615d954a2774b27c93dfb190ebd65 in /      
# Mon, 09 Nov 2026 01:08:06 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 09 Nov 2026 01:08:06 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /usr/share/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
COPY dir:113d0492bea3970cfccd46af4e646444dcba2306c37393f7867d936019c7530b in /root/buildinfo/      
# Mon, 09 Nov 2026 01:08:07 GMT
LABEL "org.opencontainers.image.created"="2026-11-09T01:06:50Z" "org.opencontainers.image.revision"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "build-date"="2026-11-09T01:06:50Z" "architecture"="x86_64" "vcs-ref"="a318bccac4792b0ffc2c8d2a7b700e69ba665079" "vcs-type"="git" "release"="1794186349"org.opencontainers.image.created=2026-11-09T01:06:50Z,org.opencontainers.image.revision=a318bccac4792b0ffc2c8d2a7b700e69ba665079
# Tue, 10 Nov 2026 21:47:03 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 10 Nov 2026 21:47:03 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 10 Nov 2026 21:47:03 GMT
ENV PSMDB_VERSION=8.3.13-4
# Tue, 10 Nov 2026 21:47:03 GMT
ENV OS_VER=el9
# Tue, 10 Nov 2026 21:47:03 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Tue, 10 Nov 2026 21:47:03 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Tue, 10 Nov 2026 21:47:03 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Tue, 10 Nov 2026 21:47:03 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Tue, 10 Nov 2026 21:47:03 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Tue, 10 Nov 2026 21:47:03 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 10 Nov 2026 21:47:03 GMT
ENV PSMDB_REPO=release
# Tue, 10 Nov 2026 21:47:03 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Tue, 10 Nov 2026 21:47:03 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 10 Nov 2026 21:47:03 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 10 Nov 2026 21:47:03 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 10 Nov 2026 21:47:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 10 Nov 2026 21:47:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 10 Nov 2026 21:47:27 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 10 Nov 2026 21:47:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 10 Nov 2026 21:47:27 GMT
ENV GOSU_VERSION=1.11
# Tue, 10 Nov 2026 21:47:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 10 Nov 2026 21:47:29 GMT
VOLUME [/data/db]
# Tue, 10 Nov 2026 21:47:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 10 Nov 2026 21:47:30 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 10 Nov 2026 21:47:30 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 10 Nov 2026 21:47:30 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 10 Nov 2026 21:47:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Nov 2026 21:47:30 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 10 Nov 2026 21:47:30 GMT
USER 1001
# Tue, 10 Nov 2026 21:47:30 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:2789facb1a5b2775fea7adde25fbe9982aa5639bcda32a3a035159eb54c6ad35`  
		Last Modified: Mon, 09 Nov 2026 03:11:14 GMT  
		Size: 40.7 MB (40682185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d407543e4cf78ce0bd12914d10ae567281fc60bdd61108ebf177eed57e017e95`  
		Last Modified: Tue, 10 Nov 2026 21:48:07 GMT  
		Size: 9.0 MB (8965345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d8caf3638ca015e925080271a34f37f30c67c236625fecd1630eb67071f49e`  
		Last Modified: Tue, 10 Nov 2026 21:48:13 GMT  
		Size: 343.1 MB (343071725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8c77c6c54c3bfa1da02d5b80d532613933e3018a51f6746bac61d8704a85ab`  
		Last Modified: Tue, 10 Nov 2026 21:48:07 GMT  
		Size: 1.6 KB (1638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a226620bc1a9abfbc2b4e8e77cd2be4276515f037c7bfd3703c287915a93a2c`  
		Last Modified: Tue, 10 Nov 2026 21:48:07 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdc61624ec8fc934f2f00b8fcab7a4abd371210ed5c1d9ec813ed1c3f03e8a5`  
		Last Modified: Tue, 10 Nov 2026 21:48:08 GMT  
		Size: 10.6 KB (10576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925355c69ed7e0ba5e7b22d8f9847706b1f548bafb91dbe3e78fc84fffc1a08f`  
		Last Modified: Tue, 10 Nov 2026 21:48:08 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b928fe154a879380d709205644d128cb89c679aa283ffedc37cab6e405b57a7`  
		Last Modified: Tue, 10 Nov 2026 21:48:08 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15de77cec1b273fe03359c4c40be7140b244067effb42e548cd13d66dd416ca`  
		Last Modified: Tue, 10 Nov 2026 21:48:09 GMT  
		Size: 4.0 KB (3957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679a028a2c346b87ec6395e16c46e93f6f3cb131700733121d7b24ce35a5e1a7`  
		Last Modified: Tue, 10 Nov 2026 21:48:09 GMT  
		Size: 5.0 KB (4960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3.13` - unknown; unknown

```console
$ docker pull percona@sha256:6ed4cd09c73dc75dd94c8dcb7e2b0541fb3f3fce2ae2d9088b8261059596cc08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c436357b634ade2f68ac0497892657737d10614be317baf3fb93ff053c8d50e5`

```dockerfile
```

-	Layers:
	-	`sha256:2dfae8c87abd2f023a672a930ab7d6d91d80ab4400d16713f5e478c8bed08c24`  
		Last Modified: Tue, 10 Nov 2026 21:48:07 GMT  
		Size: 33.9 KB (33857 bytes)  
		MIME: application/vnd.in-toto+json
