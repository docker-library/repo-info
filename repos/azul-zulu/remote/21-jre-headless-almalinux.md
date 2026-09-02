## `azul-zulu:21-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:bc253f5c9f0d922ed0a7a0371b1d761e12297fd5727afafd62073435a9c9a5d0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:61107d5d5abd7540c5ec8834b7d1281ba0a17d0ce8bfb933dd240a3899d08a47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.4 MB (144386598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e966821ebe576094e0824ae53c7b0d9c6bb52dde8f0efba5dfd1f74084001b64`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:02 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:02 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 02 Sep 2026 22:17:02 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840832637e2cc48f150c50d67e2a88ea243150f3d857c1c9798ea40fa6bf7069`  
		Last Modified: Wed, 02 Sep 2026 22:17:15 GMT  
		Size: 75.5 MB (75523930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:225f5e4c7b496793dd79e723e3aa999449d7b89e80438c4f2d8ebd141ba86dde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f7920eb67ba05f9bd9562b4f2d48eed8c0749fcda61fe1f23a9d9d9df9e44f3`

```dockerfile
```

-	Layers:
	-	`sha256:3166981d0a49e9a38524de114bb16117e2dbcbea5fa68c584f67dba46fca2df2`  
		Last Modified: Wed, 02 Sep 2026 22:17:13 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f494cfd7596bb06092f25177473c3649f98c00ab91c13dba1657cadff1a676ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142597194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04a8e35d17a6bad4cc3c34c4a1715cc1562dfb22ce2f07dfda4cfdb96ceb086`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:22 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:22 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 02 Sep 2026 22:18:22 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e68af925e99d906fd5af935ec95bd31edbffcfbdcfc4f62e220bbed80be904`  
		Last Modified: Wed, 02 Sep 2026 22:18:35 GMT  
		Size: 75.2 MB (75165392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:502afe929b9673b4aeaf1929f8ecc0231d23ccfbe998b42820b9e68456596bf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dbf4f0490ddb777f69f5f3a499372ff5f21f3454d4aa3178f388b66d1e0cafd`

```dockerfile
```

-	Layers:
	-	`sha256:358bfe5736b7a6dbb165b78462d3b793185eaa138dcb40b5d962a2433f5a2439`  
		Last Modified: Wed, 02 Sep 2026 22:18:33 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
