## `azul-zulu:17-jre-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:9eaeb1cf763a9f80c7ee87cce7bd10fc0e39b351398d3654a3451fc7908e690c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:5c68594e7c5a9ac82de34c9605ea408810f8672de9cdfaba469a9b778611daa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.1 MB (139119563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07c40cba733b5ce689f1da91cabac9d4569e94f4014e41f327bff15526ddce3c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:18 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:18 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 02 Oct 2026 18:22:18 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:472bca95647733448af7a97f3c52dbc0b71371f867490c123659b4df99d76654`  
		Last Modified: Fri, 02 Oct 2026 18:22:30 GMT  
		Size: 70.2 MB (70240009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3c359bfec2e3ba954f747a73e74bf85a2e3c2959703ca30792058fce25c127b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ac24f7dda2375e3cd3da91e39d2a059b28e1bf04863a12a513ae1e4037cc2c`

```dockerfile
```

-	Layers:
	-	`sha256:1d2e5a724bb12fb4fd146b089654aee6436fc6cf2cd078d6d0daabc5b0c041c7`  
		Last Modified: Fri, 02 Oct 2026 18:22:28 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:f4b43e65d204dbe3fb2da412eec2d40c2e688ebcb701c64e30485235e08b30d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137724770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e5378bd6bfa99669369331a947b05ff05462425e72bc41dce16c4397ac7bae7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:41 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:41 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-headless-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 02 Oct 2026 18:22:41 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d20945651a437ae896515d331476e94f24459f3a8e9466cad168d2fd1e57ca5`  
		Last Modified: Fri, 02 Oct 2026 18:22:53 GMT  
		Size: 70.3 MB (70266586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f3894d7571649b9cdcb7361fce32e40d2baf0b2093982dc165c8f351ac87bee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44a3ee42626206231101f2243d94acdb86b37f3145937afaf5c792805e79e8a8`

```dockerfile
```

-	Layers:
	-	`sha256:16a6aa07e9e7a564f7420ea88b938a8d2ecf68b69f58a651886c077f0a9f0f06`  
		Last Modified: Fri, 02 Oct 2026 18:22:51 GMT  
		Size: 9.3 KB (9336 bytes)  
		MIME: application/vnd.in-toto+json
