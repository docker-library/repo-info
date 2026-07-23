## `azul-zulu:25-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:6876f8da345f0ea25393b50a70e6e46d8ea41c6bd06d1df3c8bf3d28ebb33efa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:331bea84a6583ad811f9211251b5dae072b4857c08392d434ec94ca66207a847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158382971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:173035836f3e7ce2d188f76b4ba3eda20dfc2f3ac56d5795c5003707e969ec48`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:30:14 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:14 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.4-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:30:14 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:299122aebd0159a145cce1616bf3be4b607836fcd7289eb0d46bfbb905b20772`  
		Last Modified: Thu, 23 Jul 2026 22:30:28 GMT  
		Size: 89.8 MB (89820509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3ffa3b3f9d41d8ff803bd1ccb467eef25c990447006f35a2bc6ba9f494a32dbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239fe05bfc36bba98f97ce667214035edf0ecad45203feb0abdfa8f916dfc8ce`

```dockerfile
```

-	Layers:
	-	`sha256:ac7a59bd484d212d83dda13b4b0d7591293cf8158520ba9141a76a319e5bd2e9`  
		Last Modified: Thu, 23 Jul 2026 22:30:25 GMT  
		Size: 9.1 KB (9138 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e63c0d22d36ff8f4deaf859360bef69a9bdc4b070e0af5a26f1e776b2e81a41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156551586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93a985ffc86779b0b6f247bc23779aabdf6b72dd1cf12b4af2833a4b7fc54c27`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:31:18 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:18 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.4-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:31:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:31:18 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca1d2085d118df9201276c81e88f9d0643781270fbb335410b82987e0de1e56`  
		Last Modified: Thu, 23 Jul 2026 22:31:32 GMT  
		Size: 89.4 MB (89409625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:99538be24dac33b04fb1ec5e66d8175fff80c376d2fa69030a13d1535a01d450
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1517b18f278c4f50f8b9875c0bc93a870af80ee471c28ebaa3a0ab3b521a1e31`

```dockerfile
```

-	Layers:
	-	`sha256:175e41ebc908e11fde6c608f50bb13db11ff00e71137f6c435418530097e3e8f`  
		Last Modified: Thu, 23 Jul 2026 22:31:29 GMT  
		Size: 9.2 KB (9230 bytes)  
		MIME: application/vnd.in-toto+json
