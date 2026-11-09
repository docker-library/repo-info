## `azul-zulu:11-almalinux10`

```console
$ docker pull azul-zulu@sha256:704d1d25c662147112b19b5f672da43ac3f5e234556f03e7ab40930410de9a63
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:162e249a9c68755f3f308d0ce735e233cb4d23b34b6f991134b712ef7302ed40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216662841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5210a5c49e74aab658dcb266434ece317e046be469a8f734840502def860f1ec`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:19:27 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:19:27 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:21:39 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:21:39 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:21:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:21:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:21:39 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:21:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:fbe51e09d58f27fe4ca0bd213ca711d43317974be46fe5dfda5dc62fa95cf57f`  
		Last Modified: Tue, 27 Oct 2026 17:19:44 GMT  
		Size: 69.1 MB (69099275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26cdc2477435c7556a1b7cd6e86c733dcaa81a4a6e54bc516af7ff571099417e`  
		Last Modified: Mon, 09 Nov 2026 20:21:52 GMT  
		Size: 147.6 MB (147563566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:c0322bfc6f563155fd814c49c0d65cc5fa6f0d328bcf936bdf4998f6c15bd2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14ff9dfb711ad601c7b9c30689d4f4fc35d6d5fe47606ff8ed65e0740b1b121d`

```dockerfile
```

-	Layers:
	-	`sha256:6d3ee5ac21ebfdbb2531be81d804ba4fda3cad2d0361f89adf2197dd2039ade3`  
		Last Modified: Mon, 09 Nov 2026 20:21:49 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:3b7d99f8ccbcba221504a72d591f4e19f05162c22f00f0e008f4902204728637
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.9 MB (214910397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00c4807752b540eda129f68a9376c4244937ea2296f6d28300e90d689a267eb7`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 27 Oct 2026 17:18:20 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Tue, 27 Oct 2026 17:18:20 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 20:23:17 GMT
ARG REPO_HOST=repos.azul.com
# Mon, 09 Nov 2026 20:23:17 GMT
ENV LANG=C.UTF-8
# Mon, 09 Nov 2026 20:23:17 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu11-jdk-11.0.33-5;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Mon, 09 Nov 2026 20:23:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Mon, 09 Nov 2026 20:23:17 GMT
ENV PATH=/usr/lib/jvm/zulu11/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 20:23:17 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:169cdc535a3129531af940f152493deebb4c9a4cc959e97da7fda2d47c0eb894`  
		Last Modified: Tue, 27 Oct 2026 17:18:36 GMT  
		Size: 67.7 MB (67666511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f00af53769e606790915967710b58fc55e863020674019dfb5be46c4dbd4c9a`  
		Last Modified: Mon, 09 Nov 2026 20:23:32 GMT  
		Size: 147.2 MB (147243886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f1738b255aaed26905ad3b189a70ccbcf7b2d67558499495ce3b5647be425a4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185f22bab78337db5c5827ddb3a8a553ab20275a0c097339ab28c5c58ae4e7d9`

```dockerfile
```

-	Layers:
	-	`sha256:78504ebbeb62b59b147024f1c00580f64a2b8e47a0486699c0559e4cd84739a2`  
		Last Modified: Mon, 09 Nov 2026 20:23:29 GMT  
		Size: 9.6 KB (9585 bytes)  
		MIME: application/vnd.in-toto+json
