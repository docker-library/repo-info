## `azul-zulu:8-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:c4bd6b63a3f0f77e8cff5a410b1801e66edaae6df6c4f48bfda4448a30e869f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8085af990bffe2abf8bb45fc42fd4c20664ad0095197501d96c701cc41e8e753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128662239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7538787218d3fc474bbf80373729a56e3b47c2e3382c612bfe2d8d0b81c92539`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:30 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:16:30 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:16:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-headless-8.0.504-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:16:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 02 Sep 2026 22:16:30 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ee0e9e047c5f20409edd501dc3239baed4dc9099c9aa4d99a5f3bc32dd3e9c1`  
		Last Modified: Wed, 02 Sep 2026 22:16:40 GMT  
		Size: 59.8 MB (59799571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4b6fbdf727965d3f6d18680e94fc0d4a129c5f92bf86dcb191775518dadf3720
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:421c5ada2be4fee6b6a0ef90ba01d807981d66f241bee9dd9583e006e5486485`

```dockerfile
```

-	Layers:
	-	`sha256:649c63f326a187efe8f216196b395695735a74bdadaeeaa74a30e87cef61fbce`  
		Last Modified: Wed, 02 Sep 2026 22:16:38 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ccf4525654ec35b0de28e35211bf30f5d7dd4756fca869d049bdcb6561166708
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.5 MB (127534155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc69c5ad04efa65e7067303a09d2f75aebf969adbe53f2dd0d5817c5913eeb19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:17 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:17 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-headless-8.0.504-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Wed, 02 Sep 2026 22:17:17 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a6363bfa104839671b343da2b984ded45a79e25f8b6e1966c27e08bcaed8f1`  
		Last Modified: Wed, 02 Sep 2026 22:17:28 GMT  
		Size: 60.1 MB (60102353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:68d7f34276117de7b2daddd774a3008052e5cb97d26e51c91cd22b556d47be4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cca990f7176b6e336e1d8b5a95f7538f101de122befd42459cc371b3cffec77c`

```dockerfile
```

-	Layers:
	-	`sha256:2689376e0fef825e6f7b9f1eac44a484f32c662549d75bae9d6f53e96b516e93`  
		Last Modified: Wed, 02 Sep 2026 22:17:26 GMT  
		Size: 9.3 KB (9296 bytes)  
		MIME: application/vnd.in-toto+json
