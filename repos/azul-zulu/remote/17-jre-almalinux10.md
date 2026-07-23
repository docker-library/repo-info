## `azul-zulu:17-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:456d182061ef632dd3464bc8538a6f5061912998c84977e5077114c1703e53a2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:8b11a5724ada951bc01ec337396388eecf210bd2b5d47da2b2d9e1b221f8fdc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.0 MB (138961009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60928102d56843332ed089595be68ac71fd0b367946ba296b9ef257d01e80e51`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:16 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:16 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:29:00 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:00 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:00 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.20-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:00 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:4224950577242fb7ff1faf31d7a6c1520d455ab1a1eecff8aed5766688091539`  
		Last Modified: Tue, 02 Jun 2026 19:04:32 GMT  
		Size: 68.6 MB (68562462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e478ef10cb765f8006790f26156e32a1316c60badb29bb004b15693b0100f8b`  
		Last Modified: Thu, 23 Jul 2026 22:29:11 GMT  
		Size: 70.4 MB (70398547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:62082f63d3558359ec9fb93f7cfa670b1221ff0d26eda981eab94daa3747c445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:151b92ca7f19c14de9ae29f7f9e5acc165cf3a2767b9eb8c2aa49a27c43e672a`

```dockerfile
```

-	Layers:
	-	`sha256:1a20ee1487f119cc4fe768bf00bd9acd5d6f899dc5505f1646a7630b4c3e0419`  
		Last Modified: Thu, 23 Jul 2026 22:29:09 GMT  
		Size: 9.1 KB (9140 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d3222cddf0599c902ffabd0be2f748ae3ffe11ba319a40f085e07407bfb1b8f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.6 MB (137562378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80cd380b3c0ecdd49ca8c2a1e00c6a307cb1482256000be1be6bcde45df46099`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:37 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:37 GMT
CMD ["/bin/bash"]
# Thu, 23 Jul 2026 22:29:59 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:59 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:59 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.20-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Thu, 23 Jul 2026 22:29:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Thu, 23 Jul 2026 22:29:59 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:11aaeaf9729fbc9690ea62f609dd17fc5d9fca4e16048f27425d411f758066b2`  
		Last Modified: Tue, 02 Jun 2026 19:04:54 GMT  
		Size: 67.1 MB (67141961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76adf0f9899625c50a32ff9b347d68f7e7ad2bdc8ae72db2943e466678e99fa`  
		Last Modified: Thu, 23 Jul 2026 22:30:12 GMT  
		Size: 70.4 MB (70420417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b7e38b23e82fea7296d5a820f855cace29898a9606e337fb8dd6f3cd2fcb94d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea7b159d9fb911288be63d0d001a81127931b084472cccb1a6be1cc307c5980`

```dockerfile
```

-	Layers:
	-	`sha256:b60a16472aa607de812764629f0ac3f5291cd5bbe67bdc0c26ab49fcc7138fae`  
		Last Modified: Thu, 23 Jul 2026 22:30:09 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
