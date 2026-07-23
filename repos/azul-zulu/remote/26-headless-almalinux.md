## `azul-zulu:26-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:60f0acb378f9dc4f7a00e1870a311dc205f70acdef0fb84f664206b97bb6b8f5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:56cbe775001deb4149f2233baf6dcf2ab79f35f7f58bb800a8bb789ce7697ecd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.8 MB (254776397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd85d0e1f56dd8b9d123fd188920c215213944c4b3bc4fd4e2c30f661a6d6c9`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:30:56 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:56 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-headless-26.0.2-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:30:56 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:30:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a78525ad5efb9105b6d018b59d117488ce192a364512889bf1e5e8a256d60c`  
		Last Modified: Thu, 23 Jul 2026 22:31:14 GMT  
		Size: 186.2 MB (186213935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:740c652aa254dbc414d8894656726041451ffcd4fdea22a0f0ff83850dfb3875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff0b7f81ab235cb6e3575cbbf17bdbe8bf9a19b7967cad395e61d66fe5e0fd1`

```dockerfile
```

-	Layers:
	-	`sha256:e412937ca53f1e152ea2ff3b1a87c5bf033270189fcc4474ac4a215973d7ba91`  
		Last Modified: Thu, 23 Jul 2026 22:31:11 GMT  
		Size: 9.2 KB (9232 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0d56ce43d89a9dd66e0a352696c3e140206d20c20145f5b74aede0b958c5db06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253067447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60299828b0d08d441713fc1b16f3c2a39494c3510c828f6efba6dd1b103042a6`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:32:07 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:32:07 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:32:07 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-headless-26.0.2-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:32:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Thu, 23 Jul 2026 22:32:07 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:32:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8604d531fbd0226291b59a4dd8e50cf4964901cb9a7edfad1df2a60eb239019`  
		Last Modified: Thu, 23 Jul 2026 22:32:27 GMT  
		Size: 185.9 MB (185925486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8aa6679870db106601edc0ba8ed666b1237ff05b77293773982d85c03ab40da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:747aed20128696406924e5f7274f8e98953eac6ddb83bec6f2f136f175f13e3c`

```dockerfile
```

-	Layers:
	-	`sha256:bdcb123d44a206cdd49e0aa5959e492f1a11bdd2a3c4d4cb19cc9dfcd13ac4ea`  
		Last Modified: Thu, 23 Jul 2026 22:32:23 GMT  
		Size: 9.3 KB (9324 bytes)  
		MIME: application/vnd.in-toto+json
