## `azul-zulu:17-jdk-almalinux10`

```console
$ docker pull azul-zulu@sha256:b80ab53a2ae18018ca58e92c8ec936f6ad4dad367e7e147691e386175d6f1823
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jdk-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:2022d422556089f01d0e4d25ffe34386b77661e52a33df8228b43f832267700b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.5 MB (220531880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be0b756f28c94a619160154cbf33bfc8b7624c116803cde76b2da6a04c714479`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:01:10 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:01:10 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:01:10 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:01:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:01:10 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:01:10 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffab4f5fe8f5a98050e0ec7c92e66c83ff7fe404e66251afaaaf5da7210532ae`  
		Last Modified: Fri, 23 Oct 2026 20:01:26 GMT  
		Size: 151.7 MB (151652326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:76cb52944eeab7e72dd2cd98b8b2147832733b1417a1322f8c14a1cb3c4f6993
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826bd0b2fd622930733b06dc553886d07672630341a1534dcb746fcc5682adf1`

```dockerfile
```

-	Layers:
	-	`sha256:ee29d4fa8724e9ee62b7952ceecf01640c5bd60b126d9c490188f54157da31b1`  
		Last Modified: Fri, 23 Oct 2026 20:01:22 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jdk-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:dd2a8e622a8a9a68d309757f967817744d5f67d264f087cd5c2879913de29504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219173874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040c60504902157afd4f4839f2cd411eb052a4b8a29cef7e387a403a5dad93bc`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 20:03:06 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 23 Oct 2026 20:03:06 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 20:03:06 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jdk-17.0.21-3;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 23 Oct 2026 20:03:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 23 Oct 2026 20:03:06 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 23 Oct 2026 20:03:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75f0c411fe1918c520be7bba383b541723da0380514fcc770778bfc972bcde8`  
		Last Modified: Fri, 23 Oct 2026 20:03:22 GMT  
		Size: 151.7 MB (151715690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jdk-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:cc113c188b08c8fe1382713cc82ce53204971437ac10259d42ebe2a02858621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:662f315fc4f79408e4733e215c7980671c2da57a5fb78a81182761bdd89ebaf1`

```dockerfile
```

-	Layers:
	-	`sha256:ac0f5818cd55cfc40baa450e7c4fdb6c2d305cece7d2f8244080535a6505e152`  
		Last Modified: Fri, 23 Oct 2026 20:03:19 GMT  
		Size: 9.6 KB (9586 bytes)  
		MIME: application/vnd.in-toto+json
