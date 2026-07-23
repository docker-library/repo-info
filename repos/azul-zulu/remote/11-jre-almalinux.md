## `azul-zulu:11-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:ba9ebe89da86b2f051be187f100fe34e219463654a33d9d33f2ed34903c08ce1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f749731dabd8a8cdce16b45779d3d97e28958785d54b5c6fa294fb06901f2509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.5 MB (134505939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9dfe8b79389cd01fc1ce1b36c89550601388f5647901063d777bb50820a1b0e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:28:25 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:28:25 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:28:25 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.32-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:28:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:28:25 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc82b4e7b1763279ca41639860aae3a6d2699c376701a015ea3cf64848ac73ec`  
		Last Modified: Thu, 23 Jul 2026 22:28:36 GMT  
		Size: 65.9 MB (65943477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c59152e72a5cc16c04803026594ea9ed5d97cb8eb427a133c41e2e092181a7da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b30a1c509e73ee203b47de2138114eb6d145e0eace70e58037e2677a827c213`

```dockerfile
```

-	Layers:
	-	`sha256:7b6fae655d15d3625d99044e9903abb90e06a30dd00d469039d81ec7071d63b9`  
		Last Modified: Thu, 23 Jul 2026 22:28:34 GMT  
		Size: 9.1 KB (9141 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2f81e7d3ad84a4ac3df7d41b3dc3b025a0dfefa5e6b6799e38c35f33fd821659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.9 MB (132905602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44989c369a512ab9c51e8be270364a3b66cdfbed98e6d067aa1acdd81b5f7670`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:29:18 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:18 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jre-11.0.32-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:18 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c82c3eb1d32726c0ad9cf494db4f777d2debe0c5ab0c933f767e7d7a543413`  
		Last Modified: Thu, 23 Jul 2026 22:29:29 GMT  
		Size: 65.8 MB (65763641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:95f500f4ecac841ecd20aa93824aefebbc60f4fe06383c4f3a2791e8926592fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8000525d466bd4033439a3757d9835949824f8da0eb7ebfe8694db0e75a03e3`

```dockerfile
```

-	Layers:
	-	`sha256:4d8845b800412340a6198da0d0dcbc104818e6d471064f136ee86641a464adbd`  
		Last Modified: Thu, 23 Jul 2026 22:29:27 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
