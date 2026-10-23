## `azul-zulu:25-almalinux10`

```console
$ docker pull azul-zulu@sha256:dd85a579b00d831c72a9d7bfd4c7f253538d13adf9be937f8decb9e6ca12ee20
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8138802d19ed4826c59cbc84e735b363c5137e11a05887cd9478c85b41ed05ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252703221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7920bf36cbeb4ad1005429fa1776c4e242c162dadf75df11041b2306f521f5`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:02:24 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:02:24 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:02:24 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:02:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:02:24 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:02:24 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baf2180eea7a0ab45977a822cdaaa352607536c268b67681feaf47f2aaa2e5c`  
		Last Modified: Fri, 23 Oct 2026 20:02:42 GMT  
		Size: 183.8 MB (183823667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9cdf1777d439f7793d96ca82d5addb4deaadd5eb08e99f0d193da7886d8d2729
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58355224e0b8410436d298104e04d675d693d830104a27ce6f1a8644bed0c5b5`

```dockerfile
```

-	Layers:
	-	`sha256:42762500429435b4adca81c7b6e55c766f8133b451c64ecdfdcbba469b95f2d9`  
		Last Modified: Fri, 23 Oct 2026 20:02:37 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3e6110d556c57e90f5d273b2e4e3dd9ec6d04801c36757207c17c933b014bd09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.4 MB (250402267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79485dbcaa7b5bdc12e0906e3d1b766b2185f32148e414010e3bc04e74616da1`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:04:33 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:04:33 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:04:33 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:04:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Fri, 23 Oct 2026 20:04:33 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:04:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bd8d7bda4080c88933e603173b434ed52c76c703f8197197b4e8d0124765bb`  
		Last Modified: Fri, 23 Oct 2026 20:04:55 GMT  
		Size: 182.9 MB (182944083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c987394366921f28518ecc55abcb26337440d9feb021e616a3c52312b583fb28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25d2f5148d1237601efc80b5bc87da721513af9a5256b5d2a5f78db26ae3002`

```dockerfile
```

-	Layers:
	-	`sha256:b3f941ef38aa6def8a32f09783b9ed1e685be50878231b2ae9634483f46f4be9`  
		Last Modified: Fri, 23 Oct 2026 20:04:48 GMT  
		Size: 9.6 KB (9579 bytes)  
		MIME: application/vnd.in-toto+json
