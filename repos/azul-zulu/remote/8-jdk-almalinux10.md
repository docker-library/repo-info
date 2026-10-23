## `azul-zulu:8-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:92c816bd9cba775014a25b40a301a5dcfd5e1a77e15aa17ac81952b89bca17e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6f771bd877ee3bb5d051e1bc911c7bd3967b61458c9c8a8f4177c7d1c4279a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.2 MB (132209762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e270f411ea985300c4481555771ece47d2e36350113fc79080c38862165d98`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 19:58:23 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:58:23 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:58:23 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 19:58:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:58:23 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7aecd4822cd439bd65874dc2ba9ae3a471212b386fbdf88aee270137b3a4d33`  
		Last Modified: Fri, 23 Oct 2026 19:58:33 GMT  
		Size: 63.3 MB (63330208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0e12a90ffa803f530d4fcb431e29b22c9ef819918e47a22c7172f077acbe945d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31440ecbfc57138693e00ef0fee01dd8308a9fa8e4d9c685d8de17db3350f536`

```dockerfile
```

-	Layers:
	-	`sha256:b154dd8f8080d2d4ac6c9b782b7e8c49b3f212933c15b5259c6fb32000f44ca1`  
		Last Modified: Fri, 23 Oct 2026 19:58:31 GMT  
		Size: 9.4 KB (9446 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a985f283cc09dc056839fb9de559206edf2077be9089feb74021cf8ef3940a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131157710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13d38f34d3eb869d99c813abbd2036cebdef37ec2f6f080f75fd522e55f9206`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 19:57:35 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 19:57:35 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 19:57:35 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 19:57:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Fri, 23 Oct 2026 19:57:35 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e94d87f6b3f9e6d450adb2ba38bd9bf289996ab54a38a64e95b96eed8a0b5b`  
		Last Modified: Fri, 23 Oct 2026 19:57:45 GMT  
		Size: 63.7 MB (63699526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:817faf79e7f0d77e076cdbaed05d0ec3b543aa0665eb01b590ed96bc69e55e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5d2c3a90a0573fa0f5d6384a2cd0cdb1d86c945eafb71ae7b1972660016568`

```dockerfile
```

-	Layers:
	-	`sha256:8e68b116ff32e84d2ab3cc64d44e0982b33c9862d6a6e78e838fac3c37fa5faf`  
		Last Modified: Fri, 23 Oct 2026 19:57:43 GMT  
		Size: 9.6 KB (9550 bytes)  
		MIME: application/vnd.in-toto+json
