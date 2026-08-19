## `azul-zulu:21-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:dea94bdf4be4532c37d8488c3b07809e6eaf6168773323a103ba95107cf8b999
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a9291babf00df4d2c81df9f1fbbc5cb4cac0ecda1d4cfba347dff71c5e33922d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144242058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436422974beb7143aeaad334de42eb53e6c46fdfb5e65111a10852ce64be6fde`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:51 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:51 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:51 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:35:51 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10bbc245efbcb1128faf20fb97824998f23f64822076446e512f9865ee665db`  
		Last Modified: Wed, 19 Aug 2026 17:36:03 GMT  
		Size: 75.7 MB (75679596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:835670e252d70a171750e0d50064e3d59fe2fc9abd1a0eeea48dd95e91513fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0906a70e9e5aa05654821789548f243f4157428e4e33dece17008853d4402e`

```dockerfile
```

-	Layers:
	-	`sha256:36dc35da6785badf2d66989222a0d06e6573426c4491dcb411a04b0b6e525b3d`  
		Last Modified: Wed, 19 Aug 2026 17:36:01 GMT  
		Size: 9.2 KB (9151 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:83051692ecef4d813c5d26bcd27f849816354d860e56de90fffbda7794aa039e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142480403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd5ad0126b3267dbf2c4144c6b64f92164fb21e25f6397ba9ba891c34d69d69`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:56 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:56 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:35:56 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f616d5500ee082dd5fede7fcbd713d66afe06e7587f02aa7d02d7c4de4e8b4c`  
		Last Modified: Wed, 19 Aug 2026 17:36:09 GMT  
		Size: 75.3 MB (75338442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bbcc0f526c5885880830df01eb8cd6c06d64ae91a60eb39f3621f7aa668bb928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b2dd6745ccd92d1a1b089196982d1719851c9059e4d0f006d32b695a2fa68b4`

```dockerfile
```

-	Layers:
	-	`sha256:7c8106926d51b2ce109966bfb0d1518fca260e3c8406e7cee3642be627361aae`  
		Last Modified: Wed, 19 Aug 2026 17:36:07 GMT  
		Size: 9.2 KB (9243 bytes)  
		MIME: application/vnd.in-toto+json
