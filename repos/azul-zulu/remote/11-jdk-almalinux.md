## `azul-zulu:11-jdk-almalinux`

```console
$ docker pull azul-zulu@sha256:aafb363cb5843575ec72607bd5d231ba9b98e5f4ff7a98c4a4d6db43296056fb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:f2c8d0e1629c6a5be3e4ba8d1e416827bb9c6cde93216088f8bdc0dbcb99ca77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216136647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a936e277ccce1609fb19d7a9241d52d3efa11393679f4fa6585c1e9e9d1e2e07`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:21:56 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:21:56 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:21:56 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:21:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 02 Oct 2026 18:21:56 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:21:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34230d1ada95c2ce502120a487ec150b632d8cbd3a18d51509fa55c913a79d4c`  
		Last Modified: Fri, 02 Oct 2026 18:22:10 GMT  
		Size: 147.3 MB (147257093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:5f0a6de7973fcb1549044e3b52830bd743f68fc1c540ebae6ddca2cc4224f7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b0795500bdcebe2c6d3f535790676630f1ef5f2607acc201f69441b671f31d`

```dockerfile
```

-	Layers:
	-	`sha256:3381a29d0026549b23067175803e6479198b73b6482d5fe8fcd597bf230b0815`  
		Last Modified: Fri, 02 Oct 2026 18:22:07 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d4b9dda0feba1d26d5454721b33876dd81afecc703c83e2480da15263289a1ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214405262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa1f88e6e48f5b9891a4a05e1821345bff97584fa0257edc65a6e3a73b62548`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:02 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:02 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.32.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Fri, 02 Oct 2026 18:22:02 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 18:22:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c75fa0b38dee31968bea2f6575893885144c262309e636eb2be83c2e180736c`  
		Last Modified: Fri, 02 Oct 2026 18:22:18 GMT  
		Size: 146.9 MB (146947078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:d3825f6f17c6f63b1a27e62e093a72f16ea1563f0b84d5af7009192ffeaa819f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4f746253fa462af23da39b8c614bede421a5d6d97e390de99b0468affadd28e`

```dockerfile
```

-	Layers:
	-	`sha256:3823b4b1d265b726fc721ba1b8e29b8f3f92bc0f0b0aa904a547d69d3007d2ae`  
		Last Modified: Fri, 02 Oct 2026 18:22:14 GMT  
		Size: 9.6 KB (9592 bytes)  
		MIME: application/vnd.in-toto+json
