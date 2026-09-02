## `azul-zulu:17-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:177d6e8b818874ba71a8779362df53c7a406a8c60abb291a095357567053fd14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:e9a1dfb74d5baadabbe2a86f9593a999557e561009a58f44be6b6e7e40dd5739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220177953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc3a408ebf8f47d4d9b12c733dc68f32426c9a0e0df3887163a0abf0e5e2d27`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:16:36 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:16:36 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:16:36 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:16:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 02 Sep 2026 22:16:36 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:16:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7fb3aefe2408298e50bb08740f1d8ce198928615f45be463996cb25898a2e0`  
		Last Modified: Wed, 02 Sep 2026 22:16:51 GMT  
		Size: 151.3 MB (151315285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1f94bbd9d1b58d86f63f829d446022975c5ec3df292f9cca8f3ea7e15227b6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9cb1043865b72c3075052237afa26c35d78a336ca85b754b66bbfae4cafb94d`

```dockerfile
```

-	Layers:
	-	`sha256:4d11faa9b774b3f0378982950bb7a9c9c4d1044b5602d2b390802c2c57007e4e`  
		Last Modified: Wed, 02 Sep 2026 22:16:48 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:8abce7371b307424052fbdc8d54576ee81470fb756c61b1b9d69ea2c8a3fd808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218749457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3659a7ce6c860befbdd5655ddbfd20368dd6eb886ca7650913a4c385f4e07029`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:06 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:06 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 02 Sep 2026 22:18:06 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:18:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20a029f8dc88b4a81adb5c0a35966adf62d8097b31afb5f130fd1afd86288b7`  
		Last Modified: Wed, 02 Sep 2026 22:18:23 GMT  
		Size: 151.3 MB (151317655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:ea77a1e822c0e09803747a1f8df177b4f53b3a756e87c4879032967f43067e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30b77ce82020f7e08af9ff7b345c82331afadbe94532d42d692ba821d38f441`

```dockerfile
```

-	Layers:
	-	`sha256:5618aa92de02f5839c736666aeca6c03819b67764c70b54511ec1ba2fc4f0839`  
		Last Modified: Wed, 02 Sep 2026 22:18:20 GMT  
		Size: 9.6 KB (9592 bytes)  
		MIME: application/vnd.in-toto+json
