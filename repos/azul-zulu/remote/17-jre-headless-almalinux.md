## `azul-zulu:17-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:b3dcc71abff8399fd2b01a598f46f9f5998f52813e2bb211c76ca8818071ca08
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0d31796bc77f0cb2acfc1a88600fb5c91747dd20b4c69d67c79a07ec60bc6f4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.7 MB (139736195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7589f7578c23ab3daf046ee3b7a459f4425c8ceff953f207f84e39c2d403ed30`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:37 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:37 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:37 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:37 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 18:10:37 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956f911ecaa8f6e9ba6ec4c493b16182d565a7ff8f1c41fc670fa40e7b5adb31`  
		Last Modified: Mon, 16 Nov 2026 18:10:49 GMT  
		Size: 70.6 MB (70610416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:933503d42584573383b8f670f04765a7f0a6ccffd2bb1f2743abb4f5aec9db80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ff7cc67132cff0ecf04151c68b7d5873395381026fd2313105da11dcb5253b`

```dockerfile
```

-	Layers:
	-	`sha256:1292463b9c8eaf9f9c900fee8423a60cc71982c6fbf9607a01c9b73314f5cc05`  
		Last Modified: Mon, 16 Nov 2026 18:10:47 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0b49cacb6a5cce4bd2ca470d455b412ccf0cdfec799979490d5ace992045747c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.4 MB (138361371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde1f6ac0016d3d7e805b7c444f0abf699ed19d280fdc5fdf928235f6d23bbdd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:32 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:32 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.21.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Mon, 16 Nov 2026 18:10:32 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327e9b6efed32781cdc3e1a02b27d48387215648d6f4e27530b1b972671dbd4d`  
		Last Modified: Mon, 16 Nov 2026 18:10:44 GMT  
		Size: 70.7 MB (70663555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d948e83544425f4081981d3bf2fc8162975a7debd2ebba0408d45b9b35c1d9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0043d92b3669a62df00f27e877d85b7a1d9e33eb1c8e1597a1b6fcd816dccbbe`

```dockerfile
```

-	Layers:
	-	`sha256:1f0307653f82441a2f6b604d31e2486dd52b0e6fcd33f4d081882b1b8d00cde2`  
		Last Modified: Mon, 16 Nov 2026 18:10:43 GMT  
		Size: 9.3 KB (9341 bytes)  
		MIME: application/vnd.in-toto+json
