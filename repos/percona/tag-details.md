<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `percona`

-	[`percona:5`](#percona5)
-	[`percona:5-centos`](#percona5-centos)
-	[`percona:5.6`](#percona56)
-	[`percona:5.6-centos`](#percona56-centos)
-	[`percona:5.6.51-2`](#percona5651-2)
-	[`percona:5.6.51-2-centos`](#percona5651-2-centos)
-	[`percona:5.7`](#percona57)
-	[`percona:5.7-centos`](#percona57-centos)
-	[`percona:5.7.35`](#percona5735)
-	[`percona:5.7.35-centos`](#percona5735-centos)
-	[`percona:8`](#percona8)
-	[`percona:8-centos`](#percona8-centos)
-	[`percona:8.0`](#percona80)
-	[`percona:8.0-centos`](#percona80-centos)
-	[`percona:8.0.29-21`](#percona8029-21)
-	[`percona:8.0.29-21-centos`](#percona8029-21-centos)
-	[`percona:centos`](#perconacentos)
-	[`percona:latest`](#perconalatest)
-	[`percona:ps-5`](#perconaps-5)
-	[`percona:ps-5.6`](#perconaps-56)
-	[`percona:ps-5.6.51-2`](#perconaps-5651-2)
-	[`percona:ps-5.7`](#perconaps-57)
-	[`percona:ps-5.7.35`](#perconaps-5735)
-	[`percona:ps-8`](#perconaps-8)
-	[`percona:ps-8.0`](#perconaps-80)
-	[`percona:ps-8.0.29-21`](#perconaps-8029-21)
-	[`percona:psmdb-3.6`](#perconapsmdb-36)
-	[`percona:psmdb-3.6.23`](#perconapsmdb-3623)
-	[`percona:psmdb-4.0`](#perconapsmdb-40)
-	[`percona:psmdb-4.0.27`](#perconapsmdb-4027)
-	[`percona:psmdb-4.2`](#perconapsmdb-42)
-	[`percona:psmdb-4.2.21`](#perconapsmdb-4221)
-	[`percona:psmdb-4.4`](#perconapsmdb-44)
-	[`percona:psmdb-4.4.15`](#perconapsmdb-4415)
-	[`percona:psmdb-5.0`](#perconapsmdb-50)
-	[`percona:psmdb-5.0.10`](#perconapsmdb-5010)

## `percona:5`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5-centos`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5-centos` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6`

```console
$ docker pull percona@sha256:8c915f6fff3a43383938b4015ee3740dc1886fd5016a1404ff45b55de71e49cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5.6` - linux; amd64

```console
$ docker pull percona@sha256:a865615cf007e34fc520a72786a807909f8c75fd233388a0a0445fa82b5319cc
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195312192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b1d76c933806bd31b1a5833d091c41c5bc6c9d0953c4a2c764668d37c6f79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:23 GMT
ADD file:b3ebbe8bd304723d43b7b44a6d990cd657b63d93d6a2a9293983a30bfc1dfa53 in / 
# Wed, 15 Sep 2021 18:20:23 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20201113 org.opencontainers.image.title=CentOS Base Image org.opencontainers.image.vendor=CentOS org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.created=2020-11-13 00:00:00+00:00
# Wed, 15 Sep 2021 18:20:23 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:58:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:58:18 GMT
RUN groupdel input && groupadd -g 999 mysql
# Wed, 15 Sep 2021 18:58:19 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 30 Dec 2021 19:25:24 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7;         curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     yum install -y /tmp/percona-release.rpm;         curl -Lf -o /tmp/nss.rpm http://mirror.centos.org/centos/7/updates/x86_64/Packages/nss-3.67.0-4.el7_9.x86_64.rpm;     rpmkeys --checksig /tmp/nss.rpm;     yum install -y /tmp/nss.rpm;         rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;         percona-release disable all;     percona-release enable original release
# Thu, 30 Dec 2021 19:25:25 GMT
ENV PERCONA_VERSION=5.6.51-rel91.0.1.el7
# Thu, 30 Dec 2021 19:36:53 GMT
RUN set -ex;     yum install -y         Percona-Server-server-56-${PERCONA_VERSION}         Percona-Server-tokudb-56-${PERCONA_VERSION}         jemalloc         which         policycoreutils;         yum clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Thu, 30 Dec 2021 19:36:55 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 30 Dec 2021 19:36:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 30 Dec 2021 19:36:55 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Thu, 30 Dec 2021 19:36:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Dec 2021 19:36:56 GMT
USER mysql
# Thu, 30 Dec 2021 19:36:56 GMT
EXPOSE 3306
# Thu, 30 Dec 2021 19:36:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2d473b07cdd5f0912cd6f1a703352c82b512407db6b05b43f2553732b55df3bc`  
		Last Modified: Sat, 14 Nov 2020 00:21:39 GMT  
		Size: 76.1 MB (76097157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd68507e31292f16aa2d29907b401abd6ab53be7b485f2bdea2a7182e63d1af`  
		Last Modified: Wed, 15 Sep 2021 19:05:51 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ee280aea028899106d471852f72f47591667f5edf38214be74a6121932ea56`  
		Last Modified: Wed, 15 Sep 2021 19:05:49 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729721338aa7f33aa759726ffa7b1c50288e2dcae602d0323eecab0ff98c9c26`  
		Last Modified: Thu, 30 Dec 2021 19:38:06 GMT  
		Size: 59.7 MB (59728568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d8b9873953ce124f23ca0f1406a9518ca744b77cfbebdd6d9f79a785fa7a09`  
		Last Modified: Thu, 30 Dec 2021 19:38:08 GMT  
		Size: 59.5 MB (59476470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927c076538b02993035990718d78a0b06fe3a6fc95b571ce334ae270c2cd4cc8`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 5.0 KB (4956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806011b64a9860267de7f898bd25bd33c0a6a69901dc7f8319e855bea3c1303`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6-centos`

```console
$ docker pull percona@sha256:8c915f6fff3a43383938b4015ee3740dc1886fd5016a1404ff45b55de71e49cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5.6-centos` - linux; amd64

```console
$ docker pull percona@sha256:a865615cf007e34fc520a72786a807909f8c75fd233388a0a0445fa82b5319cc
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195312192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b1d76c933806bd31b1a5833d091c41c5bc6c9d0953c4a2c764668d37c6f79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:23 GMT
ADD file:b3ebbe8bd304723d43b7b44a6d990cd657b63d93d6a2a9293983a30bfc1dfa53 in / 
# Wed, 15 Sep 2021 18:20:23 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20201113 org.opencontainers.image.title=CentOS Base Image org.opencontainers.image.vendor=CentOS org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.created=2020-11-13 00:00:00+00:00
# Wed, 15 Sep 2021 18:20:23 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:58:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:58:18 GMT
RUN groupdel input && groupadd -g 999 mysql
# Wed, 15 Sep 2021 18:58:19 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 30 Dec 2021 19:25:24 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7;         curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     yum install -y /tmp/percona-release.rpm;         curl -Lf -o /tmp/nss.rpm http://mirror.centos.org/centos/7/updates/x86_64/Packages/nss-3.67.0-4.el7_9.x86_64.rpm;     rpmkeys --checksig /tmp/nss.rpm;     yum install -y /tmp/nss.rpm;         rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;         percona-release disable all;     percona-release enable original release
# Thu, 30 Dec 2021 19:25:25 GMT
ENV PERCONA_VERSION=5.6.51-rel91.0.1.el7
# Thu, 30 Dec 2021 19:36:53 GMT
RUN set -ex;     yum install -y         Percona-Server-server-56-${PERCONA_VERSION}         Percona-Server-tokudb-56-${PERCONA_VERSION}         jemalloc         which         policycoreutils;         yum clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Thu, 30 Dec 2021 19:36:55 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 30 Dec 2021 19:36:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 30 Dec 2021 19:36:55 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Thu, 30 Dec 2021 19:36:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Dec 2021 19:36:56 GMT
USER mysql
# Thu, 30 Dec 2021 19:36:56 GMT
EXPOSE 3306
# Thu, 30 Dec 2021 19:36:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2d473b07cdd5f0912cd6f1a703352c82b512407db6b05b43f2553732b55df3bc`  
		Last Modified: Sat, 14 Nov 2020 00:21:39 GMT  
		Size: 76.1 MB (76097157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd68507e31292f16aa2d29907b401abd6ab53be7b485f2bdea2a7182e63d1af`  
		Last Modified: Wed, 15 Sep 2021 19:05:51 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ee280aea028899106d471852f72f47591667f5edf38214be74a6121932ea56`  
		Last Modified: Wed, 15 Sep 2021 19:05:49 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729721338aa7f33aa759726ffa7b1c50288e2dcae602d0323eecab0ff98c9c26`  
		Last Modified: Thu, 30 Dec 2021 19:38:06 GMT  
		Size: 59.7 MB (59728568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d8b9873953ce124f23ca0f1406a9518ca744b77cfbebdd6d9f79a785fa7a09`  
		Last Modified: Thu, 30 Dec 2021 19:38:08 GMT  
		Size: 59.5 MB (59476470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927c076538b02993035990718d78a0b06fe3a6fc95b571ce334ae270c2cd4cc8`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 5.0 KB (4956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806011b64a9860267de7f898bd25bd33c0a6a69901dc7f8319e855bea3c1303`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.51-2`

```console
$ docker pull percona@sha256:8c915f6fff3a43383938b4015ee3740dc1886fd5016a1404ff45b55de71e49cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5.6.51-2` - linux; amd64

```console
$ docker pull percona@sha256:a865615cf007e34fc520a72786a807909f8c75fd233388a0a0445fa82b5319cc
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195312192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b1d76c933806bd31b1a5833d091c41c5bc6c9d0953c4a2c764668d37c6f79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:23 GMT
ADD file:b3ebbe8bd304723d43b7b44a6d990cd657b63d93d6a2a9293983a30bfc1dfa53 in / 
# Wed, 15 Sep 2021 18:20:23 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20201113 org.opencontainers.image.title=CentOS Base Image org.opencontainers.image.vendor=CentOS org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.created=2020-11-13 00:00:00+00:00
# Wed, 15 Sep 2021 18:20:23 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:58:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:58:18 GMT
RUN groupdel input && groupadd -g 999 mysql
# Wed, 15 Sep 2021 18:58:19 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 30 Dec 2021 19:25:24 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7;         curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     yum install -y /tmp/percona-release.rpm;         curl -Lf -o /tmp/nss.rpm http://mirror.centos.org/centos/7/updates/x86_64/Packages/nss-3.67.0-4.el7_9.x86_64.rpm;     rpmkeys --checksig /tmp/nss.rpm;     yum install -y /tmp/nss.rpm;         rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;         percona-release disable all;     percona-release enable original release
# Thu, 30 Dec 2021 19:25:25 GMT
ENV PERCONA_VERSION=5.6.51-rel91.0.1.el7
# Thu, 30 Dec 2021 19:36:53 GMT
RUN set -ex;     yum install -y         Percona-Server-server-56-${PERCONA_VERSION}         Percona-Server-tokudb-56-${PERCONA_VERSION}         jemalloc         which         policycoreutils;         yum clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Thu, 30 Dec 2021 19:36:55 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 30 Dec 2021 19:36:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 30 Dec 2021 19:36:55 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Thu, 30 Dec 2021 19:36:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Dec 2021 19:36:56 GMT
USER mysql
# Thu, 30 Dec 2021 19:36:56 GMT
EXPOSE 3306
# Thu, 30 Dec 2021 19:36:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2d473b07cdd5f0912cd6f1a703352c82b512407db6b05b43f2553732b55df3bc`  
		Last Modified: Sat, 14 Nov 2020 00:21:39 GMT  
		Size: 76.1 MB (76097157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd68507e31292f16aa2d29907b401abd6ab53be7b485f2bdea2a7182e63d1af`  
		Last Modified: Wed, 15 Sep 2021 19:05:51 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ee280aea028899106d471852f72f47591667f5edf38214be74a6121932ea56`  
		Last Modified: Wed, 15 Sep 2021 19:05:49 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729721338aa7f33aa759726ffa7b1c50288e2dcae602d0323eecab0ff98c9c26`  
		Last Modified: Thu, 30 Dec 2021 19:38:06 GMT  
		Size: 59.7 MB (59728568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d8b9873953ce124f23ca0f1406a9518ca744b77cfbebdd6d9f79a785fa7a09`  
		Last Modified: Thu, 30 Dec 2021 19:38:08 GMT  
		Size: 59.5 MB (59476470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927c076538b02993035990718d78a0b06fe3a6fc95b571ce334ae270c2cd4cc8`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 5.0 KB (4956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806011b64a9860267de7f898bd25bd33c0a6a69901dc7f8319e855bea3c1303`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.6.51-2-centos`

```console
$ docker pull percona@sha256:8c915f6fff3a43383938b4015ee3740dc1886fd5016a1404ff45b55de71e49cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5.6.51-2-centos` - linux; amd64

```console
$ docker pull percona@sha256:a865615cf007e34fc520a72786a807909f8c75fd233388a0a0445fa82b5319cc
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195312192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b1d76c933806bd31b1a5833d091c41c5bc6c9d0953c4a2c764668d37c6f79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:23 GMT
ADD file:b3ebbe8bd304723d43b7b44a6d990cd657b63d93d6a2a9293983a30bfc1dfa53 in / 
# Wed, 15 Sep 2021 18:20:23 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20201113 org.opencontainers.image.title=CentOS Base Image org.opencontainers.image.vendor=CentOS org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.created=2020-11-13 00:00:00+00:00
# Wed, 15 Sep 2021 18:20:23 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:58:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:58:18 GMT
RUN groupdel input && groupadd -g 999 mysql
# Wed, 15 Sep 2021 18:58:19 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 30 Dec 2021 19:25:24 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7;         curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     yum install -y /tmp/percona-release.rpm;         curl -Lf -o /tmp/nss.rpm http://mirror.centos.org/centos/7/updates/x86_64/Packages/nss-3.67.0-4.el7_9.x86_64.rpm;     rpmkeys --checksig /tmp/nss.rpm;     yum install -y /tmp/nss.rpm;         rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;         percona-release disable all;     percona-release enable original release
# Thu, 30 Dec 2021 19:25:25 GMT
ENV PERCONA_VERSION=5.6.51-rel91.0.1.el7
# Thu, 30 Dec 2021 19:36:53 GMT
RUN set -ex;     yum install -y         Percona-Server-server-56-${PERCONA_VERSION}         Percona-Server-tokudb-56-${PERCONA_VERSION}         jemalloc         which         policycoreutils;         yum clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Thu, 30 Dec 2021 19:36:55 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 30 Dec 2021 19:36:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 30 Dec 2021 19:36:55 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Thu, 30 Dec 2021 19:36:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Dec 2021 19:36:56 GMT
USER mysql
# Thu, 30 Dec 2021 19:36:56 GMT
EXPOSE 3306
# Thu, 30 Dec 2021 19:36:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2d473b07cdd5f0912cd6f1a703352c82b512407db6b05b43f2553732b55df3bc`  
		Last Modified: Sat, 14 Nov 2020 00:21:39 GMT  
		Size: 76.1 MB (76097157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd68507e31292f16aa2d29907b401abd6ab53be7b485f2bdea2a7182e63d1af`  
		Last Modified: Wed, 15 Sep 2021 19:05:51 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ee280aea028899106d471852f72f47591667f5edf38214be74a6121932ea56`  
		Last Modified: Wed, 15 Sep 2021 19:05:49 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729721338aa7f33aa759726ffa7b1c50288e2dcae602d0323eecab0ff98c9c26`  
		Last Modified: Thu, 30 Dec 2021 19:38:06 GMT  
		Size: 59.7 MB (59728568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d8b9873953ce124f23ca0f1406a9518ca744b77cfbebdd6d9f79a785fa7a09`  
		Last Modified: Thu, 30 Dec 2021 19:38:08 GMT  
		Size: 59.5 MB (59476470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927c076538b02993035990718d78a0b06fe3a6fc95b571ce334ae270c2cd4cc8`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 5.0 KB (4956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806011b64a9860267de7f898bd25bd33c0a6a69901dc7f8319e855bea3c1303`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5.7` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7-centos`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5.7-centos` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.35`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5.7.35` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:5.7.35-centos`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:5.7.35-centos` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:8` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8-centos`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:8-centos` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:8.0` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0-centos`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:8.0-centos` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.29-21`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:8.0.29-21` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:8.0.29-21-centos`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:8.0.29-21-centos` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:centos`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:centos` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:latest`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:latest` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:ps-5` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.6`

```console
$ docker pull percona@sha256:8c915f6fff3a43383938b4015ee3740dc1886fd5016a1404ff45b55de71e49cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:ps-5.6` - linux; amd64

```console
$ docker pull percona@sha256:a865615cf007e34fc520a72786a807909f8c75fd233388a0a0445fa82b5319cc
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195312192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b1d76c933806bd31b1a5833d091c41c5bc6c9d0953c4a2c764668d37c6f79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:23 GMT
ADD file:b3ebbe8bd304723d43b7b44a6d990cd657b63d93d6a2a9293983a30bfc1dfa53 in / 
# Wed, 15 Sep 2021 18:20:23 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20201113 org.opencontainers.image.title=CentOS Base Image org.opencontainers.image.vendor=CentOS org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.created=2020-11-13 00:00:00+00:00
# Wed, 15 Sep 2021 18:20:23 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:58:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:58:18 GMT
RUN groupdel input && groupadd -g 999 mysql
# Wed, 15 Sep 2021 18:58:19 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 30 Dec 2021 19:25:24 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7;         curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     yum install -y /tmp/percona-release.rpm;         curl -Lf -o /tmp/nss.rpm http://mirror.centos.org/centos/7/updates/x86_64/Packages/nss-3.67.0-4.el7_9.x86_64.rpm;     rpmkeys --checksig /tmp/nss.rpm;     yum install -y /tmp/nss.rpm;         rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;         percona-release disable all;     percona-release enable original release
# Thu, 30 Dec 2021 19:25:25 GMT
ENV PERCONA_VERSION=5.6.51-rel91.0.1.el7
# Thu, 30 Dec 2021 19:36:53 GMT
RUN set -ex;     yum install -y         Percona-Server-server-56-${PERCONA_VERSION}         Percona-Server-tokudb-56-${PERCONA_VERSION}         jemalloc         which         policycoreutils;         yum clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Thu, 30 Dec 2021 19:36:55 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 30 Dec 2021 19:36:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 30 Dec 2021 19:36:55 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Thu, 30 Dec 2021 19:36:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Dec 2021 19:36:56 GMT
USER mysql
# Thu, 30 Dec 2021 19:36:56 GMT
EXPOSE 3306
# Thu, 30 Dec 2021 19:36:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2d473b07cdd5f0912cd6f1a703352c82b512407db6b05b43f2553732b55df3bc`  
		Last Modified: Sat, 14 Nov 2020 00:21:39 GMT  
		Size: 76.1 MB (76097157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd68507e31292f16aa2d29907b401abd6ab53be7b485f2bdea2a7182e63d1af`  
		Last Modified: Wed, 15 Sep 2021 19:05:51 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ee280aea028899106d471852f72f47591667f5edf38214be74a6121932ea56`  
		Last Modified: Wed, 15 Sep 2021 19:05:49 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729721338aa7f33aa759726ffa7b1c50288e2dcae602d0323eecab0ff98c9c26`  
		Last Modified: Thu, 30 Dec 2021 19:38:06 GMT  
		Size: 59.7 MB (59728568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d8b9873953ce124f23ca0f1406a9518ca744b77cfbebdd6d9f79a785fa7a09`  
		Last Modified: Thu, 30 Dec 2021 19:38:08 GMT  
		Size: 59.5 MB (59476470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927c076538b02993035990718d78a0b06fe3a6fc95b571ce334ae270c2cd4cc8`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 5.0 KB (4956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806011b64a9860267de7f898bd25bd33c0a6a69901dc7f8319e855bea3c1303`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.6.51-2`

```console
$ docker pull percona@sha256:8c915f6fff3a43383938b4015ee3740dc1886fd5016a1404ff45b55de71e49cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:ps-5.6.51-2` - linux; amd64

```console
$ docker pull percona@sha256:a865615cf007e34fc520a72786a807909f8c75fd233388a0a0445fa82b5319cc
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.3 MB (195312192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b1d76c933806bd31b1a5833d091c41c5bc6c9d0953c4a2c764668d37c6f79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:23 GMT
ADD file:b3ebbe8bd304723d43b7b44a6d990cd657b63d93d6a2a9293983a30bfc1dfa53 in / 
# Wed, 15 Sep 2021 18:20:23 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20201113 org.opencontainers.image.title=CentOS Base Image org.opencontainers.image.vendor=CentOS org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.created=2020-11-13 00:00:00+00:00
# Wed, 15 Sep 2021 18:20:23 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:58:17 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:58:18 GMT
RUN groupdel input && groupadd -g 999 mysql
# Wed, 15 Sep 2021 18:58:19 GMT
RUN useradd -u 999 -r -g 999 -s /sbin/nologin 		-c "Default Application User" mysql
# Thu, 30 Dec 2021 19:25:24 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7;         curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     yum install -y /tmp/percona-release.rpm;         curl -Lf -o /tmp/nss.rpm http://mirror.centos.org/centos/7/updates/x86_64/Packages/nss-3.67.0-4.el7_9.x86_64.rpm;     rpmkeys --checksig /tmp/nss.rpm;     yum install -y /tmp/nss.rpm;         rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;         percona-release disable all;     percona-release enable original release
# Thu, 30 Dec 2021 19:25:25 GMT
ENV PERCONA_VERSION=5.6.51-rel91.0.1.el7
# Thu, 30 Dec 2021 19:36:53 GMT
RUN set -ex;     yum install -y         Percona-Server-server-56-${PERCONA_VERSION}         Percona-Server-tokudb-56-${PERCONA_VERSION}         jemalloc         which         policycoreutils;         yum clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Thu, 30 Dec 2021 19:36:55 GMT
RUN /usr/bin/install -m 0775 -o mysql -g root -d /etc/my.cnf.d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d 	&& find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user|sql_mode)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user|sql_mode)/#&/' 	&& sed -i '/Make sure only root/,/fi/d' /usr/bin/ps_tokudb_admin 	&& echo "thp-setting=never" >> /etc/my.cnf 	&& echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf 	&& printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf 	&& /usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql 	&& echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql 	&& echo "THP_SETTING=never" >> /etc/sysconfig/mysql 	&& ln -s /etc/my.cnf.d /etc/mysql 	&& chown -R mysql:root /etc/my.cnf /etc/my.cnf.d 	&& chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Thu, 30 Dec 2021 19:36:55 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Thu, 30 Dec 2021 19:36:55 GMT
COPY file:1d7c9d67c6f11e6632845ae6085c57582457d49c5e3d732f0b3bd3f40b8bf179 in /docker-entrypoint.sh 
# Thu, 30 Dec 2021 19:36:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Dec 2021 19:36:56 GMT
USER mysql
# Thu, 30 Dec 2021 19:36:56 GMT
EXPOSE 3306
# Thu, 30 Dec 2021 19:36:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2d473b07cdd5f0912cd6f1a703352c82b512407db6b05b43f2553732b55df3bc`  
		Last Modified: Sat, 14 Nov 2020 00:21:39 GMT  
		Size: 76.1 MB (76097157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecd68507e31292f16aa2d29907b401abd6ab53be7b485f2bdea2a7182e63d1af`  
		Last Modified: Wed, 15 Sep 2021 19:05:51 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95ee280aea028899106d471852f72f47591667f5edf38214be74a6121932ea56`  
		Last Modified: Wed, 15 Sep 2021 19:05:49 GMT  
		Size: 1.6 KB (1555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729721338aa7f33aa759726ffa7b1c50288e2dcae602d0323eecab0ff98c9c26`  
		Last Modified: Thu, 30 Dec 2021 19:38:06 GMT  
		Size: 59.7 MB (59728568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d8b9873953ce124f23ca0f1406a9518ca744b77cfbebdd6d9f79a785fa7a09`  
		Last Modified: Thu, 30 Dec 2021 19:38:08 GMT  
		Size: 59.5 MB (59476470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927c076538b02993035990718d78a0b06fe3a6fc95b571ce334ae270c2cd4cc8`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 5.0 KB (4956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1806011b64a9860267de7f898bd25bd33c0a6a69901dc7f8319e855bea3c1303`  
		Last Modified: Thu, 30 Dec 2021 19:37:58 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.7`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:ps-5.7` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-5.7.35`

```console
$ docker pull percona@sha256:8e77cd4bdbed624550ca5bc504b873ac06eb6de88f1b20f7b78b15114aecac67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:ps-5.7.35` - linux; amd64

```console
$ docker pull percona@sha256:caab4e854bd75040d07802bf1862bfef1d2b4db0acbc9c4aaf5c21c698fdd393
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246653376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14dacdf98c7ad66e08bb5015db42cb2ccef052c8f2d05c7ff5947ac762583c4d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 18:57:27 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 999 mysql;     useradd -u 999 -r -g 999 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 15 Sep 2021 18:57:42 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql
# Wed, 15 Sep 2021 18:57:42 GMT
ENV PS_VERSION=5.7.35-38.1
# Wed, 15 Sep 2021 18:57:42 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 18:57:43 GMT
ENV FULL_PERCONA_VERSION=5.7.35-38.1.el8
# Wed, 15 Sep 2021 18:58:10 GMT
RUN set -ex;     dnf install -y         dnf-utils         jemalloc         cracklib-dicts         which;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         selinux-policy             | xargs curl -Lf -o /tmp/selinux-policy.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm --nodeps;     rm -rf /tmp/policycoreutils.rpm /tmp/selinux-policy.rpm;         dnf install -y         Percona-Server-server-57-${FULL_PERCONA_VERSION}         Percona-Server-devel-57-${FULL_PERCONA_VERSION}         Percona-Server-tokudb-57-${FULL_PERCONA_VERSION}         Percona-Server-rocksdb-57-${FULL_PERCONA_VERSION};     dnf remove -y dnf-utils;     dnf clean all;     rm -rf /var/cache/dnf /var/lib/mysql
# Wed, 15 Sep 2021 18:58:11 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	ln -s /etc/my.cnf.d /etc/mysql; 	chown -R mysql:root /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d; 	chmod -R ug+rwX /etc/percona-server.cnf /etc/percona-server.conf.d /etc/my.cnf.d
# Wed, 15 Sep 2021 18:58:11 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 15 Sep 2021 18:58:12 GMT
COPY file:905f699d79b77ffbf7039a84326c28f490b5fbb94dacddae8e03ff2d2ee34360 in /docker-entrypoint.sh 
# Wed, 15 Sep 2021 18:58:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 Sep 2021 18:58:12 GMT
USER mysql
# Wed, 15 Sep 2021 18:58:12 GMT
EXPOSE 3306
# Wed, 15 Sep 2021 18:58:12 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db41bf22c2a74b2fdf1a7dc73edbb2bc3d7a6fd7471d81abb7529ccef45d286`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.5 KB (1536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d623bc6350b0f9d8fcb11a81683159736183c9e52ba5e63eed822e85d69451`  
		Last Modified: Wed, 15 Sep 2021 19:05:03 GMT  
		Size: 44.1 MB (44116923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac980929248370aa8c53e7757db81c970921ce143ee15e320269ee40451c5b07`  
		Last Modified: Wed, 15 Sep 2021 19:05:14 GMT  
		Size: 119.0 MB (119012336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdfa403781770586b0e7cf1f6a4411cee71a5e671aa98d95c5e551178cf12f2`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b836088f9823707b12d9d320fa3636a4050c1e53875ae309a6e286812455c7b1`  
		Last Modified: Wed, 15 Sep 2021 19:04:58 GMT  
		Size: 3.1 KB (3064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:ps-8` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8.0`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:ps-8.0` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:ps-8.0.29-21`

```console
$ docker pull percona@sha256:3637965bfca893e0cf19c2e959e02a25467cbcd64501c8558e9b6f93c8bb15fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:ps-8.0.29-21` - linux; amd64

```console
$ docker pull percona@sha256:97e0697c060f9c23c9f03185c328935a1e807d5b9e160cecc1ebbf19687cc43d
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.1 MB (438120403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d65d9f157fb1ca293a32c5f6e6340267862a1073054f5420a8f6519bc8b8bb05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:15:59 GMT
RUN set -ex;     groupdel input;     userdel systemd-coredump;     groupadd -g 1001 mysql;     useradd -u 1001 -r -g 1001 -s /sbin/nologin         -c "Default Application User" mysql
# Wed, 18 Jan 2023 04:16:31 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     dnf -y module disable mysql;     percona-release disable all;     percona-release enable ps-80 release
# Wed, 18 Jan 2023 04:16:32 GMT
ENV PS_VERSION=8.0.29-21.1
# Wed, 18 Jan 2023 04:16:32 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:16:32 GMT
ENV FULL_PERCONA_VERSION=8.0.29-21.1.el8
# Wed, 18 Jan 2023 04:17:07 GMT
RUN set -ex;     rpm -e --nodeps tzdata;     dnf -y install         hostname         tzdata         jemalloc         which         cracklib-dicts         tar         policycoreutils;         dnf -y install         percona-server-server-${FULL_PERCONA_VERSION}         percona-server-devel-${FULL_PERCONA_VERSION}         percona-server-rocksdb-${FULL_PERCONA_VERSION};     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /var/lib/mysql
# Wed, 18 Jan 2023 04:17:10 GMT
RUN set -ex;     /usr/bin/install -m 0775 -o mysql -g root -d /var/lib/mysql /var/run/mysqld /docker-entrypoint-initdb.d; 	find /etc/my.cnf /etc/my.cnf.d -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log|user)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log|user)/#&/'; 	echo '!includedir /etc/my.cnf.d' >> /etc/my.cnf; 	printf '[mysqld]\nskip-host-cache\nskip-name-resolve\n' > /etc/my.cnf.d/docker.cnf; 	/usr/bin/install -m 0664 -o mysql -g root /dev/null /etc/sysconfig/mysql; 	echo "LD_PRELOAD=/usr/lib64/libjemalloc.so.1" >> /etc/sysconfig/mysql; 	echo "THP_SETTING=never" >> /etc/sysconfig/mysql; 	chown -R mysql:root /etc/my.cnf /etc/my.cnf.d; 	chmod -R ug+rwX /etc/my.cnf /etc/my.cnf.d
# Wed, 18 Jan 2023 04:17:10 GMT
VOLUME [/var/lib/mysql /var/log/mysql]
# Wed, 18 Jan 2023 04:17:10 GMT
COPY file:8e394b40e5593ab1fb7ffd68ce2a3169f41e4e257f96ad515f6af4567362a3c5 in /docker-entrypoint.sh 
# Wed, 18 Jan 2023 04:17:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 18 Jan 2023 04:17:10 GMT
USER mysql
# Wed, 18 Jan 2023 04:17:10 GMT
EXPOSE 3306 33060
# Wed, 18 Jan 2023 04:17:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a709dc3984a1253058896c421ae98beb71e5890089cf7182de40b19174abd623`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2447364193fa38e67bebaf56c807474c79bca70e57da5c1c56741b90de9a5279`  
		Last Modified: Wed, 18 Jan 2023 04:21:16 GMT  
		Size: 172.3 MB (172301710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c761093a7f3ca5553ff60a49afb40be0b6e9e5de39191c6b396acb8ac3b302`  
		Last Modified: Wed, 18 Jan 2023 04:21:32 GMT  
		Size: 178.4 MB (178364289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644bbaf5a2ab8eea1735d0abda35062a8241ae549c66df73dec0059aa907865c`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb3dce407fc66e59643d6e3270a00ca1a3cf4eae9631c7c3affd302dfcb5d99`  
		Last Modified: Wed, 18 Jan 2023 04:21:06 GMT  
		Size: 3.1 KB (3091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-3.6`

```console
$ docker pull percona@sha256:1b77b0d5186f803b776e9c887f05ff1a3c83105972f377800903d196e99865da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-3.6` - linux; amd64

```console
$ docker pull percona@sha256:eee7c8006e798f42f9c0192f009f99bc500a5c30dd1184f1c1308cc367c412c9
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177248603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1f241c8ca6a8cde6f6a8616807ddfa6730184fc0756d2e4f4237e92ef497cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 19:02:51 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY
# Wed, 15 Sep 2021 19:02:51 GMT
ENV PSMDB_VERSION=3.6.23-13.0
# Wed, 15 Sep 2021 19:02:51 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 19:02:51 GMT
ENV FULL_PERCONA_VERSION=3.6.23-13.0.el8
# Wed, 15 Sep 2021 19:02:52 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 15 Sep 2021 19:03:11 GMT
RUN set -ex;     dnf install -y         dnf-utils         shadow-utils         curl         procps-ng         jq         oniguruma         Percona-Server-MongoDB-36-shell-${FULL_PERCONA_VERSION}         Percona-Server-MongoDB-36-mongos-${FULL_PERCONA_VERSION};         repoquery -a --location             policycoreutils                 | xargs curl -Lf -o /tmp/policycoreutils.rpm;         repoquery -a --location             Percona-Server-MongoDB-36-server-${FULL_PERCONA_VERSION}                 | xargs curl -Lf -o /tmp/Percona-Server-MongoDB-36-server-${FULL_PERCONA_VERSION}.rpm;         rpm -iv /tmp/policycoreutils.rpm /tmp/Percona-Server-MongoDB-36-server-${FULL_PERCONA_VERSION}.rpm --nodeps;                 rm -rf /tmp/policycoreutils.rpm /tmp/Percona-Server-MongoDB-36-server-${FULL_PERCONA_VERSION}.rpm;         dnf remove -y dnf-utils;         dnf clean all;         rm -rf /var/cache/dnf /data/db && mkdir -p /data/db;         chown -R 1001:0 /data/db
# Wed, 15 Sep 2021 19:03:12 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 15 Sep 2021 19:03:12 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 15 Sep 2021 19:03:13 GMT
RUN cp /usr/share/doc/Percona-Server-MongoDB-36-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 15 Sep 2021 19:03:14 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 15 Sep 2021 19:03:15 GMT
VOLUME [/data/db]
# Wed, 15 Sep 2021 19:03:15 GMT
COPY file:36bd7798a7bd236f79a692385b6877519fd05ff40f92de87cb1d5c527c35d799 in /entrypoint.sh 
# Wed, 15 Sep 2021 19:03:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Sep 2021 19:03:15 GMT
EXPOSE 27017
# Wed, 15 Sep 2021 19:03:15 GMT
USER 1001
# Wed, 15 Sep 2021 19:03:16 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b23d357120e2db8cefc0c70dd35390b2dac906f4e4f0e8e93f343d06197067`  
		Last Modified: Wed, 15 Sep 2021 19:08:27 GMT  
		Size: 29.0 MB (28996639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913ac5df95984ae5462db61f5465c65f07e40c2b74fb8b9992ac12eeea06b573`  
		Last Modified: Wed, 15 Sep 2021 19:08:33 GMT  
		Size: 56.6 MB (56575236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b78d6ddbf347e51a81cc284a1419db36e210650103d75cc49adcf90a97f7935`  
		Last Modified: Wed, 15 Sep 2021 19:08:23 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af90a7ba2702aae3faaf26daa97bc547f7bb3ae336544ba22262137816b8f90`  
		Last Modified: Wed, 15 Sep 2021 19:08:22 GMT  
		Size: 4.1 KB (4099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622ec864cca61c0c00216a4898baf2629a9d883330a012cea8f1cfe5d89ffeba`  
		Last Modified: Wed, 15 Sep 2021 19:08:23 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c874b0b696a055d913aa67fc2b5586465518e16c3d21789b3eeb00041d01a93c`  
		Last Modified: Wed, 15 Sep 2021 19:08:24 GMT  
		Size: 8.1 MB (8137886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd38664f382d28c02ea685d0a667903b1229f102717be5ce2994d31f361d689`  
		Last Modified: Wed, 15 Sep 2021 19:08:22 GMT  
		Size: 4.5 KB (4542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-3.6.23`

```console
$ docker pull percona@sha256:1b77b0d5186f803b776e9c887f05ff1a3c83105972f377800903d196e99865da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-3.6.23` - linux; amd64

```console
$ docker pull percona@sha256:eee7c8006e798f42f9c0192f009f99bc500a5c30dd1184f1c1308cc367c412c9
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.2 MB (177248603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1f241c8ca6a8cde6f6a8616807ddfa6730184fc0756d2e4f4237e92ef497cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 19:02:51 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY
# Wed, 15 Sep 2021 19:02:51 GMT
ENV PSMDB_VERSION=3.6.23-13.0
# Wed, 15 Sep 2021 19:02:51 GMT
ENV OS_VER=el8
# Wed, 15 Sep 2021 19:02:51 GMT
ENV FULL_PERCONA_VERSION=3.6.23-13.0.el8
# Wed, 15 Sep 2021 19:02:52 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 15 Sep 2021 19:03:11 GMT
RUN set -ex;     dnf install -y         dnf-utils         shadow-utils         curl         procps-ng         jq         oniguruma         Percona-Server-MongoDB-36-shell-${FULL_PERCONA_VERSION}         Percona-Server-MongoDB-36-mongos-${FULL_PERCONA_VERSION};         repoquery -a --location             policycoreutils                 | xargs curl -Lf -o /tmp/policycoreutils.rpm;         repoquery -a --location             Percona-Server-MongoDB-36-server-${FULL_PERCONA_VERSION}                 | xargs curl -Lf -o /tmp/Percona-Server-MongoDB-36-server-${FULL_PERCONA_VERSION}.rpm;         rpm -iv /tmp/policycoreutils.rpm /tmp/Percona-Server-MongoDB-36-server-${FULL_PERCONA_VERSION}.rpm --nodeps;                 rm -rf /tmp/policycoreutils.rpm /tmp/Percona-Server-MongoDB-36-server-${FULL_PERCONA_VERSION}.rpm;         dnf remove -y dnf-utils;         dnf clean all;         rm -rf /var/cache/dnf /data/db && mkdir -p /data/db;         chown -R 1001:0 /data/db
# Wed, 15 Sep 2021 19:03:12 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 15 Sep 2021 19:03:12 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 15 Sep 2021 19:03:13 GMT
RUN cp /usr/share/doc/Percona-Server-MongoDB-36-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 15 Sep 2021 19:03:14 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 15 Sep 2021 19:03:15 GMT
VOLUME [/data/db]
# Wed, 15 Sep 2021 19:03:15 GMT
COPY file:36bd7798a7bd236f79a692385b6877519fd05ff40f92de87cb1d5c527c35d799 in /entrypoint.sh 
# Wed, 15 Sep 2021 19:03:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 15 Sep 2021 19:03:15 GMT
EXPOSE 27017
# Wed, 15 Sep 2021 19:03:15 GMT
USER 1001
# Wed, 15 Sep 2021 19:03:16 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b23d357120e2db8cefc0c70dd35390b2dac906f4e4f0e8e93f343d06197067`  
		Last Modified: Wed, 15 Sep 2021 19:08:27 GMT  
		Size: 29.0 MB (28996639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913ac5df95984ae5462db61f5465c65f07e40c2b74fb8b9992ac12eeea06b573`  
		Last Modified: Wed, 15 Sep 2021 19:08:33 GMT  
		Size: 56.6 MB (56575236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b78d6ddbf347e51a81cc284a1419db36e210650103d75cc49adcf90a97f7935`  
		Last Modified: Wed, 15 Sep 2021 19:08:23 GMT  
		Size: 1.5 KB (1537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af90a7ba2702aae3faaf26daa97bc547f7bb3ae336544ba22262137816b8f90`  
		Last Modified: Wed, 15 Sep 2021 19:08:22 GMT  
		Size: 4.1 KB (4099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622ec864cca61c0c00216a4898baf2629a9d883330a012cea8f1cfe5d89ffeba`  
		Last Modified: Wed, 15 Sep 2021 19:08:23 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c874b0b696a055d913aa67fc2b5586465518e16c3d21789b3eeb00041d01a93c`  
		Last Modified: Wed, 15 Sep 2021 19:08:24 GMT  
		Size: 8.1 MB (8137886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd38664f382d28c02ea685d0a667903b1229f102717be5ce2994d31f361d689`  
		Last Modified: Wed, 15 Sep 2021 19:08:22 GMT  
		Size: 4.5 KB (4542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.0`

```console
$ docker pull percona@sha256:9a62642849bc64bd67cf52139e5cf019d2cdaea1cb02bc55f51073de888deae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-4.0` - linux; amd64

```console
$ docker pull percona@sha256:31d4cff2d5585701f7ae556e92f6bdaede806648c7f4c3628bbcb434121d649f
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187693531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3f99d0b34d3c7268838ba4d28baefdeb669193be773ec03fa910c4fa75c8ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 19:02:05 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-40 release
# Thu, 30 Sep 2021 18:34:11 GMT
ENV PSMDB_VERSION=4.0.27-22
# Thu, 30 Sep 2021 18:34:11 GMT
ENV OS_VER=el8
# Thu, 30 Sep 2021 18:34:11 GMT
ENV FULL_PERCONA_VERSION=4.0.27-22.el8
# Thu, 30 Sep 2021 18:34:11 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 30 Sep 2021 18:34:39 GMT
RUN set -ex;     dnf install -y         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         shadow-utils         curl         procps-ng         oniguruma         jq         dnf-utils;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         percona-server-mongodb-server-${FULL_PERCONA_VERSION}             | xargs curl -Lf -o /tmp/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.rpm --nodeps;         rm -rf /tmp/policycoreutils.rpm /tmp/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.rpm;     dnf clean all;     dnf -y remove dnf-utils;     rm -rf /var/cache/dnf /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Thu, 30 Sep 2021 18:34:40 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Thu, 30 Sep 2021 18:34:40 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Thu, 30 Sep 2021 18:34:41 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Thu, 30 Sep 2021 18:34:41 GMT
ENV GOSU_VERSION=1.11
# Thu, 30 Sep 2021 18:34:45 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Thu, 30 Sep 2021 18:34:48 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Thu, 30 Sep 2021 18:34:48 GMT
VOLUME [/data/db]
# Thu, 30 Sep 2021 18:34:48 GMT
COPY file:f695d42c4add7cde05638253f593b5a3f599ec240da8e578b8c6049c6e1672a9 in /entrypoint.sh 
# Thu, 30 Sep 2021 18:34:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 30 Sep 2021 18:34:48 GMT
EXPOSE 27017
# Thu, 30 Sep 2021 18:34:49 GMT
USER 1001
# Thu, 30 Sep 2021 18:34:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcea4297eb0b78b4a514f468ef3a470f61002376ffc320c6839af51e4eb9b1d6`  
		Last Modified: Wed, 15 Sep 2021 19:08:04 GMT  
		Size: 29.0 MB (28996827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97def03fec3968ed3d7d6e72073bf00b087989ebbb36a99af462750c656963c1`  
		Last Modified: Thu, 30 Sep 2021 18:35:57 GMT  
		Size: 66.1 MB (66105410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf11728a6d953b36bf43fcb46874bf4b1f06cf0bdaa60c6effcc214130483bf`  
		Last Modified: Thu, 30 Sep 2021 18:35:48 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56a4097f7dfacc7aa6e32f05585ce206972bc80a00415e6a045ee39064912c5`  
		Last Modified: Thu, 30 Sep 2021 18:35:46 GMT  
		Size: 4.1 KB (4098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a6d3d554673593d3c45220f904bf815e0f6f14e4794df399e1ba365b243afb`  
		Last Modified: Thu, 30 Sep 2021 18:35:46 GMT  
		Size: 10.6 KB (10575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9334109574ccb964b62b82097c828e0c09652c868d32d698de6b2b9330c0ba69`  
		Last Modified: Thu, 30 Sep 2021 18:35:46 GMT  
		Size: 914.5 KB (914549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40162641e516f299c9f68b4831358b0d5aeff0753ba52f0b295b3d077757be7f`  
		Last Modified: Thu, 30 Sep 2021 18:35:47 GMT  
		Size: 8.1 MB (8137884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e0f04ea5a7a514affdadff5612ce69dfb812883fd516950fb9718de5f2e086`  
		Last Modified: Thu, 30 Sep 2021 18:35:46 GMT  
		Size: 4.6 KB (4557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.0.27`

```console
$ docker pull percona@sha256:9a62642849bc64bd67cf52139e5cf019d2cdaea1cb02bc55f51073de888deae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-4.0.27` - linux; amd64

```console
$ docker pull percona@sha256:31d4cff2d5585701f7ae556e92f6bdaede806648c7f4c3628bbcb434121d649f
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.7 MB (187693531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3f99d0b34d3c7268838ba4d28baefdeb669193be773ec03fa910c4fa75c8ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Wed, 15 Sep 2021 18:20:04 GMT
ADD file:805cb5e15fb6e0bb0326ca33fd2942e068863ce2a8491bb71522c652f31fb466 in / 
# Wed, 15 Sep 2021 18:20:04 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20210915
# Wed, 15 Sep 2021 18:20:05 GMT
CMD ["/bin/bash"]
# Wed, 15 Sep 2021 18:56:15 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 15 Sep 2021 19:02:05 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     dnf install -y /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-40 release
# Thu, 30 Sep 2021 18:34:11 GMT
ENV PSMDB_VERSION=4.0.27-22
# Thu, 30 Sep 2021 18:34:11 GMT
ENV OS_VER=el8
# Thu, 30 Sep 2021 18:34:11 GMT
ENV FULL_PERCONA_VERSION=4.0.27-22.el8
# Thu, 30 Sep 2021 18:34:11 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Thu, 30 Sep 2021 18:34:39 GMT
RUN set -ex;     dnf install -y         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         shadow-utils         curl         procps-ng         oniguruma         jq         dnf-utils;         repoquery -a --location         policycoreutils             | xargs curl -Lf -o /tmp/policycoreutils.rpm;     repoquery -a --location         percona-server-mongodb-server-${FULL_PERCONA_VERSION}             | xargs curl -Lf -o /tmp/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.rpm;     rpm -iv /tmp/policycoreutils.rpm /tmp/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.rpm --nodeps;         rm -rf /tmp/policycoreutils.rpm /tmp/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.rpm;     dnf clean all;     dnf -y remove dnf-utils;     rm -rf /var/cache/dnf /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Thu, 30 Sep 2021 18:34:40 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Thu, 30 Sep 2021 18:34:40 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Thu, 30 Sep 2021 18:34:41 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Thu, 30 Sep 2021 18:34:41 GMT
ENV GOSU_VERSION=1.11
# Thu, 30 Sep 2021 18:34:45 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Thu, 30 Sep 2021 18:34:48 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Thu, 30 Sep 2021 18:34:48 GMT
VOLUME [/data/db]
# Thu, 30 Sep 2021 18:34:48 GMT
COPY file:f695d42c4add7cde05638253f593b5a3f599ec240da8e578b8c6049c6e1672a9 in /entrypoint.sh 
# Thu, 30 Sep 2021 18:34:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 30 Sep 2021 18:34:48 GMT
EXPOSE 27017
# Thu, 30 Sep 2021 18:34:49 GMT
USER 1001
# Thu, 30 Sep 2021 18:34:49 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:a1d0c75327776413fa0db9ed3adcdbadedc95a662eb1d360dad82bb913f8a1d1`  
		Last Modified: Wed, 15 Sep 2021 18:21:25 GMT  
		Size: 83.5 MB (83518086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcea4297eb0b78b4a514f468ef3a470f61002376ffc320c6839af51e4eb9b1d6`  
		Last Modified: Wed, 15 Sep 2021 19:08:04 GMT  
		Size: 29.0 MB (28996827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97def03fec3968ed3d7d6e72073bf00b087989ebbb36a99af462750c656963c1`  
		Last Modified: Thu, 30 Sep 2021 18:35:57 GMT  
		Size: 66.1 MB (66105410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf11728a6d953b36bf43fcb46874bf4b1f06cf0bdaa60c6effcc214130483bf`  
		Last Modified: Thu, 30 Sep 2021 18:35:48 GMT  
		Size: 1.5 KB (1545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56a4097f7dfacc7aa6e32f05585ce206972bc80a00415e6a045ee39064912c5`  
		Last Modified: Thu, 30 Sep 2021 18:35:46 GMT  
		Size: 4.1 KB (4098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a6d3d554673593d3c45220f904bf815e0f6f14e4794df399e1ba365b243afb`  
		Last Modified: Thu, 30 Sep 2021 18:35:46 GMT  
		Size: 10.6 KB (10575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9334109574ccb964b62b82097c828e0c09652c868d32d698de6b2b9330c0ba69`  
		Last Modified: Thu, 30 Sep 2021 18:35:46 GMT  
		Size: 914.5 KB (914549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40162641e516f299c9f68b4831358b0d5aeff0753ba52f0b295b3d077757be7f`  
		Last Modified: Thu, 30 Sep 2021 18:35:47 GMT  
		Size: 8.1 MB (8137884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e0f04ea5a7a514affdadff5612ce69dfb812883fd516950fb9718de5f2e086`  
		Last Modified: Thu, 30 Sep 2021 18:35:46 GMT  
		Size: 4.6 KB (4557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.2`

```console
$ docker pull percona@sha256:22f6a6574e9fc92f57707c572d658b8e0a0cfd219f3b10312bfde53ac849dd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-4.2` - linux; amd64

```console
$ docker pull percona@sha256:48570da428bcbae7c8923c7d4b43aa77cd02500b77369611b9f32beeb989eaf5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.9 MB (177883869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd418dd34c04114eab5806f50e093a3fa0d071576f6ee6ebe5266343ef28a001`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:19:33 GMT
ENV PSMDB_VERSION=4.2.21-21
# Wed, 18 Jan 2023 04:19:33 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:19:33 GMT
ENV FULL_PERCONA_VERSION=4.2.21-21.el8
# Wed, 18 Jan 2023 04:19:33 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:19:36 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-42 release
# Wed, 18 Jan 2023 04:20:13 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         jq         procps-ng         oniguruma         tar         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-42/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:20:14 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:20:14 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:20:15 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:20:15 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:20:18 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:20:19 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:20:20 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:20:20 GMT
COPY file:f695d42c4add7cde05638253f593b5a3f599ec240da8e578b8c6049c6e1672a9 in /entrypoint.sh 
# Wed, 18 Jan 2023 04:20:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:20:20 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:20:20 GMT
USER 1001
# Wed, 18 Jan 2023 04:20:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71caa6db4129a44db98716cbba7e827ba33307904ccfb2a952a8ec6a34114dfd`  
		Last Modified: Wed, 18 Jan 2023 04:22:53 GMT  
		Size: 3.8 MB (3771829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367cf53594355f2219e5f22fbe96493cad27ba0a24c4b763b7ff234662ff44f`  
		Last Modified: Wed, 18 Jan 2023 04:23:02 GMT  
		Size: 77.6 MB (77590229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc33952c473fb2ecc3eb05a07fff5521de2de0ecab9aacff2d4818fee685f54`  
		Last Modified: Wed, 18 Jan 2023 04:22:52 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e01f027f4e2b4e7095465410296e3859908b12e7f249d98b6ed5a514812a7b`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 4.1 KB (4103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3bd715cb6a17468d8ba5a25fb325a9154749185a59232c79dff90080bf1600`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11839898688b9fc880ac72afaf6b1d7257b783af133335fa9a8b13a4ca62d9e7`  
		Last Modified: Wed, 18 Jan 2023 04:22:51 GMT  
		Size: 914.5 KB (914541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e3fffbb0b116805d5a5314ec3a2a1d5e4cd6dbc735b2895bcda7d6b8dce265`  
		Last Modified: Wed, 18 Jan 2023 04:22:52 GMT  
		Size: 8.1 MB (8137890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0df3279c5ef72d8aa8332294439b401c004706ea48f2e18e16ac9836747d6a`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 4.6 KB (4557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.2.21`

```console
$ docker pull percona@sha256:22f6a6574e9fc92f57707c572d658b8e0a0cfd219f3b10312bfde53ac849dd11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-4.2.21` - linux; amd64

```console
$ docker pull percona@sha256:48570da428bcbae7c8923c7d4b43aa77cd02500b77369611b9f32beeb989eaf5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.9 MB (177883869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd418dd34c04114eab5806f50e093a3fa0d071576f6ee6ebe5266343ef28a001`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:19:33 GMT
ENV PSMDB_VERSION=4.2.21-21
# Wed, 18 Jan 2023 04:19:33 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:19:33 GMT
ENV FULL_PERCONA_VERSION=4.2.21-21.el8
# Wed, 18 Jan 2023 04:19:33 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:19:36 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-42 release
# Wed, 18 Jan 2023 04:20:13 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         jq         procps-ng         oniguruma         tar         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-42/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:20:14 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:20:14 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:20:15 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:20:15 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:20:18 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:20:19 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:20:20 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:20:20 GMT
COPY file:f695d42c4add7cde05638253f593b5a3f599ec240da8e578b8c6049c6e1672a9 in /entrypoint.sh 
# Wed, 18 Jan 2023 04:20:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:20:20 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:20:20 GMT
USER 1001
# Wed, 18 Jan 2023 04:20:20 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71caa6db4129a44db98716cbba7e827ba33307904ccfb2a952a8ec6a34114dfd`  
		Last Modified: Wed, 18 Jan 2023 04:22:53 GMT  
		Size: 3.8 MB (3771829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f367cf53594355f2219e5f22fbe96493cad27ba0a24c4b763b7ff234662ff44f`  
		Last Modified: Wed, 18 Jan 2023 04:23:02 GMT  
		Size: 77.6 MB (77590229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc33952c473fb2ecc3eb05a07fff5521de2de0ecab9aacff2d4818fee685f54`  
		Last Modified: Wed, 18 Jan 2023 04:22:52 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e01f027f4e2b4e7095465410296e3859908b12e7f249d98b6ed5a514812a7b`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 4.1 KB (4103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3bd715cb6a17468d8ba5a25fb325a9154749185a59232c79dff90080bf1600`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11839898688b9fc880ac72afaf6b1d7257b783af133335fa9a8b13a4ca62d9e7`  
		Last Modified: Wed, 18 Jan 2023 04:22:51 GMT  
		Size: 914.5 KB (914541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e3fffbb0b116805d5a5314ec3a2a1d5e4cd6dbc735b2895bcda7d6b8dce265`  
		Last Modified: Wed, 18 Jan 2023 04:22:52 GMT  
		Size: 8.1 MB (8137890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0df3279c5ef72d8aa8332294439b401c004706ea48f2e18e16ac9836747d6a`  
		Last Modified: Wed, 18 Jan 2023 04:22:50 GMT  
		Size: 4.6 KB (4557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.4`

```console
$ docker pull percona@sha256:c2dafa0c0c909f39e3bc2797a8056c1da6c752a1c3938ced40ff22b4a9b9af4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-4.4` - linux; amd64

```console
$ docker pull percona@sha256:ef90799b6c78b4905145526af8436abb9e7030508c16630a7ada44ab4c1e9eab
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197203651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bcce826e14c6032a507f32261c208d8b39f4285621dfe2ac47c4abb5ae98c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:18:37 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-44 release
# Wed, 18 Jan 2023 04:18:37 GMT
ENV PSMDB_VERSION=4.4.15-15
# Wed, 18 Jan 2023 04:18:38 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:18:38 GMT
ENV FULL_PERCONA_VERSION=4.4.15-15.el8
# Wed, 18 Jan 2023 04:18:38 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:19:17 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         procps-ng         jq         tar         oniguruma         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-44/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:19:19 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:19:19 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:19:19 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:19:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:19:22 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:19:25 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:19:26 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:19:26 GMT
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c -
# Wed, 18 Jan 2023 04:19:26 GMT
COPY file:2e691e8e3c29008da8a3c85bbe67de1e1e3fbb73ae7ec22473431d5a771341bf in /entrypoint.sh 
# Wed, 18 Jan 2023 04:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:19:27 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:19:27 GMT
USER 1001
# Wed, 18 Jan 2023 04:19:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c41cc2cf9e8596d2f8a3861ef356fd908f851b70912d8147d4933560b59fe`  
		Last Modified: Wed, 18 Jan 2023 04:22:30 GMT  
		Size: 3.8 MB (3771847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de42c3c31979eefa27972f0898d4b6c06b6a3ce0be38edc7cf0e3d0102e7d00`  
		Last Modified: Wed, 18 Jan 2023 04:22:42 GMT  
		Size: 96.9 MB (96896780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f689d1f45b85ad76778dc5bdfffad2e215bd7a2ba870307420bf955dc6c36d`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210a5d5c8a57474a4b102618a13850ffeb288ec6f2a6d7d6dd39ee018b7e1fb6`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 4.1 KB (4102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751f1f8486c3881819cfce66a85ffad20e228b9f1724dac250f4b0dcc673b23f`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4f1dfca76db1a0267ff0e6cd7c72ab2b387e007a107f513f39270fff52768`  
		Last Modified: Wed, 18 Jan 2023 04:22:28 GMT  
		Size: 914.5 KB (914550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aac2df2a9764818a6b20cd2fae9055b399018a784451e365761d15d180ef9c`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 8.1 MB (8137887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb5849c460647ef8082cddfff16085e3b50b84826505b2dfe3cf0ae7dc57e01`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c575a9771417cffee6e3643a33da1e4c5d3f9dcf9652dd0c7270dad999419e37`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 4.6 KB (4559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-4.4.15`

```console
$ docker pull percona@sha256:c2dafa0c0c909f39e3bc2797a8056c1da6c752a1c3938ced40ff22b4a9b9af4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-4.4.15` - linux; amd64

```console
$ docker pull percona@sha256:ef90799b6c78b4905145526af8436abb9e7030508c16630a7ada44ab4c1e9eab
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197203651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bcce826e14c6032a507f32261c208d8b39f4285621dfe2ac47c4abb5ae98c1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:18:37 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-44 release
# Wed, 18 Jan 2023 04:18:37 GMT
ENV PSMDB_VERSION=4.4.15-15
# Wed, 18 Jan 2023 04:18:38 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:18:38 GMT
ENV FULL_PERCONA_VERSION=4.4.15-15.el8
# Wed, 18 Jan 2023 04:18:38 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:19:17 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         procps-ng         jq         tar         oniguruma         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-44/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:19:19 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:19:19 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:19:19 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:19:19 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:19:22 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:19:25 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:19:26 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:19:26 GMT
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c -
# Wed, 18 Jan 2023 04:19:26 GMT
COPY file:2e691e8e3c29008da8a3c85bbe67de1e1e3fbb73ae7ec22473431d5a771341bf in /entrypoint.sh 
# Wed, 18 Jan 2023 04:19:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:19:27 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:19:27 GMT
USER 1001
# Wed, 18 Jan 2023 04:19:27 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98c41cc2cf9e8596d2f8a3861ef356fd908f851b70912d8147d4933560b59fe`  
		Last Modified: Wed, 18 Jan 2023 04:22:30 GMT  
		Size: 3.8 MB (3771847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de42c3c31979eefa27972f0898d4b6c06b6a3ce0be38edc7cf0e3d0102e7d00`  
		Last Modified: Wed, 18 Jan 2023 04:22:42 GMT  
		Size: 96.9 MB (96896780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f689d1f45b85ad76778dc5bdfffad2e215bd7a2ba870307420bf955dc6c36d`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:210a5d5c8a57474a4b102618a13850ffeb288ec6f2a6d7d6dd39ee018b7e1fb6`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 4.1 KB (4102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751f1f8486c3881819cfce66a85ffad20e228b9f1724dac250f4b0dcc673b23f`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44e4f1dfca76db1a0267ff0e6cd7c72ab2b387e007a107f513f39270fff52768`  
		Last Modified: Wed, 18 Jan 2023 04:22:28 GMT  
		Size: 914.5 KB (914550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aac2df2a9764818a6b20cd2fae9055b399018a784451e365761d15d180ef9c`  
		Last Modified: Wed, 18 Jan 2023 04:22:29 GMT  
		Size: 8.1 MB (8137887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb5849c460647ef8082cddfff16085e3b50b84826505b2dfe3cf0ae7dc57e01`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 13.2 KB (13205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c575a9771417cffee6e3643a33da1e4c5d3f9dcf9652dd0c7270dad999419e37`  
		Last Modified: Wed, 18 Jan 2023 04:22:27 GMT  
		Size: 4.6 KB (4559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-5.0`

```console
$ docker pull percona@sha256:7c16b269861429142df329b3f55e61c8621edc274a3d59ab5fe184657f551fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-5.0` - linux; amd64

```console
$ docker pull percona@sha256:a8db04140b3e37a9be166deeeb97e4228375ba532f3bf818b7e54182b002863e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.6 MB (212594076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696d23b4d5266160e37dfc0550bf789481ec5a4c4c825d910d4e75f943c286c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:17:28 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-50 release
# Wed, 18 Jan 2023 04:17:28 GMT
ENV PSMDB_VERSION=5.0.10-9
# Wed, 18 Jan 2023 04:17:28 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:17:28 GMT
ENV FULL_PERCONA_VERSION=5.0.10-9.el8
# Wed, 18 Jan 2023 04:17:28 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:18:09 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         procps-ng         jq         tar         oniguruma         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-50/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:18:10 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:18:11 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:18:11 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:18:11 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:18:14 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:18:20 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:18:20 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:18:21 GMT
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c -
# Wed, 18 Jan 2023 04:18:21 GMT
COPY file:e6e9d8018241e8459aecdafe395233cbfaee0351829ed9f41c721972a859a6d6 in /entrypoint.sh 
# Wed, 18 Jan 2023 04:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:18:21 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:18:21 GMT
USER 1001
# Wed, 18 Jan 2023 04:18:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f202921f1a6cc2045655401c4ad2ce7f9165bd3fce81ecb9b1b49ecbeb3df86`  
		Last Modified: Wed, 18 Jan 2023 04:22:06 GMT  
		Size: 3.8 MB (3771866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd41e7c72f649593b8bbf98cfe7f429445d12731867dd6ed88ec855b65614bb`  
		Last Modified: Wed, 18 Jan 2023 04:22:19 GMT  
		Size: 112.3 MB (112287185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4deb4a3e3a31a43bce7d25c9b2dc9ca54297a6a0bf4aa766c6b3128a0dbf4`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3311a036364587c7680db9c0dbace743855fd0fc8fdd7d714772296ae41bec`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 4.1 KB (4103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dc27a833b5f43002c7707e1ea927f2aa6bb8a69034c9eda9834d20c7c2e708`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c83d7c98080286cab62622742f0903d90b616b0866dce4a56ef17210c7abdb`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 914.5 KB (914550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab687d392d1b709ce438044824eb9b10b74304785e8478b1cf601fa15d955b`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 8.1 MB (8137889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa6e041ed45417d5222beb6071fd24c439ca7cea189b3172a0da47c46a6cd6d`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f721f2840e3540a52ac403dc9e77a977b197fdc8472cc93620ef1fc359a2b45`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 4.6 KB (4559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `percona:psmdb-5.0.10`

```console
$ docker pull percona@sha256:7c16b269861429142df329b3f55e61c8621edc274a3d59ab5fe184657f551fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `percona:psmdb-5.0.10` - linux; amd64

```console
$ docker pull percona@sha256:a8db04140b3e37a9be166deeeb97e4228375ba532f3bf818b7e54182b002863e
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.6 MB (212594076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:696d23b4d5266160e37dfc0550bf789481ec5a4c4c825d910d4e75f943c286c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["mongod"]`

```dockerfile
# Tue, 17 Jan 2023 21:49:22 GMT
ADD file:1acf395d34d9955a822a657c8cd572ab987a39763ef446931d48d7b17c6ddde0 in / 
# Tue, 17 Jan 2023 21:49:23 GMT
CMD ["/bin/bash"]
# Wed, 18 Jan 2023 04:15:59 GMT
LABEL org.opencontainers.image.authors=info@percona.com
# Wed, 18 Jan 2023 04:17:28 GMT
RUN set -ex;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 99DB70FAE1D7CE227FB6488205B555B38483C65D 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1;     gpg --batch --export --armor 430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A > ${GNUPGHOME}/RPM-GPG-KEY-Percona;     gpg --batch --export --armor 99DB70FAE1D7CE227FB6488205B555B38483C65D > ${GNUPGHOME}/RPM-GPG-KEY-centosofficial;     gpg --batch --export --armor 94E279EB8D8F25B21810ADF121EA45AB2F86D6A1 > ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     rpmkeys --import ${GNUPGHOME}/RPM-GPG-KEY-Percona ${GNUPGHOME}/RPM-GPG-KEY-centosofficial ${GNUPGHOME}/RPM-GPG-KEY-EPEL-8;     curl -Lf -o /tmp/percona-release.rpm https://repo.percona.com/yum/percona-release-latest.noarch.rpm;     rpmkeys --checksig /tmp/percona-release.rpm;     rpm -i /tmp/percona-release.rpm;     rm -rf "$GNUPGHOME" /tmp/percona-release.rpm;     rpm --import /etc/pki/rpm-gpg/PERCONA-PACKAGING-KEY;     percona-release enable psmdb-50 release
# Wed, 18 Jan 2023 04:17:28 GMT
ENV PSMDB_VERSION=5.0.10-9
# Wed, 18 Jan 2023 04:17:28 GMT
ENV OS_VER=el8
# Wed, 18 Jan 2023 04:17:28 GMT
ENV FULL_PERCONA_VERSION=5.0.10-9.el8
# Wed, 18 Jan 2023 04:17:28 GMT
ENV K8S_TOOLS_VERSION=0.5.0
# Wed, 18 Jan 2023 04:18:09 GMT
RUN set -ex;     dnf -y install         percona-server-mongodb-mongos-${FULL_PERCONA_VERSION}         percona-server-mongodb-shell-${FULL_PERCONA_VERSION}         procps-ng         jq         tar         oniguruma         policycoreutils;             curl -Lf -o /tmp/Percona-Server-MongoDB-server.rpm http://repo.percona.com/psmdb-50/yum/release/8/RPMS/x86_64/percona-server-mongodb-server-${FULL_PERCONA_VERSION}.x86_64.rpm;     rpmkeys --checksig /tmp/Percona-Server-MongoDB-server.rpm;     rpm -iv /tmp/Percona-Server-MongoDB-server.rpm --nodeps;     rm -rf /tmp/Percona-Server-MongoDB-server.rpm;     dnf clean all;     rm -rf /var/cache/dnf /var/cache/yum /data/db && mkdir -p /data/db;     chown -R 1001:0 /data/db
# Wed, 18 Jan 2023 04:18:10 GMT
RUN useradd -u 1001 -r -g 0 -s /sbin/nologin             -c "Default Application User" mongodb
# Wed, 18 Jan 2023 04:18:11 GMT
COPY file:b7c621ae843e72f20dd7ef20e8c42b89234688ceed5018592c3e5bfa61048aad in /licenses/LICENSE.Dockerfile 
# Wed, 18 Jan 2023 04:18:11 GMT
RUN cp /usr/share/doc/percona-server-mongodb-server/LICENSE-Community.txt /licenses/LICENSE.Percona-Server-for-MongoDB
# Wed, 18 Jan 2023 04:18:11 GMT
ENV GOSU_VERSION=1.11
# Wed, 18 Jan 2023 04:18:14 GMT
RUN set -eux;     curl -Lf -o /usr/bin/gosu https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64;     curl -Lf -o /usr/bin/gosu.asc https://github.com/tianon/gosu/releases/download/${GOSU_VERSION}/gosu-amd64.asc;         export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;     gpg --batch --verify /usr/bin/gosu.asc /usr/bin/gosu;     rm -rf "$GNUPGHOME" /usr/bin/gosu.asc;         chmod +x /usr/bin/gosu;     curl -f -o /licenses/LICENSE.gosu https://raw.githubusercontent.com/tianon/gosu/${GOSU_VERSION}/LICENSE
# Wed, 18 Jan 2023 04:18:20 GMT
RUN set -ex;     curl -fSL https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/k8s-mongodb-initiator -o /usr/local/bin/k8s-mongodb-initiator;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/mongodb-healthcheck -o /usr/local/bin/mongodb-healthcheck;     curl -fSL  https://github.com/percona/mongodb-orchestration-tools/releases/download/${K8S_TOOLS_VERSION}/SHA256SUMS -o /tmp/SHA256SUMS;     echo "$(grep 'k8s-mongodb-initiator' /tmp/SHA256SUMS | awk '{print $1}')" /usr/local/bin/k8s-mongodb-initiator | sha256sum -c -;     echo "$(grep 'mongodb-healthcheck' /tmp/SHA256SUMS   | awk '{print $1}')" /usr/local/bin/mongodb-healthcheck   | sha256sum -c -;     rm -f /tmp/SHA256SUMS;         chmod 0755 /usr/local/bin/k8s-mongodb-initiator /usr/local/bin/mongodb-healthcheck
# Wed, 18 Jan 2023 04:18:20 GMT
VOLUME [/data/db]
# Wed, 18 Jan 2023 04:18:21 GMT
RUN set -ex;     curl -fSL https://cdnjs.cloudflare.com/ajax/libs/js-yaml/4.1.0/js-yaml.min.js -o /js-yaml.js;     echo "45dc3dd03dc07a06705a2c2989b8c7f709013f04bd5386e3279d4e447f07ebd7  /js-yaml.js" | sha256sum -c -
# Wed, 18 Jan 2023 04:18:21 GMT
COPY file:e6e9d8018241e8459aecdafe395233cbfaee0351829ed9f41c721972a859a6d6 in /entrypoint.sh 
# Wed, 18 Jan 2023 04:18:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jan 2023 04:18:21 GMT
EXPOSE 27017
# Wed, 18 Jan 2023 04:18:21 GMT
USER 1001
# Wed, 18 Jan 2023 04:18:21 GMT
CMD ["mongod"]
```

-	Layers:
	-	`sha256:3d7ae5dae7629d90868159ba27a38c83a54dea34fc421277cc51abc92ecc4917`  
		Last Modified: Tue, 17 Jan 2023 21:50:06 GMT  
		Size: 87.4 MB (87448979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f202921f1a6cc2045655401c4ad2ce7f9165bd3fce81ecb9b1b49ecbeb3df86`  
		Last Modified: Wed, 18 Jan 2023 04:22:06 GMT  
		Size: 3.8 MB (3771866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd41e7c72f649593b8bbf98cfe7f429445d12731867dd6ed88ec855b65614bb`  
		Last Modified: Wed, 18 Jan 2023 04:22:19 GMT  
		Size: 112.3 MB (112287185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f4deb4a3e3a31a43bce7d25c9b2dc9ca54297a6a0bf4aa766c6b3128a0dbf4`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3311a036364587c7680db9c0dbace743855fd0fc8fdd7d714772296ae41bec`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 4.1 KB (4103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8dc27a833b5f43002c7707e1ea927f2aa6bb8a69034c9eda9834d20c7c2e708`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 10.6 KB (10578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58c83d7c98080286cab62622742f0903d90b616b0866dce4a56ef17210c7abdb`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 914.5 KB (914550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ab687d392d1b709ce438044824eb9b10b74304785e8478b1cf601fa15d955b`  
		Last Modified: Wed, 18 Jan 2023 04:22:04 GMT  
		Size: 8.1 MB (8137889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa6e041ed45417d5222beb6071fd24c439ca7cea189b3172a0da47c46a6cd6d`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 13.2 KB (13204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f721f2840e3540a52ac403dc9e77a977b197fdc8472cc93620ef1fc359a2b45`  
		Last Modified: Wed, 18 Jan 2023 04:22:03 GMT  
		Size: 4.6 KB (4559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
