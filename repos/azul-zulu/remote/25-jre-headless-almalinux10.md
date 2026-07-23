## `azul-zulu:25-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:8ed86ed9ee80c16b4a263a484a6244978f18036287ad7ed0011d68e64a90019a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:632c504f81e9a0355c0c28916178c2540eeb98d6012c55de01f6c3856a6c5659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.0 MB (157975842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21c795a7da1cc230bc65adee37160a595a7eea4dd62148bd55fe303792a316c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:30:15 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:15 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.4-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:30:15 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ed06e635f385fe2d83d629b412bd1de17cc424bc532cfec034e4d2d8f7d44de`  
		Last Modified: Thu, 23 Jul 2026 22:30:29 GMT  
		Size: 89.4 MB (89413380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7603c44a1cce2d4e38b037f96b9f2f5216ed7bf9f6086d7fbdc62facb1b3f89b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc10b1fe54a82c6b1564a61bfd7a20972b584e201a057be449a117eaab858f2f`

```dockerfile
```

-	Layers:
	-	`sha256:e75b6d56c88a6608e0f16edd6f656b6f9d46d4de795a19b74041061cef0eb8f1`  
		Last Modified: Thu, 23 Jul 2026 22:30:26 GMT  
		Size: 9.2 KB (9231 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6aeb42cf0745bd86d0ecf2ac9308163f1d1ebb69a4c7e289884aa154114eee22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.1 MB (156128123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94f143a7b53d39844de5d180697694b9bf371739d6d96a24b055f41f04f3d13`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:31:20 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:20 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.4-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:31:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:31:20 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9edcd96c2c13a44172255941b47867a77a1fe40e7330a7e12e32a161f3f1605d`  
		Last Modified: Thu, 23 Jul 2026 22:31:34 GMT  
		Size: 89.0 MB (88986162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ce06c7f98333cae679702f7c103ce869d4280324be48f75aa393f7422226184b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daa6d0f78750d98539dab32e467e35d07fcc1669d0ed2a83fc615802485588d9`

```dockerfile
```

-	Layers:
	-	`sha256:d5703329464ecf7ffd3dc9acdbf37dbca643b7775d8b9261797018ff2b27c0d8`  
		Last Modified: Thu, 23 Jul 2026 22:31:32 GMT  
		Size: 9.3 KB (9323 bytes)  
		MIME: application/vnd.in-toto+json
