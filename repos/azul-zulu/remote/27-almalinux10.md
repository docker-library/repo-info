## `azul-zulu:27-almalinux10`

```console
$ docker pull azul-zulu@sha256:5123cf1ab3a808f96badad3ba5edbb5b232b4c3e3f4bd276b7894beb5fb545bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:27-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:33c7b5518af4b912a50b0b1389121c897fec578bcc18369d14c9b4198d3f9c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254521109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5b71e69c7ab9247f56c6be8d87594ab256b4ccf2773e6e054603956cb93b9f`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:28:22 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:28:22 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:28:22 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:28:22 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 27 Oct 2026 17:28:22 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:28:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3617b61d70e751352243daa8ec7156fe726cd90b2e1c8eee9d7392a7b24a5e4d`  
		Last Modified: Tue, 27 Oct 2026 17:28:40 GMT  
		Size: 185.4 MB (185421834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:3df2520b5718d752743021829d7ce15406f19e0097dedc2c4c1b3c2390eefbb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93fd9973da1cae7e98d7ab2d2510c8a35ea2d07c66ba01947d75922f47aed11`

```dockerfile
```

-	Layers:
	-	`sha256:f3d8d82f1dfd6597cfd98f80e303f10c877666d6e7d6cc4a84df7ae4aa62528f`  
		Last Modified: Tue, 27 Oct 2026 17:28:35 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:27-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:da435d412fb002aac54ad46128202e0ad2517d6648e60c68359e437079ca3506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.8 MB (252774139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b3602b1741cb32b1b52a2308479833482211d0d8341c47381214161a6603ab`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 17:24:30 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 27 Oct 2026 17:24:30 GMT
ENV LANG=C.UTF-8
# Tue, 27 Oct 2026 17:24:30 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu27-jdk-27.0.1-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 27 Oct 2026 17:24:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu27
# Tue, 27 Oct 2026 17:24:30 GMT
ENV PATH=/usr/lib/jvm/zulu27/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:24:30 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9d74ab236ff633758ac86bd0e11277e233bee99ab2f287144818dc733cd5e9`  
		Last Modified: Tue, 27 Oct 2026 17:24:50 GMT  
		Size: 185.1 MB (185107628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:27-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:10919ef5358834a9b833354f1137bff1fd88f8f545edfa9453cd1ee687a774f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aa6a15cf621e134aaef32bd9169125f58c25ffd7b39ca6d36d18516bb0fb674`

```dockerfile
```

-	Layers:
	-	`sha256:1e67f050a098b45258c990b8515dbe7f327394d23b2dda12ad84d0bdf4eb4340`  
		Last Modified: Tue, 27 Oct 2026 17:24:46 GMT  
		Size: 9.6 KB (9578 bytes)  
		MIME: application/vnd.in-toto+json
