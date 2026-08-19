## `azul-zulu:21-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:9c0990ac15a4e1edd03d375eb61d292f1fa35258027c0a54a8b82e732d70fb84
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:29f7cd103d852673c9eec04f2b00198a494d078394413b31c180a8c733cacb0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232237675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e411e80b8544cae7901652dfe69e1bc22f2ece6a987bfc080d0e2b0ede699b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:52 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:52 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:52 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:35:52 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:52 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53adee4d73d995cc9fd02c96bed497a4ff7f22e5fb299b58411aef031f38d100`  
		Last Modified: Wed, 19 Aug 2026 17:36:08 GMT  
		Size: 163.7 MB (163675213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8e05e331ca207365b846bd7193503cb380e6f562cb716bdf3f1287c52d117d08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f88fcd4e328b919950f8f91be070d79d1eeeaadb43eac4b408c1daedf1cbfb93`

```dockerfile
```

-	Layers:
	-	`sha256:7db1501a79f97bf2fe12fe8c6876b7c25c236e88b17f57c483277a02c25d9ca9`  
		Last Modified: Wed, 19 Aug 2026 17:36:04 GMT  
		Size: 9.2 KB (9245 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:7ce102d8a6292ece32a76188b74d8efd2b2a0f28823603b5459b23a76347fea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.1 MB (230083071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddddb975398192b7fecc47f76939ffc524178f98a619d8ec131702da133eea11`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:36:02 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:36:02 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:36:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.12.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:36:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Wed, 19 Aug 2026 17:36:02 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:36:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b07e11ecc928d723cf5b17785e731d179356b45fb9b14a54adab30914b76b1b`  
		Last Modified: Wed, 19 Aug 2026 17:36:19 GMT  
		Size: 162.9 MB (162941110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1663fae7ca0aae97603145b9a66eb6be64baa5a8009dc0f1492f6b863b3c60de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:024ffb9c73a1cb1c3da04de77a564433c46d3b183a016932669e2984734d1b6c`

```dockerfile
```

-	Layers:
	-	`sha256:a4ae63dcce3840807064a447eb5ee767c0fb68b7494c69792f03dda64b1e5c1d`  
		Last Modified: Wed, 19 Aug 2026 17:36:15 GMT  
		Size: 9.3 KB (9337 bytes)  
		MIME: application/vnd.in-toto+json
