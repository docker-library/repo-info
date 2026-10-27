## `azul-zulu:8-almalinux10`

```console
$ docker pull azul-zulu@sha256:ba439da57de862b062554ff2c719f0a2585719f4e101344941a0590327447141
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:51b45486100f046125bc527f4428706f9498fd4953a486cd80333a0e4d0e6027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132640075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54eb6f8c38e251229afc00e3aa35ab0650b9e99402536009db754456d3fb452a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:06 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:06 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Tue, 27 Oct 2026 17:27:06 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4abd350298a66c2121cc12ffd904f99feafb96d0c16a31b96ec9b521dc07106e`  
		Last Modified: Tue, 27 Oct 2026 17:27:16 GMT  
		Size: 63.5 MB (63540800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ebdb58dc055818514229f4c3bd4ae9da8ea24f1dcacf0545f6cc9f514a551603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 KB (9446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d920194097d802c6ad8ba22583da1ed2f72b0ab691cf950b96dfdd3c9401f5cc`

```dockerfile
```

-	Layers:
	-	`sha256:5fd10aaf6c5b64e8d51dda4d99ed9c1bfb13c91aefc8b1d89e2b46b26ce97e23`  
		Last Modified: Tue, 27 Oct 2026 17:27:14 GMT  
		Size: 9.4 KB (9446 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0457afac868ab9d41337148ac501c871f4d22cd58bdc15c57f0674ccc39f14b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131563300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a7df80d10da1bbca28a2e3bdd20531e3f59ede4b5cad197f6465a34d3a067cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:05 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:05 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Tue, 27 Oct 2026 17:22:05 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e8f90578089b1b543e7acc29303ff42fa14ca1d86a83fd98bd0e60ee9582ce`  
		Last Modified: Tue, 27 Oct 2026 17:22:16 GMT  
		Size: 63.9 MB (63896789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:05db8865a6de6bf85b91526e8579b7defa61a5d2a5cce24943b95da3b87b78fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2faee1980cbdc4b7fb13224fd4e0fbcaf18348c9b888af3d68a098ce11f39cb`

```dockerfile
```

-	Layers:
	-	`sha256:fd6ae7a8472eaade8a080736d6684e610779e1a6b62e9bd0194710bc36499a32`  
		Last Modified: Tue, 27 Oct 2026 17:22:14 GMT  
		Size: 9.6 KB (9550 bytes)  
		MIME: application/vnd.in-toto+json
