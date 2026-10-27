## `azul-zulu:17-almalinux10`

```console
$ docker pull azul-zulu@sha256:9ec9757d3f108126644d70f1ccf114b8d73851edd07c2178172a23fe3bbb3433
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:84ed136fd87edae58d16561369979432505397a6dfab8ddc68118c58108e25e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.0 MB (220954986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93c783dcd9d1cf60d8bf1fd43b47e579eb941a7023fc602928ff5eddcffbdb02`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:26:40 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:26:40 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:26:40 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:26:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 27 Oct 2026 17:26:40 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:26:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a63f12aabb9869ef6aa47e436425ee692a306fdb1ea6c4d0b4b50e857765e5b`  
		Last Modified: Tue, 27 Oct 2026 17:26:56 GMT  
		Size: 151.9 MB (151855711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:6ecedf070ea89a3a26edf9c691e160b5fe25a6dd51779b03e6b9cb1d53da1bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2184facc8a680e98cd207550124fee5c6d1d4fec329f107d5763a45c680e65a7`

```dockerfile
```

-	Layers:
	-	`sha256:23ff95a3fe44a60334d64bc4056fbfc23c476c9699188009fead5c09424f16c4`  
		Last Modified: Tue, 27 Oct 2026 17:26:52 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:daa50482e418e263575e02f65e5f9881cbe6a45344cebae48e90eb68b4738d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219581424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dd6a2c40968c687ff2d9f0ea8c275691cc8a802dd1dd614e3b19003758f617e`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:22:59 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:22:59 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:22:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:22:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Tue, 27 Oct 2026 17:22:59 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:22:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adcdbf64ec2b1654331bce29cb671752df6a7737caf671947a5f7278659ba8b3`  
		Last Modified: Tue, 27 Oct 2026 17:23:14 GMT  
		Size: 151.9 MB (151914913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ff862b81ba3b20de3d554bd45dc26adfc0c528390f1181807dd6c97f5faee964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c213cbb2e3586f06dca5a76bcc172f4e43d4980464847453096dee9dec505ed7`

```dockerfile
```

-	Layers:
	-	`sha256:00e8f94d6d8b102c9b81f1983b37a3e873e9a791ba8031452896db1ab5e783a5`  
		Last Modified: Tue, 27 Oct 2026 17:23:11 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json
