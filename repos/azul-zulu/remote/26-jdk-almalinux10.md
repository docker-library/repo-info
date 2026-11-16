## `azul-zulu:26-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:dad290bf34765c9640b6872c7f7e155c69afe5243d11b7a26852d8e7e6f8d93e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:167082a47c677ebdbb477e085257a93de3da1fe8cafd5707c7bc5e57b22a1aac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256884181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55abaccfc5de6792af7f3953ab3b14c0bd290f89c0622b9dbbd89d1c4da52662`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:07 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:07 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 22:10:07 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:10:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b17063cd3cb76ac13662b2d91b00940e744a5f62e7580103c34a673a5dc59f6`  
		Last Modified: Mon, 16 Nov 2026 22:10:27 GMT  
		Size: 187.5 MB (187513701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:28d577baba7e0c15e1efa3fade55c3b238c3e227d165e55a1125936e3b00be82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1527e84232c20365f52774d189c9472258a8368b92eb1e3f968de969a88acd2`

```dockerfile
```

-	Layers:
	-	`sha256:3d0dadb95e5586c7bc76b7a97bb13f19395cf9e00b5ccfc2143afdb293ed433c`  
		Last Modified: Mon, 16 Nov 2026 22:10:22 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:e51faff47346d5a086236548e33a59b3125461608b74039d2cb6426c45c1a1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.2 MB (255167314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57222d4209d9d48e382cd7440c7a87d3e7ab4f599ae3ac4e74626697d24d65e8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:10:03 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:10:03 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:10:03 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:10:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Mon, 16 Nov 2026 22:10:03 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:10:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdd08507518fd47a2ea23b5342095a1d01578e60a8877e5da8aa98f846ac781`  
		Last Modified: Mon, 16 Nov 2026 22:10:23 GMT  
		Size: 187.2 MB (187216740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:921b008700a5c442aaedf39ad2a86fc68a18fc673f520118efd21e05c2d67ccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f902de40695d96861cf81bc03f5f22690fa61a4f6d5f58a5ec7edee42ed338`

```dockerfile
```

-	Layers:
	-	`sha256:bfaa89d27ebbf1db1949b7c459c939945855bd79c72d61fc556b745a8794307e`  
		Last Modified: Mon, 16 Nov 2026 22:10:19 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json
