## `azul-zulu:11-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:07d89f6c6d4e1314a44c04a14b6cfeb8cedcdb489a91299f223d6b3e52af5321
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2dfa867aa16ddea9e89ceaeeb24da21e98898e961378a0949fb67b5cf60d0128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214663380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2668107969ad9bf70dfedc4ba66fcb41c31a9863f173ccefc16bb3687c15e06d`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:28:29 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:29 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.32-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:28:29 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:28:29 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e69ea6a4fc92d23cf8c99c6f57ce787ea511af2e8261876f6c796be55efa60e4`  
		Last Modified: Thu, 23 Jul 2026 22:28:44 GMT  
		Size: 146.1 MB (146100918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f8f606cedd790432e6588d65a976f6bab5f488c6005f44bdb93287733ac9e6de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d6fe5aa10a326f55c3c6679ab1d95d98419cfad3f118b30f8656a02a3ac90b`

```dockerfile
```

-	Layers:
	-	`sha256:5ab8e77e15423532e1565c973e999ccfa0a9f7153b11337e2469714a8b697ffe`  
		Last Modified: Thu, 23 Jul 2026 22:28:40 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:1c3a1550890b780f546b2ea5312e3850f9499373c1f386111c174a54b43448b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212930319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e91689e46c6829908c0bc011581294ae483adf1d23f8e6f3d0af494b3214fc85`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:29:25 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-headless-11.0.32-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:25 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:29:25 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86300f868c469a6fedcc127c879885327b238d396d0b7605c3c6af69ded08527`  
		Last Modified: Thu, 23 Jul 2026 22:29:39 GMT  
		Size: 145.8 MB (145788358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:320da06271a1f8018fa110e6abd847e9d557d1e407e60a30ab796d9eec5534b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b46810fde357dc345217de44079524e290962700547a95aed97f9f554afe1ea`

```dockerfile
```

-	Layers:
	-	`sha256:89d8d5364774af92f553abdd9fef89ca27fd4fa44831c466a963156be4f94d39`  
		Last Modified: Thu, 23 Jul 2026 22:29:36 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.in-toto+json
