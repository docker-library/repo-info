## `percona:psmdb-7.0.45`

```console
$ docker pull percona@sha256:e8be7fc1e4eef2aa407f755706a4c6ca7de37545577060decdc3e34227a76542
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-7.0.45` - linux; amd64

```console
$ docker pull percona@sha256:9e479ecee9d57e888c378b747019d3f9109ce37d9a30f1907d60421a8c2be15e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.3 MB (305304245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44bc7f060b53c5e97d2a2bbd94d1bc7771a1687670aded086c70d22fabd65581`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL maintainer="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL vendor="Red Hat, Inc."
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Fri, 20 Nov 2026 18:11:02 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.expose-services=""
# Fri, 20 Nov 2026 18:11:03 GMT
LABEL io.openshift.tags="minimal rhel9"
# Fri, 20 Nov 2026 18:11:03 GMT
ENV container oci
# Fri, 20 Nov 2026 18:11:03 GMT
COPY dir:5ceae98eafdeee79793af167e1b53d2c048d524a5506bb0c01569c4bbeaef4f8 in /      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Fri, 20 Nov 2026 18:11:04 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /usr/share/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
COPY dir:efc37774af2456a572ab1850900fd1b2ca5150281b32c9d270918b202139a2ea in /root/buildinfo/      
# Fri, 20 Nov 2026 18:11:04 GMT
LABEL "org.opencontainers.image.created"="2026-11-20T18:10:41Z" "org.opencontainers.image.revision"="8a43e4168bacb15fdb64420d59822ce86c32934d" "build-date"="2026-11-20T18:10:41Z" "architecture"="x86_64" "vcs-ref"="8a43e4168bacb15fdb64420d59822ce86c32934d" "vcs-type"="git" "release"="1795198179"org.opencontainers.image.created=2026-11-20T18:10:41Z,org.opencontainers.image.revision=8a43e4168bacb15fdb64420d59822ce86c32934d
# Mon, 23 Nov 2026 22:07:12 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Mon, 23 Nov 2026 22:07:12 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Mon, 23 Nov 2026 22:07:12 GMT
ENV PSMDB_VERSION=7.0.45-24
# Mon, 23 Nov 2026 22:07:12 GMT
ENV OS_VER=el9
# Mon, 23 Nov 2026 22:07:12 GMT
ENV FULL_PERCONA_VERSION=7.0.45-24.el9
# Mon, 23 Nov 2026 22:07:12 GMT
ENV MONGO_TOOLS_VERSION=100.19.1-2
# Mon, 23 Nov 2026 22:07:12 GMT
ENV FULL_MONGO_TOOLS_VERSION=100.19.1-2.el9
# Mon, 23 Nov 2026 22:07:12 GMT
ENV MONGOSH_VERSION=2.13.0-1
# Mon, 23 Nov 2026 22:07:12 GMT
ENV FULL_MONGOSH_VERSION=2.13.0-1.el9
# Mon, 23 Nov 2026 22:07:12 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Mon, 23 Nov 2026 22:07:12 GMT
ENV PSMDB_REPO=release
# Mon, 23 Nov 2026 22:07:12 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Mon, 23 Nov 2026 22:07:12 GMT
ENV CALL_HOME_VERSION=0.1
# Mon, 23 Nov 2026 22:07:12 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Mon, 23 Nov 2026 22:07:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-70 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_MONGO_TOOLS_VERSION}         percona-mongodb-mongosh-${FULL_MONGOSH_VERSION}         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         krb5-libs         curl-minimal         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-70/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Mon, 23 Nov 2026 22:07:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Mon, 23 Nov 2026 22:07:32 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Mon, 23 Nov 2026 22:07:32 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Mon, 23 Nov 2026 22:07:32 GMT
ENV GOSU_VERSION=1.11
# Mon, 23 Nov 2026 22:07:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Mon, 23 Nov 2026 22:07:34 GMT
VOLUME [/data/db]
# Mon, 23 Nov 2026 22:07:34 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Mon, 23 Nov 2026 22:07:35 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Mon, 23 Nov 2026 22:07:35 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Mon, 23 Nov 2026 22:07:35 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Mon, 23 Nov 2026 22:07:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 23 Nov 2026 22:07:35 GMT
EXPOSE map[27017/tcp:{}]
# Mon, 23 Nov 2026 22:07:35 GMT
USER 1001
# Mon, 23 Nov 2026 22:07:35 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:42dd82cfea990337e85629f4800f64d42e5fca052db254cd3386d99051476958`  
		Last Modified: Fri, 20 Nov 2026 19:55:30 GMT  
		Size: 40.6 MB (40646846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f9ce87805815655298e856c48f1a0dac6683ea660c25c2722ec61c5bd409e0`  
		Last Modified: Mon, 23 Nov 2026 22:08:01 GMT  
		Size: 9.2 MB (9237666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aeaed88b2fea2fa004a6688e4df9348f032de3762ea36da28446f761d4c4bbb`  
		Last Modified: Mon, 23 Nov 2026 22:08:06 GMT  
		Size: 254.5 MB (254466762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ff214ecbb42a09f8791fd8475ac30882d07330a77c5890aba3b430bc475300`  
		Last Modified: Mon, 23 Nov 2026 22:08:00 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f90b64f65359c3acfb643e982e35a2f4efb12400876676df139ad0f4fd87c81`  
		Last Modified: Mon, 23 Nov 2026 22:08:00 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2adbdd36057e69d90df96ca6eb6b41daf7ce1d9ded9b666e04bfbb0341e3d46`  
		Last Modified: Mon, 23 Nov 2026 22:08:02 GMT  
		Size: 10.6 KB (10576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e004fec02b664c52d081b380cdc4fa918efa2b6a1709bcf60b19ed5dd205a8`  
		Last Modified: Mon, 23 Nov 2026 22:08:02 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed15ba6ae5f8fb8b4612797bf376b2d0a069d178a2aed5bcfb93929d168e452`  
		Last Modified: Mon, 23 Nov 2026 22:08:02 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb537a04fcd3a1f9d15ed98e667e93ee9c4a7f799ebc13383d9a673c7a832da3`  
		Last Modified: Mon, 23 Nov 2026 22:08:03 GMT  
		Size: 4.0 KB (3959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e4fc80f23ce11f6f59e9dd34606f0171ced257c8976f5035c13b52e7eb9d66`  
		Last Modified: Mon, 23 Nov 2026 22:08:03 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-7.0.45` - unknown; unknown

```console
$ docker pull percona@sha256:37a2a11ecc0717f9d0dce4e9287080fa96139fe0d2376845cdf3abdda52c0cbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.7 KB (33662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3c4b887aba5ae11faa9603d04a0d21c29275b0550a3ab16f92812cbedeeb036`

```dockerfile
```

-	Layers:
	-	`sha256:e15c5c66873601e26c02479389a7edf32e5b5b34af1a0bdcc32201aa67ec4a1a`  
		Last Modified: Mon, 23 Nov 2026 22:08:00 GMT  
		Size: 33.7 KB (33662 bytes)  
		MIME: application/vnd.in-toto+json
