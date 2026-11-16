## `azul-zulu:8-headless-almalinux10`

```console
$ docker pull azul-zulu@sha256:e71bc529fbd313f3a81af1e36113788c020dad069d0eeb4ec971a41cecdb0461
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:8-headless-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:4effc84c3bc22fd1ec052d39212da459aba077a7eaf6a47c4d8720d8f2d931a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.2 MB (129187018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0368b188b6334e5f145984493bdd06d28bf62a3ae1b8486c6ce7b8b535b63e66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:04 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:04 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:10:14 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:10:14 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:10:14 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-headless-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:10:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 16 Nov 2026 18:10:14 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:d3706e31ba51bfd08aeb09ac0ebbf184e0118db10938a31a3f2e81cb6a30eb58`  
		Last Modified: Sun, 15 Nov 2026 10:39:35 GMT  
		Size: 69.1 MB (69125779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:536ce8656c6d90a916f05981e2c95b5f2b45bb7c2bd025c046187496882b420b`  
		Last Modified: Mon, 16 Nov 2026 18:10:24 GMT  
		Size: 60.1 MB (60061239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:34a31f85ad3cd6ef431e6e25d693151ba4d660273c47ccb82d0ffe09fe0b3468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcf9a03d08529624e11906e3348aed3129823f042620a58682859a653a2812b`

```dockerfile
```

-	Layers:
	-	`sha256:ef4bedcb8fa0d959fab26c9555a0c0f78b7cccb15b3713943eec1e8bbfacc550`  
		Last Modified: Mon, 16 Nov 2026 18:10:22 GMT  
		Size: 9.2 KB (9205 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:8-headless-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4f41bab353604abb584b77dea28fa747c0057b2bcbe65d1e868fc29ff3504793
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.1 MB (128066550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68c47a18f960849671ae23eb32017f9a9dc2a3fb8a95982b84812ed307aa5b35`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 16 Nov 2026 17:37:01 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:37:01 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:45 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 16 Nov 2026 18:09:45 GMT
ENV LANG=C.UTF-8
# Mon, 16 Nov 2026 18:09:45 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu8-jdk-headless-8.0.512-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 16 Nov 2026 18:09:45 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu8
# Mon, 16 Nov 2026 18:09:45 GMT
ENV PATH=/usr/lib/jvm/zulu8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:a8ea85215dba158c09933d2c53437e503eade277c558f76de4290ce32293adac`  
		Last Modified: Mon, 16 Nov 2026 03:15:03 GMT  
		Size: 67.7 MB (67697816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1517dc0f13d19fc683c4cbcc137a4d4f07892c9f81a6e2e796aa112ece27a21b`  
		Last Modified: Mon, 16 Nov 2026 18:09:55 GMT  
		Size: 60.4 MB (60368734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:8-headless-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:1331b372cf0b20c7bd5dc73694cd842c7eac0cfe28d559d4d921749424ddf96d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cb7591acb9181fbb7581dfda51dafbf0c7745aced3b1683cc58d6d6686a54b`

```dockerfile
```

-	Layers:
	-	`sha256:9e3dc8f68395373cde1f9eaa9a4c12859d04eaedcfb2a21ed20c781a90a51185`  
		Last Modified: Mon, 16 Nov 2026 18:09:54 GMT  
		Size: 9.3 KB (9297 bytes)  
		MIME: application/vnd.in-toto+json
