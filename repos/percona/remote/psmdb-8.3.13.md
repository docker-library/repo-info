## `percona:psmdb-8.3.13`

```console
$ docker pull percona@sha256:4e9e636f8d45b945f2ae54ea4d199085bdc628af8f0e14c735d86dbbdd77009a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.3.13` - linux; amd64

```console
$ docker pull percona@sha256:50f58a36daf3b578978b85f26ef479691f316590d8d427177a90b7ea10c6160f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.9 MB (393912343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7924f39f6b21dfcf9208b66447bcd0e1c17761de0753c9011c5470b0e92568`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:40:32 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Nov 2026 21:40:32 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 18 Nov 2026 21:40:32 GMT
ENV PSMDB_VERSION=8.3.13-4
# Wed, 18 Nov 2026 21:40:32 GMT
ENV OS_VER=el9
# Wed, 18 Nov 2026 21:40:32 GMT
ENV FULL_PERCONA_VERSION=8.3.13-4.el9
# Wed, 18 Nov 2026 21:40:32 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Wed, 18 Nov 2026 21:40:32 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Wed, 18 Nov 2026 21:40:32 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Wed, 18 Nov 2026 21:40:32 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Wed, 18 Nov 2026 21:40:32 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Nov 2026 21:40:32 GMT
ENV PSMDB_REPO=release
# Wed, 18 Nov 2026 21:40:32 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 18 Nov 2026 21:40:32 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 18 Nov 2026 21:40:32 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 18 Nov 2026 21:40:32 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 18 Nov 2026 21:40:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-83 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-83/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 18 Nov 2026 21:40:55 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 18 Nov 2026 21:40:56 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 18 Nov 2026 21:40:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 18 Nov 2026 21:40:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Nov 2026 21:40:57 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 18 Nov 2026 21:40:57 GMT
VOLUME [/data/db]
# Wed, 18 Nov 2026 21:40:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 18 Nov 2026 21:40:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 18 Nov 2026 21:40:58 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 18 Nov 2026 21:40:58 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:40:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Nov 2026 21:40:58 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 18 Nov 2026 21:40:58 GMT
USER 1001
# Wed, 18 Nov 2026 21:40:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f149095f2ea0f4fd8a46f7d851bebdc430456b3427500723bb289a084dbbe5a2`  
		Last Modified: Wed, 18 Nov 2026 21:41:34 GMT  
		Size: 9.2 MB (9206912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92cd61d7f2e828d859a7664765c3b6e10baae481c18f31df3342f1d1a9c05bb`  
		Last Modified: Wed, 18 Nov 2026 21:41:40 GMT  
		Size: 343.1 MB (343076389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d934e39cab39eb8e4b15dfbef054c5498a3577ddae0c054ad16dcb4605cd7198`  
		Last Modified: Wed, 18 Nov 2026 21:41:34 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34258dc6783b293508c48e1f5a79c75d74c277315e842079d196989af4c56ec5`  
		Last Modified: Wed, 18 Nov 2026 21:41:34 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4658b0b4bcaaec313e93fe6866f65f372e3fd0e2132a9235a6fd6d829f219bc9`  
		Last Modified: Wed, 18 Nov 2026 21:41:35 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e19736e9bc8648f11c6a0a6b08aeadae09097a78e863a68965e9f73c16e7df`  
		Last Modified: Wed, 18 Nov 2026 21:41:35 GMT  
		Size: 914.5 KB (914513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5698a8427afd907fb7f488980ec00e41bd5d35261d4246400ad3ac9fe156be`  
		Last Modified: Wed, 18 Nov 2026 21:41:36 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919637cc29e244bee9baf2cb5409e0db4600aa7e5c1572801f4186eda5ae5b59`  
		Last Modified: Wed, 18 Nov 2026 21:41:36 GMT  
		Size: 4.0 KB (3955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9898c2671801f120378b10769b1b47dc7fd5991b8b5d06c4b58a9e1bfb2994`  
		Last Modified: Wed, 18 Nov 2026 21:41:37 GMT  
		Size: 5.0 KB (4960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.3.13` - unknown; unknown

```console
$ docker pull percona@sha256:c8c2c593f5705890a36674e1d56eef2021872292cb2bbf4b954b701841bdc441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.9 KB (33857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f52e70cccea5fde68010e9222b0897eda4fa987e18e62c0df58905642e875f0`

```dockerfile
```

-	Layers:
	-	`sha256:8907b5c17098d6c3b4d9b8f4760e8e266770d27c79b7a25066cb6ae631c7616c`  
		Last Modified: Wed, 18 Nov 2026 21:41:34 GMT  
		Size: 33.9 KB (33857 bytes)  
		MIME: application/vnd.in-toto+json
