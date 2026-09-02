## `azul-zulu:26-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:1aa6116c67f8e1465523101cb3d71d560904307c50391d9c1496d3c85b92b349
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2ffe122022e2cd2f7b00bb1682e1fac1c9714458be840832d10beb3192116426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.0 MB (255962605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7813de47aa5e360b9355cd2d6e45a3b5ae33e358174dc0fdb9656a4c2a93218e`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:13 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:13 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:17:15 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:17:15 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:17:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:17:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 02 Sep 2026 22:17:15 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:17:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:653c5d8d0d6694b5f22ff2c258227792bc61603c5743f59b2221eb24864d05d3`  
		Last Modified: Wed, 02 Sep 2026 21:53:28 GMT  
		Size: 68.9 MB (68862668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de4955a5f635d4339f6162dc22b229f77bc85539d7f6d40fc98f96e681877cc`  
		Last Modified: Wed, 02 Sep 2026 22:17:33 GMT  
		Size: 187.1 MB (187099937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:15a5b9691769718edb83d145a48bde192c85a97df511f26e0ed03b039d3ce3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d4cc6142637b4d652fb3a75440ef422226db0fde939b2e57678f8f0facc3f73`

```dockerfile
```

-	Layers:
	-	`sha256:3fe2072d88062a0dfdb0bf5e9bc4aa3779075ef66f3de9dfb850b0c17aa88553`  
		Last Modified: Wed, 02 Sep 2026 22:17:29 GMT  
		Size: 9.5 KB (9485 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a816df462acc3e5834b499208981e72851e16b855ffd9c6dcf0ee33dfbbcd3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.2 MB (254240991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6c5cbf20833e216cf037c49c3017fe636f3fd301c15a1d90f8f0b7c6c337cc`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 02 Sep 2026 21:53:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Wed, 02 Sep 2026 21:53:16 GMT
CMD ["/bin/bash"]
# Wed, 02 Sep 2026 22:18:41 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 02 Sep 2026 22:18:41 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 22:18:41 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu26-jdk-26.0.2.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 02 Sep 2026 22:18:41 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Wed, 02 Sep 2026 22:18:41 GMT
ENV PATH=/usr/lib/jvm/zulu26/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 22:18:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:802b840a8d25ea1358a31fbc4ea7c8131247ca176ca97b5f148712b005031c7f`  
		Last Modified: Wed, 02 Sep 2026 21:53:33 GMT  
		Size: 67.4 MB (67431802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ba843074a4ee64120424d6be6d6d1c23aab003180011fa2872bf4c3cc1fd5c`  
		Last Modified: Wed, 02 Sep 2026 22:19:01 GMT  
		Size: 186.8 MB (186809189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f5b9b32bb34ae6decda545aa64e69dd9af81fcf4daab5afe1aa3d27cb473409a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79120d218fd68ef19751e2f2259e215d7df508c4869bd8e07f9cbba096e9376b`

```dockerfile
```

-	Layers:
	-	`sha256:b9bd7762aa4a10616c28017bdef52597278086b58b62950f3bedc45d31bc3def`  
		Last Modified: Wed, 02 Sep 2026 22:18:57 GMT  
		Size: 9.6 KB (9589 bytes)  
		MIME: application/vnd.in-toto+json
