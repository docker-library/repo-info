## `azul-zulu:8-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:b70ae374cac5978ba5042263f8b773432f8a862fc74a03610fc475bb9451affa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:53adb9def47a2a5b5c995e7b5700b06c4787ba7836b0b96eb72107091f97cfcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129147570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:961a72bf69a78b5137ea3fe036f1ac6c1a42107582e8c999d5e2704a06326c32`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:12 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:12 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:12 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-headless-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Tue, 27 Oct 2026 17:27:12 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a84a1b3970cdb0289184c7a06fad96dbe6206b87d32aa1b04da709d4090f45b`  
		Last Modified: Tue, 27 Oct 2026 17:27:22 GMT  
		Size: 60.0 MB (60048295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1ab09937cd18de717ab8c350a48da43dc8305fac3455c1a71f6bed281c24b423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f5bb33d140239e00c60064fb76723a1fa36bbee49027ccc83a8d15f7575613e`

```dockerfile
```

-	Layers:
	-	`sha256:4294982cb65b347358b75238a1f258cc164c90306a2823c0cfe90eceea5a096f`  
		Last Modified: Tue, 27 Oct 2026 17:27:20 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:084bc259b067dc5f18e01714f7ccda631d42d568dd6a77be098b63f8ea752fc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128012271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92550145d9c3e53dba1bbf7b9e7d16bdd7cec79153bd8bb1fe15b3ade35a341`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:16 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:16 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:16 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-headless-8.0.512-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Tue, 27 Oct 2026 17:22:16 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3ed7af8a5931b0c19e49a2eb5f2d374b82a4f6995b8825a63a4ab63d30fbfe`  
		Last Modified: Tue, 27 Oct 2026 17:22:26 GMT  
		Size: 60.3 MB (60345760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:349d9fe5de3c8ed4a32f717410cf9818aae0e90e8ed90041eee30a42f36812a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae652c548aed04e546d93f42aab7d9ff310d81465d2390b78ff6de7c56af24e`

```dockerfile
```

-	Layers:
	-	`sha256:e5b5b64fbe898e836ae7830449a15033cc168772477225b4c2b8445535acc1c6`  
		Last Modified: Tue, 27 Oct 2026 17:22:24 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json
