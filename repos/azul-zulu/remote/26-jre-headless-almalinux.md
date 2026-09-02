## `azul-zulu:26-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:79865b91b3c97a9c54666b762f650b17b294af0e70a0be1912e4081f11e70d9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:04cd109b084c8175e0e1258bbaa6c3dd207072e2bfca8e689eba8b3bb0a557ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160200739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37de6cfb346e7209fa02125f686c060ff24e6433d1dc183addd73e4fb8d74727`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:32 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:32 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:32 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 02 Sep 2026 22:17:32 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa5a12e61b9f09864536fab99dde6dd07ddfa014214d11a4848ed5ceb149e30`  
		Last Modified: Wed, 02 Sep 2026 22:17:45 GMT  
		Size: 91.3 MB (91338071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:57f39ba54df17aba93debdfc83b0ea90891e06b3dbb54d89dbbb8866493c180a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a43de14f0aebc9dacce4e9d5bf7335a6b3d912520ea278ca2a290992defe318`

```dockerfile
```

-	Layers:
	-	`sha256:f9f0730aa3fb15c374c60531b653bce3ecc0894bf28f054f25c233b0146d2390`  
		Last Modified: Wed, 02 Sep 2026 22:17:43 GMT  
		Size: 9.2 KB (9236 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:768575b2bdacab13d89416b8358b02791553ce05530332665882404138d22db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158688524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9912b66dd22803b00ada5583925361b79b18173a13e90e9ce9545234f547cd89`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:47 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:47 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 02 Sep 2026 22:18:47 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119f961df01ea6bbb8acf06846593660121df03ef6d9f2e4fbc27d22c81225a2`  
		Last Modified: Wed, 02 Sep 2026 22:19:01 GMT  
		Size: 91.3 MB (91256722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fceb6067700175d1055843840e2f6dfbe913d380e4bacc38194b7b7ccdf29d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c306cbbcfd3df38133ac8cb30aa6172c30ab6db96eb40c3bd3de37c4704f69`

```dockerfile
```

-	Layers:
	-	`sha256:15af40914c4679551ca0ecd36012deb1ec0fbd8e13612796eace4891ed6d473a`  
		Last Modified: Wed, 02 Sep 2026 22:18:59 GMT  
		Size: 9.3 KB (9329 bytes)  
		MIME: application/vnd.in-toto+json
