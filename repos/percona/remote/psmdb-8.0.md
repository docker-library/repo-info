## `percona:psmdb-8.0`

```console
$ docker pull percona@sha256:1503e604156a97c66279cc32caeaa69aa8cf27bc8d8c7f253058251df6e543e4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-8.0` - linux; amd64

```console
$ docker pull percona@sha256:e43afa89fe7264bbfbf708d2fa498b0accb6bbe9cc7dff1864d9ea7996ed6758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.8 MB (324782169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d487af544ea0f45c626ae37f879da0658e462a42dc411fbc0134741535adff85`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.expose-services=""
# Wed, 30 Sep 2026 07:43:40 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 30 Sep 2026 07:43:40 GMT
ENV container oci
# Wed, 30 Sep 2026 07:43:40 GMT
COPY dir:01535d66c659bac5dc638e334bb8c0882e8bbe4dcc144deb448bf0673973267f in /      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 30 Sep 2026 07:43:41 GMT
CMD ["/bin/bash"]
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /usr/share/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
COPY dir:ab52b8f578b642c9cfffb8cfa8cb04095b99e8289c57b6d99f5db899ce19dbbd in /root/buildinfo/      
# Wed, 30 Sep 2026 07:43:41 GMT
LABEL "org.opencontainers.image.created"="2026-09-30T07:43:22Z" "org.opencontainers.image.revision"="f354e3d450169972cb1f8df64acae506d96d4c49" "build-date"="2026-09-30T07:43:22Z" "architecture"="x86_64" "vcs-ref"="f354e3d450169972cb1f8df64acae506d96d4c49" "vcs-type"="git" "release"="1790754119"org.opencontainers.image.created=2026-09-30T07:43:22Z,org.opencontainers.image.revision=f354e3d450169972cb1f8df64acae506d96d4c49
# Wed, 30 Sep 2026 21:02:28 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 30 Sep 2026 21:02:28 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 30 Sep 2026 21:02:28 GMT
ENV PSMDB_VERSION=8.0.32-14
# Wed, 30 Sep 2026 21:02:28 GMT
ENV OS_VER=el9
# Wed, 30 Sep 2026 21:02:28 GMT
ENV FULL_PERCONA_VERSION=8.0.32-14.el9
# Wed, 30 Sep 2026 21:02:28 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 30 Sep 2026 21:02:28 GMT
ENV PSMDB_REPO=testing
# Wed, 30 Sep 2026 21:02:28 GMT
ENV GLIBC_TUNABLES=glibc.pthread.rseq=0
# Wed, 30 Sep 2026 21:02:28 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 30 Sep 2026 21:02:28 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 30 Sep 2026 21:02:28 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 30 Sep 2026 21:02:48 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-80 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-80/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 30 Sep 2026 21:02:48 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 30 Sep 2026 21:02:48 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 30 Sep 2026 21:02:48 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 30 Sep 2026 21:02:48 GMT
ENV GOSU_VERSION=1.11
# Wed, 30 Sep 2026 21:02:50 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 30 Sep 2026 21:02:50 GMT
VOLUME [/data/db]
# Wed, 30 Sep 2026 21:02:50 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 30 Sep 2026 21:02:51 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 30 Sep 2026 21:02:51 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 30 Sep 2026 21:02:51 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 30 Sep 2026 21:02:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Sep 2026 21:02:51 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 30 Sep 2026 21:02:51 GMT
USER 1001
# Wed, 30 Sep 2026 21:02:51 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:dc56ef34398ed4f6c8151f31ee5784575bedb47794f5ba379ebc2a25834fac35`  
		Last Modified: Wed, 30 Sep 2026 08:42:23 GMT  
		Size: 40.7 MB (40700861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c7e9cb4b4a33e1d9cc9057007673a0a8aa30961f528e1c4e3b2c3abcab56db`  
		Last Modified: Wed, 30 Sep 2026 21:03:22 GMT  
		Size: 9.0 MB (8993801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f43eb9e6605259d221961f8f3a77034d7c16ea0025c1db56e6beb01d5c51126`  
		Last Modified: Wed, 30 Sep 2026 21:03:27 GMT  
		Size: 274.1 MB (274134568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f5f59ee58712854073b0c8cc0183ba19d52babb3ca06539ea13c1b224fb017`  
		Last Modified: Wed, 30 Sep 2026 21:03:21 GMT  
		Size: 1.6 KB (1641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2cb267ddefaf45e2436e352177bb397bcb14ffb80b894c210686789ebdf974`  
		Last Modified: Wed, 30 Sep 2026 21:03:21 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82625b5e46c51f22c3650020681375ed05450d92ea3c462516ee4dd25a559635`  
		Last Modified: Wed, 30 Sep 2026 21:03:22 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6231fb6519c0d3dcaa5a771b069987acaddf1511f53de7a13d73d521e48edbfa`  
		Last Modified: Wed, 30 Sep 2026 21:03:22 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01f52e519b56c1f892309efc3b314bdca0fcfd83b914a6662a8325fe0d652d`  
		Last Modified: Wed, 30 Sep 2026 21:03:23 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e3ccd52d1d6eadb73ca41187bf47c856757005bf85425366e1f2ce75f20509`  
		Last Modified: Wed, 30 Sep 2026 21:03:23 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb427b4ee5df6cb2eeca845a3a6758966b3219c0b1cd8d7fb305d69c87e9a31e`  
		Last Modified: Wed, 30 Sep 2026 21:03:24 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-8.0` - unknown; unknown

```console
$ docker pull percona@sha256:d9a76e253f1baa3d74b6f05f5c28ecce874adfc0c1041a968427332d4d4f9e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 KB (32673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2e848b296f383bc2d2858f9a4d8d1d129a31dd733d3fcdcebae4a7108c2dd7`

```dockerfile
```

-	Layers:
	-	`sha256:c54454422dbf8a63326675dcf61a6b364bb1fdaa4402f03089f9e92275cec42d`  
		Last Modified: Wed, 30 Sep 2026 21:03:21 GMT  
		Size: 32.7 KB (32673 bytes)  
		MIME: application/vnd.in-toto+json
