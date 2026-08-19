## `azul-zulu:17-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:a8e932bf7a88f992ee54696cdf40ff2a5525e7a5d1d1e6a8f0b94aa790d50ad8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:af976093e2c5f9de76a925792532ac624e7e1c94f468b93a6833b7b414b9c0a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218911961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90dfec80fa769a208d498b01699a60960f5f9b42d6cea23578e0062e9bd3d9f1`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:22 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:22 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:22 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3212902142f25dfd49b6e92227d8093d96a8916a9576251b4595ec536a5188`  
		Last Modified: Wed, 19 Aug 2026 17:35:36 GMT  
		Size: 150.3 MB (150349499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3aab6bfadf147fbba1096a3d98d5d699037e176fca29b6ee6ee39945c2d07400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c343208acb361dd2f0f83d1b815fe23fc0ae39c901688066570c2e20366c96e5`

```dockerfile
```

-	Layers:
	-	`sha256:509b99a3967f6dd91bee577bb2be934eb8dee5352a53be73a924e5b1f2adcc76`  
		Last Modified: Wed, 19 Aug 2026 17:35:33 GMT  
		Size: 9.2 KB (9245 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:75ebde6815ac8fa8b9cb4f68111cba285c6987222fe3fa902ff207e1fa2f00bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.5 MB (217485385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfcd98f293961c9e471eac23e9721012dcb4fd7f35c0eb842708ff62c54fd53c`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 17:35:19 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 19 Aug 2026 17:35:19 GMT
ENV LANG=C.UTF-8
# Wed, 19 Aug 2026 17:35:19 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-headless-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 19 Aug 2026 17:35:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 19 Aug 2026 17:35:19 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 17:35:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:151698a6ab06086aa30bb7a09ccec1466490b51d6c750f00cb7323f6289ef522`  
		Last Modified: Wed, 19 Aug 2026 17:35:34 GMT  
		Size: 150.3 MB (150343424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:64eb9247472735c3b7c850aa1658e00224f566d751c8b6bcc057e910b70452c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503ee3c18cda1ab3176da358df66ae040b2576fcbaa3d17d05499af0c26e3e11`

```dockerfile
```

-	Layers:
	-	`sha256:8f6bb2f1c2a247591220ffcf6816c3e4f3edc39205765cc0011f50c633885b92`  
		Last Modified: Wed, 19 Aug 2026 17:35:31 GMT  
		Size: 9.3 KB (9337 bytes)  
		MIME: application/vnd.in-toto+json
