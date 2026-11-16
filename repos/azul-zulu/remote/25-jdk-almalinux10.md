## `azul-zulu:25-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:ce91bbda7f1bd28aee49b6e3a417a5acf3ba2e9e8f9c6c049fbaf96b34b1589f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:25-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:1e4e271d87d30a181e3304b9d46ad0d35abea6ad433973881c6230467099db09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.6 MB (253583697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c4a1120cfe561bd7aaa3f2d62076a39ca02eec981bccd194174b9583d834db`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:55 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:55 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:55 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 22:09:55 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:55 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:622b5854f99b274593fe5bc1ba8143e9622596b525d1eac047a185cd6a56df0b`  
		Last Modified: Mon, 16 Nov 2026 22:10:12 GMT  
		Size: 184.2 MB (184213217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:96befb97e0c26c7fd722f3e343722eb625324919914ce0e412c7933b47b335c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d96f8a279973f0230f395746462723e8d3aa888f9e9d07e3265387f455959579`

```dockerfile
```

-	Layers:
	-	`sha256:052bf5ad695b7e026ae2568757016fbe8d070f032aca451423565a39526d7771`  
		Last Modified: Mon, 16 Nov 2026 22:10:08 GMT  
		Size: 9.5 KB (9495 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:25-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:18d8189512f57ca4e3a5c6e3cd8c290bee5472b24fcc3c53ae956fdb275b20bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.3 MB (251274539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5dbe679c1a1fc538db5e0bad51a29e0153d824899bb158627dc5ff8d9dd9c72`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 22:09:54 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 22:09:54 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 22:09:54 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu25-jdk-25.0.5.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 22:09:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu25
# Mon, 16 Nov 2026 22:09:54 GMT
ENV PATH=/usr/lib/jvm/zulu25/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 22:09:54 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d47c2b5d6948b08d90a2555d437c2f3280e0df33f1b947bfef8399fe17e272`  
		Last Modified: Mon, 16 Nov 2026 22:10:14 GMT  
		Size: 183.3 MB (183323965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:25-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ed122010f7d8da1a7304b6cb2cf98aacde26c3dd5d1dd3ff2c8768faf014bd9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8b89feab3e012a2d8bcd8ef985443e559c09628d7d03cdd7b2ca82ff501a32b`

```dockerfile
```

-	Layers:
	-	`sha256:d69f28f2ea93d45870aee490056199ae06e1f2f2b9587fd19ea7307b708af271`  
		Last Modified: Mon, 16 Nov 2026 22:10:10 GMT  
		Size: 9.6 KB (9599 bytes)  
		MIME: application/vnd.in-toto+json
