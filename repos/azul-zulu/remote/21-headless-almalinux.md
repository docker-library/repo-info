## `azul-zulu:21-headless-almalinux`

```console
$ docker pull azul-zulu@sha256:c9bd8ac5924cefb1265841685cbce14f3df67ebc095868ffbe2732d4448e8fbe
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:21-headless-almalinux` - linux; amd64

```console
$ docker pull azul-zulu@sha256:255c3e62133074c2a8a93c6b9dfd1f7facffab59b08337fcc328c4f6c6ee5821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.6 MB (233618025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15282f72a91373cfdfc76364b7d521345ec8fc2f057f87fe1aea57be04fa6d95`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:08:57 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:08:57 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:08:57 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:08:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:08:57 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:08:57 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fef21b28f7494e82b40d5f58a64c6af71da83ef2eb9233716827791bfae1c99`  
		Last Modified: Tue, 03 Nov 2026 00:09:13 GMT  
		Size: 164.5 MB (164518750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:850039e29c32e3de46018a5d313ce18a87317da01f06b952548ea8f3c25ad173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b2627296e437693182b38e5eec7aadf584f181786ab3e0c1385c153a4db3c08`

```dockerfile
```

-	Layers:
	-	`sha256:51aacf2505d4633775aa523e79daa9c8d6f79fd9ed8d57d7b6e0f5ec72ebd4d3`  
		Last Modified: Tue, 03 Nov 2026 00:09:10 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:21-headless-almalinux` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:a06e9ce23d2dc036a324126af5ea4e21308bb39e7039c30d72d87c8d918d0ad5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231479520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8062faf307e64d4971f9c0aa7291898db12cb57d7447780ade2a1bb83537a32b`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Tue, 03 Nov 2026 00:09:09 GMT
ARG REPO_HOST=repos.azul.com
# Tue, 03 Nov 2026 00:09:09 GMT
ENV LANG=C.UTF-8
# Tue, 03 Nov 2026 00:09:09 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu21-jdk-headless-21.0.13.0.3-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Tue, 03 Nov 2026 00:09:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu21
# Tue, 03 Nov 2026 00:09:09 GMT
ENV PATH=/usr/lib/jvm/zulu21/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Nov 2026 00:09:09 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027912bc83b570441901bef33526671159fa2a21844c3bee721c60a8c36444f6`  
		Last Modified: Tue, 03 Nov 2026 00:09:26 GMT  
		Size: 163.8 MB (163813009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:21-headless-almalinux` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:706da2fd62224105a4a19998a8c0339b55e9ceb11a5866865e53aef2327c2866
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defce57324bb65082d9f72ab907d87b65618a327fc82556809495421aa9d5608`

```dockerfile
```

-	Layers:
	-	`sha256:fb6a03c49f48bef8834372e23857fc1f5eb9c4a955869f26af96e03a5bb5b04e`  
		Last Modified: Tue, 03 Nov 2026 00:09:23 GMT  
		Size: 9.3 KB (9347 bytes)  
		MIME: application/vnd.in-toto+json
