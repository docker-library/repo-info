## `azul-zulu:21-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:fda8fdc11c578d1c7e55406093b7ddf8f08a8b1ea0817a40c5cdb4e1ef3d6e88
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:21c046d52fbc0d27c0b8568ecb21328b7a72c96663ab95fb0edcc48a614d8c05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.6 MB (233629643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8681cfe43217a0451f18e524e6cc8ca0a5795c7394d494e7fc43952dbb4ca9b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:39 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:39 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 27 Oct 2026 17:27:39 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:27:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cfc8e0017fb52120f8dbc43826a94d7a786e4a5486a9de7f21c5c20ecc9081`  
		Last Modified: Tue, 27 Oct 2026 17:27:54 GMT  
		Size: 164.5 MB (164530368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:da9fcd5e2beae216b40b87e732abd95295ffe17aece33b87186de431afb91a0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdb665a4de2bb9aa56370330726abfdb6b9ff63774a0ba8c265d09479b40ba72`

```dockerfile
```

-	Layers:
	-	`sha256:3f042811e28f7b61e24400a789f493fb421584847670e111fa04c1dfc123651b`  
		Last Modified: Tue, 27 Oct 2026 17:27:51 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d82b32983c857e59ab3dc1e01a2ce73b72e67995781d95d0a5f8f302a6840cd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231490037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd1ea08260bc26e21a3c6aa10b80eef6bf3eabf4028ee64066221a1458831e11`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:15 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:23:15 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:23:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:23:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 27 Oct 2026 17:23:15 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:23:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54b545bb70da267c2d938722b61fe8af43c05b0805797482a8ae710650fa102`  
		Last Modified: Tue, 27 Oct 2026 17:23:32 GMT  
		Size: 163.8 MB (163823526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5bd8b356ce691ce4897a1efb143fa2d8c1142b2509af4e03b3fe434a907da3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4714dc2764635476668a34c04872e46a9c9bceb170d0cf3198b84ae1b589b26d`

```dockerfile
```

-	Layers:
	-	`sha256:fdabcb6965a5d11266d893286e1a9a9a41fbe5560f65a33418a7a7d0386cd196`  
		Last Modified: Tue, 27 Oct 2026 17:23:28 GMT  
		Size: 9.3 KB (9331 bytes)  
		MIME: application/vnd.in-toto+json
