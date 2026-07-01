## `percona:psmdb-8.0.26`

```console
$ docker pull percona@sha256:557fec9434a51d0962588037154ab47c95ec0d29a6014e3d5b90c69179f82476
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0.26` - linux; amd64

```console
$ docker pull percona@sha256:64a2c6c29042006e90bb1e4163d06c96930ae36da17137479b1ed58c65615636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **320.7 MB (320715743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e447157baf77ff58b3fe7a6c65ebe017edfb81d141a1a24d85b2d3704b38410`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 30 Jun 2026 05:29:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 30 Jun 2026 05:29:32 GMT
ENV container oci
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:efac128f83583a6247aea2e1de3f354267a91fa9afbb47889a2bebf40b22f4af in /      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 30 Jun 2026 05:29:33 GMT
CMD ["/bin/bash"]
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /usr/share/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
COPY dir:041b210b17febe96db30cba4f2b22eb7e05f976482f5a304098344e035b1cad8 in /root/buildinfo/      
# Tue, 30 Jun 2026 05:29:33 GMT
LABEL "org.opencontainers.image.created"="2026-06-30T05:29:15Z" "org.opencontainers.image.revision"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "build-date"="2026-06-30T05:29:15Z" "architecture"="x86_64" "vcs-ref"="9d52f7ccf5e43749249b95c398cdcb9020bc399d" "vcs-type"="git" "release"="1782797275"org.opencontainers.image.created=2026-06-30T05:29:15Z,org.opencontainers.image.revision=9d52f7ccf5e43749249b95c398cdcb9020bc399d
# Wed, 01 Jul 2026 00:17:41 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 01 Jul 2026 00:17:41 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 01 Jul 2026 00:17:41 GMT
ENV PSMDB_VERSION=8.0.26-11
# Wed, 01 Jul 2026 00:17:41 GMT
ENV OS_VER=el9
# Wed, 01 Jul 2026 00:17:41 GMT
ENV FULL_PERCONA_VERSION=8.0.26-11.el9
# Wed, 01 Jul 2026 00:17:41 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 01 Jul 2026 00:17:41 GMT
ENV PSMDB_REPO=testing
# Wed, 01 Jul 2026 00:17:41 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 01 Jul 2026 00:17:41 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 01 Jul 2026 00:17:41 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 01 Jul 2026 00:17:41 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 01 Jul 2026 00:17:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 01 Jul 2026 00:17:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 01 Jul 2026 00:17:56 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 01 Jul 2026 00:17:56 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 01 Jul 2026 00:17:56 GMT
ENV GOSU_VERSION=1.11
# Wed, 01 Jul 2026 00:17:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 01 Jul 2026 00:17:58 GMT
VOLUME [/data/db]
# Wed, 01 Jul 2026 00:17:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 01 Jul 2026 00:17:58 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 01 Jul 2026 00:17:58 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 01 Jul 2026 00:17:58 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:17:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Jul 2026 00:17:58 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 01 Jul 2026 00:17:58 GMT
USER 1001
# Wed, 01 Jul 2026 00:17:58 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b002fe7b4f645c408f850692fe213a1a43bb6aa3cf6db3998798ae8c1ceeaeb`  
		Last Modified: Wed, 01 Jul 2026 00:18:30 GMT  
		Size: 8.8 MB (8814205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f39ec8634c3d86cebc9655a7a36a88d9044540931366384ec3058cc40d7345`  
		Last Modified: Wed, 01 Jul 2026 00:18:35 GMT  
		Size: 270.3 MB (270259151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18eb62309e20c74a25d6e793632ea4542473ef82dd424cdb20d88424e0594c38`  
		Last Modified: Wed, 01 Jul 2026 00:18:29 GMT  
		Size: 1.7 KB (1666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ea1d9eb9ef72b7d879f881eaa8516724b8838304d6160e6cf024de0543c514`  
		Last Modified: Wed, 01 Jul 2026 00:18:29 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bba3c94e3e6ad7880813ca6232c2bcb8ed26bf94be95a6f1cb022c683839072`  
		Last Modified: Wed, 01 Jul 2026 00:18:31 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a027812dd83d713593df2fc24593c1a098ae2194794978255edefe960518069b`  
		Last Modified: Wed, 01 Jul 2026 00:18:31 GMT  
		Size: 914.5 KB (914515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34cd4aab928bacb9dd306e71120e16e4e86868d7f2c7cbf180ffc4a40dbf30cb`  
		Last Modified: Wed, 01 Jul 2026 00:18:31 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60b34c5d549e26c7f09c8945d4ffc0f4badf5e0538f98d709e994c5b2ff7409`  
		Last Modified: Wed, 01 Jul 2026 00:18:32 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8dba3801ce5918446c84ef8016e9b410b3b227b8869d72cc554eca5a5aa8e6`  
		Last Modified: Wed, 01 Jul 2026 00:18:33 GMT  
		Size: 5.0 KB (4966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0.26` - unknown; unknown

```console
$ docker pull percona@sha256:7c4193453a93c08e0c4cd8e4b8109d9c21b09c12a2db6ed21f69d7d0d09faca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be46b3b8fd62622da978cbc6abacc8889341206a91e5ab9bf3416dca67661463`

```dockerfile
```

-	Layers:
	-	`sha256:53f0b2f4e69ca268d2701f1a9473798b920d8cb650c4b26208ec483798a1c061`  
		Last Modified: Wed, 01 Jul 2026 00:18:29 GMT  
		Size: 32.7 KB (32673 bytes)  
		MIME: application/vnd.in-toto+json
