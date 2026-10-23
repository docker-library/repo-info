## `azul-zulu:21-jre-almalinux`

```console
$ docker pull azul-zulu@sha256:fa4a3383c55dcee495512e30eabb03e0906be863974559a7f78c3b933d9878ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-jre-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:6fcc64465dfda2ae313a51d0a59fa6cdfdd1183fa5a5190e370bcffac3a34517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (145015120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea48b9a6605c2a5669f1fb53003eb0b127dbcf002cd67133b227951c43f2af68`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:01:42 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:42 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:42 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 23 Oct 2026 20:01:42 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856bda90fa6aadda1f0e1ef9cd00afa4526b46a9c8856ad944a52f6b7f1e8505`  
		Last Modified: Fri, 23 Oct 2026 20:01:56 GMT  
		Size: 76.1 MB (76135566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:40f1a4035d9fe45f6775322c96a2c13a112bd49289cab6bf62628a9044321582
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 KB (9141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ce7c6fb2692b066164162bf492ad6073e402c925a14b613be28937e821254a`

```dockerfile
```

-	Layers:
	-	`sha256:96cb13d2abc2d8011d23b2c653d28784f734e62cd01cc5ea43278b53a36ada78`  
		Last Modified: Fri, 23 Oct 2026 20:01:52 GMT  
		Size: 9.1 KB (9141 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-jre-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:4f93227aaeda524d3b01e0b46b309df9eede376d1b505f6eeb6fbd914a95a1fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.3 MB (143259895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3411b93732b24e6cc73a531a47d84d7678f652907d2457c05c91ff22897d5c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:03:47 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:47 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:47 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jre-21.0.13-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Fri, 23 Oct 2026 20:03:47 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f063c8c6aefd7f24e63c3352cff0f27b7832f386a0d5545aa72e8402789beb4`  
		Last Modified: Fri, 23 Oct 2026 20:03:59 GMT  
		Size: 75.8 MB (75801711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-jre-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9b56edb30da10277dc7965a6f688cfa9d6ea953c6fdfc911e465a70e7063fd56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457e373e889a85fdf607417e5e690bf83b450228f60733d375fe2e3e045d9ae1`

```dockerfile
```

-	Layers:
	-	`sha256:05cf2bea6a9eb1c9c279045904aab62ee25bdbc81d08949e25f874ec58c26825`  
		Last Modified: Fri, 23 Oct 2026 20:03:57 GMT  
		Size: 9.2 KB (9233 bytes)  
		MIME: application/vnd.in-toto+json
