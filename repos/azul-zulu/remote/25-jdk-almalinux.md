## `azul-zulu:25-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:d016d399a72e7777105661f54fb1b6e6bb5a83e0ca21e3904ab6c48d280f04dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8553f05d9a07489676343914e59246b6c95a4294c3e72c0d5199982c4573ad2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253132576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bac7558bb5a88e62952f320c1043c6c01a52ad251df36c66e6758b92a888613`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:47 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:47 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 27 Oct 2026 17:27:47 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:27:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f90cd7fba04f49b174739fa5319bb8bdd3c9e71c8ff88b43c4594eb7c578606`  
		Last Modified: Tue, 27 Oct 2026 17:28:05 GMT  
		Size: 184.0 MB (184033301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e9b6ab3bf45954caaa187dbe18804a0960b3b78b4ab2f68b30591a165b4f2730
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd14a2b6a516b40ba894653368f3fd491b511685dbe21948463e1c71e9a3708`

```dockerfile
```

-	Layers:
	-	`sha256:606a045ab1228faad9ed3e67802657777e901618473d6a712842115270cade8b`  
		Last Modified: Tue, 27 Oct 2026 17:28:01 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:af6c0a4b255a5705b72c893acbb74b3836c09b2ee0737ab18c895a5b9bf01957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.8 MB (250814503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcd19791f77c60eca71229c3343ea5926f5076726f8d7c1fb951bb0552d91ee3`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:23:38 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:23:38 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:23:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:23:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Tue, 27 Oct 2026 17:23:38 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:23:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11da54eba7f224fdb925b07f7b6f0f1535a3191d8ba3298de0ca96a36bd254c5`  
		Last Modified: Tue, 27 Oct 2026 17:23:58 GMT  
		Size: 183.1 MB (183147992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:fb4ab0501f8412e48dc2a592729f4d59e1926f37aea1a0348dbd8281480e82b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf10f3e97c9a523cc656a1ed251f25c9dfdd1215b40f6165359859561f82b5fe`

```dockerfile
```

-	Layers:
	-	`sha256:8f4e1c9b9a018c70c4ed4384ae0b15af57dc5e442f993addc622348189d56d29`  
		Last Modified: Tue, 27 Oct 2026 17:23:54 GMT  
		Size: 9.6 KB (9579 bytes)  
		MIME: application/vnd.in-toto+json
