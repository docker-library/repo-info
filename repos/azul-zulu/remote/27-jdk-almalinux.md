## `azul-zulu:27-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:8b30ab622e93165d7a307e77f72206a418b91cc31e96c6bbb090b1ca80835ba6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:41d0c19109b0939efdbfe4b6d70738058ef05e21bcd9c3b01b9c0bcd6d98674f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.0 MB (253992336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a25ac838a9fa89dba1d1082a630f6a268d784b26b181b79414fa2152ec6325b`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:14 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:14 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 02 Oct 2026 18:23:14 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:23:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dde2ad921d9efb4497faad0ce34b766b6aeece5b1cd6793b71fab1a4f53714f`  
		Last Modified: Fri, 02 Oct 2026 18:23:33 GMT  
		Size: 185.1 MB (185112782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:77adffb969cf3a9fe1678e68fbe392a6a83a08883f1775664512238d45a187ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d58813aed9fc50fb4666753403b7200bff10200fad61447d6ce230faf3971a`

```dockerfile
```

-	Layers:
	-	`sha256:734c08a06023a947ff06f7c20cfc194d7ff21e1ac359d68796171c7be3678b8d`  
		Last Modified: Fri, 02 Oct 2026 18:23:27 GMT  
		Size: 9.5 KB (9467 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:04df21e61c1497064158aea123d38cdcc865133998b3c7abebf57f7e24a3a54e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252246682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1278919acc5ce7d96bd93aebca2e5ec867e51bf832a54cd20d21a5f53aa96bd0`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:24:14 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:24:14 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:24:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:24:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Fri, 02 Oct 2026 18:24:14 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:24:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45fd09736f0df487130fcfc7e28ac548661351abc1435321743e84de32b96ce`  
		Last Modified: Fri, 02 Oct 2026 18:24:33 GMT  
		Size: 184.8 MB (184788498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b90895ae9bed3b07c5e01cb694dff2dc582d1485c00644fed9e253ee1e563d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:486f1394613049d4c766b395db0a5b285bf1dbb7be238e654404d9cefd2e2fe4`

```dockerfile
```

-	Layers:
	-	`sha256:fb05fa12438ae2759c4e93d3badab207faac5fbc99daa44d5d412847bf1fb356`  
		Last Modified: Fri, 02 Oct 2026 18:24:29 GMT  
		Size: 9.6 KB (9571 bytes)  
		MIME: application/vnd.in-toto+json
