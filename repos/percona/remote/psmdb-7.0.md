## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:9e931a7f02a4d26a74d7c01440579e740d4463f3473d20fe6f63b727006053fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:effc130bd6b9a74401b542bd4e275aa804f2e8c1451d8cb2355ae2e28d38e9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.6 MB (300579815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52bfc6bbef5a8e179ccc6233e9b416225dd94af87c7d3c178c0347104f8ddcb`
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
# Wed, 01 Jul 2026 00:17:14 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 01 Jul 2026 00:17:14 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 01 Jul 2026 00:17:14 GMT
ENV PSMDB_VERSION=7.0.37-20
# Wed, 01 Jul 2026 00:17:14 GMT
ENV OS_VER=el9
# Wed, 01 Jul 2026 00:17:14 GMT
ENV FULL_PERCONA_VERSION=7.0.37-20.el9
# Wed, 01 Jul 2026 00:17:14 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 01 Jul 2026 00:17:14 GMT
ENV PSMDB_REPO=release
# Wed, 01 Jul 2026 00:17:14 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 01 Jul 2026 00:17:14 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 01 Jul 2026 00:17:14 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 01 Jul 2026 00:17:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 01 Jul 2026 00:17:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 01 Jul 2026 00:17:29 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 01 Jul 2026 00:17:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 01 Jul 2026 00:17:29 GMT
ENV GOSU_VERSION=1.11
# Wed, 01 Jul 2026 00:17:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 01 Jul 2026 00:17:31 GMT
VOLUME [/data/db]
# Wed, 01 Jul 2026 00:17:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 01 Jul 2026 00:17:31 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 01 Jul 2026 00:17:31 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 01 Jul 2026 00:17:31 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:17:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Jul 2026 00:17:31 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 01 Jul 2026 00:17:31 GMT
USER 1001
# Wed, 01 Jul 2026 00:17:31 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19baedd8bd4c98199c9efff3c09def586abadfb5081eebfbccc5d375a89c9387`  
		Last Modified: Wed, 01 Jul 2026 00:17:58 GMT  
		Size: 8.8 MB (8814204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e64718c36f7c3ddf7b8ec7230593ffb91a606b61d4183cd5d2b05186138b51a`  
		Last Modified: Wed, 01 Jul 2026 00:18:04 GMT  
		Size: 250.1 MB (250123219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdae763502cfa8105965b31f612bdf544c91cfe9fd12d7f7026735a7d13fff51`  
		Last Modified: Wed, 01 Jul 2026 00:17:57 GMT  
		Size: 1.7 KB (1668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4003341c8c90f3bad02c2cd4e0bfc961e34bae228428e9072919181d56ab01`  
		Last Modified: Wed, 01 Jul 2026 00:17:58 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74f5ac591d505895bfd68f589f0a1bc2807fb8714f531d022b42012e8853e27`  
		Last Modified: Wed, 01 Jul 2026 00:17:59 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a2f38431ccb294cfb86aec2702de5ae400009d3c9f3f5bc2580c210cd48cce`  
		Last Modified: Wed, 01 Jul 2026 00:18:00 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52282bf06651cd322769314728676d700fae9d985558f7eec20f7aff58f6496`  
		Last Modified: Wed, 01 Jul 2026 00:18:01 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e99fa621b14ad13db631fcd2fd1b80c706778b6bf097d4b5cdb40b43b5b4c1`  
		Last Modified: Wed, 01 Jul 2026 00:18:01 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67e252d68461864809b06ce27c9b746a715a930beb08f5b14224450e0eb82b1`  
		Last Modified: Wed, 01 Jul 2026 00:18:02 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:02f2c4bc97140f95c749d4ef2eb44b7b80806896a9ab0fcbc682f56ccee92340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:679e1899b3d90f5f4a37034e24c754b73e204daf0a5357acd53461f2989a39c1`

```dockerfile
```

-	Layers:
	-	`sha256:2059bacce7c5e5559daab4cb13efb29d3a49ebd7f186b0c6255d31a83395c233`  
		Last Modified: Wed, 01 Jul 2026 00:17:57 GMT  
		Size: 32.4 KB (32369 bytes)  
		MIME: application/vnd.in-toto+json
