## `azul-zulu:17-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:fd5ec14cba67aaf6c56650a3e9cf732fcaa86a76fb0fcff813c15c95e4f27f90
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ca7625912be8e8ff32cb331e9481950f31d4ea6be0c61e42449652a246812ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220216317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccdee586575bb7b09281de126c36155e092ab3511526d902e2f26ec125eb8e49`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:18 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:18 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 02 Oct 2026 18:22:18 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41d1d227da231d49fbca709d2f6fed55c73f251e29c5daa269115541b97e341`  
		Last Modified: Fri, 02 Oct 2026 18:22:33 GMT  
		Size: 151.3 MB (151336763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:de3df5ff486844bfc42411fc20339700727fb7bffb33bf52e08590a4db5098a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d9126e9c1d8dea7af35fd6ff9f350d91939886bbee630e91c3544148a79cbfa`

```dockerfile
```

-	Layers:
	-	`sha256:43a331423f82a95d80c691820f26df650756d758561627c65e111cf078f410ed`  
		Last Modified: Fri, 02 Oct 2026 18:22:30 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a21886cf4cc7791ce10962164c7a5d0f972de7b32a7d4b335fbf12d60a2cca72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218800377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b3b0441adbdfaa5bc9b45b3854bc7af6c5a919397691f865fb17e65c0e7e68`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:26 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:26 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 02 Oct 2026 18:22:26 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f071da207819b557c20846ca12bf9cb797ff44a7740df1b2a7890f69b94caddf`  
		Last Modified: Fri, 02 Oct 2026 18:22:43 GMT  
		Size: 151.3 MB (151342193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:450415a1008c73ed297d29097dcf0f287c7bdd2bd9dcd62b28dc8231425b4687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50b4d933ad1b60f983af677c865c9fbc29914e2f28b8f9037a49231949183ade`

```dockerfile
```

-	Layers:
	-	`sha256:772ada039e03b0512bb240df150eb33dbac0a3242eeb0347051cbd53d9a3f186`  
		Last Modified: Fri, 02 Oct 2026 18:22:39 GMT  
		Size: 9.6 KB (9592 bytes)  
		MIME: application/vnd.in-toto+json
