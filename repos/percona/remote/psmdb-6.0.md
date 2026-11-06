## `percona:psmdb-6.0`

```console
$ docker pull percona@sha256:b1ff62c5377ad56f1d54e96f41b6d13c00070668372be2dbaf19f5ac9681e900
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:psmdb-6.0` - linux; amd64

```console
$ docker pull percona@sha256:8a8dbbf5bda3626f409d67658bc89566e35085eee7c2213c30fb358bef5d9c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279361147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6330910820a9ebc9b9ee14ab5fe035ba22927c7c87a15178c99634ec11e1856d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Thu, 05 Nov 2026 07:02:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 05 Nov 2026 07:02:48 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.expose-services=""
# Thu, 05 Nov 2026 07:02:49 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 05 Nov 2026 07:02:50 GMT
ENV container oci
# Thu, 05 Nov 2026 07:02:51 GMT
COPY dir:a9fe70a4508745294cc96d107a79dbf9c40908f5c2d69ed1bd2f25ea177a0817 in /      
# Thu, 05 Nov 2026 07:02:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 05 Nov 2026 07:02:52 GMT
CMD ["/bin/bash"]
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /usr/share/buildinfo/      
# Thu, 05 Nov 2026 07:02:52 GMT
COPY dir:eccbcd097ca02aaac045033e6fe2f6c2393d56ab3ac98c52b91cb36071b9028c in /root/buildinfo/      
# Thu, 05 Nov 2026 07:02:53 GMT
LABEL "org.opencontainers.image.created"="2026-11-05T07:01:54Z" "org.opencontainers.image.revision"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "build-date"="2026-11-05T07:01:54Z" "architecture"="x86_64" "vcs-ref"="0e057e10c76b9113e7e3307cee61e7ea4d827a31" "vcs-type"="git" "release"="1793862054"org.opencontainers.image.created=2026-11-05T07:01:54Z,org.opencontainers.image.revision=0e057e10c76b9113e7e3307cee61e7ea4d827a31
# Thu, 05 Nov 2026 22:50:49 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 05 Nov 2026 22:50:49 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9;     gpg --batch --export --armor 3E6D826D3FBAB389C2F38E34BC4D06A08D8B756F > ${GNUPGHOME}/RPM-GPG-KEY-oracle;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-9 ${GNUPGHOME}/RPM-GPG-KEY-oracle;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY # buildkit
# Thu, 05 Nov 2026 22:50:49 GMT
ENV PSMDB_VERSION=6.0.29-23
# Thu, 05 Nov 2026 22:50:49 GMT
ENV OS_VER=el9
# Thu, 05 Nov 2026 22:50:49 GMT
ENV FULL_PERCONA_VERSION=6.0.29-23.el9
# Thu, 05 Nov 2026 22:50:49 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 05 Nov 2026 22:50:49 GMT
ENV PSMDB_REPO=release
# Thu, 05 Nov 2026 22:50:49 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 05 Nov 2026 22:50:49 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 05 Nov 2026 22:50:49 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 05 Nov 2026 22:51:06 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     percona-release enable psmdb-60 ${PSMDB_REPO};     microdnf -y update libgcrypt;     microdnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-tools-${FULL_PERCONA_VERSION}         percona-mongodb-mongosh         numactl         numactl-libs         procps-ng         jq         tar         oniguruma         cyrus-sasl-gssapi         cyrus-sasl-plain         libcap         krb5-libs         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-60/yum/${PSMDB_REPO}/9/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN useradd -u 1001 -r -g 0 -m -s /sbin/nologin             -c "Default Application User" mongodb;     chmod g+rwx /var/log/mongo;     chown :0 /var/log/mongo # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
COPY LICENSE /licenses/LICENSE.Dockerfile # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB # buildkit
# Thu, 05 Nov 2026 22:51:07 GMT
ENV GOSU_VERSION=1.11
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
VOLUME [/data/db]
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c - # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/percona/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown 1001:1001 /usr/local/percona # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 05 Nov 2026 22:51:09 GMT
COPY ps-entry-dockerhub.sh /entrypoint.sh # buildkit
# Thu, 05 Nov 2026 22:51:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 05 Nov 2026 22:51:09 GMT
EXPOSE map[27017/tcp:{}]
# Thu, 05 Nov 2026 22:51:09 GMT
USER 1001
# Thu, 05 Nov 2026 22:51:09 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:32b344ffa7c9dd8da7d1cfc046e3d302ca99a3db1387bb8137f797a9a3a080c7`  
		Last Modified: Thu, 05 Nov 2026 07:58:51 GMT  
		Size: 40.7 MB (40656774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebdbf6488dab5ff94b6ed4d11a8444c8088b3ebc3e312accd3af2a2fc33a660`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 9.0 MB (8953363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eff2a9c46fe697199b4480d675b281bf06d5c43f510bf35707a51ca4d3847c7`  
		Last Modified: Thu, 05 Nov 2026 22:51:40 GMT  
		Size: 228.8 MB (228798079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4519751dbd637b951d91e2c149794b53594d3a3093bdc9f078829fd8f380ef62`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 1.6 KB (1640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931f9e2176841ce738449977f593e599d74d8c9001c5be8b4782ccd3a73826be`  
		Last Modified: Thu, 05 Nov 2026 22:51:36 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21648740081045132bcdd93599eb2ef822fc101bdde12823feec0091e728907`  
		Last Modified: Thu, 05 Nov 2026 22:51:37 GMT  
		Size: 10.6 KB (10577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2d4a816a4617d2f83a061ff40fc021cc5d422cc84871f8e9b58af027a151e92`  
		Last Modified: Thu, 05 Nov 2026 22:51:37 GMT  
		Size: 914.5 KB (914516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f921eb71c58c9d31f84cfb5d55dd51d9df9df37f27f71b3f539314c557ed003`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5420a5e29e7f67ff5f664cf965eae973dcd2280b061cceedcfe9114859a2b23c`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 4.0 KB (3954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6cf88d9257b3b8bae9c3bac61d5fb7566cac516c84071da8cc8336b34617951`  
		Last Modified: Thu, 05 Nov 2026 22:51:38 GMT  
		Size: 5.0 KB (4968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:psmdb-6.0` - unknown; unknown

```console
$ docker pull percona@sha256:661f4f17c943248784f0a3df94357c1c55781607f8f4bbf76912e9bf5b71cad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 KB (32939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e4b7eb4d7e5bbe0f7c4c8e5588bbff7908601c792792a3831eb2fb4cd8e6ab`

```dockerfile
```

-	Layers:
	-	`sha256:badb904551dd87ccdd902370d5c75f22d92c228f3cd37955bafb3e1313c5140e`  
		Last Modified: Thu, 05 Nov 2026 22:51:35 GMT  
		Size: 32.9 KB (32939 bytes)  
		MIME: application/vnd.in-toto+json
