## `azul-zulu:26-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:8388201d66a3fb875b76af8cd73dafef16e26f474df52ca619ae535f475b9b89
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:20411cfbf5a5fd3a990f8abb9ea8a31a680c3f42319297b5bf07364fd7b3257f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160670008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d03d42680acd96ee2c6a3499040d434eaaa6af6b4d51114b10074daa122e8911`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:28:14 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:28:14 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:28:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:28:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 27 Oct 2026 17:28:14 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283f493e0612ca407499eec4b4cd66744c30ef5782d85aabb04029598a5edd5f`  
		Last Modified: Tue, 27 Oct 2026 17:28:28 GMT  
		Size: 91.6 MB (91570733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:84e2a138c5794a94d8fe655bb75c5a91e540f733fdb04e273c953091e4a1171c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adc7e98bce09d6b3f1092129a2e5e430ec81ad71fdafc1dcb7d0e9b3fc332498`

```dockerfile
```

-	Layers:
	-	`sha256:13cd09422a02734c30209cf79e2719acd306c93342473e541c502367b18f7bec`  
		Last Modified: Tue, 27 Oct 2026 17:28:26 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2da7fa91e17d4e21136b7c40fa3fb433e0ce357991027c8b7c8f1854a70465c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159146027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4562f9e015c49b2a77c8d5049080e3b4eb6dafd1ed6528b6e6200c34c44039f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:24:02 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:24:02 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:24:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:24:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Tue, 27 Oct 2026 17:24:02 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:121a9fa064f06562894f99ca9b6938c58c8078520795c5fb069654dc44211d75`  
		Last Modified: Tue, 27 Oct 2026 17:24:16 GMT  
		Size: 91.5 MB (91479516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:85ebdeb1dcbd4c5ffe2f3f1c2ec734499bfec1df2fabcc160265d4d50d771999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d679a797e1d4dae1aab7627cf232b91576500dfa477ad9d32a5e8a76844109e4`

```dockerfile
```

-	Layers:
	-	`sha256:5b6a0b37c13250569031399a1190314ff9bda669f034ae6f157ab2f9a8df42fd`  
		Last Modified: Tue, 27 Oct 2026 17:24:14 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.in-toto+json
