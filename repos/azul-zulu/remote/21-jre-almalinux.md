## `azul-zulu:21-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:d548adb12e0cbd13a1de7942f3e016ea8e2a8750a95f90dd5cdba448a229ff2a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0a27aeb0cfcb3f12eb85bef64067548a0b85742037ea15b28bb67bae7abc479a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.9 MB (144860264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690d741edaf3ab06640abb354fe260d5a426c6576c78fae96b71fb6eadfa8833`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:36 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:36 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 02 Oct 2026 18:22:36 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4012688dcff0b82df6735c74bf89d6ab1d7ee6d35fbd55c0419cc772bee2d533`  
		Last Modified: Fri, 02 Oct 2026 18:22:49 GMT  
		Size: 76.0 MB (75980710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5cd7d589505fc0cb02ee7ffcd33c26c1366a0d509bd78c85e712ad56f114e1ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1595dd64f6f180da111830b15f6d80946ba6e3b28f4a4aef5062f424e0dbf2b3`

```dockerfile
```

-	Layers:
	-	`sha256:4142126d90ca823994ea8a1a23a9dda857d1062b62d658bbf487c0602435bd3a`  
		Last Modified: Fri, 02 Oct 2026 18:22:46 GMT  
		Size: 9.2 KB (9151 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:95255356b025691c9da5ed0316135b1bf29558ec045d2c00670ddffa2d063b2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.1 MB (143100009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dc4bd72bfd58c28ebdcf54f0edb4281797b889011aa4e777280c632a54e1dd6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:01 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:01 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 02 Oct 2026 18:23:01 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac2a362bf059f17f8b909b8a4dfb3d479ea3b982f6f6aa795666d1f0dc7b0c5b`  
		Last Modified: Fri, 02 Oct 2026 18:23:14 GMT  
		Size: 75.6 MB (75641825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f3beef7e3ad2b797e4f829c66a459a982ac9bb7f87130f81105ea0ef31eb45c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8d16fe2d271e62e95adda9cb241902d5ca6bf0e57e40d177568e65b6f752de5`

```dockerfile
```

-	Layers:
	-	`sha256:f09a5d9caec844c12c5fb8a6701b2b8fd504d7b91e76249a2935ba35a9b6b5b6`  
		Last Modified: Fri, 02 Oct 2026 18:23:13 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json
