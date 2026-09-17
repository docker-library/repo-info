## `percona:ps-8.0.46-37`

```console
$ docker pull percona@sha256:55e81df800e40eb7cce705430fe9f661157c696b8c845989ccdc81bc849d5dc9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:ps-8.0.46-37` - linux; amd64

```console
$ docker pull percona@sha256:569c2213fcd7a31fc659e2f502fedd3351a3ca82e691e9704cc77a6759aeb734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411484719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bb1d4860c601bbf2beaa7f740808514167f5ef0b2181b2f9e08e264fcf5db83`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

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
# Thu, 17 Sep 2026 18:54:58 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Thu, 17 Sep 2026 18:54:58 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Thu, 17 Sep 2026 18:54:58 GMT
ENV PS_VERSION=8.0.46-37.1
# Thu, 17 Sep 2026 18:54:58 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Thu, 17 Sep 2026 18:54:58 GMT
ENV OS_VER=el9
# Thu, 17 Sep 2026 18:54:58 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Thu, 17 Sep 2026 18:54:58 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Thu, 17 Sep 2026 18:54:58 GMT
ENV PS_REPO=testing
# Thu, 17 Sep 2026 18:54:58 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Thu, 17 Sep 2026 18:54:58 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Thu, 17 Sep 2026 18:54:58 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Thu, 17 Sep 2026 18:54:58 GMT
ENV CALL_HOME_VERSION=0.1
# Thu, 17 Sep 2026 18:54:58 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Thu, 17 Sep 2026 18:55:07 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Thu, 17 Sep 2026 18:55:40 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Thu, 17 Sep 2026 18:55:40 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Thu, 17 Sep 2026 18:55:40 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 17 Sep 2026 18:55:40 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Thu, 17 Sep 2026 18:55:40 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Thu, 17 Sep 2026 18:55:40 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Thu, 17 Sep 2026 18:55:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 18:55:40 GMT
USER mysql
# Thu, 17 Sep 2026 18:55:40 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Thu, 17 Sep 2026 18:55:40 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:b66f4afff961364e2b31840faeac9f4cf40a138156bc5adbd4190044ff5160c0`  
		Last Modified: Wed, 16 Sep 2026 09:31:28 GMT  
		Size: 40.7 MB (40703783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f10b839bea0be3b56db8be89eba9783bb009cf042ae7fe054f6d51e6833075`  
		Last Modified: Thu, 17 Sep 2026 18:56:24 GMT  
		Size: 1.4 KB (1379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698f8d2ff4711263f8c7b57d847231110419863813a95538b8bb2a382ad5ef03`  
		Last Modified: Thu, 17 Sep 2026 18:56:25 GMT  
		Size: 9.4 MB (9352692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96073a989ce6549388075a2fa063d2cb7941826f9468dad33bc8bb5ac82a7af`  
		Last Modified: Thu, 17 Sep 2026 18:56:31 GMT  
		Size: 361.4 MB (361418504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb2b94bf3351eeb206cd9555cd408df9c87bacd5dc91c2302873999cf0affd3`  
		Last Modified: Thu, 17 Sep 2026 18:56:24 GMT  
		Size: 1.1 KB (1120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebf803001f05123c12846cfc55aef9c9569cf921a3590842b83f1978e82a26b`  
		Last Modified: Thu, 17 Sep 2026 18:56:25 GMT  
		Size: 4.0 KB (3961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76f3a584ce24b8cf82a4bb4a540f42ef6be45fdfa158e7fd9a7cfca471c5b01`  
		Last Modified: Thu, 17 Sep 2026 18:56:26 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:ps-8.0.46-37` - unknown; unknown

```console
$ docker pull percona@sha256:a7b3e735833144259085b7b8554bde9abca5b37198501b243bba798d2190e38d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a19abce67e3cabb4014499700480b3fb8c30dd9819d4f1757c895c504ee00cb`

```dockerfile
```

-	Layers:
	-	`sha256:4016915a37e89e25cae43463f7bf23397e7fdbe4493f96ab85e5ce8b9f4bee6d`  
		Last Modified: Thu, 17 Sep 2026 18:56:24 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json
