## `azul-zulu:8-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:cbb8b9fd93f8d9e43502f118b7b5b34b3b8685ff2aa888276b775bfdc188da3a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:261f115e9508f2d31317c81d0c764a443faa9f74484eaef400f1a70f3f48fd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.2 MB (117224707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cc72ec0275ca285c66760bf9462f74c3c12805c6be75c296b0e3c5d2221dbb`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:51 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:21:51 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:21:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.504-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:21:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 02 Oct 2026 18:21:51 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b9d195eba1ae814944564c0fefb6b17c37e96fa9b5736ec5d458bc2d2afa61`  
		Last Modified: Fri, 02 Oct 2026 18:21:59 GMT  
		Size: 48.3 MB (48345153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bf4d3f36b78db5e60db42d43de0fdcda828fd2f0d8223b3115ee18fb60bc0b36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f1619d8e60ff29efd422fd211e1b1693918faeff35db92d01bf00ed1bc73167`

```dockerfile
```

-	Layers:
	-	`sha256:8039c2f58ee1937a3d4e92495efc77a2e69b590b153bd588e17eeb390e67c538`  
		Last Modified: Fri, 02 Oct 2026 18:21:58 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3ca1f859f624957634ede9f883bd11e2c325b7418eafca41131f47273ba7f968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.0 MB (116044602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4153f260a677c78103e30f6dc981ba33dfcb173a6d9ad8d7707d8eb2cec2984c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:48 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:21:48 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:21:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.504-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:21:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 02 Oct 2026 18:21:48 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf5974d2ccd2dc1c65d895e68c0f8498f358dbca1a157f4b17b2ccc9653cf99`  
		Last Modified: Fri, 02 Oct 2026 18:21:57 GMT  
		Size: 48.6 MB (48586418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5fd555e888046ccb7d90262b53060679924aa0b0c8c79316f369a830272e381e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b1d1c9ed444737f235d1c974dadabb62c355ee261de532a2d4bc9ca7507b700`

```dockerfile
```

-	Layers:
	-	`sha256:c764e639e66ac60d287dde2ab65a8300ebe5089a85047707183bcc979ee7819f`  
		Last Modified: Fri, 02 Oct 2026 18:21:55 GMT  
		Size: 9.3 KB (9312 bytes)  
		MIME: application/vnd.in-toto+json
