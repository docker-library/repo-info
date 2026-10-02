## `azul-zulu:21-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:f803db79a703aeea3d951ca6f86b2e22035602db4c6b3b53719082058e3b2af8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:34d86e0cd3cf5ad63c03a757cf5e40232627a84d9b26c57c47235b6510b4c017
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.4 MB (144417971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2dc5df55645418bce8876926790f0abe9fed99aa57d04ae0fb95510a48a5d6c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:46 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:46 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 02 Oct 2026 18:22:46 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30864ad1eafb2b2da4b8a77124e41aad38b5560740be271aceb6ffaace35f67d`  
		Last Modified: Fri, 02 Oct 2026 18:22:58 GMT  
		Size: 75.5 MB (75538417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:41952c3f1884050d84d1c6e2aaed615ee94b19383ba7c6dfd5ce34af0affaa05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a022c7d420a9d4ec3ed4524a5d3e6218dc6b77a442f338b619086d3cfdc42c`

```dockerfile
```

-	Layers:
	-	`sha256:55b58448383421efe544e673e2f1b2b621d737b5f2ca980e4ab7b6af9de989c6`  
		Last Modified: Fri, 02 Oct 2026 18:22:56 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0abec5f008a2369a6c64e8df30ba9e890d297ee107a3683384cdf6501c5763aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.6 MB (142642133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15198cec48a67a152dda7dbd1f7fe927b7024f632422c89bf36a8858ae03face`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:06 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:06 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-headless-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 02 Oct 2026 18:23:06 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d935b5ae2faca8c05e3d1c482c76dc4a9549e5aa06f2d737da1455250540921`  
		Last Modified: Fri, 02 Oct 2026 18:23:19 GMT  
		Size: 75.2 MB (75183949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:779ff67af2c429b01685e3377b25adfe98a96963d787a765561999159487bae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823c5c650592c609f27363e21447176217d258fdfd5ea2eb67f9001718d3db09`

```dockerfile
```

-	Layers:
	-	`sha256:321cd610de7c7bc0d486877508cd90a6967fb87e1062b7eea20c1ebdfd108c0a`  
		Last Modified: Fri, 02 Oct 2026 18:23:17 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
