## `azul-zulu:25-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:e1b9066bef60bb424fa783d3589b4b1d0566306dbcf4d298f80f340b48ee7ea6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:d8571144da93bd64c8c8c336ec6856fb34da81e7461e1d5260770a4dedbdf8d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251324959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0667f75550f8c73a4af7dc6169b253d07ac06dde35058b9d1941ac25ca5f8aa5`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:30:18 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:30:18 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:30:18 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.4-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:30:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:30:18 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:30:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9960463441e37c2d7e8ee7a75826b0d129c02f93cc734d4f36edf4ea6b60e04`  
		Last Modified: Thu, 23 Jul 2026 22:30:37 GMT  
		Size: 182.8 MB (182762497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:8e4e422dac468432e79cb0e6261fcd1fd9bc9fb6ea4f7b10997e1c86668ceaf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5072802fa4af93f39b004a4987e61eee2f0d46f7314ddb821a9525885a3d355c`

```dockerfile
```

-	Layers:
	-	`sha256:0a8c562b761dcfe0953d27981c416cc31e00ede2a53c205f265525bd5f0d5c32`  
		Last Modified: Thu, 23 Jul 2026 22:30:32 GMT  
		Size: 9.2 KB (9232 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:76054800d274a3f4893f43f6d41321c92161138f569ec55f1b2d414c44e00c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.0 MB (249025992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d380dba9e39d5c2f830d7db66f43b1fe257af2cacb4b204c786c32b94d277250`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:31:26 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:31:26 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:31:26 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-headless-25.0.4-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:31:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Thu, 23 Jul 2026 22:31:26 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 Jul 2026 22:31:26 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac5909e4a07d7f503efa2efec0ac32871f12f4e389cb49fc0bb892db900b11c`  
		Last Modified: Thu, 23 Jul 2026 22:31:45 GMT  
		Size: 181.9 MB (181884031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:dc3b50d084e084baa6cfe1ad45f8e2a9e561546ac6cad90e4c06b26a2179d45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daec01703b09b5ba6356d1faae7a5c9ecbe404b978bb00bd876733f01bc0996`

```dockerfile
```

-	Layers:
	-	`sha256:00a5cfa2801959fdd309abbefef3ecdede73b6dba3f463618e5b75d06f2222c3`  
		Last Modified: Thu, 23 Jul 2026 22:31:40 GMT  
		Size: 9.3 KB (9324 bytes)  
		MIME: application/vnd.in-toto+json
