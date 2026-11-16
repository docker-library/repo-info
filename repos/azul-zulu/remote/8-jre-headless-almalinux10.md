## `azul-zulu:8-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:920075160a7a8f7de633e26998068401e61a7345e6cfa48128d3a990787785b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5efc2d25c867b91da49be0707767af2d6a95f2b77cb00f671a2846aa9a478284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117718488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f86bc0799ae09ce31a9227067a56503b945bfd5e900d553fb982527103ab2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:21 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:21 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:21 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 16 Nov 2026 18:10:21 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5378bab4f50b7f2e3eeb99f2ce1b917bbb4b26016aeb5376b8bd0e29309c0752`  
		Last Modified: Mon, 16 Nov 2026 18:10:30 GMT  
		Size: 48.6 MB (48592709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:aeafed52e6de1bd76275640a0e3c7dd72a529033f47b60ee331c0a77b5eed63b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ce13093beebf79eac26dc8252a340de993593f7930996314306232e4d2a41b`

```dockerfile
```

-	Layers:
	-	`sha256:514bf9f8d8564f1126f8d583bb13f3170d4e45152ec8ced740935e3463416387`  
		Last Modified: Mon, 16 Nov 2026 18:10:28 GMT  
		Size: 9.2 KB (9221 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:836ac05ebacefad0ba884160206a571b5b0d4c50eda387e5003d0fa33e0fff1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.5 MB (116517315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f31d7f284d86885414a9bbae10ae54041a168debb60a9be6c25ee4192ba81d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:09 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:09 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jre-headless-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 16 Nov 2026 18:10:09 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263a2784bd4de02485d4944c89add712c6cdd705a428b300d4bdea3e55e7012b`  
		Last Modified: Mon, 16 Nov 2026 18:10:18 GMT  
		Size: 48.8 MB (48819499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c63ed856082ce8cc84cc1d5984400bf2f4b2b8e16515b18c16a96d04b6a635aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b54cd79b7074698ebb43fd89c8db0d36cfb242dfffd51bb7ef058b5a25b032bf`

```dockerfile
```

-	Layers:
	-	`sha256:ed0be1a0e1bbbf732577c6f7e1d415d037ec7ec02473ca0e45f701af13aa6ee9`  
		Last Modified: Mon, 16 Nov 2026 18:10:17 GMT  
		Size: 9.3 KB (9313 bytes)  
		MIME: application/vnd.in-toto+json
