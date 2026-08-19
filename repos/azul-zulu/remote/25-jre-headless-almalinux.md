## `azul-zulu:25-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:f4bc9b2bcccadf41d7a8e7b3e366f52eec2ca8765ce9222b1a33c4e509862793
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:65d9b7435d3ab7a8b1d55ad3a11e846afb59648ceecfefd68a5d12e606c15cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (157972160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9598945eab0dce0d30955e894fda832c53455d4b33f37bd0b21ebbefe874369`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:36:29 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:29 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:29 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce29120271fd4e32c911055815ad199aeec175569d0d3dec2dbe12217d1f155c`  
		Last Modified: Wed, 19 Aug 2026 17:36:43 GMT  
		Size: 89.4 MB (89409698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0d2c13c5f628c81d4bb2d1bfcf8ba97e68d2719591997ec2a97400a7eb010b69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa65e78cb4d87cc71c25120b437800b0195eb84abf7d14b695aa4c728ed9f6f6`

```dockerfile
```

-	Layers:
	-	`sha256:eb0e2617e6e0c7eb445b56cb581af4048c89062d042000be8d061dd1a41faf71`  
		Last Modified: Wed, 19 Aug 2026 17:36:41 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:aaba9f19d7c8f9eeb14b4701e11f57f64da435dd9e7182e46bd8b46db906096f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156125310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb4d6c3870589005cec2493123010e46c6646f4473b4c77978d0c3edc71eec53`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:36:42 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:42 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 19 Aug 2026 17:36:42 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7c76fbd0aef2e456ea8b5798429fb10ecef817aade6210162d2474a9d5af88`  
		Last Modified: Wed, 19 Aug 2026 17:36:56 GMT  
		Size: 89.0 MB (88983349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1184e488af45de2f42b6c13d3eacde6ed7e72e647a04137a322cdf410111ccab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:894f91e23c9e2177599886bc5c6a10e370014349c466dc0367aedf35b4e15e7f`

```dockerfile
```

-	Layers:
	-	`sha256:76672ecb473d7e55346f4528f6c1cba101c2f845bb8ebd89cdff012a78ee87ba`  
		Last Modified: Wed, 19 Aug 2026 17:36:54 GMT  
		Size: 9.3 KB (9329 bytes)  
		MIME: application/vnd.in-toto+json
