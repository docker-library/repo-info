## `azul-zulu:17-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:09ea60104ea85dbb1492811ae53cbff6eaf03b10ed643626e51b8194917c2775
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a7bf37201d8d8174eb40daf2317c0da6e391c5a1c6b3e88651273bd6b83aee86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221433514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84c4b4c16b9b5d8d385946c365a9ebd379d68032091c8b68a2801645b3fc917c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:20 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:20 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:45 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:45 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:45 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7eb2ddfe716bbe5a789e107fd8eb761cff0982c7444fc8f71ff2bd32513a061`  
		Last Modified: Mon, 16 Nov 2026 21:44:37 GMT  
		Size: 69.4 MB (69370480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648c7db3856de6394b246e271e2bb4f48561eed71d6ef5c99b74e369d8e7550b`  
		Last Modified: Wed, 18 Nov 2026 02:42:04 GMT  
		Size: 152.1 MB (152063034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:b6bf5f24320a436fd81a7fabedae10d3049b1b1f114ed1651b4cf3076187966e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07445d9a1742ebe59f32515d8597a4352c0c844e74ec82e8066733630508f870`

```dockerfile
```

-	Layers:
	-	`sha256:296e3a03e97149dd8ca8097f0a00042b64dfe5eb1a2bee66b3f76fa2f0b00068`  
		Last Modified: Wed, 18 Nov 2026 02:41:57 GMT  
		Size: 9.5 KB (9487 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:33dcc244cbb5e961a1be74f5d75c43aad3404f588b8f105f5ed437a576e953b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220071832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff79c7026a669dc6d29ff983888b048c3bf6a55c1e83b5a8d6f2b4f8c817bd8`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 16 Nov 2026 21:44:35 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 21:44:35 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 02:41:38 GMT
ARG REPO_HOST=repos.azul.com
# Wed, 18 Nov 2026 02:41:38 GMT
ENV LANG=C.UTF-8
# Wed, 18 Nov 2026 02:41:38 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Wed, 18 Nov 2026 02:41:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Wed, 18 Nov 2026 02:41:38 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 02:41:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:393cd084864e1edb3d8b62a1faef8c3a32a405ba52f353858c2898cdbb0f08cb`  
		Last Modified: Mon, 16 Nov 2026 21:44:52 GMT  
		Size: 68.0 MB (67950574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3c4672194f3eb77f34d4aeae24b399cc2262ae566c1e7ada428c7e53387bae`  
		Last Modified: Wed, 18 Nov 2026 02:41:54 GMT  
		Size: 152.1 MB (152121258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d08db21f859af74ee3c6f0fa1e30853d46100a0e5126e8e0f46d7633dd1ec3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd51f8ca338473095674062afb64b8eba667a0f1dfe5ea65eb629bea1747ad3`

```dockerfile
```

-	Layers:
	-	`sha256:c1acc8dc1766458b5307df644e9032aff7eb84ec5c79087d0b074a775ae412ad`  
		Last Modified: Wed, 18 Nov 2026 02:41:51 GMT  
		Size: 9.6 KB (9592 bytes)  
		MIME: application/vnd.in-toto+json
