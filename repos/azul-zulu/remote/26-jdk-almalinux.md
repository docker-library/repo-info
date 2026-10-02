## `azul-zulu:26-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:9231046526e5d2cb84650a9b1c59a8536be8653d91994a12de5779dfbde5fd3e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:ed42468b3f1ff29d4874cf28b19eaa1dcc0971bf302a54c901c6be3eaa0f171a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (255999183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4234aa847f3ab9824f2ac1b3ba27db75a47f05309ba2c718a55058392e2366cb`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:01 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:01 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:01 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Fri, 02 Oct 2026 18:23:01 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:23:01 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a640a6045d790cfed3f25d6a9d757baa8b6a3e4cc0bf97af6a47b9655425f7`  
		Last Modified: Fri, 02 Oct 2026 18:23:19 GMT  
		Size: 187.1 MB (187119629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:40da28400d44374ddf6bcd8a0ba1ebf893899f0235aa8978153216e129990c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00a831b59fd97eed6c62c8fcfb8b12d0616c896e0a1b9d51ad78851671f251cd`

```dockerfile
```

-	Layers:
	-	`sha256:e5d4026d7555acf04eac215ea231be1cf1388606b77aa579637b547f92ca7318`  
		Last Modified: Fri, 02 Oct 2026 18:23:15 GMT  
		Size: 9.5 KB (9484 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:2ddd75dcde9a02f9f5a598d2c17fb973ec815fe03a55bc43e21aa567140254aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.3 MB (254284952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9429d4dc600714596807b0179c61a4d35376da073c9cd7ed7d621412a3f82e`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:23:53 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:23:53 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:23:53 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:23:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Fri, 02 Oct 2026 18:23:53 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:23:53 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f98a90f0c0ba7b3d904f3cd65e9b720754bede195d8a1eb040efbd75146443f`  
		Last Modified: Fri, 02 Oct 2026 18:24:13 GMT  
		Size: 186.8 MB (186826768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4fa9f3887317a625775d60ee765f3d462c3cfa2a7b0a2cc4c9c183da1860a6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bf6c37cd4336f3e01d0891ada37aa1e9ba663391247d42dd230ba8c01ca2c7`

```dockerfile
```

-	Layers:
	-	`sha256:43dd0f367d1cb37672b168bf9d164dd3f8b72ab1c170aa4feeed2e45960b2dfa`  
		Last Modified: Fri, 02 Oct 2026 18:24:09 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json
