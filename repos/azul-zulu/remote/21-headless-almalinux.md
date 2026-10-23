## `azul-zulu:21-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:1d8a5bd34ef4225f3177d5c7c77ca00fcd6de7e1f6ba9fa13daeb1c09343b22c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:0341806668a19e523bca828b986fc7309853379acee401520946ad5edcc1fb18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.2 MB (233205187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cd645b833e39b0d9557e2f6c90e73fea017c46d405624f6b28305277fd7ffa`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:01:43 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:43 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:43 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 23 Oct 2026 20:01:43 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:01:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937d835b95f0df9f478031d23d5b8eca973de60d4c5191dcbe46f61e10026d7a`  
		Last Modified: Fri, 23 Oct 2026 20:01:59 GMT  
		Size: 164.3 MB (164325633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4e1185942f043770c9bbebe6ea687621d9b6cc579931617ef5f668fb18a71820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006b006c4f5db5defa1ac6502dde115814093a1c9b4d1503cf9d2f3b8c4b487c`

```dockerfile
```

-	Layers:
	-	`sha256:702336f5f46f569a886f3ec8a8b829ce9589bb66f9765f10d57927203f6d9e86`  
		Last Modified: Fri, 23 Oct 2026 20:01:55 GMT  
		Size: 9.2 KB (9239 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:5f2c12fad75f84164cdaf0feb385e7b98bbea44f354238f349e1141ce903b45f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231082682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dcffe62057b82eaf098942c3b3c49746275ac727e7e2a0ea81708227100ff97`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:03:52 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:52 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 23 Oct 2026 20:03:52 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:03:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af81e4134c69451e18720eb0f97ed27730c086c697008e7a4852d51dbd78f44`  
		Last Modified: Fri, 23 Oct 2026 20:04:08 GMT  
		Size: 163.6 MB (163624498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f249f8f76f356428d2968787fcdad8b96e735bfc34646de94acd0fa8015ff15e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a2ac1572536d164559b38cd4f63a29183d92bcf1ac1267be56a7ef380aaa3c`

```dockerfile
```

-	Layers:
	-	`sha256:6e4c8cf32e877e100ecddb5465fc3e9cf71e5eae23b7b73e25ed95170d6ec39c`  
		Last Modified: Fri, 23 Oct 2026 20:04:05 GMT  
		Size: 9.3 KB (9331 bytes)  
		MIME: application/vnd.in-toto+json
