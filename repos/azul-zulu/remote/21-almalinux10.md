## `azul-zulu:21-almalinux10`

```console
$ docker pull azul-zulu@sha256:58928b8d94a5047c287be7821befe271f77f73c0db2f826e3831d3185a40ff61
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e9dafa3568659cc12c3502c217cae6f4954a0a0e48e59e66244068fd385a1494
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232915506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b03c27992f28f272b89c53aec63eb39d2ae6302eca2ba05d98b122eda03eb0`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:52 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:52 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:35:52 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc1714862d8cf0bc3cbf399e3557d250d597ef10cf5a9f005d17205479f4a39`  
		Last Modified: Wed, 19 Aug 2026 17:36:09 GMT  
		Size: 164.4 MB (164353044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:48ef33d3872541b1cc5c6a04c59221d9a4aa0d947caff68ab626b2b993548fc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fc3448143da6f534422fcd0a927e9bde3e65d52f94a47ab9fee2d49bdbb4732`

```dockerfile
```

-	Layers:
	-	`sha256:42959ab4b4c083275681937a0541b853fb2178af99e5a81e7b23475af69e4d8e`  
		Last Modified: Wed, 19 Aug 2026 17:36:05 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:39104669b4d42b5b6757705d35b6731207283a964881ffd574520ed01a0c0a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.8 MB (230774249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b115ba00f40d42b6bbf60e393c77d4d4e3b3c6fccac3c1405bd8f9f43db1c6f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:36:02 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:02 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:02 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e14e0b791c9f72b696211087b781a11d3c959f0614dc41793e9b4e6d1043ee34`  
		Last Modified: Wed, 19 Aug 2026 17:36:19 GMT  
		Size: 163.6 MB (163632288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c049b3bab1c7036f00958973d871d733e121db16b26d4bfd5a709f9542c63d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a730d74d13985d74c81e7b2a26d570a3c5f616b68773ef5d6fe6abc8978d557`

```dockerfile
```

-	Layers:
	-	`sha256:71ed212c17b8084ee0ed1c56b195201fb748e810d8fc04b1667b231716b94812`  
		Last Modified: Wed, 19 Aug 2026 17:36:15 GMT  
		Size: 9.6 KB (9592 bytes)  
		MIME: application/vnd.in-toto+json
