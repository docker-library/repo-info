## `azul-zulu:11-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:26050e4793c322382135b88dabcc553a8a7a98992f5652db9b8291a05db8fe46
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e71396eb9343a6b00166ebc47cdd8ddb2249f387334d38ec7ebb862fe869327b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.1 MB (134058373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:420c556fa8af8d0bc4e7015fb0a10d7f02475201d9f0fd8736dc86c50f040c8e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:34:50 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:50 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:50 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:50 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb3424bcf6eee3dcbd43c154e49827632b3551895bc596630afc296e871fe68`  
		Last Modified: Wed, 19 Aug 2026 17:35:01 GMT  
		Size: 65.5 MB (65495911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:98cce8192e8a00ce696d218b6c69b08a62b229f9459031ccdabca09734b62801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e67f99bc87241220b5c40bcef09c764f8dc07910192956ab8791780b06730299`

```dockerfile
```

-	Layers:
	-	`sha256:a2d58ffc15962113dd497318d562aa869d7818edd52b891ad1d99c3abf8115f8`  
		Last Modified: Wed, 19 Aug 2026 17:34:59 GMT  
		Size: 9.2 KB (9244 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:45fd7b4fd5fdd351cb31189def3f48b457c6fc2392ba4d3dabe10b5d5f37df2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.5 MB (132476742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9055e9ed637dc3a2c63edfc7acb0d8c9eb7bcf9ade323f55b41906f4af96d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:34:40 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:34:40 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:34:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-headless-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:34:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Wed, 19 Aug 2026 17:34:40 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1002ca1b4b1a120be17d53e7eb839e75abb95f0e2c7c2f871ba65e3366d77a7`  
		Last Modified: Wed, 19 Aug 2026 17:34:51 GMT  
		Size: 65.3 MB (65334781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:0766ee2958616d2b7898061beb030ecd5d20ada45f7692ce7ceecb43b750796c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783a84e4c3ce73bd4466ffc01e5d453203c62635662fa3bccdc2c9c58acd6d45`

```dockerfile
```

-	Layers:
	-	`sha256:c7b4f76f67e8cebeded07acfac22d24539a6ac79c2698a0bda6ed8f077ff6b26`  
		Last Modified: Wed, 19 Aug 2026 17:34:49 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
