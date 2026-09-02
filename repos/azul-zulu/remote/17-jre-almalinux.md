## `azul-zulu:17-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:5ae49dfaf72b8a94b435adbf6d4479f6239e6fc411c21c846448be771137b3ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:43ee47162553e607ed43b2410e4287fb0b600c49233e06bfc535bd45e0148602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.5 MB (139544399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46d4a3a4d7b6b3195b5f050166967be73416260a57bfb19d29108cfeb42a4e4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:00 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:16:00 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:16:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:16:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 02 Sep 2026 22:16:00 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372e16bd799cdfe04bd6bbc90b35671b2cf383c2de7708f9b6bcfde1c6620f67`  
		Last Modified: Wed, 02 Sep 2026 22:16:13 GMT  
		Size: 70.7 MB (70681731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e815fbbb36454131f6891a9d5fd67a9b4f6032ea2a2418ce016a91bab480f674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a3697ffcc8f4453e7ead7563b92ba3a3d9220d81933a2a1376e536cdf83983`

```dockerfile
```

-	Layers:
	-	`sha256:f1b2c8d2f7744769d54346623afc6f117a84d3cf01cac3ef1515d38794e02044`  
		Last Modified: Wed, 02 Sep 2026 22:16:10 GMT  
		Size: 9.2 KB (9151 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:307c7708ab71d0523d354d908a4ac483a947d3798f6e50859a210ef39b2e219c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.1 MB (138132111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9a22abcd4a55d4e2649a6ff9481ffd473463d4bac2c82d3bf6eba273015d94`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:49 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:49 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 02 Sep 2026 22:17:49 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b5bc2440c4e7fc85b715b5a3d0d9abf302f8382d79d92c35a30961d7e7b8393`  
		Last Modified: Wed, 02 Sep 2026 22:18:01 GMT  
		Size: 70.7 MB (70700309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4844a0ad045ce0d1279d98e5cde64ccede38e9c39e7924775136f1ee106e6434
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f46b87277c6eb29ac8a1cb1f434630d1e9cf1cafd9803491f1f0d8d4259cc950`

```dockerfile
```

-	Layers:
	-	`sha256:82b59a5c38630036a9bc5d0fd39e495b6b82c91f366b25492b9ab6384b554c13`  
		Last Modified: Wed, 02 Sep 2026 22:17:59 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json
