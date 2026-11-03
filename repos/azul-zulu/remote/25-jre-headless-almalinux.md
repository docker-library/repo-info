## `azul-zulu:25-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:c5e30d62619b63600ea4e3aa37506a9ba7d2698473ef3100568b10428f5f9ccf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8685747524debd84c07496cfed2e5f8fed66a599ce00ceb280e46ba8142be9e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.1 MB (159061038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7476ca982b9f39a321fd557002bd509de66d1e85f09e01581ebfd6951224ea30`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:09:29 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:29 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:29 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 03 Nov 2026 00:09:29 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c711b5df1bb54af8e84f1da849920712617a97444911f1eb3911f57817d556`  
		Last Modified: Tue, 03 Nov 2026 00:09:43 GMT  
		Size: 90.0 MB (89961763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9f882b18040fa98ba26bdbc2b0268371164f7a1c44ba9fc284d5d9736c771cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823ad9f4a0957cdd92054e42c3d80a49bcb41996acbd8e1288131fe4ff0ad512`

```dockerfile
```

-	Layers:
	-	`sha256:4654ebfe6b11f131ac108797460a1d01e4e1f9dfa662abb4ca1206bd657bf333`  
		Last Modified: Tue, 03 Nov 2026 00:09:41 GMT  
		Size: 9.2 KB (9247 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d218f23c3d9b10f16b7a0142238db1c7baad35026a83cc398484390d6c736396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157192440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9b468b0e241c3e6450d0f03765abb7e9425888f3961eab12737901042a09cd`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:09:49 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:49 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:49 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jre-headless-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 03 Nov 2026 00:09:49 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c04c223378bbad02785ae43683edc3ea10c4b0ec7e567da09ba9441239b0f9a3`  
		Last Modified: Tue, 03 Nov 2026 00:10:04 GMT  
		Size: 89.5 MB (89525929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:bc891acf97fc2993ba4415c61f2a1b1083f5a49267c6db9119e73515eececd1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b68baf8557eaac799bbd5652a49643af1a173ca0501e0261dc8f1e6f5828ffea`

```dockerfile
```

-	Layers:
	-	`sha256:13dcf67bd5598f9057582a0d155cfc6a00420e2beec01665ff04a1ec6141c130`  
		Last Modified: Tue, 03 Nov 2026 00:10:01 GMT  
		Size: 9.3 KB (9339 bytes)  
		MIME: application/vnd.in-toto+json
