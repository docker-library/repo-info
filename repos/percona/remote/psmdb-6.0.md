## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:494be21303b67a9fb67d6c6feb3a9e9636ddce49282aaf6f159a67ea9cf154e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:1ac52cc878d5bb5b5e1d5e2dd130d2a2a56b4249b9141834e102d87e58fe6463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.4 MB (280350123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa9291189a0c53454c775c2bbdd496a22c507a103001b5a55e89ca023fc3ff46`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:48:36 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 15 Sep 2026 22:48:36 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 15 Sep 2026 22:48:36 GMT
ENV PSMDB_VERSION=6.0.29-23
# Tue, 15 Sep 2026 22:48:36 GMT
ENV OS_VER=el9
# Tue, 15 Sep 2026 22:48:36 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Tue, 15 Sep 2026 22:48:36 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 15 Sep 2026 22:48:36 GMT
ENV PSMDB_REPO=release
# Tue, 15 Sep 2026 22:48:36 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 15 Sep 2026 22:48:36 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 15 Sep 2026 22:48:36 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 15 Sep 2026 22:48:58 GMT
ENV GOSU_VERSION=1.11
# Tue, 15 Sep 2026 22:49:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 15 Sep 2026 22:49:00 GMT
VOLUME [/data/db]
# Tue, 15 Sep 2026 22:49:00 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 15 Sep 2026 22:49:01 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:49:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 15 Sep 2026 22:49:01 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 15 Sep 2026 22:49:01 GMT
USER 1001
# Tue, 15 Sep 2026 22:49:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9306df82077932f5ed202edfd7fe1ddb4937dbbdf9304edd23ec7f0ccadff2f`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 9.0 MB (8970664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c2b4badeea6b3ded58fa80940957a83a5f634fc4862ae046cf1725277f2bfd`  
		Last Modified: Tue, 15 Sep 2026 22:49:31 GMT  
		Size: 229.6 MB (229631797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bb4ffa2c66bd3f5a7454f19a2ae3c1eee621f141fdc8063431ffa3f6ed2a1c`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 1.6 KB (1636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd9efa351d2417ec589a90f91bc9d74597a53568a5282a17f99a3aa80c0f316`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eef1068c84b7144c174a30c7a6aef8010bc19594b1bbb5dcaebe71c99295417`  
		Last Modified: Tue, 15 Sep 2026 22:49:27 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9862e3fda1f4b874e330ff9d5877fb55d56efb601a4f118e20f82c954331ab63`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 914.5 KB (914517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9812055cdd0cb45db2e4c6b4bd9772428046cb2bc6cbec93a302fbc9e03907e`  
		Last Modified: Tue, 15 Sep 2026 22:49:28 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cc46bffd53b1193927fc39bee4dafaeaead9f33e1cd0ba2e1bde956b34e70d`  
		Last Modified: Tue, 15 Sep 2026 22:49:29 GMT  
		Size: 4.0 KB (3956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbb537c8e75510a4edefb04ee40569abf42ea37fb83768399887e3e288ff151`  
		Last Modified: Tue, 15 Sep 2026 22:49:29 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:6ac54786627177c8373a095bfcd92f6010a1a00834c361a0346383df4bcfff75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d018e28d88aa1c4dbb1416565b4d49207c3a6985d2b30135a897a643385b39`

```dockerfile
```

-	Layers:
	-	`sha256:188a6e184a9a8331bb62f4a47a2fb38fca6b7347d012a74f794b95fa48637229`  
		Last Modified: Tue, 15 Sep 2026 22:49:26 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json
