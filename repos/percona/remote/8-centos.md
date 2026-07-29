## `percona:8-centos`

```console
$ docker pull percona@sha256:a3ca7356faee77fbd6f87e59bcab3f488bc111b021c5674354546f1551d405fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:311891124a4c4676b02be97e3f2a97c3ce2a3d969de241ccb64fa9473a30497f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.3 MB (411254969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6828d38b8910a97443c26a63f8ae9f701a83c62bf5b755461a961932db3e60de`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

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
# Wed, 29 Jul 2026 18:26:37 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 29 Jul 2026 18:26:37 GMT
RUN set -ex;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -m -c "Default Application User" mysql # buildkit
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_VERSION=8.0.46-37.1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV MYSQL_SHELL_VERSION=8.0.46-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV OS_VER=el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_PERCONA_VERSION=8.0.46-37.1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV FULL_MYSQL_SHELL_VERSION=8.0.46-1.el9
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_REPO=testing
# Wed, 29 Jul 2026 18:26:37 GMT
ENV PS_TELEMETRY_VERSION=8.0.46-37-1
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_DOWNLOAD_SHA256=5e84d2f1a5d57f44c46e6a1f16794d649d3de09fe8021f0294bc321c89e51068
# Wed, 29 Jul 2026 18:26:37 GMT
ENV KEY_RPM_DOWNLOAD_SHA256=fcf0eab4f05a1c0de6363ac4b707600a27a9d774e9b491059e59e6921b255a84
# Wed, 29 Jul 2026 18:26:37 GMT
ENV CALL_HOME_VERSION=0.1
# Wed, 29 Jul 2026 18:26:37 GMT
ARG PERCONA_TELEMETRY_DISABLE=1
# Wed, 29 Jul 2026 18:26:43 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 4D1BB29D63D98E422B2113B19334A25F8507EFA5 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 4D1BB29D63D98E422B2113B19334A25F8507EFA5 > ${GNUPGHOME}/PERCONA-PACKAGING-KEY;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/PERCONA-PACKAGING-KEY ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     microdnf install -y findutils;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release disable all;     percona-release enable ps-80 ${PS_REPO};     percona-release enable mysql-shell ${PS_REPO};     curl -O https://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-9;     echo "$KEY_RPM_DOWNLOAD_SHA256 RPM-GPG-KEY-EPEL-9" | sha256sum --strict --check;     rpm --import RPM-GPG-KEY-EPEL-9;     curl -Lf -o /tmp/jemalloc.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/j/jemalloc-5.2.1-2.el9.x86_64.rpm;     curl -Lf -o /tmp/gflags.rpm https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/gflags-2.2.2-9.el9.x86_64.rpm;     rpmkeys --checksig /tmp/gflags.rpm /tmp/jemalloc.rpm;     rpm -i /tmp/jemalloc.rpm;     rpm -i /tmp/gflags.rpm;     rm -f /tmp/gflags.rpm /tmp/jemalloc.rpm # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     rpm -e --nodeps tzdata;     microdnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;     microdnf -y update         libnghttp2         openssh         python3-setuptools-wheel         krb5-libs         pam         python3;         microdnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION}         percona-icu-data-files-${FULL_PERCONA_VERSION}         percona-mysql-shell-${FULL_MYSQL_SHELL_VERSION};     microdnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nhost_cache_size=0\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d # buildkit
# Wed, 29 Jul 2026 18:27:09 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 29 Jul 2026 18:27:10 GMT
# ARGS: PERCONA_TELEMETRY_DISABLE=1
RUN set -eux;     curl -fL "https://github.com/Percona-Lab/telemetry-agent/archive/refs/tags/phase-$CALL_HOME_VERSION.tar.gz" -o "phase-$CALL_HOME_VERSION.tar.gz";     echo "$CALL_HOME_DOWNLOAD_SHA256 phase-$CALL_HOME_VERSION.tar.gz" | sha256sum --strict --check;     tar -xvf phase-$CALL_HOME_VERSION.tar.gz;     cp telemetry-agent-phase-$CALL_HOME_VERSION/call-home.sh .;    rm -rf telemetry-agent-phase-$CALL_HOME_VERSION phase-$CALL_HOME_VERSION.tar.gz;     chmod a+rx /call-home.sh;     mkdir -p /usr/local/percona;     chown mysql:mysql /usr/local/percona # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENV CALL_HOME_OPTIONAL_PARAMS= -s el9
# Wed, 29 Jul 2026 18:27:10 GMT
COPY ps-entry-dockerhub.sh /docker-entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:10 GMT
USER mysql
# Wed, 29 Jul 2026 18:27:10 GMT
EXPOSE map[3306/tcp:{} 33060/tcp:{}]
# Wed, 29 Jul 2026 18:27:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621701b655c38aa7213c619dcf084245368accc352d3c02192d211ac8c694b80`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.4 KB (1372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490bdd38e1eb0b59e975513d462c336698c75c286a0f3428d8a647c7218f0508`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 9.4 MB (9363942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb13d374efcb9c599dc0c080f34c236245a6bef940e4d89efde57f1160fac464`  
		Last Modified: Wed, 29 Jul 2026 18:27:54 GMT  
		Size: 361.2 MB (361180726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0843c0681735a554b369156d767338d8c1ac4aed1ba1b14c02fa57089186a90`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6db06dbdf26eb088c9cde8d39db5f633ed7f0256a31ec38b1e08959fe59f5a9`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 4.0 KB (3960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948cb8ce26f0727730f0510ceeb5aaaa4528d0f78366b99afd380044f4bc2b0b`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 3.3 KB (3280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `percona:8-centos` - unknown; unknown

```console
$ docker pull percona@sha256:08e1138a0510747b5bc5ac7f7f3c108415bd1e1ec2a42d68391760736633a86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5ec34dc8447d5b90f638cf731aef74281bf31593af56ff0c09b204a815260e`

```dockerfile
```

-	Layers:
	-	`sha256:03df78b21f5a43a20f67db330aded752f5e7e1fd2850d6b6bd0b74d367732b29`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 30.8 KB (30846 bytes)  
		MIME: application/vnd.in-toto+json
