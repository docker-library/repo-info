## `percona:psmdb-7.0.40`

```console
$ docker pull percona@sha256:02c9fe524c519a23e10afe52068ca3b216ada567567117cb1078ce21921520c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0.40` - linux; amd64

```console
$ docker pull percona@sha256:31f14bcf71635e3e3fd463e5d5a1dc7c1c6df153fb42be507beaf6a135443f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.1 MB (304078904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b250d7337d58dd07ad2c269e4bd32dc63f1ea22af0c5946fb52882a8991cf7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:21 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Tue, 25 Aug 2026 17:45:21 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Tue, 25 Aug 2026 17:45:21 GMT
ENV PSMDB_VERSION=7.0.40-22
# Tue, 25 Aug 2026 17:45:21 GMT
ENV OS_VER=el9
# Tue, 25 Aug 2026 17:45:21 GMT
ENV FULL_PERCONA_VERSION=7.0.40-22.el9
# Tue, 25 Aug 2026 17:45:21 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Tue, 25 Aug 2026 17:45:21 GMT
ENV PSMDB_REPO=release
# Tue, 25 Aug 2026 17:45:21 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Tue, 25 Aug 2026 17:45:21 GMT
ENV CALL_HOME_VERSION=0.1
# Tue, 25 Aug 2026 17:45:21 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Tue, 25 Aug 2026 17:45:40 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Tue, 25 Aug 2026 17:45:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Tue, 25 Aug 2026 17:45:41 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Tue, 25 Aug 2026 17:45:41 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Tue, 25 Aug 2026 17:45:41 GMT
ENV GOSU_VERSION=1.11
# Tue, 25 Aug 2026 17:45:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Tue, 25 Aug 2026 17:45:43 GMT
VOLUME [/data/db]
# Tue, 25 Aug 2026 17:45:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Tue, 25 Aug 2026 17:45:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Tue, 25 Aug 2026 17:45:43 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Tue, 25 Aug 2026 17:45:43 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:45:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Aug 2026 17:45:43 GMT
EXPOSE map[27017/tcp:{}]
# Tue, 25 Aug 2026 17:45:43 GMT
USER 1001
# Tue, 25 Aug 2026 17:45:43 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61356f6f801c789786dfb565e494397fbd50073b2bbd2e9e066c7c6c5dd233a1`  
		Last Modified: Tue, 25 Aug 2026 17:46:14 GMT  
		Size: 8.9 MB (8941196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559cef90cc39a49380f5ae2a7e705859761cae0975e281a2e679127f3c04fffa`  
		Last Modified: Tue, 25 Aug 2026 17:46:19 GMT  
		Size: 253.5 MB (253472738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876f2012401cb7ccc475a308ce6d1487823aaf1bfa1f492210457d3e8dd9a728`  
		Last Modified: Tue, 25 Aug 2026 17:46:14 GMT  
		Size: 1.7 KB (1671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d830577d3ee02f943381493463f4baff34e58decccecb296f69992647059bf`  
		Last Modified: Tue, 25 Aug 2026 17:46:14 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ae5cd7082cc76cbf3a75088ab07ad9b18b51b3114b73ec4c0699cb275705cf`  
		Last Modified: Tue, 25 Aug 2026 17:46:15 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b2f0ec5ba99a78c415e25286bdb97d71e315850f71da676aee48676189bc8e`  
		Last Modified: Tue, 25 Aug 2026 17:46:15 GMT  
		Size: 914.5 KB (914521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf2f2d39e561612a324dd23871d8d5ff55936cf1f7fde16d9725f7014582841`  
		Last Modified: Tue, 25 Aug 2026 17:46:16 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d759e754cde58f703d969260d069df7de5030f666d83997540bc5692708a24`  
		Last Modified: Tue, 25 Aug 2026 17:46:17 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:784d7786b30e397c6533f5704d831fc9c79f50281a944f34c6df34d34650cccc`  
		Last Modified: Tue, 25 Aug 2026 17:46:17 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0.40` - unknown; unknown

```console
$ docker pull percona@sha256:0a01a5febe806391675827965d72c5e29b32903bfbec4b4b166a2b4df40471a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae367c61e8e15568d32913705c4e03cf4762965e2985d241ced591811f13fd51`

```dockerfile
```

-	Layers:
	-	`sha256:68f5f34a8ef464bb77dc5760f6b5c328af08b539742257d858fbe7c7831c3c1c`  
		Last Modified: Tue, 25 Aug 2026 17:46:14 GMT  
		Size: 32.4 KB (32369 bytes)  
		MIME: application/vnd.in-toto+json
