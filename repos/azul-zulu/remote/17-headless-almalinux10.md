## `azul-zulu:17-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:37e5f1bf25b4fafd5b48071d15e233c206a07ff728b42e8b0e604c03a81398f1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:dfe1d6e4fccc34602b93eb42eb01e9427ff2811eab041d81ae91e5a1c4e1f1f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.3 MB (220269513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0579957fdd867533b845819e7001322f14e766fdfd595223c542af99dd70e2c0`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:20 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:20 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:20 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 27 Oct 2026 17:27:20 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:27:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda1dfb3ae8b3335f64a0dc3200469ef3a9df2993fbb5e0996ee46b6ad030cc7`  
		Last Modified: Tue, 27 Oct 2026 17:27:34 GMT  
		Size: 151.2 MB (151170238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:936958c46ee8c337573ad337b3d648af0175abf4eca2d4196cc1a96be47f787d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3842d1c5b3bc744f73fa908c5fc9eafc591e16990a0d8a7c556b007a4e3283b4`

```dockerfile
```

-	Layers:
	-	`sha256:9df006aca0f2200dfcd0cf1fc2b68592216772827ee35a3e97237cb595c294f3`  
		Last Modified: Tue, 27 Oct 2026 17:27:31 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5184204e66e6018ce09718e0a753d6ccf8ba81e7da8a7a17db82b44cf78c11b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218882148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70c34beb537ada6c7a6207b07cbbe22d45958e97e6fd238c657d9e6448c8fd7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:54 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:54 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 27 Oct 2026 17:22:54 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:22:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f0a9d8b8ec703a4b1817830ce7b9e2c3dfb58a3ef6a04fd0ee746d4d34c1f04`  
		Last Modified: Tue, 27 Oct 2026 17:23:10 GMT  
		Size: 151.2 MB (151215637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:480572cbce1ada0ea1a1bbaacdf4e9364b6df0a2fef99f585d0b0ecbeae5e352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c087692ee6ae8f1f4e4233d0209fdf48ec852738b0cbb751089104ac36b894f`

```dockerfile
```

-	Layers:
	-	`sha256:f100d7df066a83a8a5b917efe6f7e3f2766d789f14619a26aabc093e6527f6a6`  
		Last Modified: Tue, 27 Oct 2026 17:23:07 GMT  
		Size: 9.3 KB (9330 bytes)  
		MIME: application/vnd.in-toto+json
