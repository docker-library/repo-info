## `azul-zulu:27-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:84d59133319e09edf901b5504c3df961a6974ffaf3b00633791c826fc0a12bac
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:21b04b230fc771c562bea7a08b31cd3ea72720c25a208acd8c9514cd35804286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.9 MB (253917163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b508849d539c21290b6aa583882e818e668875e4730904177f84d1bcade8a6`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:28:22 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:28:22 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:28:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:28:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 27 Oct 2026 17:28:22 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:28:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d6ccdd03a56aa9a046e9c3e33c33c040a0e03ee1582d0bbdf02c1c9fa7e1c8`  
		Last Modified: Tue, 27 Oct 2026 17:28:40 GMT  
		Size: 184.8 MB (184817888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:24b65c2078f419954797e93eccb947eb86d6dc02727a42453fd9fe2f10b23768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b82942415716c1a43403f2e443e39064d1b1ac27c142ff3aac95c4f1857bf95`

```dockerfile
```

-	Layers:
	-	`sha256:0ae6070a8c4c6bebe3bcb88c1c6d21926261978227f766ac2ffa5e792ae3456a`  
		Last Modified: Tue, 27 Oct 2026 17:28:36 GMT  
		Size: 9.2 KB (9232 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:819aa1bb7bcfd8400d50e74e1207f0305fa29f24fa35c062b782a5f78d9a07bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.2 MB (252160246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227eec8ec4a1a58ed32a4f2d2614367a72a9156ec1fdce49fdd9605ad9891633`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:24:34 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:24:34 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:24:34 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-headless-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:24:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 27 Oct 2026 17:24:34 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:24:34 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bea44ca5442afe9e9b02ce1a958f9dfe773500876b71a073f73ff8bf15f6900`  
		Last Modified: Tue, 27 Oct 2026 17:24:53 GMT  
		Size: 184.5 MB (184493735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:103493eb0776f57e6ce7e4879b7b585235ae9e5a6a22e502f66cbcc378504797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc153afd2ef7ae33c03933fdb06662202a8f0cdf9799af58c010b6e6be98dd2`

```dockerfile
```

-	Layers:
	-	`sha256:355664f57fdebd5e81e087ab0c6eef8d66edb8fedf0d4435fa2b8987d580dc5b`  
		Last Modified: Tue, 27 Oct 2026 17:24:49 GMT  
		Size: 9.3 KB (9324 bytes)  
		MIME: application/vnd.in-toto+json
