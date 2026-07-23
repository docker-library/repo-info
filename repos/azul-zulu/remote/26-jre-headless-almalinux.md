## `azul-zulu:26-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:8e80f7a209aebe37bab29f341c77daca756b7d555eb7ed413cae5400082ef95a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ecb1b009434850c7584a4809f48ac225eb55cf72be875f21c9de1453bcbfd093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.6 MB (159623645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e605a230ba8fa39af644dcda720b4aa1afdc144a2a14b1f6b268a345b6acb7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:30:57 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:57 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:30:57 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cf5baabf0c09018c767dd73b701f560fe4c23cadecd31a192a4d531f43cdb5`  
		Last Modified: Thu, 23 Jul 2026 22:31:11 GMT  
		Size: 91.1 MB (91061183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:2cec719a9186d5344c4bb15cc9d17d0da2af631b3a5d33d67f4fd107f11e04c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19354d83babca7fe98ae89614d9cfda079883abe86c6003d9db764f2b5e5307d`

```dockerfile
```

-	Layers:
	-	`sha256:f43f0de92179ab6802c7bb5915cbb98ad270db062f4af4d1077b838bd1172942`  
		Last Modified: Thu, 23 Jul 2026 22:31:09 GMT  
		Size: 9.2 KB (9231 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f070df2eb6217bcff22ceef85e96ffacd71d3e6481c1b59deaa87a349a83b2d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.1 MB (158117740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29bf9c60735964f9e26eba1d72f52ecfe9804fb413033ade64acf7f44542ca56`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:32:06 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:06 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:32:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:32:06 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d34039e4563db87edc2e59ed13910ca01cc3c4081f1d7e1f433375663f00a5`  
		Last Modified: Thu, 23 Jul 2026 22:32:20 GMT  
		Size: 91.0 MB (90975779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:db05add2028f6594e361d1385e0aebff51614e954b754d41b5db24d4356cb38d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848d378524a85a94e2c9d0776d618ef13e7099b7ba33277b3033ac86f138a4af`

```dockerfile
```

-	Layers:
	-	`sha256:8eff842a1b848911df27590d23fecf13b9386467d07a94892a3d555086103448`  
		Last Modified: Thu, 23 Jul 2026 22:32:18 GMT  
		Size: 9.3 KB (9323 bytes)  
		MIME: application/vnd.in-toto+json
