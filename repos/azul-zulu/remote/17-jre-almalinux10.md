## `azul-zulu:17-jre-almalinux10`

```console
$ docker pull azul-zulu@sha256:0b8912f5f72667440963e19d12bf854c589b1ebe65f9b89b2e38123a6b50247c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:17-jre-almalinux10` - linux; amd64

```console
$ docker pull azul-zulu@sha256:a83d0026388f9f12721ae15f20251620369a988fe58e267968b990df95606870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.6 MB (139577834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbed7e2a8e1516936db9889702ae1d7fdacf223b2f4ab0bdbf09e0334817138`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:42 GMT
ADD almalinux-10-default-amd64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:42 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:15 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:15 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:15 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 02 Oct 2026 18:22:15 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:aa40d510fc6e470a2f5bd27e447ebfe9df24b41b10a52ccfb13fe5a7e461a36d`  
		Last Modified: Fri, 02 Oct 2026 18:17:00 GMT  
		Size: 68.9 MB (68879554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3dd597c3ef6a2c549fa51a4beda9c428810ae180e6f51f89941260b97a2814e`  
		Last Modified: Fri, 02 Oct 2026 18:22:27 GMT  
		Size: 70.7 MB (70698280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:81c436e93d69af333c0ec60255df1ba0e4e6eebfd578e4b092f5beef1a74a7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6af456bf1f0215554817a5d2b2d07a9da065454b56c9095c24df6da56d39404`

```dockerfile
```

-	Layers:
	-	`sha256:ec603d384894491b04e8b3c2b05fbb1ad80273439907b7355b99b8738bf7315f`  
		Last Modified: Fri, 02 Oct 2026 18:22:25 GMT  
		Size: 9.2 KB (9150 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:17-jre-almalinux10` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:6c7c377ad8fce7c189ea4ef5232a8cd98f766b120fd078d069e237e7a4bc7d99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.2 MB (138175932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24199fd250302d8e0e1caf66fecc3c4277e26c22270ad5a43a408827e41fae5c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 18:16:16 GMT
ADD almalinux-10-default-arm64.tar.xz / # buildkit
# Fri, 02 Oct 2026 18:16:16 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 18:22:39 GMT
ARG REPO_HOST=repos.azul.com
# Fri, 02 Oct 2026 18:22:39 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 18:22:39 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux;      dnf install -y --setopt=install_weak_deps=False gnupg2;      curl -fsSL https://repos.azul.com/azul-repo.key -o /tmp/azul-repo.key;      GNUPGHOME="$(mktemp -d)"; export GNUPGHOME;      gpg --batch --import /tmp/azul-repo.key;      gpg --batch --export --armor '27BC0C8CB3D81623F59BDADCB1998361219BD9C9' > /etc/pki/rpm-gpg/RPM-GPG-KEY-azul;      gpgconf --kill all; rm -rf "$GNUPGHOME";      rm /tmp/azul-repo.key;      printf '%s\n'        '[zulu-openjdk]'        'name=zulu-openjdk - Azul Systems Inc., Zulu packages'        "baseurl=https://$REPO_HOST/zulu/rpm"        'enabled=1'        'gpgcheck=1'        'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-azul'        > /etc/yum.repos.d/zulu-openjdk.repo;      dnf install -y --setopt=install_weak_deps=False fontconfig        zulu17-jre-17.0.20.1-1;      dnf remove -y gnupg2;      dnf clean all; rm -rf /var/cache/dnf;      java -version # buildkit
# Fri, 02 Oct 2026 18:22:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu17
# Fri, 02 Oct 2026 18:22:39 GMT
ENV PATH=/usr/lib/jvm/zulu17/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

-	Layers:
	-	`sha256:72828735570afd8ff6fa969666f806b8b8aad35a219161ae6386607e517a0ff3`  
		Last Modified: Fri, 02 Oct 2026 18:16:33 GMT  
		Size: 67.5 MB (67458184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef02faf0da46202ff1a9fc4da847a638ddebc88b0bc8f00209887268b1417188`  
		Last Modified: Fri, 02 Oct 2026 18:22:51 GMT  
		Size: 70.7 MB (70717748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:17-jre-almalinux10` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:7e24348fc557eac2b056dfb2cf93f959851f7c5d30ab8e0470aaf088c814b0cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d74f6fd5cbf28ae05c465cd4959cb4ba4e9663f0a87b9433ee907b8162fef4`

```dockerfile
```

-	Layers:
	-	`sha256:33f1b5c9b535a00dbe8005c2526640fa0555119ce4442245b74ff7473f9a9ddf`  
		Last Modified: Fri, 02 Oct 2026 18:22:49 GMT  
		Size: 9.2 KB (9242 bytes)  
		MIME: application/vnd.in-toto+json
