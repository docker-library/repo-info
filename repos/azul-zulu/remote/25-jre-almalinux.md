## `azul-zulu:25-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:dadfb320d9f73ccb16b5a18ca66dc4a8841a41fc81011140e397715b8ebffb4a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:439699f87b9506007177d42cabb9b4f64ead4c186e6d510e37d5b7e1edf96052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.0 MB (158963205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a387ed2b2682bb4c295a6010dec7efdc94bcdc509b91c159de174a443159ac64`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:09 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:09 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 02 Sep 2026 22:17:09 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336ee5c2c1ff7dadde348a25041ffd641ebe2ff402ea1e07e48d3d935192192a`  
		Last Modified: Wed, 02 Sep 2026 22:17:23 GMT  
		Size: 90.1 MB (90100537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:28ebf1998d58921096309fa78de93041269c1761bfe0265ae1ce0ea5efc2222b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2dcf96af6505aa6485a255159cd6388f4e85e99537389575b3a320cfda45fc7`

```dockerfile
```

-	Layers:
	-	`sha256:dea497da582dbfc37c17947fd025c4c0ee96049b370fd0c9e0bf2d8a41589f54`  
		Last Modified: Wed, 02 Sep 2026 22:17:21 GMT  
		Size: 9.1 KB (9144 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:ac106e2bfbc7ee52969956b5f3aa1a4c72b3b8233e56328ca108f77343e5e900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157120663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a18288c7d5e253885c04666f262e74ab9c5d01f65c90799a881238550d63ffbd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:30 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:30 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-25.0.4.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Wed, 02 Sep 2026 22:18:30 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09c67eda49291379533bcaebd2e799e42b87d8734ec780be6e4e61c4a4447fd`  
		Last Modified: Wed, 02 Sep 2026 22:18:44 GMT  
		Size: 89.7 MB (89688861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f9cc8f530841602b21ddf379d5c475569b6e7e2d5e6f3fcc7766381088f09d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f91bc14211cda0e841dce07e0235fa40b233c08c5ffe5dc787e1773b7b128547`

```dockerfile
```

-	Layers:
	-	`sha256:88cf7e511b398daeaa18fb183356beed6015fb96cb62938771198a5a9d624aca`  
		Last Modified: Wed, 02 Sep 2026 22:18:42 GMT  
		Size: 9.2 KB (9235 bytes)  
		MIME: application/vnd.in-toto+json
