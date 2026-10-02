## `azul-zulu:26-jre-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:38a4ec755162d89711969b9dd3e8a83db3272ae10920c182b2e1ed23599c220f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jre-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a2dbf843d91a41e8306b7fb37645e520d9c206da8fa97a7d7c2fe94c10628313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.2 MB (160237717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346dfb98586b96ed1c9ee0d85a3f0841ae5b7fc1f495fd35dc8284ade49d72a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:09 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:09 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Fri, 02 Oct 2026 18:23:09 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559a2b7742a5c61206404ca639b19c24e518135980071d351055ca110ef2e502`  
		Last Modified: Fri, 02 Oct 2026 18:23:23 GMT  
		Size: 91.4 MB (91358163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b23a43f1962d50c3ef7196a92550e5d6b5e21bb76d4c0febf4d050673ec2f2d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:264f671833d773dff1acfe4e9b9aa0114fa940df159c434c0a04209e99e75102`

```dockerfile
```

-	Layers:
	-	`sha256:c8f4e4d8ad74a50fe27d91de1debabceef3f2f70cb1855b858888cbce1184e58`  
		Last Modified: Fri, 02 Oct 2026 18:23:21 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jre-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:c55b76b4f17397114aa5e1f4953b55114da03e2c324430189bcb1a09003d2ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.7 MB (158735320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811df6b6f15603df3f8a05dd0ec4fbb2f344b339cdc8f21e7a065601d4fc2f52`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:24:05 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:24:05 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:24:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jre-headless-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:24:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Fri, 02 Oct 2026 18:24:05 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52dee8ae20c90f0b2b930462af32c8950cf22650b1098a50f8522e6ae9cf8495`  
		Last Modified: Fri, 02 Oct 2026 18:24:20 GMT  
		Size: 91.3 MB (91277136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jre-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:e509dfcb9ba6fdcc529a9ea86946f6eb9c1513372cebaacc1ce73f21ba7b0cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e436a5eee234aec0bd70842641de2676209bec96da5d76f9a6d2f5ba0eb5af`

```dockerfile
```

-	Layers:
	-	`sha256:9e656d1817fa6ec3ae89a998950b0af2623ad46b049e210f5373f82f90fb687a`  
		Last Modified: Fri, 02 Oct 2026 18:24:17 GMT  
		Size: 9.3 KB (9329 bytes)  
		MIME: application/vnd.in-toto+json
