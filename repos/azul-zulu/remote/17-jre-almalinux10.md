## `azul-zulu:17-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:151b2999dc5e5a44e7eaa1e52bbc84e4c1ad084ddfb97dd79c3e4958d142f0a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1d26ada1aa5e39f8ed7ab6c295a492ca17621a9ae3a56e900d6e0ea7e03e4e04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.1 MB (140147564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab485325e3313aa36c415c4597b2c12dfd7496153756ff2a383b1a5e7c28e9ab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:27:31 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:27:31 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:27:31 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:27:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 27 Oct 2026 17:27:31 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e10d999f22c832f67622c8e9e28e37dbd25f6507ab092616b706e1ab6a8870`  
		Last Modified: Tue, 27 Oct 2026 17:27:42 GMT  
		Size: 71.0 MB (71048289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6b7d6d2d7c0a0902fdbbd1f29af6e17ed433a9a39f093dae545f7a700fdfb810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fe9e878595637f8db04fc6f384b849690242eda0e4db8c4ad891919fb20754`

```dockerfile
```

-	Layers:
	-	`sha256:8b56dbf466111aab0654885453e2e53824360e71ff2d2ebc4cfb29f94e64eb7c`  
		Last Modified: Tue, 27 Oct 2026 17:27:40 GMT  
		Size: 9.1 KB (9141 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:528ddef4b54d82c5f1ff37cb31f2adb2f360d17705568dbbc894c0b45f958cc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.8 MB (138768824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4301923ab10e0db271360f271462ec2f241e8a6c40ccf72bc7b382132018b97e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:52 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:52 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 27 Oct 2026 17:22:52 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4afd27947da30e8dde674f7e66c27b57a8fc2efce14bf8aa698840da1be6890`  
		Last Modified: Tue, 27 Oct 2026 17:23:05 GMT  
		Size: 71.1 MB (71102313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:a545a4697c0f1af61d90ea6d09c8f496baba98a07697cc6f3081b488c734ba2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da056c7aa3f6ec599da8a671c64396e257dd4d20891132cae2d4a61bef524dae`

```dockerfile
```

-	Layers:
	-	`sha256:d8173250669bb4bc0c3328794d82f533a213b0b10260c049edc12f84eb14be2c`  
		Last Modified: Tue, 27 Oct 2026 17:23:02 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
