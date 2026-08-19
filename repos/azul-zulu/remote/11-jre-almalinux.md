## `azul-zulu:11-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:a08b9e3ed65fb637ac29671b9182a896989aca6425673e787bf2f15751228a38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:76b700668e4e6dd3f95b591232cdf2d1fc865e8998fd956e78607e80698d1dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134504621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd50d54b472518e28847f33a8925102914f211c36f8369351d25275fb7f6af68`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:34:48 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:48 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:48 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:48 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:265cfa597152a375838111fa05294d7b6d132db5a58aec235a81beeda0e8f921`  
		Last Modified: Wed, 19 Aug 2026 17:34:59 GMT  
		Size: 65.9 MB (65942159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e0f89d4116e8cc47c3105fa752090593e14f4a6fa09e82d6f5febf982160c1a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f0955437f52f1bbf3316e664f0160b98b926a8398468e3a25e8512f9868c10a`

```dockerfile
```

-	Layers:
	-	`sha256:0c0e5c955355034c53e35af0eec3ad50138a3108497633e1a29c5cda4f1a1a61`  
		Last Modified: Wed, 19 Aug 2026 17:34:57 GMT  
		Size: 9.2 KB (9151 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8134842bd8ce436633425e183582e52bc7847f00ba5ff5fab29299e2bf10c04c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132905696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b67ab4b93c6ba5691a76566bae0e4d8cf38d2bf73619e6571a14b66718676b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:34:38 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:38 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:38 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381a6e067ec03efc4ba3be2188fc0e4e5f8b7ed5f6276ae3d3701882978dec76`  
		Last Modified: Wed, 19 Aug 2026 17:34:49 GMT  
		Size: 65.8 MB (65763735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:25599390b7059f3f56db998923e1c6a9afa2c8fff3fe5ff750c03a9ad2ad19c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a2839cce162abe4e14742dc379b09acea2af78fe597e01103327e59f6bf169`

```dockerfile
```

-	Layers:
	-	`sha256:23dc6441052af70f86bfff1fcf9fd804a88dcbe7db38265c6c59b766876bf1f8`  
		Last Modified: Wed, 19 Aug 2026 17:34:47 GMT  
		Size: 9.2 KB (9243 bytes)  
		MIME: application/vnd.in-toto+json
