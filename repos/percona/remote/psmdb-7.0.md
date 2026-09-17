## `percona:psmdb-7.0`

```console
$ docker pull percona@sha256:fd4e954810fc34a0046463c51409cb309666ce189d733632dc8d89d8a5087b09
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0` - linux; amd64

```console
$ docker pull percona@sha256:a013e44fa0cf912e99b800ebc16073f4b4dc292e871f4cc8a0b85501bcb1780c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.3 MB (304304587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d367d0b4b5303bade392d1f77ea8cd15e91c83130198793304e7a1d9e52bf813`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.expose-services=""
# Wed, 16 Sep 2026 08:14:46 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 16 Sep 2026 08:14:47 GMT
ENV container oci
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:b8d2e4702aa4e2e0f81f97ab3a96785119f9cab5f11a12e6f35f97263fc80089 in /      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 16 Sep 2026 08:14:48 GMT
CMD ["/bin/bash"]
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /usr/share/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
COPY dir:0d75961e3db2326a48bbcf23c2e4ea4e05da817cf04277234a6d96480c0cf5b7 in /root/buildinfo/      
# Wed, 16 Sep 2026 08:14:48 GMT
LABEL "org.opencontainers.image.created"="2026-09-16T08:14:20Z" "org.opencontainers.image.revision"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "build-date"="2026-09-16T08:14:20Z" "architecture"="x86_64" "vcs-ref"="28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee" "vcs-type"="git" "release"="1789546276"org.opencontainers.image.created=2026-09-16T08:14:20Z,org.opencontainers.image.revision=28eadd3b1a5a834acaab9dbfe06d7a5df73b64ee
# Thu, 17 Sep 2026 18:55:04 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 17 Sep 2026 18:55:04 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 17 Sep 2026 18:55:04 GMT
ENV PSMDB_VERSION=7.0.40-22
# Thu, 17 Sep 2026 18:55:04 GMT
ENV OS_VER=el9
# Thu, 17 Sep 2026 18:55:04 GMT
ENV FULL_PERCONA_VERSION=7.0.40-22.el9
# Thu, 17 Sep 2026 18:55:04 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 17 Sep 2026 18:55:04 GMT
ENV PSMDB_REPO=release
# Thu, 17 Sep 2026 18:55:04 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 17 Sep 2026 18:55:04 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 17 Sep 2026 18:55:04 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 17 Sep 2026 18:55:29 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 17 Sep 2026 18:55:30 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 17 Sep 2026 18:55:30 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 17 Sep 2026 18:55:30 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 17 Sep 2026 18:55:30 GMT
ENV GOSU_VERSION=1.11
# Thu, 17 Sep 2026 18:55:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 17 Sep 2026 18:55:32 GMT
VOLUME [/data/db]
# Thu, 17 Sep 2026 18:55:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 17 Sep 2026 18:55:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 17 Sep 2026 18:55:32 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 17 Sep 2026 18:55:32 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:55:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 17 Sep 2026 18:55:32 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 17 Sep 2026 18:55:32 GMT
USER 1001
# Thu, 17 Sep 2026 18:55:32 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae0152a09f1354ede332145bb34476c7dcc0630c2cac768929d5ac9bf86d2495`  
		Last Modified: Thu, 17 Sep 2026 18:55:59 GMT  
		Size: 9.0 MB (8970811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5c20d7e533dd63d8f76e9f07a21331a8662e6e29079907b697403d105c0385`  
		Last Modified: Thu, 17 Sep 2026 18:56:04 GMT  
		Size: 253.7 MB (253677053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6273c6ff617250af278395a87ec6bded754f2ed2b5a2697310c04c03732284f2`  
		Last Modified: Thu, 17 Sep 2026 18:55:58 GMT  
		Size: 1.6 KB (1639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34dd68175d57f798f70af9e340b9edbeac17a4afedd8367a92bcc1e0ec4a2278`  
		Last Modified: Thu, 17 Sep 2026 18:55:59 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf18b615dc86eb192427196e44bdb11e113b5d5956847309fa619ffe9281322`  
		Last Modified: Thu, 17 Sep 2026 18:56:00 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17981bd0279c85cb4cd40d916143531c866d27c4d232f084cca521a18119c5b`  
		Last Modified: Thu, 17 Sep 2026 18:56:00 GMT  
		Size: 914.5 KB (914520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a9b26ca5be5b30ed3f67a007bca4b9f306d1a2e1a5e93ea464a06c55f96b96`  
		Last Modified: Thu, 17 Sep 2026 18:56:01 GMT  
		Size: 13.2 KB (13201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d41b6937059f34b9861c9a9d3b1c7527836905a9184a90aa12f1ddf88d9f716`  
		Last Modified: Thu, 17 Sep 2026 18:56:01 GMT  
		Size: 4.0 KB (3961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fef5906ac1eb1eefcd4a3c8896f66142323a129b4c286e1afbdc67abb40cf0d`  
		Last Modified: Thu, 17 Sep 2026 18:56:01 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0` - unknown; unknown

```console
$ docker pull percona@sha256:9deacd5d6c49627846a9431add07ea6e42d2c4227ae3e0c5eb8faf8dfb9fb416
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.4 KB (32369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f2fd5aa2f51f29a829168edf137ba0b0eb0562dc686eacb39ccc530ae80eb9`

```dockerfile
```

-	Layers:
	-	`sha256:7bc5e7a20b480dd570d38df369c140ce9ec484961040d944c02de79c7bd042db`  
		Last Modified: Thu, 17 Sep 2026 18:55:59 GMT  
		Size: 32.4 KB (32369 bytes)  
		MIME: application/vnd.in-toto+json
