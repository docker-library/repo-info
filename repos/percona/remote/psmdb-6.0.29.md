## `percona:psmdb-6.0.29`

```console
$ docker pull percona@sha256:1c38c014f6701554233ed2501ba44671b412e91e2205861f4a2fa2ab1003d5c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0.29` - linux; amd64

```console
$ docker pull percona@sha256:268db18bcd84c5cc10cf8728d8b978f2a40c69acb0ebc4dbe8b872626272c2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (279037721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c316eb965db9aa1ea998592b2d339d0a48f4924923bddd27909df6dbccb42db`
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
# Wed, 01 Jul 2026 00:18:13 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 01 Jul 2026 00:18:13 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 01 Jul 2026 00:18:13 GMT
ENV PSMDB_VERSION=6.0.29-23
# Wed, 01 Jul 2026 00:18:13 GMT
ENV OS_VER=el9
# Wed, 01 Jul 2026 00:18:13 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Wed, 01 Jul 2026 00:18:13 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 01 Jul 2026 00:18:13 GMT
ENV PSMDB_REPO=release
# Wed, 01 Jul 2026 00:18:13 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 01 Jul 2026 00:18:13 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 01 Jul 2026 00:18:13 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 01 Jul 2026 00:18:25 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 01 Jul 2026 00:18:26 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 01 Jul 2026 00:18:26 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 01 Jul 2026 00:18:26 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 01 Jul 2026 00:18:26 GMT
ENV GOSU_VERSION=1.11
# Wed, 01 Jul 2026 00:18:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 01 Jul 2026 00:18:27 GMT
VOLUME [/data/db]
# Wed, 01 Jul 2026 00:18:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 01 Jul 2026 00:18:27 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 01 Jul 2026 00:18:27 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 01 Jul 2026 00:18:27 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 01 Jul 2026 00:18:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 01 Jul 2026 00:18:27 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 01 Jul 2026 00:18:27 GMT
USER 1001
# Wed, 01 Jul 2026 00:18:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:8af57f051b373375a1be8f892172089259ad624ed8452291226c539055e60228`  
		Last Modified: Tue, 30 Jun 2026 06:57:41 GMT  
		Size: 40.7 MB (40689427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5dade3807326195dcb676e3bf1dcdd63322776e67c782237b5aae9b836e52ae`  
		Last Modified: Wed, 01 Jul 2026 00:18:54 GMT  
		Size: 8.8 MB (8818216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c15529b025a37095ceb3dbeb359947b6039ed7e4e6ed7f428661a65dad0de5`  
		Last Modified: Wed, 01 Jul 2026 00:18:58 GMT  
		Size: 228.6 MB (228577113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67b9136e0625d8123833392442db82cf1c4a663c415890825e5abdabce3b4f2`  
		Last Modified: Wed, 01 Jul 2026 00:18:53 GMT  
		Size: 1.7 KB (1670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39866274b5f2407c49a8134ea4e4f011b851e1084432402d9a0d424bc134b44e`  
		Last Modified: Wed, 01 Jul 2026 00:18:53 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2104051cc97ae9ecaf5600644bed2bb7ec91f79b784e31c9bc59447348df0e`  
		Last Modified: Wed, 01 Jul 2026 00:18:55 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7383291819da8fffc46a3bc8f9348f1238f40c1a50e2efe336040bccf02ee210`  
		Last Modified: Wed, 01 Jul 2026 00:18:55 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7784c44d3ec3c201a185d0bf6b32d0d76c9a7252e7452aeeab3b5b4586c06744`  
		Last Modified: Wed, 01 Jul 2026 00:18:56 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2294d12eac881204418a60661d4be267d7136b25a2a2683055c14a3058441ad`  
		Last Modified: Wed, 01 Jul 2026 00:18:56 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea32f97883770514756919666c184d8b4f9a4461e570906f747a45249e2aad8`  
		Last Modified: Wed, 01 Jul 2026 00:18:56 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0.29` - unknown; unknown

```console
$ docker pull percona@sha256:96460225c93ab38b1097abe95444ed7cdaa429b711521aca479ed4921eb601d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1ab9f1e058099c58e93c9af8eee7ed88a693608e5ee2613757dd51c50eaecb0`

```dockerfile
```

-	Layers:
	-	`sha256:3c2ea86aa15e8ec35ad5a3d7a09c33ce4d1a77209ced7b9154a9585e281a6123`  
		Last Modified: Wed, 01 Jul 2026 00:18:53 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json
