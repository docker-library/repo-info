## `azul-zulu:17-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:91282bebddd708383f50829eaea139d7cb69a269a528bb810d27536bf284d5b4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:649714db90d2f6c76d52f91c6625b41b3a11b8d9b0bb911c72f832fadbc5d375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221408849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd295bab22fefd88caf35fff31aabe37bd4ae69bdbd0529faf2a2ecff78652b0`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:40 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:40 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 22:09:40 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b116268cf00fadf4af9b3122314abdfcec0db60aac0f3e20bc4e10915509773`  
		Last Modified: Mon, 16 Nov 2026 22:09:56 GMT  
		Size: 152.0 MB (152038369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:329436b8c8fc0d0d6a81d17170a5cf165f166b2e791378ff1dd735144bd93f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff421c3b086c81506169e0e823bf197f07541b8de78cd00b7409e48497d2eff`

```dockerfile
```

-	Layers:
	-	`sha256:04e7a3f3ce03910f828730caf7a32542f7f27aa5c06cfcd1d968b0c78af9fd7f`  
		Last Modified: Mon, 16 Nov 2026 22:09:52 GMT  
		Size: 9.5 KB (9497 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:282445cffce276b1369311183bd6a45906127bdd23173e4c705cb1829cf923f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220038692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be1fecbb6b813e06194b90ee66e433dc0274adaf99a89ab01a9e013bc4541969`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:37 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:37 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 22:09:37 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:37 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ac15ccf4e0ddb75780708d6d88e67154ce249869d59a8cea537228803045b6`  
		Last Modified: Mon, 16 Nov 2026 22:09:54 GMT  
		Size: 152.1 MB (152088118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:179cf4388e394fb1abd74a9704e29e95b390b0cbacf8c60dc16e938da3e59ef0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e80c634256bc0f5acd02b69ca1c7c61f2d27da01299a097bdb8f916c4e3c14d`

```dockerfile
```

-	Layers:
	-	`sha256:7791490ef16557b4b41caf78544cb16d72177ea94540a179cec9f3786037572d`  
		Last Modified: Mon, 16 Nov 2026 22:09:50 GMT  
		Size: 9.6 KB (9602 bytes)  
		MIME: application/vnd.in-toto+json
