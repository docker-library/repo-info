## `azul-zulu:17-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:6957955726b4ce537df3f5d3ccb98c71086096193f6e6b31402a6c70d1d3edc7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:779c91f4c3afaaa0275b6818cccbd3b1ffed377b95e9fe4c9d53d781613c104d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (138958203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10cdf4c9385ae548811f492f06098edee12acfcfbeec93bfd9d8a19123d19557`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:34:01 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:01 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:34:01 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb3a938d83c2341fef32fe5326136db6dc965bc808fe4826cedfca6c7942907`  
		Last Modified: Wed, 19 Aug 2026 17:34:13 GMT  
		Size: 70.4 MB (70395741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:72cf7191c3696830c7afea7afcc96d3a303cd82d4198f99dfcb46a65d33e6adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fb02dce0cc933d4972be27f46d9228d1f29bf2a2f6d00c7ed99d299e28c8e3b`

```dockerfile
```

-	Layers:
	-	`sha256:01508e4efc55d8788cdc72f57ef2d60ab00de39e31b144a9358f411960b3c9ce`  
		Last Modified: Wed, 19 Aug 2026 17:34:11 GMT  
		Size: 9.2 KB (9151 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5a2f707fc822c2103868ed48dbb1a104afc7ae21a856e38996436c023c6d725f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137560964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b765ce7f464296ed8bcce9ac0c5087b2c8fb31fdd6b58200e42429e5cf1780c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:22 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:22 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:22 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd955f1db385a37b675f915a205608b3306bf2cc548170bbe9ddca78496763fe`  
		Last Modified: Wed, 19 Aug 2026 17:35:34 GMT  
		Size: 70.4 MB (70419003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:481c8deb2737232e6f062f341d22c52e7b495c671fc132fd744499eb00865033
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9737da5a9723dc993845d20f8f1b127cb387adbfb5cfe0528c77e0d4f8b5be91`

```dockerfile
```

-	Layers:
	-	`sha256:80a5d0c304541a0040aaee561a0f2662a18be6b4333b57ffeafb7a39c705a92a`  
		Last Modified: Wed, 19 Aug 2026 17:35:32 GMT  
		Size: 9.2 KB (9243 bytes)  
		MIME: application/vnd.in-toto+json
