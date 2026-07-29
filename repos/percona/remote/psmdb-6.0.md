## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:3535bb83fc3a8127386365dc36eafd93c3c5a6816cfd3895019f63b7e7a71c20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:3a9151bcab99dad276e2f66a4fdf3a366f536576aea3f38015f5d45d957e0fa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.2 MB (279242905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c55aab22ac19f4669f392e480e10da42e832bcbad1d236c391f7c53adbd268f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:45 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:45 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_VERSION=6.0.29-23
# Wed, 29 Jul 2026 18:26:45 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Wed, 29 Jul 2026 18:26:45 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 29 Jul 2026 18:26:45 GMT
ENV PSMDB_REPO=release
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:45 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:45 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Wed, 29 Jul 2026 18:26:59 GMT
ENV GOSU_VERSION=1.11
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
VOLUME [/data/db]
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:01 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:01 GMT
EXPOSE map[27017/tcp:{}]
# Wed, 29 Jul 2026 18:27:01 GMT
USER 1001
# Wed, 29 Jul 2026 18:27:01 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e37cd1d4fc2ff0f65a1a17749c077853925d701b4a4499391f1fc12e00e1ae`  
		Last Modified: Wed, 29 Jul 2026 18:27:28 GMT  
		Size: 9.0 MB (8984185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b684d8de6c63d14cdca18764b77e80001029d15cc125a752f5351952b85eea`  
		Last Modified: Wed, 29 Jul 2026 18:27:32 GMT  
		Size: 228.6 MB (228605180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a138e1fe9b24500dce8b705b97447b4449ffe49b0e79fdcb054e3aa0312c4a11`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 1.7 KB (1669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e5301c1cc6eb955216a1ae29ee74faee3ebfca49a8f114f533cfc0f0d342ea`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e183d1b59c1b26efa52e66a71938baa0923996e5b0ae41f5680587fca1ea712`  
		Last Modified: Wed, 29 Jul 2026 18:27:28 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfdb944bef264e0614c9c6ee01953c34b759bee125fb32bb66d40bd4627951f`  
		Last Modified: Wed, 29 Jul 2026 18:27:29 GMT  
		Size: 914.5 KB (914518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82c687f58aa5a58a59c1a4e9b4efdebf44d6049a389b872e067caf6c3673b12`  
		Last Modified: Wed, 29 Jul 2026 18:27:29 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4afba7e5f1f11d364d24036528faca748748dcb6917106f09344cb01a86a483`  
		Last Modified: Wed, 29 Jul 2026 18:27:30 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629fb657b3f35716955a94056de02b5d7d53b75b1eff70d060f5222ac35db084`  
		Last Modified: Wed, 29 Jul 2026 18:27:30 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:d06c8fd4be69eda8337e10cae76dbf5d0b6b95b0de44e584394f00de0f053c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9204674b1b5159349466ede92854252ff48cbedadf6f323294a42d30db9abb3c`

```dockerfile
```

-	Layers:
	-	`sha256:32f8e53c4f40e893a4b8d66d6cd01a3715731a50794b95e5b6ed8f323e9f07ae`  
		Last Modified: Wed, 29 Jul 2026 18:27:27 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json
